#include <vector>
#include <algorithm>

#include "ExecutionState.h"
#include "klee/Expr/Constraints.h"
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

  KFunction *kf;

private:
  std::vector<ExecutionState *> states;
  bool completed;
  ExecutionState *startState;

public:
  void addState(ExecutionState &state);
  void complete();
};

class Summaries{
public:
  Summaries();

private:
  std::vector<FunctionSummaries *> listFunctionSummaries;

public:
  void addFunction(FunctionSummaries *func);
  FunctionSummaries * searchFunction(KFunction *kf);
};

}

// TODO: 
// 1) Функция для инструкции ret. Нужно чтобы:
//      а) Проверялось есть ли ветки, которые ещё не закончили
//         исполнять функцию (чекать список с функциями, стек
//         вызовов у завершаемого state) - меняем флаг completed.
//      b) Создание нового state, основываясь на стартовом значении
//         state (копируем необходыиме поля).
// 2) + Если вызывается функция, которая уже есть в списке то не 
//    добавляем и не следим. 
//    В дальнейшем решить проблему как сказать функции, что она 
//    не будет исполняться пока не будет составлена сводка по 
//    функции.
// 3) Следить за деревом state, чтобы восстановить все пути,
//    которая функция проходила внутри себя. Или это решится 
//    автоматически? Возможно...
// 4) на будущее подумать над восстановлением состояния
// 5) Возникнут проблемы с рекурсивными функциями