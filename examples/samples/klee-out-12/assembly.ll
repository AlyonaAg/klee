; ModuleID = '/home/klee/examples/samples/loop_3_1.bc'
source_filename = "loop_3_1.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AisDynEcnV2Data = type <{ %struct.AisAutoEcnDataKey, %struct.avl3_node, %struct.AisDynEcnV2NetworkData, %struct.AisDynEcnV2NetworkData, float, i32, i64, i8, [7 x i8], i64, i32, i8, [3 x i8], double, double, i32, [4 x i8], double, double, i8, i8, i8, [5 x i8], double, double, double, double, i8, [3 x i8], %struct.AisEcnCfgInfo, %struct.AisEcnCfgInfo, %struct.AisEcnCfgInfo, %struct.AisEcnCfgInfo, [4 x i8], %struct.ECNAdjustInfo, %struct.ECNAdjustInfo, %struct.ECNAdjustInfo, %struct.ECNAdjustInfo, i8, i8, [2 x i8], %struct.AisEcnCfgInfo, %struct.AisEcnCfgInfo, i32, i8, [7 x i8], %struct.Fsm, i32*, i8, i8, i8, [1 x i8], float, i32, i8, i8, i8, [1 x i8], %struct.AisAutoEcnLogData, i32, [4 x i8], %struct.AisQueuePortBytesData }>
%struct.AisAutoEcnDataKey = type { %struct.IpAddr, i32, i32 }
%struct.IpAddr = type { i32 }
%struct.avl3_node = type { %struct.avl3_node*, %struct.avl3_node*, %struct.avl3_node*, i16, i16 }
%struct.AisDynEcnV2NetworkData = type { i64, i64, i64, i32, i32, i64, i32, double, double, %struct.AisEcnCfgInfo }
%struct.ECNAdjustInfo = type { double, double }
%struct.AisEcnCfgInfo = type { i32, i32, i32 }
%struct.Fsm = type { [32 x %struct.AisDynEcnV2FsmActTable], i32, i32, i32, i32, i32, i32 }
%struct.AisDynEcnV2FsmActTable = type { i32, i32, void (i8*, i32*)*, i32 }
%struct.AisAutoEcnLogData = type { double, double, float, float, i8 }
%struct.AisQueuePortBytesData = type { i64, i64, i64, float }

@.str = private unnamed_addr constant [8 x i8] c"struct1\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @AIS_SyncFSMECN(%struct.AisDynEcnV2Data* %stateParam) #0 {
entry:
  %stateParam.addr = alloca %struct.AisDynEcnV2Data*, align 8
  store %struct.AisDynEcnV2Data* %stateParam, %struct.AisDynEcnV2Data** %stateParam.addr, align 8
  %0 = load %struct.AisDynEcnV2Data*, %struct.AisDynEcnV2Data** %stateParam.addr, align 8
  %fsmEcnDecision = getelementptr inbounds %struct.AisDynEcnV2Data, %struct.AisDynEcnV2Data* %0, i32 0, i32 31
  %1 = bitcast %struct.AisEcnCfgInfo* %fsmEcnDecision to i8*
  %2 = load %struct.AisDynEcnV2Data*, %struct.AisDynEcnV2Data** %stateParam.addr, align 8
  %curOutputEcnCfgInfo = getelementptr inbounds %struct.AisDynEcnV2Data, %struct.AisDynEcnV2Data* %2, i32 0, i32 30
  %3 = bitcast %struct.AisEcnCfgInfo* %curOutputEcnCfgInfo to i8*
  %4 = call i8* @memcpy(i8* %1, i8* %3, i64 12)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @AIS_ECNOutput(%struct.AisDynEcnV2Data* %stateParam) #0 {
entry:
  %stateParam.addr = alloca %struct.AisDynEcnV2Data*, align 8
  store %struct.AisDynEcnV2Data* %stateParam, %struct.AisDynEcnV2Data** %stateParam.addr, align 8
  %0 = load %struct.AisDynEcnV2Data*, %struct.AisDynEcnV2Data** %stateParam.addr, align 8
  %preOutputEcnCfgInfo = getelementptr inbounds %struct.AisDynEcnV2Data, %struct.AisDynEcnV2Data* %0, i32 0, i32 29
  %1 = bitcast %struct.AisEcnCfgInfo* %preOutputEcnCfgInfo to i8*
  %2 = load %struct.AisDynEcnV2Data*, %struct.AisDynEcnV2Data** %stateParam.addr, align 8
  %curOutputEcnCfgInfo = getelementptr inbounds %struct.AisDynEcnV2Data, %struct.AisDynEcnV2Data* %2, i32 0, i32 30
  %3 = bitcast %struct.AisEcnCfgInfo* %curOutputEcnCfgInfo to i8*
  %4 = call i8* @memcpy(i8* %1, i8* %3, i64 12)
  %5 = load %struct.AisDynEcnV2Data*, %struct.AisDynEcnV2Data** %stateParam.addr, align 8
  %curOutputEcnCfgInfo1 = getelementptr inbounds %struct.AisDynEcnV2Data, %struct.AisDynEcnV2Data* %5, i32 0, i32 30
  %6 = bitcast %struct.AisEcnCfgInfo* %curOutputEcnCfgInfo1 to i8*
  %7 = load %struct.AisDynEcnV2Data*, %struct.AisDynEcnV2Data** %stateParam.addr, align 8
  %fsmEcnDecision = getelementptr inbounds %struct.AisDynEcnV2Data, %struct.AisDynEcnV2Data* %7, i32 0, i32 31
  %8 = bitcast %struct.AisEcnCfgInfo* %fsmEcnDecision to i8*
  %9 = call i8* @memcpy(i8* %6, i8* %8, i64 12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @AIS_DynEcnV2FsmEventHandle(%struct.AisDynEcnV2Data* %stateParam) #0 {
entry:
  %retval = alloca i32, align 4
  %stateParam.addr = alloca %struct.AisDynEcnV2Data*, align 8
  %pFsm = alloca %struct.Fsm*, align 8
  %actTable = alloca %struct.AisDynEcnV2FsmActTable*, align 8
  %eventActFun = alloca void (i8*, i32*)*, align 8
  %curState = alloca i32, align 4
  %nextState = alloca i32, align 4
  %i = alloca i32, align 4
  %flag = alloca i32, align 4
  store %struct.AisDynEcnV2Data* %stateParam, %struct.AisDynEcnV2Data** %stateParam.addr, align 8
  %0 = load %struct.AisDynEcnV2Data*, %struct.AisDynEcnV2Data** %stateParam.addr, align 8
  %ecnFsm = getelementptr inbounds %struct.AisDynEcnV2Data, %struct.AisDynEcnV2Data* %0, i32 0, i32 46
  store %struct.Fsm* %ecnFsm, %struct.Fsm** %pFsm, align 8
  %1 = load %struct.Fsm*, %struct.Fsm** %pFsm, align 8
  %actTable1 = getelementptr inbounds %struct.Fsm, %struct.Fsm* %1, i32 0, i32 0
  %arraydecay = getelementptr inbounds [32 x %struct.AisDynEcnV2FsmActTable], [32 x %struct.AisDynEcnV2FsmActTable]* %actTable1, i64 0, i64 0
  store %struct.AisDynEcnV2FsmActTable* %arraydecay, %struct.AisDynEcnV2FsmActTable** %actTable, align 8
  store void (i8*, i32*)* null, void (i8*, i32*)** %eventActFun, align 8
  %2 = load %struct.Fsm*, %struct.Fsm** %pFsm, align 8
  %curStates = getelementptr inbounds %struct.Fsm, %struct.Fsm* %2, i32 0, i32 1
  %3 = load i32, i32* %curStates, align 8
  store i32 %3, i32* %curState, align 4
  store i32 0, i32* %nextState, align 4
  %4 = load %struct.AisDynEcnV2Data*, %struct.AisDynEcnV2Data** %stateParam.addr, align 8
  call void @AIS_SyncFSMECN(%struct.AisDynEcnV2Data* %4)
  store i32 0, i32* %flag, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.Fsm*, %struct.Fsm** %pFsm, align 8
  %size = getelementptr inbounds %struct.Fsm, %struct.Fsm* %6, i32 0, i32 4
  %7 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.Fsm*, %struct.Fsm** %pFsm, align 8
  %event = getelementptr inbounds %struct.Fsm, %struct.Fsm* %8, i32 0, i32 3
  %9 = load i32, i32* %event, align 8
  %10 = load %struct.AisDynEcnV2FsmActTable*, %struct.AisDynEcnV2FsmActTable** %actTable, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds %struct.AisDynEcnV2FsmActTable, %struct.AisDynEcnV2FsmActTable* %10, i64 %idxprom
  %event2 = getelementptr inbounds %struct.AisDynEcnV2FsmActTable, %struct.AisDynEcnV2FsmActTable* %arrayidx, i32 0, i32 1
  %12 = load i32, i32* %event2, align 4
  %cmp3 = icmp eq i32 %9, %12
  br i1 %cmp3, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %13 = load i32, i32* %curState, align 4
  %14 = load %struct.AisDynEcnV2FsmActTable*, %struct.AisDynEcnV2FsmActTable** %actTable, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %15 to i64
  %arrayidx5 = getelementptr inbounds %struct.AisDynEcnV2FsmActTable, %struct.AisDynEcnV2FsmActTable* %14, i64 %idxprom4
  %curState6 = getelementptr inbounds %struct.AisDynEcnV2FsmActTable, %struct.AisDynEcnV2FsmActTable* %arrayidx5, i32 0, i32 0
  %16 = load i32, i32* %curState6, align 8
  %cmp7 = icmp eq i32 %13, %16
  br i1 %cmp7, label %if.then, label %for.inc

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %flag, align 4
  %17 = load %struct.AisDynEcnV2FsmActTable*, %struct.AisDynEcnV2FsmActTable** %actTable, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %18 to i64
  %arrayidx9 = getelementptr inbounds %struct.AisDynEcnV2FsmActTable, %struct.AisDynEcnV2FsmActTable* %17, i64 %idxprom8
  %eventActFun10 = getelementptr inbounds %struct.AisDynEcnV2FsmActTable, %struct.AisDynEcnV2FsmActTable* %arrayidx9, i32 0, i32 2
  %19 = load void (i8*, i32*)*, void (i8*, i32*)** %eventActFun10, align 8
  store void (i8*, i32*)* %19, void (i8*, i32*)** %eventActFun, align 8
  %20 = load %struct.AisDynEcnV2FsmActTable*, %struct.AisDynEcnV2FsmActTable** %actTable, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %21 to i64
  %arrayidx12 = getelementptr inbounds %struct.AisDynEcnV2FsmActTable, %struct.AisDynEcnV2FsmActTable* %20, i64 %idxprom11
  %nextState13 = getelementptr inbounds %struct.AisDynEcnV2FsmActTable, %struct.AisDynEcnV2FsmActTable* %arrayidx12, i32 0, i32 3
  %22 = load i32, i32* %nextState13, align 8
  store i32 %22, i32* %nextState, align 4
  br label %for.end

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %24 = load i32, i32* %flag, align 4
  %cmp14 = icmp ne i32 %24, 1
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %for.end
  store i32 1, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %for.end
  %25 = load %struct.AisDynEcnV2Data*, %struct.AisDynEcnV2Data** %stateParam.addr, align 8
  %call = call i32 @AIS_ECNOutput(%struct.AisDynEcnV2Data* %25)
  store i32 %call, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end16, %if.then15
  %26 = load i32, i32* %retval, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %r = alloca i32, align 4
  %struct1 = alloca %struct.AisDynEcnV2Data, align 1
  store i32 0, i32* %retval, align 4
  %0 = bitcast %struct.AisDynEcnV2Data* %struct1 to i8*
  call void @klee_make_symbolic(i8* %0, i64 1372, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %call = call i32 @AIS_DynEcnV2FsmEventHandle(%struct.AisDynEcnV2Data* %struct1)
  store i32 %call, i32* %r, align 4
  %1 = load i32, i32* %r, align 4
  ret i32 %1
}

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
