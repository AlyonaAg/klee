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
  newState->incomingBBIndex = 0;
  newState->depth = newState->depth - startState->depth;
  states.push_back(newState);
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
  for (std::vector<FunctionSummaries *>::iterator 
      it = listFunctionSummaries.begin(),
      ie = listFunctionSummaries.end();
     it != ie; ++it){
    if ((*it)->kf == kf)
    return *it;
  }
  return NULL;
}