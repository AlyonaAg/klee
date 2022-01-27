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

void FunctionSummaries::addState(ExecutionState &state){
  auto *newState = new ExecutionState(state);
  newState->pc = NULL;
  newState->prevPC = NULL;
  newState->stack.clear();

  newState->depth = newState->depth - startState->depth;
  newState->steppedInstructions = newState->steppedInstructions - 
                                  startState->steppedInstructions;
  /*constraints = ConstraintSet();
  for (itStart = startState->constraints.begin(), 
      ieStart = startState->constraints.end(),
      itNew = newState->constraints.begin(),
      ieNew = newState->constraints.end();
      itNew != ieNew; itStart++, itNew++){
        if ()
    }*/
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