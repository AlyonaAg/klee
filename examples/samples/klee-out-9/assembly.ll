; ModuleID = '/home/klee/examples/samples/loop_2.bc'
source_filename = "loop_2.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AisKfifo = type { i8**, i32, i32, i32 }
%struct.TagAisAppInfo = type { i32, i32 (%struct.TagAisAppInfo*, i8*)*, void (%struct.TagAisAppInfo*, i8*)*, i32 (i8*, %struct.TagAisAppInfo*)*, void (i8*, %struct.TagAisAppInfo*)*, i32 (i8*, %struct.TagAisAppInfo*, i32, i8*)*, %struct.AisModelFile, %struct.EaiModelCfgT, i8*, i32, i32, i32, i32, i32, i64, i32, i32, i32, i8*, i32 }
%struct.AisModelFile = type { [256 x i8], [256 x i8] }
%struct.EaiModelCfgT = type { i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.AisAppEnv = type { %struct.TagAisAppInfo, i32, %struct.AisKfifo*, [16 x %struct.AisKfifo], %struct.AisKfifo*, i8*, i32, i32, i32, %struct.epoll_event*, %struct.sockaddr_un, [1024 x i8], i8, i8*, %struct.AisAppStat, i32, i8 }
%struct.epoll_event = type { i32, %union.epoll_data }
%union.epoll_data = type { i8* }
%struct.sockaddr_un = type { i16, [108 x i8] }
%struct.AisAppStat = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [8 x i8] c"struct1\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"struct2\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @AIS_KfifoMin(i32 %x1, i32 %x2) #0 {
entry:
  %x1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  %0 = load i32, i32* %x1.addr, align 4
  %1 = load i32, i32* %x2.addr, align 4
  %cmp = icmp ult i32 %0, %1
  %2 = load i32, i32* %x1.addr, align 4
  %3 = load i32, i32* %x2.addr, align 4
  %cond = select i1 %cmp, i32 %2, i32 %3
  ret i32 %cond
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @AIS_KfifoGet(%struct.AisKfifo* %pstKFifo, i8** %element) #0 {
entry:
  %retval = alloca i32, align 4
  %pstKFifo.addr = alloca %struct.AisKfifo*, align 8
  %element.addr = alloca i8**, align 8
  store %struct.AisKfifo* %pstKFifo, %struct.AisKfifo** %pstKFifo.addr, align 8
  store i8** %element, i8*** %element.addr, align 8
  %0 = load %struct.AisKfifo*, %struct.AisKfifo** %pstKFifo.addr, align 8
  %in = getelementptr inbounds %struct.AisKfifo, %struct.AisKfifo* %0, i32 0, i32 2
  %1 = load i32, i32* %in, align 4
  %2 = load %struct.AisKfifo*, %struct.AisKfifo** %pstKFifo.addr, align 8
  %out = getelementptr inbounds %struct.AisKfifo, %struct.AisKfifo* %2, i32 0, i32 3
  %3 = load i32, i32* %out, align 8
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.AisKfifo*, %struct.AisKfifo** %pstKFifo.addr, align 8
  %buffer = getelementptr inbounds %struct.AisKfifo, %struct.AisKfifo* %4, i32 0, i32 0
  %5 = load i8**, i8*** %buffer, align 8
  %6 = load %struct.AisKfifo*, %struct.AisKfifo** %pstKFifo.addr, align 8
  %out1 = getelementptr inbounds %struct.AisKfifo, %struct.AisKfifo* %6, i32 0, i32 3
  %7 = load i32, i32* %out1, align 8
  %inc = add i32 %7, 1
  store i32 %inc, i32* %out1, align 8
  %8 = load %struct.AisKfifo*, %struct.AisKfifo** %pstKFifo.addr, align 8
  %size = getelementptr inbounds %struct.AisKfifo, %struct.AisKfifo* %8, i32 0, i32 1
  %9 = load i32, i32* %size, align 8
  %sub = sub i32 %9, 1
  %and = and i32 %7, %sub
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  %10 = load i8*, i8** %arrayidx, align 8
  %11 = load i8**, i8*** %element.addr, align 8
  store i8* %10, i8** %11, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @AISiLossLessLocalMsgHandler(i8* %appLocal, %struct.TagAisAppInfo* %info, i32 %type, i8* %msg) #0 {
entry:
  %appLocal.addr = alloca i8*, align 8
  %info.addr = alloca %struct.TagAisAppInfo*, align 8
  %type.addr = alloca i32, align 4
  %msg.addr = alloca i8*, align 8
  store i8* %appLocal, i8** %appLocal.addr, align 8
  store %struct.TagAisAppInfo* %info, %struct.TagAisAppInfo** %info.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i8* %msg, i8** %msg.addr, align 8
  %0 = load i8*, i8** %msg.addr, align 8
  %cmp = icmp eq i8* %0, null
  %1 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 1, i32 0
  ret i32 %cond
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @AIS_AppEnvProcEvent(%struct.AisAppEnv* %env, i8 zeroext %ctrlMsg) #0 {
entry:
  %env.addr = alloca %struct.AisAppEnv*, align 8
  %ctrlMsg.addr = alloca i8, align 1
  %message = alloca i8*, align 8
  store %struct.AisAppEnv* %env, %struct.AisAppEnv** %env.addr, align 8
  store i8 %ctrlMsg, i8* %ctrlMsg.addr, align 1
  store i8* null, i8** %message, align 8
  %0 = load %struct.AisAppEnv*, %struct.AisAppEnv** %env.addr, align 8
  %info = getelementptr inbounds %struct.AisAppEnv, %struct.AisAppEnv* %0, i32 0, i32 0
  %msgHandler = getelementptr inbounds %struct.TagAisAppInfo, %struct.TagAisAppInfo* %info, i32 0, i32 5
  store i32 (i8*, %struct.TagAisAppInfo*, i32, i8*)* @AISiLossLessLocalMsgHandler, i32 (i8*, %struct.TagAisAppInfo*, i32, i8*)** %msgHandler, align 8
  %1 = load i8, i8* %ctrlMsg.addr, align 1
  %conv = zext i8 %1 to i32
  %cond = icmp eq i32 %conv, 1
  br i1 %cond, label %while.cond, label %sw.default

while.cond:                                       ; preds = %entry, %while.body
  %2 = load %struct.AisAppEnv*, %struct.AisAppEnv** %env.addr, align 8
  %v8Queue = getelementptr inbounds %struct.AisAppEnv, %struct.AisAppEnv* %2, i32 0, i32 3
  %arraydecay = getelementptr inbounds [16 x %struct.AisKfifo], [16 x %struct.AisKfifo]* %v8Queue, i64 0, i64 0
  %call = call i32 @AIS_KfifoGet(%struct.AisKfifo* %arraydecay, i8** %message)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %while.body, label %sw.epilog

while.body:                                       ; preds = %while.cond
  %3 = load %struct.AisAppEnv*, %struct.AisAppEnv** %env.addr, align 8
  %stat = getelementptr inbounds %struct.AisAppEnv, %struct.AisAppEnv* %3, i32 0, i32 14
  %timerMsgRead = getelementptr inbounds %struct.AisAppStat, %struct.AisAppStat* %stat, i32 0, i32 13
  %4 = load i64, i64* %timerMsgRead, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %timerMsgRead, align 8
  %5 = load %struct.AisAppEnv*, %struct.AisAppEnv** %env.addr, align 8
  %info2 = getelementptr inbounds %struct.AisAppEnv, %struct.AisAppEnv* %5, i32 0, i32 0
  %msgHandler3 = getelementptr inbounds %struct.TagAisAppInfo, %struct.TagAisAppInfo* %info2, i32 0, i32 5
  %6 = load i32 (i8*, %struct.TagAisAppInfo*, i32, i8*)*, i32 (i8*, %struct.TagAisAppInfo*, i32, i8*)** %msgHandler3, align 8
  %7 = load %struct.AisAppEnv*, %struct.AisAppEnv** %env.addr, align 8
  %appLocal = getelementptr inbounds %struct.AisAppEnv, %struct.AisAppEnv* %7, i32 0, i32 5
  %8 = load i8*, i8** %appLocal, align 8
  %9 = load %struct.AisAppEnv*, %struct.AisAppEnv** %env.addr, align 8
  %info4 = getelementptr inbounds %struct.AisAppEnv, %struct.AisAppEnv* %9, i32 0, i32 0
  %10 = load i8*, i8** %message, align 8
  %call5 = call i32 %6(i8* %8, %struct.TagAisAppInfo* %info4, i32 1, i8* %10)
  %11 = load i8*, i8** %message, align 8
  %call6 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* %11)
  br label %while.cond

sw.default:                                       ; preds = %entry
  %12 = load %struct.AisAppEnv*, %struct.AisAppEnv** %env.addr, align 8
  %stat7 = getelementptr inbounds %struct.AisAppEnv, %struct.AisAppEnv* %12, i32 0, i32 14
  %unknownCtrlMsg = getelementptr inbounds %struct.AisAppStat, %struct.AisAppStat* %stat7, i32 0, i32 8
  %13 = load i64, i64* %unknownCtrlMsg, align 8
  %inc8 = add i64 %13, 1
  store i64 %inc8, i64* %unknownCtrlMsg, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.cond, %sw.default
  ret void
}

declare dso_local i32 @free(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @AIS_AppEnvProcEpollEvent(%struct.AisAppEnv* %env, %struct.epoll_event* %event) #0 {
entry:
  %env.addr = alloca %struct.AisAppEnv*, align 8
  %event.addr = alloca %struct.epoll_event*, align 8
  %in = alloca i32, align 4
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.AisAppEnv* %env, %struct.AisAppEnv** %env.addr, align 8
  store %struct.epoll_event* %event, %struct.epoll_event** %event.addr, align 8
  %0 = load %struct.epoll_event*, %struct.epoll_event** %event.addr, align 8
  %events = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %0, i32 0, i32 0
  %1 = load i32, i32* %events, align 8
  %and = and i32 %1, 1
  store i32 %and, i32* %in, align 4
  %2 = load i32, i32* %in, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %do.body, label %return

do.body:                                          ; preds = %entry, %do.cond
  %3 = load %struct.AisAppEnv*, %struct.AisAppEnv** %env.addr, align 8
  %bufLen = getelementptr inbounds %struct.AisAppEnv, %struct.AisAppEnv* %3, i32 0, i32 12
  %4 = load i8, i8* %bufLen, align 2
  %conv = zext i8 %4 to i32
  store i32 %conv, i32* %len, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %do.body
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %len, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %do.cond

for.body:                                         ; preds = %for.cond
  %7 = load %struct.AisAppEnv*, %struct.AisAppEnv** %env.addr, align 8
  %8 = load %struct.AisAppEnv*, %struct.AisAppEnv** %env.addr, align 8
  %readBuf = getelementptr inbounds %struct.AisAppEnv, %struct.AisAppEnv* %8, i32 0, i32 11
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %readBuf, i64 0, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  call void @AIS_AppEnvProcEvent(%struct.AisAppEnv* %7, i8 zeroext %10)
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

do.cond:                                          ; preds = %for.cond
  %12 = load i32, i32* %len, align 4
  %cmp2 = icmp sgt i32 %12, 0
  br i1 %cmp2, label %do.body, label %return

return:                                           ; preds = %do.cond, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %struct1 = alloca %struct.AisAppEnv*, align 8
  %struct2 = alloca %struct.epoll_event*, align 8
  store i32 0, i32* %retval, align 4
  %call = call i8* @malloc(i64 2400)
  %0 = bitcast i8* %call to %struct.AisAppEnv*
  store %struct.AisAppEnv* %0, %struct.AisAppEnv** %struct1, align 8
  %call1 = call i8* @malloc(i64 16)
  %1 = bitcast i8* %call1 to %struct.epoll_event*
  store %struct.epoll_event* %1, %struct.epoll_event** %struct2, align 8
  %2 = load %struct.AisAppEnv*, %struct.AisAppEnv** %struct1, align 8
  %3 = bitcast %struct.AisAppEnv* %2 to i8*
  call void @klee_make_symbolic(i8* %3, i64 2400, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.epoll_event*, %struct.epoll_event** %struct2, align 8
  %5 = bitcast %struct.epoll_event* %4 to i8*
  call void @klee_make_symbolic(i8* %5, i64 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %6 = load %struct.AisAppEnv*, %struct.AisAppEnv** %struct1, align 8
  %7 = load %struct.epoll_event*, %struct.epoll_event** %struct2, align 8
  call void @AIS_AppEnvProcEpollEvent(%struct.AisAppEnv* %6, %struct.epoll_event* %7)
  ret i32 0
}

declare dso_local i8* @malloc(i64) #1

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
