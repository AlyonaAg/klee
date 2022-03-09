#include <vector>
#include <algorithm>

#include "ExecutionState.h"
#include "AddressSpace.h"
#include "PTree.h"
#include "klee/Expr/Constraints.h"
#include "klee/Module/KModule.h"



namespace klee {
  class ExecutionState;
  class KModule;
  class PTree;
  struct KFunction;

class FunctionSummaries{
    friend class Summaries;
public:
  FunctionSummaries();
  FunctionSummaries(KFunction *kf,
                      ExecutionState &state);

  bool completed;
private:
  KFunction *kf;
  std::map <std::uint32_t, ConstraintSet> constraints;
  std::vector<ExecutionState *> states;
  ExecutionState *startState;
  std::uint32_t countState;


public:
  void addState(ExecutionState &state);
  void complete();
  void addConstraint(ref<Expr> e, std::uint32_t id);
  std::vector<ExecutionState *> recoveryState(ExecutionState &state,
                            std::unique_ptr<klee::PTree> &processTree);
};

class Summaries{
public:
  Summaries();

private:
  std::vector<FunctionSummaries *> listFunctionSummaries;

public:
  using stack_ty = std::vector<StackFrame>;

  void addFunction(FunctionSummaries *func);
  FunctionSummaries * searchFunction(KFunction *kf);
  std::vector<FunctionSummaries *> 
        searchIntersectionFunction(stack_ty stack);
  void fork(std::uint32_t id_true, std::uint32_t id_false, stack_ty stack);
};

}

// TODO: 
// 1) Функция для инструкции ret. Нужно чтобы:
//      а) + Проверялось есть ли ветки, которые ещё не закончили
//         исполнять функцию (чекать список с функциями, стек
//         вызовов у завершаемого state) - меняем флаг completed.
//      b) + Создание нового state, основываясь на стартовом значении
//         state (копируем необходыиме поля).
// 2) + Если вызывается функция, которая уже есть в списке то не 
//    добавляем и не следим. 
//    В дальнейшем решить проблему как сказать функции, что она 
//    не будет исполняться пока не будет составлена сводка по 
//    функции.
// 3) + Следить за деревом state, чтобы восстановить все пути,
//    которая функция проходила внутри себя. Или это решится 
//    автоматически? Возможно...
// 4) на будущее подумать над восстановлением состояния
// 5) Возникнут проблемы с рекурсивными функциями