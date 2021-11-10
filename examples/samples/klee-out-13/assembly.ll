; ModuleID = '/home/klee/examples/samples/loop_4.bc'
source_filename = "loop_4.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AisQueueDataMgr = type { %struct.tagVosListHead, %struct.AisQueueDataMgrInfo, i32 }
%struct.tagVosListHead = type { %struct.tagVosListHead*, %struct.tagVosListHead* }
%struct.AisQueueDataMgrInfo = type { i32, i64, i64, i64 }
%struct.AisAutoEcnDataMgr = type { %struct.AisAutoEcnDataMgrInfo, %struct.avll_tree }
%struct.AisAutoEcnDataMgrInfo = type { i64, i64 }
%struct.avll_tree = type { %struct.avl3_tree, %struct.avl3_tree_info }
%struct.avl3_tree = type { %struct.avl3_node*, %struct.avl3_node*, %struct.avl3_node* }
%struct.avl3_node = type { %struct.avl3_node*, %struct.avl3_node*, %struct.avl3_node*, i16, i16 }
%struct.avl3_tree_info = type { i32 (i8*, i8*)*, i16, i16 }
%struct.TagAisAppInfo = type { i32, i32 (%struct.TagAisAppInfo*, i8*)*, void (%struct.TagAisAppInfo*, i8*)*, i32 (i8*, %struct.TagAisAppInfo*)*, {}*, i32 (i8*, %struct.TagAisAppInfo*, i32, i8*)*, %struct.AisModelFile, %struct.EaiModelCfgT, i8*, i32, i32, i32, i32, i32, i64, i32, i32, i32, i8*, i32 }
%struct.AisModelFile = type { [256 x i8], [256 x i8] }
%struct.EaiModelCfgT = type { i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.AisiLossLessLocal = type { [16 x %struct.AisQueueDataMgr*], %struct.AisAutoEcnDataMgr*, %struct.AisBlackBox*, [12 x %struct.AisEcnCfg], [144 x i32], i32, i32, [16 x i64], i8, %struct.tagVOS_VFS_FCB*, %struct.AisiLossLessLocalStat, %struct.AisGaiEcnData }
%struct.AisBlackBox = type { i32, i32, i32, i32, %struct.AisBlackBoxData*, i32, i64 }
%struct.AisBlackBoxData = type { %struct.tagVosSystm, i32, i32, [64 x i8], [512 x i8] }
%struct.tagVosSystm = type { i16, i8, i8, i8, i8, i8, i8, i32 }
%struct.AisEcnCfg = type { i32, i32, i32 }
%struct.tagVOS_VFS_FCB = type <{ i8*, i32, i32, i32, i8*, i32, i32, i8, i8, i16, i32, i32, i32, %struct.tagVosSystm, %struct.tagVosSystm }>
%struct.AisiLossLessLocalStat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.AisGaiEcnData = type { i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"struct1\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"struct2\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @AIS_QueueDataMgrDestroy(%struct.AisQueueDataMgr* %mgr) #0 {
entry:
  %mgr.addr = alloca %struct.AisQueueDataMgr*, align 8
  store %struct.AisQueueDataMgr* %mgr, %struct.AisQueueDataMgr** %mgr.addr, align 8
  %0 = load %struct.AisQueueDataMgr*, %struct.AisQueueDataMgr** %mgr.addr, align 8
  %tobool = icmp ne %struct.AisQueueDataMgr* %0, null
  br i1 %tobool, label %if.end, label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.AisQueueDataMgr*, %struct.AisQueueDataMgr** %mgr.addr, align 8
  %call = call i32 (%struct.AisQueueDataMgr*, ...) bitcast (i32 (...)* @free to i32 (%struct.AisQueueDataMgr*, ...)*)(%struct.AisQueueDataMgr* %1)
  store %struct.AisQueueDataMgr* null, %struct.AisQueueDataMgr** %mgr.addr, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

declare dso_local i32 @free(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.AisQueueDataMgr* @AIS_QueueDataMgrCreate(%struct.AisQueueDataMgrInfo* %mgrInfo) #0 {
entry:
  %retval = alloca %struct.AisQueueDataMgr*, align 8
  %mgrInfo.addr = alloca %struct.AisQueueDataMgrInfo*, align 8
  %mgr = alloca %struct.AisQueueDataMgr*, align 8
  store %struct.AisQueueDataMgrInfo* %mgrInfo, %struct.AisQueueDataMgrInfo** %mgrInfo.addr, align 8
  store %struct.AisQueueDataMgr* null, %struct.AisQueueDataMgr** %mgr, align 8
  %call = call i8* @malloc(i64 56)
  %0 = bitcast i8* %call to %struct.AisQueueDataMgr*
  store %struct.AisQueueDataMgr* %0, %struct.AisQueueDataMgr** %mgr, align 8
  %1 = load %struct.AisQueueDataMgr*, %struct.AisQueueDataMgr** %mgr, align 8
  %tobool = icmp ne %struct.AisQueueDataMgr* %1, null
  %2 = load %struct.AisQueueDataMgr*, %struct.AisQueueDataMgr** %mgr, align 8
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @AIS_QueueDataMgrDestroy(%struct.AisQueueDataMgr* %2)
  store %struct.AisQueueDataMgr* null, %struct.AisQueueDataMgr** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = bitcast %struct.AisQueueDataMgr* %2 to i8*
  %4 = call i8* @memset(i8* %3, i32 0, i64 56)
  %5 = load %struct.AisQueueDataMgr*, %struct.AisQueueDataMgr** %mgr, align 8
  %info = getelementptr inbounds %struct.AisQueueDataMgr, %struct.AisQueueDataMgr* %5, i32 0, i32 1
  %6 = bitcast %struct.AisQueueDataMgrInfo* %info to i8*
  %7 = load %struct.AisQueueDataMgrInfo*, %struct.AisQueueDataMgrInfo** %mgrInfo.addr, align 8
  %8 = bitcast %struct.AisQueueDataMgrInfo* %7 to i8*
  %9 = call i8* @memcpy(i8* %6, i8* %8, i64 32)
  %10 = load %struct.AisQueueDataMgr*, %struct.AisQueueDataMgr** %mgr, align 8
  %versionRemained = getelementptr inbounds %struct.AisQueueDataMgr, %struct.AisQueueDataMgr* %10, i32 0, i32 2
  store i32 0, i32* %versionRemained, align 8
  %11 = load %struct.AisQueueDataMgr*, %struct.AisQueueDataMgr** %mgr, align 8
  store %struct.AisQueueDataMgr* %11, %struct.AisQueueDataMgr** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load %struct.AisQueueDataMgr*, %struct.AisQueueDataMgr** %retval, align 8
  ret %struct.AisQueueDataMgr* %12
}

declare dso_local i8* @malloc(i64) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.AisAutoEcnDataMgr* @AIS_AutoEcnDataMgrCreate(%struct.AisAutoEcnDataMgrInfo* %mgrInfo) #0 {
entry:
  %retval = alloca %struct.AisAutoEcnDataMgr*, align 8
  %mgrInfo.addr = alloca %struct.AisAutoEcnDataMgrInfo*, align 8
  %mgr = alloca %struct.AisAutoEcnDataMgr*, align 8
  store %struct.AisAutoEcnDataMgrInfo* %mgrInfo, %struct.AisAutoEcnDataMgrInfo** %mgrInfo.addr, align 8
  %call = call i8* @malloc(i64 56)
  %0 = bitcast i8* %call to %struct.AisAutoEcnDataMgr*
  store %struct.AisAutoEcnDataMgr* %0, %struct.AisAutoEcnDataMgr** %mgr, align 8
  %1 = load %struct.AisAutoEcnDataMgr*, %struct.AisAutoEcnDataMgr** %mgr, align 8
  %tobool = icmp ne %struct.AisAutoEcnDataMgr* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.AisAutoEcnDataMgr* null, %struct.AisAutoEcnDataMgr** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.AisAutoEcnDataMgr*, %struct.AisAutoEcnDataMgr** %mgr, align 8
  %3 = bitcast %struct.AisAutoEcnDataMgr* %2 to i8*
  %4 = call i8* @memset(i8* %3, i32 0, i64 56)
  %5 = load %struct.AisAutoEcnDataMgr*, %struct.AisAutoEcnDataMgr** %mgr, align 8
  %info = getelementptr inbounds %struct.AisAutoEcnDataMgr, %struct.AisAutoEcnDataMgr* %5, i32 0, i32 0
  %6 = bitcast %struct.AisAutoEcnDataMgrInfo* %info to i8*
  %7 = load %struct.AisAutoEcnDataMgrInfo*, %struct.AisAutoEcnDataMgrInfo** %mgrInfo.addr, align 8
  %8 = bitcast %struct.AisAutoEcnDataMgrInfo* %7 to i8*
  %9 = call i8* @memcpy(i8* %6, i8* %8, i64 16)
  %10 = load %struct.AisAutoEcnDataMgr*, %struct.AisAutoEcnDataMgr** %mgr, align 8
  store %struct.AisAutoEcnDataMgr* %10, %struct.AisAutoEcnDataMgr** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load %struct.AisAutoEcnDataMgr*, %struct.AisAutoEcnDataMgr** %retval, align 8
  ret %struct.AisAutoEcnDataMgr* %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @AISiLossLessLocalDeIniter(i8* %appLocal, %struct.TagAisAppInfo* %info) #0 {
entry:
  %appLocal.addr = alloca i8*, align 8
  %info.addr = alloca %struct.TagAisAppInfo*, align 8
  %slotIndex = alloca i32, align 4
  %local = alloca %struct.AisiLossLessLocal*, align 8
  store i8* %appLocal, i8** %appLocal.addr, align 8
  store %struct.TagAisAppInfo* %info, %struct.TagAisAppInfo** %info.addr, align 8
  %0 = load i8*, i8** %appLocal.addr, align 8
  %1 = bitcast i8* %0 to %struct.AisiLossLessLocal*
  store %struct.AisiLossLessLocal* %1, %struct.AisiLossLessLocal** %local, align 8
  store i32 0, i32* %slotIndex, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %slotIndex, align 4
  %cmp = icmp ult i32 %2, 16
  %3 = load %struct.AisiLossLessLocal*, %struct.AisiLossLessLocal** %local, align 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %queueDataMgr = getelementptr inbounds %struct.AisiLossLessLocal, %struct.AisiLossLessLocal* %3, i32 0, i32 0
  %4 = load i32, i32* %slotIndex, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds [16 x %struct.AisQueueDataMgr*], [16 x %struct.AisQueueDataMgr*]* %queueDataMgr, i64 0, i64 %idxprom
  %5 = load %struct.AisQueueDataMgr*, %struct.AisQueueDataMgr** %arrayidx, align 8
  %tobool = icmp ne %struct.AisQueueDataMgr* %5, null
  br i1 %tobool, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %6 = load %struct.AisiLossLessLocal*, %struct.AisiLossLessLocal** %local, align 8
  %queueDataMgr1 = getelementptr inbounds %struct.AisiLossLessLocal, %struct.AisiLossLessLocal* %6, i32 0, i32 0
  %7 = load i32, i32* %slotIndex, align 4
  %idxprom2 = zext i32 %7 to i64
  %arrayidx3 = getelementptr inbounds [16 x %struct.AisQueueDataMgr*], [16 x %struct.AisQueueDataMgr*]* %queueDataMgr1, i64 0, i64 %idxprom2
  %8 = load %struct.AisQueueDataMgr*, %struct.AisQueueDataMgr** %arrayidx3, align 8
  call void @AIS_QueueDataMgrDestroy(%struct.AisQueueDataMgr* %8)
  %9 = load %struct.AisiLossLessLocal*, %struct.AisiLossLessLocal** %local, align 8
  %queueDataMgr4 = getelementptr inbounds %struct.AisiLossLessLocal, %struct.AisiLossLessLocal* %9, i32 0, i32 0
  %10 = load i32, i32* %slotIndex, align 4
  %idxprom5 = zext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds [16 x %struct.AisQueueDataMgr*], [16 x %struct.AisQueueDataMgr*]* %queueDataMgr4, i64 0, i64 %idxprom5
  store %struct.AisQueueDataMgr* null, %struct.AisQueueDataMgr** %arrayidx6, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %11 = load i32, i32* %slotIndex, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %slotIndex, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %ecnDataMgr = getelementptr inbounds %struct.AisiLossLessLocal, %struct.AisiLossLessLocal* %3, i32 0, i32 1
  %12 = load %struct.AisAutoEcnDataMgr*, %struct.AisAutoEcnDataMgr** %ecnDataMgr, align 8
  %tobool7 = icmp ne %struct.AisAutoEcnDataMgr* %12, null
  br i1 %tobool7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %for.end
  %13 = load %struct.AisiLossLessLocal*, %struct.AisiLossLessLocal** %local, align 8
  %ecnDataMgr9 = getelementptr inbounds %struct.AisiLossLessLocal, %struct.AisiLossLessLocal* %13, i32 0, i32 1
  store %struct.AisAutoEcnDataMgr* null, %struct.AisAutoEcnDataMgr** %ecnDataMgr9, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %for.end
  %14 = load %struct.AisiLossLessLocal*, %struct.AisiLossLessLocal** %local, align 8
  %blackBox = getelementptr inbounds %struct.AisiLossLessLocal, %struct.AisiLossLessLocal* %14, i32 0, i32 2
  %15 = load %struct.AisBlackBox*, %struct.AisBlackBox** %blackBox, align 8
  %tobool11 = icmp ne %struct.AisBlackBox* %15, null
  br i1 %tobool11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end10
  %16 = load %struct.AisiLossLessLocal*, %struct.AisiLossLessLocal** %local, align 8
  %blackBox13 = getelementptr inbounds %struct.AisiLossLessLocal, %struct.AisiLossLessLocal* %16, i32 0, i32 2
  store %struct.AisBlackBox* null, %struct.AisBlackBox** %blackBox13, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10
  %17 = load %struct.AisiLossLessLocal*, %struct.AisiLossLessLocal** %local, align 8
  %logFile = getelementptr inbounds %struct.AisiLossLessLocal, %struct.AisiLossLessLocal* %17, i32 0, i32 9
  %18 = load %struct.tagVOS_VFS_FCB*, %struct.tagVOS_VFS_FCB** %logFile, align 8
  %tobool15 = icmp ne %struct.tagVOS_VFS_FCB* %18, null
  br i1 %tobool15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end14
  %19 = load %struct.AisiLossLessLocal*, %struct.AisiLossLessLocal** %local, align 8
  %logFile17 = getelementptr inbounds %struct.AisiLossLessLocal, %struct.AisiLossLessLocal* %19, i32 0, i32 9
  store %struct.tagVOS_VFS_FCB* null, %struct.tagVOS_VFS_FCB** %logFile17, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @strcat(i8* %dest, i8* %src) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  %0 = load i8*, i8** %dest.addr, align 8
  store i8* %0, i8** %tmp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i8*, i8** %tmp, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.cond2

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %tmp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %tmp, align 8
  br label %while.cond

while.cond2:                                      ; preds = %while.cond2, %while.cond
  %4 = load i8*, i8** %src.addr, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr3, i8** %src.addr, align 8
  %5 = load i8, i8* %4, align 1
  %6 = load i8*, i8** %tmp, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr4, i8** %tmp, align 8
  store i8 %5, i8* %6, align 1
  %conv5 = sext i8 %5 to i32
  %cmp6 = icmp ne i32 %conv5, 0
  br i1 %cmp6, label %while.cond2, label %while.end9

while.end9:                                       ; preds = %while.cond2
  %7 = load i8*, i8** %dest.addr, align 8
  ret i8* %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @AISiLossLessLocalIniter(i8* %appLocal, %struct.TagAisAppInfo* %info) #0 {
entry:
  %retval = alloca i32, align 4
  %appLocal.addr = alloca i8*, align 8
  %info.addr = alloca %struct.TagAisAppInfo*, align 8
  %local = alloca %struct.AisiLossLessLocal*, align 8
  %queueInfo = alloca %struct.AisQueueDataMgrInfo, align 8
  %ecnInfo = alloca %struct.AisAutoEcnDataMgrInfo, align 8
  %slotIndex = alloca i32, align 4
  %modelAbsolutePath = alloca [512 x i8], align 16
  store i8* %appLocal, i8** %appLocal.addr, align 8
  store %struct.TagAisAppInfo* %info, %struct.TagAisAppInfo** %info.addr, align 8
  %0 = load i8*, i8** %appLocal.addr, align 8
  %1 = bitcast i8* %0 to %struct.AisiLossLessLocal*
  store %struct.AisiLossLessLocal* %1, %struct.AisiLossLessLocal** %local, align 8
  %interval = getelementptr inbounds %struct.AisQueueDataMgrInfo, %struct.AisQueueDataMgrInfo* %queueInfo, i32 0, i32 1
  store i64 500, i64* %interval, align 8
  %maxVersionRemained = getelementptr inbounds %struct.AisQueueDataMgrInfo, %struct.AisQueueDataMgrInfo* %queueInfo, i32 0, i32 0
  store i32 100, i32* %maxVersionRemained, align 8
  %timeOffset = getelementptr inbounds %struct.AisQueueDataMgrInfo, %struct.AisQueueDataMgrInfo* %queueInfo, i32 0, i32 2
  store i64 0, i64* %timeOffset, align 8
  %2 = load %struct.TagAisAppInfo*, %struct.TagAisAppInfo** %info.addr, align 8
  %memHandle = getelementptr inbounds %struct.TagAisAppInfo, %struct.TagAisAppInfo* %2, i32 0, i32 14
  %3 = load i64, i64* %memHandle, align 8
  %memHandle1 = getelementptr inbounds %struct.AisQueueDataMgrInfo, %struct.AisQueueDataMgrInfo* %queueInfo, i32 0, i32 3
  store i64 %3, i64* %memHandle1, align 8
  store i32 0, i32* %slotIndex, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %slotIndex, align 4
  %cmp = icmp ult i32 %4, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call %struct.AisQueueDataMgr* @AIS_QueueDataMgrCreate(%struct.AisQueueDataMgrInfo* %queueInfo)
  %5 = load %struct.AisiLossLessLocal*, %struct.AisiLossLessLocal** %local, align 8
  %queueDataMgr = getelementptr inbounds %struct.AisiLossLessLocal, %struct.AisiLossLessLocal* %5, i32 0, i32 0
  %6 = load i32, i32* %slotIndex, align 4
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds [16 x %struct.AisQueueDataMgr*], [16 x %struct.AisQueueDataMgr*]* %queueDataMgr, i64 0, i64 %idxprom
  store %struct.AisQueueDataMgr* %call, %struct.AisQueueDataMgr** %arrayidx, align 8
  %7 = load %struct.AisiLossLessLocal*, %struct.AisiLossLessLocal** %local, align 8
  %queueDataMgr2 = getelementptr inbounds %struct.AisiLossLessLocal, %struct.AisiLossLessLocal* %7, i32 0, i32 0
  %8 = load i32, i32* %slotIndex, align 4
  %idxprom3 = zext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds [16 x %struct.AisQueueDataMgr*], [16 x %struct.AisQueueDataMgr*]* %queueDataMgr2, i64 0, i64 %idxprom3
  %9 = load %struct.AisQueueDataMgr*, %struct.AisQueueDataMgr** %arrayidx4, align 8
  %cmp5 = icmp eq %struct.AisQueueDataMgr* %9, null
  br i1 %cmp5, label %ERROR, label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %slotIndex, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %slotIndex, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %interval6 = getelementptr inbounds %struct.AisAutoEcnDataMgrInfo, %struct.AisAutoEcnDataMgrInfo* %ecnInfo, i32 0, i32 0
  store i64 500, i64* %interval6, align 8
  %11 = load %struct.TagAisAppInfo*, %struct.TagAisAppInfo** %info.addr, align 8
  %memHandle7 = getelementptr inbounds %struct.TagAisAppInfo, %struct.TagAisAppInfo* %11, i32 0, i32 14
  %12 = load i64, i64* %memHandle7, align 8
  %memHandle8 = getelementptr inbounds %struct.AisAutoEcnDataMgrInfo, %struct.AisAutoEcnDataMgrInfo* %ecnInfo, i32 0, i32 1
  store i64 %12, i64* %memHandle8, align 8
  %call9 = call %struct.AisAutoEcnDataMgr* @AIS_AutoEcnDataMgrCreate(%struct.AisAutoEcnDataMgrInfo* %ecnInfo)
  %13 = load %struct.AisiLossLessLocal*, %struct.AisiLossLessLocal** %local, align 8
  %ecnDataMgr = getelementptr inbounds %struct.AisiLossLessLocal, %struct.AisiLossLessLocal* %13, i32 0, i32 1
  store %struct.AisAutoEcnDataMgr* %call9, %struct.AisAutoEcnDataMgr** %ecnDataMgr, align 8
  %14 = load %struct.AisiLossLessLocal*, %struct.AisiLossLessLocal** %local, align 8
  %ecnDataMgr10 = getelementptr inbounds %struct.AisiLossLessLocal, %struct.AisiLossLessLocal* %14, i32 0, i32 1
  %15 = load %struct.AisAutoEcnDataMgr*, %struct.AisAutoEcnDataMgr** %ecnDataMgr10, align 8
  %cmp11 = icmp eq %struct.AisAutoEcnDataMgr* %15, null
  br i1 %cmp11, label %ERROR, label %if.end13

if.end13:                                         ; preds = %for.end
  %16 = bitcast [512 x i8]* %modelAbsolutePath to i8*
  %17 = call i8* @memset(i8* %16, i32 0, i64 512)
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %modelAbsolutePath, i64 0, i64 0
  %18 = load %struct.TagAisAppInfo*, %struct.TagAisAppInfo** %info.addr, align 8
  %modelFile = getelementptr inbounds %struct.TagAisAppInfo, %struct.TagAisAppInfo* %18, i32 0, i32 6
  %path = getelementptr inbounds %struct.AisModelFile, %struct.AisModelFile* %modelFile, i32 0, i32 0
  %arraydecay14 = getelementptr inbounds [256 x i8], [256 x i8]* %path, i64 0, i64 0
  %call15 = call i8* @strcat(i8* %arraydecay, i8* %arraydecay14)
  %cmp16 = icmp ne i8* null, %call15
  br i1 %cmp16, label %ERROR, label %if.end18

if.end18:                                         ; preds = %if.end13
  %arraydecay19 = getelementptr inbounds [512 x i8], [512 x i8]* %modelAbsolutePath, i64 0, i64 0
  %19 = load %struct.TagAisAppInfo*, %struct.TagAisAppInfo** %info.addr, align 8
  %modelFile20 = getelementptr inbounds %struct.TagAisAppInfo, %struct.TagAisAppInfo* %19, i32 0, i32 6
  %name = getelementptr inbounds %struct.AisModelFile, %struct.AisModelFile* %modelFile20, i32 0, i32 1
  %arraydecay21 = getelementptr inbounds [256 x i8], [256 x i8]* %name, i64 0, i64 0
  %call22 = call i8* @strcat(i8* %arraydecay19, i8* %arraydecay21)
  %cmp23 = icmp ne i8* null, %call22
  br i1 %cmp23, label %ERROR, label %if.end25

if.end25:                                         ; preds = %if.end18
  %20 = load %struct.AisiLossLessLocal*, %struct.AisiLossLessLocal** %local, align 8
  %traningMode = getelementptr inbounds %struct.AisiLossLessLocal, %struct.AisiLossLessLocal* %20, i32 0, i32 5
  store i32 0, i32* %traningMode, align 8
  %21 = load %struct.AisiLossLessLocal*, %struct.AisiLossLessLocal** %local, align 8
  %debugMode = getelementptr inbounds %struct.AisiLossLessLocal, %struct.AisiLossLessLocal* %21, i32 0, i32 6
  store i32 0, i32* %debugMode, align 4
  store i32 0, i32* %retval, align 4
  br label %return

ERROR:                                            ; preds = %if.end18, %if.end13, %for.end, %for.body
  %22 = load i8*, i8** %appLocal.addr, align 8
  %23 = load %struct.TagAisAppInfo*, %struct.TagAisAppInfo** %info.addr, align 8
  call void @AISiLossLessLocalDeIniter(i8* %22, %struct.TagAisAppInfo* %23)
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %ERROR, %if.end25
  %24 = load i32, i32* %retval, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %struct1 = alloca %struct.AisiLossLessLocal, align 8
  %struct2 = alloca %struct.TagAisAppInfo, align 8
  %r = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 (%struct.AisiLossLessLocal*, i64, i8*, ...) bitcast (i32 (...)* @klee_make_symbolic to i32 (%struct.AisiLossLessLocal*, i64, i8*, ...)*)(%struct.AisiLossLessLocal* %struct1, i64 1072, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %call1 = call i32 (%struct.TagAisAppInfo*, i64, i8*, ...) bitcast (i32 (...)* @klee_make_symbolic to i32 (%struct.TagAisAppInfo*, i64, i8*, ...)*)(%struct.TagAisAppInfo* %struct2, i64 680, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %0 = bitcast %struct.AisiLossLessLocal* %struct1 to i8*
  %call2 = call i32 @AISiLossLessLocalIniter(i8* %0, %struct.TagAisAppInfo* %struct2)
  store i32 %call2, i32* %r, align 4
  %1 = load i32, i32* %r, align 4
  ret i32 %1
}

declare dso_local i32 @klee_make_symbolic(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8*, i8*, i64) #0 !dbg !10 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !20, metadata !DIExpression()), !dbg !21
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !22, metadata !DIExpression()), !dbg !23
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata i8** %7, metadata !26, metadata !DIExpression()), !dbg !29
  %9 = load i8*, i8** %4, align 8, !dbg !30
  store i8* %9, i8** %7, align 8, !dbg !29
  call void @llvm.dbg.declare(metadata i8** %8, metadata !31, metadata !DIExpression()), !dbg !34
  %10 = load i8*, i8** %5, align 8, !dbg !35
  store i8* %10, i8** %8, align 8, !dbg !34
  br label %11, !dbg !36

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !37
  %13 = add i64 %12, -1, !dbg !37
  store i64 %13, i64* %6, align 8, !dbg !37
  %14 = icmp ugt i64 %12, 0, !dbg !38
  br i1 %14, label %15, label %21, !dbg !36

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !39
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !39
  store i8* %17, i8** %8, align 8, !dbg !39
  %18 = load i8, i8* %16, align 1, !dbg !40
  %19 = load i8*, i8** %7, align 8, !dbg !41
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !41
  store i8* %20, i8** %7, align 8, !dbg !41
  store i8 %18, i8* %19, align 1, !dbg !42
  br label %11, !dbg !36, !llvm.loop !43

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !44
  ret i8* %22, !dbg !45
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8*, i32, i64) #0 !dbg !46 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !51, metadata !DIExpression()), !dbg !52
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !53, metadata !DIExpression()), !dbg !54
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata i8** %7, metadata !57, metadata !DIExpression()), !dbg !58
  %8 = load i8*, i8** %4, align 8, !dbg !59
  store i8* %8, i8** %7, align 8, !dbg !58
  br label %9, !dbg !60

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !61
  %11 = add i64 %10, -1, !dbg !61
  store i64 %11, i64* %6, align 8, !dbg !61
  %12 = icmp ugt i64 %10, 0, !dbg !62
  br i1 %12, label %13, label %18, !dbg !60

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !63
  %15 = trunc i32 %14 to i8, !dbg !63
  %16 = load i8*, i8** %7, align 8, !dbg !64
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !64
  store i8* %17, i8** %7, align 8, !dbg !64
  store i8 %15, i8* %16, align 1, !dbg !65
  br label %9, !dbg !60, !llvm.loop !66

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !67
  ret i8* %19, !dbg !68
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind readnone speculatable }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3, !4, !4}
!llvm.dbg.cu = !{!5, !8}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!4 = !{!"clang version 9.0.0-2~ubuntu18.04.2 (tags/RELEASE_900/final)"}
!5 = distinct !DICompileUnit(language: DW_LANG_C99, file: !6, producer: "clang version 9.0.0-2~ubuntu18.04.2 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !7, nameTableKind: None)
!6 = !DIFile(filename: "/tmp/klee_src/runtime/Freestanding/memcpy.c", directory: "/tmp/klee_build90stp_z3/runtime/Freestanding")
!7 = !{}
!8 = distinct !DICompileUnit(language: DW_LANG_C99, file: !9, producer: "clang version 9.0.0-2~ubuntu18.04.2 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !7, nameTableKind: None)
!9 = !DIFile(filename: "/tmp/klee_src/runtime/Freestanding/memset.c", directory: "/tmp/klee_build90stp_z3/runtime/Freestanding")
!10 = distinct !DISubprogram(name: "memcpy", scope: !11, file: !11, line: 12, type: !12, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !7)
!11 = !DIFile(filename: "klee_src/runtime/Freestanding/memcpy.c", directory: "/tmp")
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !14, !15, !17}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !18, line: 46, baseType: !19)
!18 = !DIFile(filename: "/usr/lib/llvm-9/lib/clang/9.0.0/include/stddef.h", directory: "")
!19 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!20 = !DILocalVariable(name: "destaddr", arg: 1, scope: !10, file: !11, line: 12, type: !14)
!21 = !DILocation(line: 12, column: 20, scope: !10)
!22 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !10, file: !11, line: 12, type: !15)
!23 = !DILocation(line: 12, column: 42, scope: !10)
!24 = !DILocalVariable(name: "len", arg: 3, scope: !10, file: !11, line: 12, type: !17)
!25 = !DILocation(line: 12, column: 58, scope: !10)
!26 = !DILocalVariable(name: "dest", scope: !10, file: !11, line: 13, type: !27)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!29 = !DILocation(line: 13, column: 9, scope: !10)
!30 = !DILocation(line: 13, column: 16, scope: !10)
!31 = !DILocalVariable(name: "src", scope: !10, file: !11, line: 14, type: !32)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!34 = !DILocation(line: 14, column: 15, scope: !10)
!35 = !DILocation(line: 14, column: 21, scope: !10)
!36 = !DILocation(line: 16, column: 3, scope: !10)
!37 = !DILocation(line: 16, column: 13, scope: !10)
!38 = !DILocation(line: 16, column: 16, scope: !10)
!39 = !DILocation(line: 17, column: 19, scope: !10)
!40 = !DILocation(line: 17, column: 15, scope: !10)
!41 = !DILocation(line: 17, column: 10, scope: !10)
!42 = !DILocation(line: 17, column: 13, scope: !10)
!43 = distinct !{!43, !36, !39}
!44 = !DILocation(line: 18, column: 10, scope: !10)
!45 = !DILocation(line: 18, column: 3, scope: !10)
!46 = distinct !DISubprogram(name: "memset", scope: !47, file: !47, line: 12, type: !48, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !7)
!47 = !DIFile(filename: "klee_src/runtime/Freestanding/memset.c", directory: "/tmp")
!48 = !DISubroutineType(types: !49)
!49 = !{!14, !14, !50, !17}
!50 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!51 = !DILocalVariable(name: "dst", arg: 1, scope: !46, file: !47, line: 12, type: !14)
!52 = !DILocation(line: 12, column: 20, scope: !46)
!53 = !DILocalVariable(name: "s", arg: 2, scope: !46, file: !47, line: 12, type: !50)
!54 = !DILocation(line: 12, column: 29, scope: !46)
!55 = !DILocalVariable(name: "count", arg: 3, scope: !46, file: !47, line: 12, type: !17)
!56 = !DILocation(line: 12, column: 39, scope: !46)
!57 = !DILocalVariable(name: "a", scope: !46, file: !47, line: 13, type: !27)
!58 = !DILocation(line: 13, column: 9, scope: !46)
!59 = !DILocation(line: 13, column: 13, scope: !46)
!60 = !DILocation(line: 14, column: 3, scope: !46)
!61 = !DILocation(line: 14, column: 15, scope: !46)
!62 = !DILocation(line: 14, column: 18, scope: !46)
!63 = !DILocation(line: 15, column: 12, scope: !46)
!64 = !DILocation(line: 15, column: 7, scope: !46)
!65 = !DILocation(line: 15, column: 10, scope: !46)
!66 = distinct !{!66, !60, !63}
!67 = !DILocation(line: 16, column: 10, scope: !46)
!68 = !DILocation(line: 16, column: 3, scope: !46)
