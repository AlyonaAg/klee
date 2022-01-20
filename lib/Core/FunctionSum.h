#include <vector>

#include "ExecutionState.h"
#include "klee/Module/KModule.h"

namespace klee {
    class ExecutionState;
    class KModule;
    struct KFunction;

class FunctionSummaries{
public:
    FunctionSummaries();
    FunctionSummaries(KFunction *kf,
                      ExecutionState &state);

private:
    KFunction *kf;
    std::vector<ExecutionState *> states;
    bool completed;
    ExecutionState *startState;

public:
    void addState(ExecutionState &addedState);
    void complete();
};

}