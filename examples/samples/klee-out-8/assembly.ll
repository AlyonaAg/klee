; ModuleID = '/home/klee/examples/samples/loop_1_1.bc'
source_filename = "loop_1_1.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tagCmfCondAndValue = type { %struct.tagTlvAppCfgiTblFldCondItem, i8* }
%struct.tagTlvAppCfgiTblFldCondItem = type { i8, i8, i16 }
%struct.tagVmeSmpMsgInfo = type <{ i8*, i16, i16, i8*, i32*, [1024 x i32], i8*, i32, i16, i16, i32*, i32*, i32, i32 }>
%struct.CLASS_AIS_AIECNSTATEDYN_S = type { i8, i8, [2 x i8], i32, i32, [16 x i8], [32 x i8], [64 x i8], [32 x i8], [16 x i8], i32 }

@g_cmfStCond = dso_local global [1024 x %struct.tagCmfCondAndValue] zeroinitializer, align 16
@.str = private unnamed_addr constant [8 x i8] c"struct1\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"struct2\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"struct3\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @AIS_AppCfgQryGetQueueId(i8* %pOutData, %struct.tagTlvAppCfgiTblFldCondItem* %pstTblFldCondItem, %struct.tagVmeSmpMsgInfo* %pstMsgInfo) #0 {
entry:
  %retval = alloca i32, align 4
  %pOutData.addr = alloca i8*, align 8
  %pstTblFldCondItem.addr = alloca %struct.tagTlvAppCfgiTblFldCondItem*, align 8
  %pstMsgInfo.addr = alloca %struct.tagVmeSmpMsgInfo*, align 8
  %i = alloca i32, align 4
  %pFieldValue = alloca i8*, align 8
  %ucCondNum = alloca i8, align 1
  %aiEcnState = alloca %struct.CLASS_AIS_AIECNSTATEDYN_S*, align 8
  store i8* %pOutData, i8** %pOutData.addr, align 8
  store %struct.tagTlvAppCfgiTblFldCondItem* %pstTblFldCondItem, %struct.tagTlvAppCfgiTblFldCondItem** %pstTblFldCondItem.addr, align 8
  store %struct.tagVmeSmpMsgInfo* %pstMsgInfo, %struct.tagVmeSmpMsgInfo** %pstMsgInfo.addr, align 8
  store i8* null, i8** %pFieldValue, align 8
  %0 = load i8*, i8** %pOutData.addr, align 8
  %1 = bitcast i8* %0 to %struct.CLASS_AIS_AIECNSTATEDYN_S*
  store %struct.CLASS_AIS_AIECNSTATEDYN_S* %1, %struct.CLASS_AIS_AIECNSTATEDYN_S** %aiEcnState, align 8
  %2 = load %struct.tagVmeSmpMsgInfo*, %struct.tagVmeSmpMsgInfo** %pstMsgInfo.addr, align 8
  %pCurBlock = getelementptr inbounds %struct.tagVmeSmpMsgInfo, %struct.tagVmeSmpMsgInfo* %2, i32 0, i32 5
  %arraydecay = getelementptr inbounds [1024 x i32], [1024 x i32]* %pCurBlock, i64 0, i64 0
  %3 = load i32, i32* %arraydecay, align 1
  %conv = trunc i32 %3 to i8
  store i8 %conv, i8* %ucCondNum, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i8, i8* %ucCondNum, align 1
  %conv1 = zext i8 %5 to i32
  %cmp = icmp ult i32 %4, %conv1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds [1024 x %struct.tagCmfCondAndValue], [1024 x %struct.tagCmfCondAndValue]* @g_cmfStCond, i64 0, i64 %idxprom
  %pvalue = getelementptr inbounds %struct.tagCmfCondAndValue, %struct.tagCmfCondAndValue* %arrayidx, i32 0, i32 1
  %7 = bitcast i8** %pvalue to i8*
  store i8* %7, i8** %pFieldValue, align 8
  %8 = load %struct.CLASS_AIS_AIECNSTATEDYN_S*, %struct.CLASS_AIS_AIECNSTATEDYN_S** %aiEcnState, align 8
  %queueId = getelementptr inbounds %struct.CLASS_AIS_AIECNSTATEDYN_S, %struct.CLASS_AIS_AIECNSTATEDYN_S* %8, i32 0, i32 0
  %9 = load i8, i8* %queueId, align 4
  %conv3 = zext i8 %9 to i32
  %cmp4 = icmp eq i32 %conv3, 0
  %10 = load %struct.tagTlvAppCfgiTblFldCondItem*, %struct.tagTlvAppCfgiTblFldCondItem** %pstTblFldCondItem.addr, align 8
  %cmp6 = icmp eq %struct.tagTlvAppCfgiTblFldCondItem* %10, null
  %or.cond = or i1 %cmp4, %cmp6
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  %11 = load %struct.tagTlvAppCfgiTblFldCondItem*, %struct.tagTlvAppCfgiTblFldCondItem** %pstTblFldCondItem.addr, align 8
  %ucFieldID = getelementptr inbounds %struct.tagTlvAppCfgiTblFldCondItem, %struct.tagTlvAppCfgiTblFldCondItem* %11, i32 0, i32 0
  %12 = load i8, i8* %ucFieldID, align 2
  %conv8 = zext i8 %12 to i32
  switch i32 %conv8, label %for.inc [
    i32 11, label %sw.bb
    i32 1, label %sw.bb9
  ]

sw.bb:                                            ; preds = %if.end
  %13 = load i8*, i8** %pFieldValue, align 8
  %14 = bitcast i8* %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.CLASS_AIS_AIECNSTATEDYN_S*, %struct.CLASS_AIS_AIECNSTATEDYN_S** %aiEcnState, align 8
  %ifIndex = getelementptr inbounds %struct.CLASS_AIS_AIECNSTATEDYN_S, %struct.CLASS_AIS_AIECNSTATEDYN_S* %16, i32 0, i32 10
  store i32 %15, i32* %ifIndex, align 4
  br label %for.inc

sw.bb9:                                           ; preds = %if.end
  %17 = load i8*, i8** %pFieldValue, align 8
  %18 = load i8, i8* %17, align 1
  %19 = load %struct.CLASS_AIS_AIECNSTATEDYN_S*, %struct.CLASS_AIS_AIECNSTATEDYN_S** %aiEcnState, align 8
  %queueId10 = getelementptr inbounds %struct.CLASS_AIS_AIECNSTATEDYN_S, %struct.CLASS_AIS_AIECNSTATEDYN_S* %19, i32 0, i32 0
  store i8 %18, i8* %queueId10, align 4
  br label %for.inc

for.inc:                                          ; preds = %sw.bb, %sw.bb9, %if.end
  %20 = load i32, i32* %i, align 4
  %inc = add i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %21 = load i32, i32* %retval, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %struct1 = alloca %struct.tagTlvAppCfgiTblFldCondItem, align 2
  %struct2 = alloca %struct.tagVmeSmpMsgInfo, align 1
  %struct3 = alloca %struct.CLASS_AIS_AIECNSTATEDYN_S, align 4
  %r = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast %struct.tagTlvAppCfgiTblFldCondItem* %struct1 to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %1 = bitcast %struct.tagVmeSmpMsgInfo* %struct2 to i8*
  call void @klee_make_symbolic(i8* %1, i64 4164, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %2 = bitcast %struct.CLASS_AIS_AIECNSTATEDYN_S* %struct3 to i8*
  call void @klee_make_symbolic(i8* %2, i64 176, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %3 = bitcast %struct.CLASS_AIS_AIECNSTATEDYN_S* %struct3 to i8*
  %call = call i32 @AIS_AppCfgQryGetQueueId(i8* %3, %struct.tagTlvAppCfgiTblFldCondItem* %struct1, %struct.tagVmeSmpMsgInfo* %struct2)
  store i32 %call, i32* %r, align 4
  %4 = load i32, i32* %r, align 4
  ret i32 %4
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
