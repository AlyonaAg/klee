; ModuleID = '/home/klee/examples/samples/loop_2_1.bc'
source_filename = "loop_2_1.c"
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
  %len = alloca i32, align 4
  %len2 = alloca i32, align 4
  store %struct.AisKfifo* %pstKFifo, %struct.AisKfifo** %pstKFifo.addr, align 8
  store i8** %element, i8*** %element.addr, align 8
  store i32 1, i32* %len, align 4
  %0 = load i32, i32* %len, align 4
  %1 = load %struct.AisKfifo*, %struct.AisKfifo** %pstKFifo.addr, align 8
  %in = getelementptr inbounds %struct.AisKfifo, %struct.AisKfifo* %1, i32 0, i32 2
  %2 = load i32, i32* %in, align 4
  %3 = load %struct.AisKfifo*, %struct.AisKfifo** %pstKFifo.addr, align 8
  %out = getelementptr inbounds %struct.AisKfifo, %struct.AisKfifo* %3, i32 0, i32 3
  %4 = load i32, i32* %out, align 8
  %sub = sub i32 %2, %4
  %call = call i32 @AIS_KfifoMin(i32 %0, i32 %sub)
  store i32 %call, i32* %len, align 4
  %5 = load i32, i32* %len, align 4
  %6 = load %struct.AisKfifo*, %struct.AisKfifo** %pstKFifo.addr, align 8
  %size = getelementptr inbounds %struct.AisKfifo, %struct.AisKfifo* %6, i32 0, i32 1
  %7 = load i32, i32* %size, align 8
  %8 = load %struct.AisKfifo*, %struct.AisKfifo** %pstKFifo.addr, align 8
  %out1 = getelementptr inbounds %struct.AisKfifo, %struct.AisKfifo* %8, i32 0, i32 3
  %9 = load i32, i32* %out1, align 8
  %10 = load %struct.AisKfifo*, %struct.AisKfifo** %pstKFifo.addr, align 8
  %size2 = getelementptr inbounds %struct.AisKfifo, %struct.AisKfifo* %10, i32 0, i32 1
  %11 = load i32, i32* %size2, align 8
  %sub3 = sub i32 %11, 1
  %and = and i32 %9, %sub3
  %sub4 = sub i32 %7, %and
  %call5 = call i32 @AIS_KfifoMin(i32 %5, i32 %sub4)
  store i32 %call5, i32* %len2, align 4
  %12 = load i8**, i8*** %element.addr, align 8
  %13 = bitcast i8** %12 to i8*
  %14 = load %struct.AisKfifo*, %struct.AisKfifo** %pstKFifo.addr, align 8
  %buffer = getelementptr inbounds %struct.AisKfifo, %struct.AisKfifo* %14, i32 0, i32 0
  %15 = load i8**, i8*** %buffer, align 8
  %16 = load %struct.AisKfifo*, %struct.AisKfifo** %pstKFifo.addr, align 8
  %out6 = getelementptr inbounds %struct.AisKfifo, %struct.AisKfifo* %16, i32 0, i32 3
  %17 = load i32, i32* %out6, align 8
  %18 = load %struct.AisKfifo*, %struct.AisKfifo** %pstKFifo.addr, align 8
  %size7 = getelementptr inbounds %struct.AisKfifo, %struct.AisKfifo* %18, i32 0, i32 1
  %19 = load i32, i32* %size7, align 8
  %sub8 = sub i32 %19, 1
  %and9 = and i32 %17, %sub8
  %idx.ext = zext i32 %and9 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %15, i64 %idx.ext
  %20 = bitcast i8** %add.ptr to i8*
  %21 = load i32, i32* %len2, align 4
  %conv = zext i32 %21 to i64
  %mul = mul i64 %conv, 8
  %22 = call i8* @memcpy(i8* %13, i8* %20, i64 %mul)
  %23 = load i32, i32* %len, align 4
  %24 = load i32, i32* %len2, align 4
  %cmp = icmp ult i32 %23, %24
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %25 = load i8**, i8*** %element.addr, align 8
  %26 = bitcast i8** %25 to i8*
  %27 = load %struct.AisKfifo*, %struct.AisKfifo** %pstKFifo.addr, align 8
  %buffer11 = getelementptr inbounds %struct.AisKfifo, %struct.AisKfifo* %27, i32 0, i32 0
  %28 = load i8**, i8*** %buffer11, align 8
  %29 = bitcast i8** %28 to i8*
  %30 = load i32, i32* %len, align 4
  %31 = load i32, i32* %len2, align 4
  %sub12 = sub i32 %30, %31
  %conv13 = zext i32 %sub12 to i64
  %mul14 = mul i64 %conv13, 8
  %32 = call i8* @memcpy(i8* %26, i8* %29, i64 %mul14)
  %33 = load i32, i32* %len, align 4
  %34 = load %struct.AisKfifo*, %struct.AisKfifo** %pstKFifo.addr, align 8
  %out15 = getelementptr inbounds %struct.AisKfifo, %struct.AisKfifo* %34, i32 0, i32 3
  %35 = load i32, i32* %out15, align 8
  %add = add i32 %35, %33
  store i32 %add, i32* %out15, align 8
  %36 = load i32, i32* %len, align 4
  %cmp16 = icmp eq i32 %36, 0
  %37 = zext i1 %cmp16 to i64
  %cond = select i1 %cmp16, i32 1, i32 0
  store i32 %cond, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %38 = load i32, i32* %retval, align 4
  ret i32 %38
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #1

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

declare dso_local i32 @free(...) #2

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
  br i1 %tobool, label %if.end, label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.AisAppEnv*, %struct.AisAppEnv** %env.addr, align 8
  %bufLen = getelementptr inbounds %struct.AisAppEnv, %struct.AisAppEnv* %3, i32 0, i32 12
  %4 = load i8, i8* %bufLen, align 2
  %conv = zext i8 %4 to i32
  store i32 %conv, i32* %len, align 4
  br label %do.body

do.body:                                          ; preds = %for.end, %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %do.body
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %len, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

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

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %len, align 4
  %dec = add nsw i32 %12, -1
  store i32 %dec, i32* %len, align 4
  %13 = load i32, i32* %len, align 4
  %cmp2 = icmp sgt i32 %13, 0
  br i1 %cmp2, label %do.body, label %return

return:                                           ; preds = %for.end, %entry
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

declare dso_local i8* @malloc(i64) #2

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8*, i8*, i64) #0 !dbg !8 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !18, metadata !DIExpression()), !dbg !19
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !20, metadata !DIExpression()), !dbg !21
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i8** %7, metadata !24, metadata !DIExpression()), !dbg !27
  %9 = load i8*, i8** %4, align 8, !dbg !28
  store i8* %9, i8** %7, align 8, !dbg !27
  call void @llvm.dbg.declare(metadata i8** %8, metadata !29, metadata !DIExpression()), !dbg !32
  %10 = load i8*, i8** %5, align 8, !dbg !33
  store i8* %10, i8** %8, align 8, !dbg !32
  br label %11, !dbg !34

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !35
  %13 = add i64 %12, -1, !dbg !35
  store i64 %13, i64* %6, align 8, !dbg !35
  %14 = icmp ugt i64 %12, 0, !dbg !36
  br i1 %14, label %15, label %21, !dbg !34

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !37
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !37
  store i8* %17, i8** %8, align 8, !dbg !37
  %18 = load i8, i8* %16, align 1, !dbg !38
  %19 = load i8*, i8** %7, align 8, !dbg !39
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !39
  store i8* %20, i8** %7, align 8, !dbg !39
  store i8 %18, i8* %19, align 1, !dbg !40
  br label %11, !dbg !34, !llvm.loop !41

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !42
  ret i8* %22, !dbg !43
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3, !4}
!llvm.dbg.cu = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!4 = !{!"clang version 9.0.0-2~ubuntu18.04.2 (tags/RELEASE_900/final)"}
!5 = distinct !DICompileUnit(language: DW_LANG_C99, file: !6, producer: "clang version 9.0.0-2~ubuntu18.04.2 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !7, nameTableKind: None)
!6 = !DIFile(filename: "/tmp/klee_src/runtime/Freestanding/memcpy.c", directory: "/tmp/klee_build90stp_z3/runtime/Freestanding")
!7 = !{}
!8 = distinct !DISubprogram(name: "memcpy", scope: !9, file: !9, line: 12, type: !10, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !7)
!9 = !DIFile(filename: "klee_src/runtime/Freestanding/memcpy.c", directory: "/tmp")
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12, !13, !15}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !16, line: 46, baseType: !17)
!16 = !DIFile(filename: "/usr/lib/llvm-9/lib/clang/9.0.0/include/stddef.h", directory: "")
!17 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!18 = !DILocalVariable(name: "destaddr", arg: 1, scope: !8, file: !9, line: 12, type: !12)
!19 = !DILocation(line: 12, column: 20, scope: !8)
!20 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !8, file: !9, line: 12, type: !13)
!21 = !DILocation(line: 12, column: 42, scope: !8)
!22 = !DILocalVariable(name: "len", arg: 3, scope: !8, file: !9, line: 12, type: !15)
!23 = !DILocation(line: 12, column: 58, scope: !8)
!24 = !DILocalVariable(name: "dest", scope: !8, file: !9, line: 13, type: !25)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!27 = !DILocation(line: 13, column: 9, scope: !8)
!28 = !DILocation(line: 13, column: 16, scope: !8)
!29 = !DILocalVariable(name: "src", scope: !8, file: !9, line: 14, type: !30)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!32 = !DILocation(line: 14, column: 15, scope: !8)
!33 = !DILocation(line: 14, column: 21, scope: !8)
!34 = !DILocation(line: 16, column: 3, scope: !8)
!35 = !DILocation(line: 16, column: 13, scope: !8)
!36 = !DILocation(line: 16, column: 16, scope: !8)
!37 = !DILocation(line: 17, column: 19, scope: !8)
!38 = !DILocation(line: 17, column: 15, scope: !8)
!39 = !DILocation(line: 17, column: 10, scope: !8)
!40 = !DILocation(line: 17, column: 13, scope: !8)
!41 = distinct !{!41, !34, !37}
!42 = !DILocation(line: 18, column: 10, scope: !8)
!43 = !DILocation(line: 18, column: 3, scope: !8)
