#include "FunctionSum.h"

using namespace klee;

FunctionSummaries::FunctionSummaries() :
    completed(false){
}

FunctionSummaries::FunctionSummaries(KFunction *kf,
                                     ExecutionState *state) :
    kf(kf),
    completed(false){
startState = new ExecutionState(*state);
}

void FunctionSummaries::addState(ExecutionState &addedState){
    states.push_back(&addedState);
}

void FunctionSummaries::complete(){
    completed = true;
}