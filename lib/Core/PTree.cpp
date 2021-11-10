//===-- PTree.cpp ---------------------------------------------------------===//
//
//                     The KLEE Symbolic Virtual Machine
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//

#include "PTree.h"

#include "ExecutionState.h"

#include "klee/Expr/Expr.h"
#include "klee/Expr/ExprPPrinter.h"
#include "klee/Support/OptionCategories.h"

#include <bitset>
#include <vector>

using namespace klee;
using namespace llvm;

namespace {
// та сама опция, позволяющая не оставлять вспомогательные узлы
// в функции PTree::remove
cl::opt<bool>
    CompressProcessTree("compress-process-tree",
                        cl::desc("Remove intermediate nodes in the process "
                                 "tree whenever possible (default=false)"),
                        cl::init(false), cl::cat(MiscCat));

} // namespace

PTree::PTree(ExecutionState *initialState)
    : root(PTreeNodePtr(new PTreeNode(nullptr, initialState))) {
  // конструктор дерева
  initialState->ptreeNode = root.getPointer();
}

void PTree::attach(PTreeNode *node, ExecutionState *leftState, ExecutionState *rightState) {
  // пока непонятно где и зачем используется
  assert(node && !node->left.getPointer() && !node->right.getPointer());
  assert(node == rightState->ptreeNode &&
         "Attach assumes the right state is the current state");
  node->state = nullptr;
  node->left = PTreeNodePtr(new PTreeNode(node, leftState));
  // The current node inherits the tag
  uint8_t currentNodeTag = root.getInt();
  if (node->parent)
    currentNodeTag = node->parent->left.getPointer() == node
                         ? node->parent->left.getInt()
                         : node->parent->right.getInt();
  node->right = PTreeNodePtr(new PTreeNode(node, rightState), currentNodeTag);
}

void PTree::remove(PTreeNode *n) {
  // удаление листа n, ничего сложного, но лишний мусор осталяет, если 
  // не сказать ему чтоб убирал (но непонятно каким флагом, но вроде это не
  // так важно)

  // под мусором имеется ввиду вспомогательные ветки, которые будут в графе,
  // если есть хоть один дочерний, даже если дочерний также является 
  // вспомогательным
  assert(!n->left.getPointer() && !n->right.getPointer());
  do {
    PTreeNode *p = n->parent;
    if (p) {
      if (n == p->left.getPointer()) {
        p->left = PTreeNodePtr(nullptr);
      } else {
        assert(n == p->right.getPointer());
        p->right = PTreeNodePtr(nullptr);
      }
    }
    delete n;
    n = p;
    // на второй круг пойдёт только в случае, если удалили оба листа
    // у вспомогательного узла, в таком случае этот вспомогательный узел
    // удаляется
  } while (n && !n->left.getPointer() && !n->right.getPointer());

  if (n && CompressProcessTree) {
    // сюда не заходит, если не указывать каким-то специальным параметром значение
    // CompressProcessTree, но вроде как нужно, чтобы пустые узлы убирать, когда
    // удаляем листы в дереве.

    // We're now at a node that has exactly one child; we've just deleted the
    // other one. Eliminate the node and connect its child to the parent
    // directly (if it's not the root).
    PTreeNodePtr child = n->left.getPointer() ? n->left : n->right;
    PTreeNode *parent = n->parent;

    child.getPointer()->parent = parent;
    if (!parent) {
      // We're at the root.
      root = child;
    } else {
      if (n == parent->left.getPointer()) {
        parent->left = child;
      } else {
        assert(n == parent->right.getPointer());
        parent->right = child;
      }
    }

    delete n;
  }
}

void PTree::dump(llvm::raw_ostream &os) {
  // отрисовывает дерево для отладки (записывает в файл), команда для просмотра: 
  // dot -Tps ptree00000027.dot -o outfile.ps

  // файл klee-control содержит парсинг входных параметров, по идее
  // куда-то туда это всё заносится, чтобы вывод был автоматический

  ExprPPrinter *pp = ExprPPrinter::create(os);
  pp->setNewline("\\l");
  os << "digraph G {\n";
  os << "\tsize=\"10,7.5\";\n";
  os << "\tratio=fill;\n";
  os << "\trotate=90;\n";
  os << "\tcenter = \"true\";\n";
  os << "\tnode [style=\"filled\",width=.1,height=.1,fontname=\"Terminus\"]\n";
  os << "\tedge [arrowsize=.3]\n";
  std::vector<const PTreeNode*> stack;
  stack.push_back(root.getPointer());
  while (!stack.empty()) {
    const PTreeNode *n = stack.back();
    stack.pop_back();
    os << "\tn" << n << " [shape=diamond";
    if (n->state)
      os << ",fillcolor=green";
    os << "];\n";
    if (n->left.getPointer()) {
      os << "\tn" << n << " -> n" << n->left.getPointer();
      // изначально было label=0b, но программа для отрисовки графов жаловалась, пришлось поменять
      os << " [label=0"
         << std::bitset<PtrBitCount>(n->left.getInt()).to_string() << "];\n";
      stack.push_back(n->left.getPointer());
    }
    if (n->right.getPointer()) {
      os << "\tn" << n << " -> n" << n->right.getPointer();
      // изначально было label=0b, но программа для отрисовки графов жаловалась, пришлось поменять
      os << " [label=0"
         << std::bitset<PtrBitCount>(n->right.getInt()).to_string() << "];\n";
      stack.push_back(n->right.getPointer());
    }
  }
  os << "}\n";
  delete pp;
}

PTreeNode::PTreeNode(PTreeNode *parent, ExecutionState *state) : parent{parent}, state{state} {
  // конструктор узла
  state->ptreeNode = this;
  left = PTreeNodePtr(nullptr);
  right = PTreeNodePtr(nullptr);
}
