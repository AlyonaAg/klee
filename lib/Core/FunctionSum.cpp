#include "FunctionSum.h"

using namespace klee;

FunctionSummaries::FunctionSummaries() :
  completed(false){
}

FunctionSummaries::FunctionSummaries(KFunction *kf,
                                     ExecutionState &state) :
    kf(kf),
    completed(false){
  startState = new ExecutionState(state);
}

void FunctionSummaries::addConstraint(ref<Expr> e, 
                                      std::uint32_t id){
  ConstraintManager c(constraints[id]);
  c.addConstraint(e);
}

void FunctionSummaries::addState(ExecutionState &state){
  auto *newState = new ExecutionState(state);
  newState->pc = NULL;
  newState->prevPC = NULL;
  newState->stack.clear();

  newState->depth = newState->depth - startState->depth;
  newState->steppedInstructions = newState->steppedInstructions - 
                                  startState->steppedInstructions;

  ConstraintSet c(constraints[state.id]);
  newState->constraints = c;

  newState->setID();

  newState->coveredNew = startState->coveredNew == true &&
                         newState->coveredNew == true ? 
                         false : newState->coveredNew;

  for (auto it = startState->coveredLines.begin();
       it != startState->coveredLines.end(); ++it){
    if (newState->coveredLines.find(it->first) != 
        newState->coveredLines.end())
        newState->coveredLines.erase(it->first);
  }

  for (auto it = startState->arrayNames.begin();
       it != startState->arrayNames.end(); ++it){
    if (newState->arrayNames.find(*it) !=
      newState->arrayNames.end())
        newState->arrayNames.erase(*it);
  }

  for (auto it1 = startState->symbolics.begin();
       it1 != startState->symbolics.end(); ++it1){
    auto it2 = newState->symbolics.begin();
    for (; it2 != newState->symbolics.end(); ++it2){
      if ((*it1).first == (*it2).first)
        break;
    }
    if (it2 != newState->symbolics.end())
      newState->symbolics.erase(it2);
  }

  states.push_back(newState);
  // for future: processTree->attach(current.ptreeNode, falseState, trueState);
}

void FunctionSummaries::complete(){
  completed = true;
}

// Summaries
Summaries::Summaries(){
}

void Summaries::addFunction(FunctionSummaries *func){
  listFunctionSummaries.push_back(func);
}

FunctionSummaries * 
Summaries::searchFunction(KFunction *kf){
  for (auto it = listFunctionSummaries.begin();
       it != listFunctionSummaries.end(); ++it){
    if ((*it)->kf == kf)
    return *it;
  }
  return NULL;
}

std::vector<FunctionSummaries *>
Summaries::searchIntersectionFunction(stack_ty stack){
  std::vector<FunctionSummaries *> result;

  for (auto itF = listFunctionSummaries.begin();
  itF != listFunctionSummaries.end(); ++itF){
    for (auto itS = stack.begin(); itS != stack.end(); ++itS)
      if ((*itF)->kf == (*itS).kf){
        result.push_back(*itF);
        break;
      }
  }
  return result;
}

void Summaries::fork(std::uint32_t id_true, 
                     std::uint32_t id_false){
  for (auto it = listFunctionSummaries.begin();
       it != listFunctionSummaries.end(); ++it){

    if ((*it)->constraints.find(id_true) != (*it)->constraints.end())
        {
          ConstraintSet c((*it)->constraints[id_true]);
          (*it)->constraints[id_false] = c;
        }
  }
}