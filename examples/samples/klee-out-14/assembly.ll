; ModuleID = '/home/klee/examples/samples/loop_5.bc'
source_filename = "loop_5.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AisQueryInofHostEnp = type { %struct.ZoneMIpAddress, i32 }
%struct.ZoneMIpAddress = type { %union.AisZoneMIp, i8 }
%union.AisZoneMIp = type { i32, [12 x i8] }
%struct.VME_DB_HASH_ENTRY_S = type { %struct.anon, i32 }
%struct.anon = type { %struct.tagVME_DB_HASH_ENTRY*, %struct.tagVME_DB_HASH_ENTRY** }
%struct.tagVME_DB_HASH_ENTRY = type { %struct.anon.0, i32 }
%struct.anon.0 = type { %struct.tagVME_DB_HASH_ENTRY*, %struct.tagVME_DB_HASH_ENTRY** }
%struct.tagVME_DB_HASH_HANDLE = type { %struct.VME_DB_EXTRA_INFO_HASH_S, [0 x %struct.VME_DB_HASH_CFL_TBL] }
%struct.VME_DB_EXTRA_INFO_HASH_S = type <{ i32, %struct.VME_DB_HASH_PF_S }>
%struct.VME_DB_HASH_PF_S = type { i8*, i32 (i8*, i32, i32*)* }
%struct.VME_DB_HASH_CFL_TBL = type { %struct.tagHASH_CFL_TBL_HEAD }
%struct.tagHASH_CFL_TBL_HEAD = type { %struct.tagVME_DB_HASH_ENTRY*, %struct.tagVME_DB_HASH_ENTRY** }
%struct.VME_DB_CONTAINER_ENTRY_UN = type { %struct.VME_DB_RBT_ENTRY_S, %struct.tagVME_DB_HASH_ENTRY }
%struct.VME_DB_RBT_ENTRY_S = type { %struct.tagRBT_NODE }
%struct.tagRBT_NODE = type { %struct.tagRBT_NODE*, %struct.tagRBT_NODE*, %struct.tagRBT_NODE*, i32 }
%struct.tagVME_DB_CONTAINER_HANDLE = type { i32, %struct.VME_DB_CONTAINER_CBFUNC_SET_S, %union.anon, i32 }
%struct.VME_DB_CONTAINER_CBFUNC_SET_S = type { i32 (i8*, i8*, i32, i8*, i32*)*, i32 (i8*, i8*, i8*, i32, i32*)*, i8* }
%union.anon = type { %struct.tagVME_DB_HASH_ENV* }
%struct.tagVME_DB_HASH_ENV = type <{ %struct.VME_DB_EXTRA_INFO_HASH_S, [0 x %struct.VME_DB_HASH_CFL_TBL] }>
%struct.VME_DB_USER_DATA_S = type { i32, [0 x i8] }
%struct.tagVME_DB_TBL_ENV = type <{ i64, %struct.VME_DB_CBFUNC_SET_S, [16 x %struct.tagVME_DB_CONTAINER_ENV], i32, %struct.VME_DB_INDEX_S* }>
%struct.VME_DB_CBFUNC_SET_S = type { i32 (i8*, i8*, i32, i8*, i32*)*, i32 (i8*, i8*, i8*, i32, i32*)*, i32 (i8*, i8*)*, i8* }
%struct.tagVME_DB_CONTAINER_ENV = type <{ i32, %struct.VME_DB_CONTAINER_CBFUNC_SET_S, %union.anon.1, i32 }>
%union.anon.1 = type { %struct.tagVME_DB_HASH_ENV* }
%struct.VME_DB_INDEX_S = type { %struct.VME_DB_INDEX_INFO_S, %struct.tagVME_DB_CONTAINER_ENV* }
%struct.VME_DB_INDEX_INFO_S = type { i32 (i8*, i8*, i32, i8*, i32*)*, i32 (i8*, i8*, i8*, i32, i32*)*, i8* }
%struct.VME_DB_REC_HANDLE_PVT_S = type { i8* }
%struct.tagVmeSmpMsgInfo = type <{ i8*, i16, i16, i8*, i8*, i8*, i8*, i32, i16, i16, i8*, i8*, i32, i32 }>
%struct.AisQueryInofZone = type { i8, i8, %struct.AisQueryInofZoneInfo, %struct.AisQueryInofZoneHostInfo }
%struct.AisQueryInofZoneInfo = type { i64, %struct.AisDbZoneMZoneCfgKey }
%struct.AisDbZoneMZoneCfgKey = type { i32, [32 x i8] }
%struct.AisQueryInofZoneHostInfo = type { i64, %struct.AisDbZoneMZoneHostCfgKey }
%struct.AisDbZoneMZoneHostCfgKey = type { i32, [32 x i8], %struct.ZoneMIpAddress }
%struct.AisDbZoneMZoneCfgRecord = type { %struct.AisDbZoneMZoneCfgKey, %struct.AisDbZoneMZoneCfgData }
%struct.AisDbZoneMZoneCfgData = type <{ %struct.SLL, %struct.ZoneMIpAddress, %struct.ZoneMIpAddress, %struct.AisDbSmoothFlag, [2 x i8] }>
%struct.SLL = type { %struct.SLL_NODE, %struct.SLL_NODE*, i32 }
%struct.SLL_NODE = type { %struct.SLL_NODE*, i64 }
%struct.AisDbSmoothFlag = type { i8, i8, [2 x i8] }
%struct.AisLocal = type <{ i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, [32 x i8], [16 x i8], %struct.tagVosSystm, [37 x i64], [14 x %struct.tagVME_DB_TBL_ENV*], %struct.tagVmeLocal, i32*, i32*, i8*, %struct.tagDmsPipeDataPacket, i8*, i8*, %struct.AisZoneMMgr*, %struct.AisInterfaceDataMgr*, %struct.AisBlackBox*, i8*, %struct.AisPartnerMng_S*, i8*, i8, i8, i8, [1 x i8], i8*, i8*, i8*, [255 x %struct.AIS_VRP_INTF_FUNC], [1 x %struct.AisIntfCtlFunc], %struct.SLL, [128 x i8], [4 x i8*], [4 x i32], %struct.tagVmeIfmSubInfoKey*, i8*, i8* }>
%struct.tagVosSystm = type { i16, i8, i8, i8, i8, i8, i8, i32 }
%struct.tagVmeLocal = type <{ i8*, i16, i16, i32, i32, i64, i32, i32, i32, i32, [64 x %struct.tagVmeMsgProc], %struct.tagVmeTmrCb, %struct.tagVmeCompMng, %struct.tagVmeSmp, %struct.tagVmeSsp, %struct.tagVmeHA_S, [10 x i16], [12 x %struct.tagVmeModeInnerData], %struct.tagVmeBim, %struct.tagVmeSyncManage, i64, i32*, i8*, i8*, i8*, i8*, i8* }>
%struct.tagVmeMsgProc = type <{ i32, void (i8*, i8*)*, i8*, void (i8*)* }>
%struct.tagVmeTmrCb = type <{ i32, i8*, i8*, i8*, i32, i32 }>
%struct.tagVmeCompMng = type { [14 x %struct.tagVmeCompAdp*], i8*, i8* }
%struct.tagVmeCompAdp = type { i8*, i16, i8, i8, i8, [3 x i8], %struct.tagRBT_TREE }
%struct.tagRBT_TREE = type <{ %struct.tagRBT_NODE*, %struct.tagRBT_NODE, %struct.tagRBT_AQ_HEAD, i32 }>
%struct.tagRBT_AQ_HEAD = type { %struct.tagRBT_AQ_NODE* }
%struct.tagRBT_AQ_NODE = type { %struct.tagRBT_AQ_NODE*, %struct.tagRBT_AQ_NODE** }
%struct.tagVmeSmp = type { i8*, i64, i32, %struct.tagVmeSmpProcGrp, %struct.tagVmeSmpProcGrp, %struct.tagVmeSmpProcGrp, i32, i32, [15 x i16] }
%struct.tagVmeSmpProcGrp = type <{ i16, i16, %struct.tagVmeSmpProcInfo* }>
%struct.tagVmeSmpProcInfo = type { i32, i16, i16, i8*, i8*, i8* }
%struct.tagVmeSsp = type <{ i8*, i64, %struct.tagVmeSspSubBuff, %struct.tagVmeSspCallBack, i16, i16, %struct.tagVosListHead }>
%struct.tagVmeSspSubBuff = type { %struct.tagVosListHead, %struct.tagVosListHead, i8* }
%struct.tagVmeSspCallBack = type { i32 (i8*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)* }
%struct.tagVosListHead = type { %struct.tagVosListHead*, %struct.tagVosListHead* }
%struct.tagVmeHA_S = type <{ i8*, i64, i32, %struct.tagVmehaCallBack, i32, i16, i16, i32 (i8*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)*, %struct.tagVmeAckTimer, i32, i32, %struct.tagVosListHead, %struct.tagVosListHead, i8*, [11 x i32], [11 x i32], [20 x i16], %struct.tagVmeTimeStat, %struct.tagVmeTimeStat, i8*, %struct.VmeHaBatBkupTimeShare* }>
%struct.tagVmehaCallBack = type { void (i32, i8*)*, void (i32, i8*)* }
%struct.tagVmeAckTimer = type <{ i32, i8* }>
%struct.tagVmeTimeStat = type { %struct.tagVmeTimeEvent*, i16, i16, i16, i16 }
%struct.tagVmeTimeEvent = type <{ i32, i32, i32, i8* }>
%struct.VmeHaBatBkupTimeShare = type { [512 x i8], %struct.VmeHaBatchCallBack }
%struct.VmeHaBatchCallBack = type { i8* (i8*, i8*, i32*, i8*)*, i16 (i8*, i16, i8*, i32, i8*)*, void (i8*, i16, i8*, i32, i8*)* }
%struct.tagVmeModeInnerData = type <{ [49 x i8], [3 x i8], i8*, i32 (i32*, i8**, i8*)* }>
%struct.tagVmeBim = type <{ i8*, i64, [16 x i8], i32, i8, i8, [2 x i8], i32, i8*, i8*, i32, i32, i32, i32, %struct.tagVosListHead, void (i8, i8*)*, void (i8*)*, void (i8*, i8, i8*)*, [16 x i16] }>
%struct.tagVmeSyncManage = type { i64, i64, %struct.avll_tree, %struct.avll_tree, i32* }
%struct.avll_tree = type { %struct.avl3_tree, %struct.avl3_tree_info }
%struct.avl3_tree = type { %struct.avl3_node*, %struct.avl3_node*, %struct.avl3_node* }
%struct.avl3_node = type { %struct.avl3_node*, %struct.avl3_node*, %struct.avl3_node*, i16, i16 }
%struct.avl3_tree_info = type { i32 (i8*, i8*)*, i16, i16 }
%struct.tagDmsPipeDataPacket = type { i32, i8** }
%struct.AisZoneMMgr = type { i32, i32, %struct.AisZoneMDebugNum, %struct.AisBlackBox*, i32, %struct.AisZoneMTaskStat, i32, i32, i8*, i8*, i8*, %struct.ZoneMIpAddress, i16, %struct.AisZoneMHmac, i8, %struct.AIS_ZoneMMutex, [5 x %struct.AisZoneMAutStats], [5 x i8*], %struct.AisHppInnerData, %struct.DLL, i8*, i8*, i32, i32, %struct.AisZoneMBfdAllPara, i32, i8*, i8*, i32, i32, i8*, i8* }
%struct.AisZoneMDebugNum = type { i32, i32, i32 }
%struct.AisZoneMTaskStat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.AisZoneMHmac = type { i32, i32, [512 x i8] }
%struct.AIS_ZoneMMutex = type { i8*, i8* }
%struct.AisZoneMAutStats = type { i16, i16, i32, i32 }
%struct.AisHppInnerData = type { i32, i32, i32, i32, %struct.tagVosSystm, %struct.tagVosSystm, %struct.tagVosSystm, %struct.tagVosSystm }
%struct.DLL = type { %struct.DLL_NODE, i32 }
%struct.DLL_NODE = type { %struct.DLL_NODE*, %struct.DLL_NODE*, i64 }
%struct.AisZoneMBfdAllPara = type { %struct.AisZoneMBfdPara, %struct.AisZoneMBfdPara, %struct.AisZoneMBfdRefPara, %struct.AisZoneMBfdRefPara }
%struct.AisZoneMBfdPara = type { i32, i32, i32 }
%struct.AisZoneMBfdRefPara = type { %struct.AisZoneMBfdPara, %struct.ZoneMIpAddress, i8 }
%struct.AisInterfaceDataMgr = type { %struct.AisInterfaceDataMgrInfo, %struct.avll_tree, %struct.avll_tree }
%struct.AisInterfaceDataMgrInfo = type { i8*, i64 }
%struct.AisBlackBox = type { i32, i32, i32, i32, %struct.AisBlackBoxData*, i32, i64 }
%struct.AisBlackBoxData = type { %struct.tagVosSystm, i32, i32, [64 x i8], [512 x i8] }
%struct.AisPartnerMng_S = type <{ i8*, %struct.avll_tree, i32, %struct.tagVosListHead, [3 x i32], [5 x i32] }>
%struct.AIS_VRP_INTF_FUNC = type <{ i8, [3 x i8], i32 (i32, i8*, i8*)* }>
%struct.AisIntfCtlFunc = type <{ i32, i32 (i8*, i8*)* }>
%struct.tagVmeIfmSubInfoKey = type { i16, i8, i8, i32, i32, [10 x i16] }
%struct.AisDbZoneMZoneHostCfgRecord = type { %struct.AisDbZoneMZoneHostCfgKey, %struct.AisDbZoneMZoneHostCfgData }
%struct.AisDbZoneMZoneHostCfgData = type { %struct.ZoneMIpAddress, %struct.ZoneMIpAddress, %struct.AisDbSmoothFlag }
%struct.CLASS_AIS_DISINOFZONEDYN_S = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i8] }

@__const.AIS_ZoneMQueryZoneCfg.inofHostEnp = private unnamed_addr constant %struct.AisQueryInofHostEnp { %struct.ZoneMIpAddress { %union.AisZoneMIp { i32 0, [12 x i8] undef }, i8 0 }, i32 0 }, align 4
@.str = private unnamed_addr constant [5 x i8] c"int1\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"struct1\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"struct2\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"/tmp/klee_src/runtime/Intrinsic/klee_div_zero_check.c\00", align 1
@.str.1.8 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str.2.9 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @DJBHash(i8* %pKey, i32 %uiKeyLen, i32* %uiHashValue) #0 {
entry:
  %pKey.addr = alloca i8*, align 8
  %uiKeyLen.addr = alloca i32, align 4
  %uiHashValue.addr = alloca i32*, align 8
  %hash = alloca i32, align 4
  store i8* %pKey, i8** %pKey.addr, align 8
  store i32 %uiKeyLen, i32* %uiKeyLen.addr, align 4
  store i32* %uiHashValue, i32** %uiHashValue.addr, align 8
  store i32 5381, i32* %hash, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %pKey.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  %2 = load i32, i32* %hash, align 4
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %shl = shl i32 %2, 5
  %3 = load i8*, i8** %pKey.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %pKey.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %add = add i32 %shl, %conv
  %5 = load i32, i32* %hash, align 4
  %add1 = add i32 %5, %add
  store i32 %add1, i32* %hash, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %and = and i32 %2, 2147483647
  %6 = load i32*, i32** %uiHashValue.addr, align 8
  store i32 %and, i32* %6, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.VME_DB_HASH_ENTRY_S* @VME_DB_HASH_GetRec(%struct.tagVME_DB_HASH_HANDLE* %pstHash, i8* %pKey, i32 %uiKeyLen, i32 (i8*, i8*, i32, i8*, i32*)* %pfCmpKey, i8* %pUserArg) #0 {
entry:
  %retval = alloca %struct.VME_DB_HASH_ENTRY_S*, align 8
  %pstHash.addr = alloca %struct.tagVME_DB_HASH_HANDLE*, align 8
  %pKey.addr = alloca i8*, align 8
  %uiKeyLen.addr = alloca i32, align 4
  %pfCmpKey.addr = alloca i32 (i8*, i8*, i32, i8*, i32*)*, align 8
  %pUserArg.addr = alloca i8*, align 8
  %uiRet = alloca i32, align 4
  %uiHashValue = alloca i32, align 4
  %pstCflTbl = alloca %struct.VME_DB_HASH_CFL_TBL*, align 8
  %uiHashPos = alloca i32, align 4
  %pstEntry = alloca %struct.VME_DB_HASH_ENTRY_S*, align 8
  %enResult = alloca i32, align 4
  store %struct.tagVME_DB_HASH_HANDLE* %pstHash, %struct.tagVME_DB_HASH_HANDLE** %pstHash.addr, align 8
  store i8* %pKey, i8** %pKey.addr, align 8
  store i32 %uiKeyLen, i32* %uiKeyLen.addr, align 4
  store i32 (i8*, i8*, i32, i8*, i32*)* %pfCmpKey, i32 (i8*, i8*, i32, i8*, i32*)** %pfCmpKey.addr, align 8
  store i8* %pUserArg, i8** %pUserArg.addr, align 8
  store %struct.VME_DB_HASH_CFL_TBL* null, %struct.VME_DB_HASH_CFL_TBL** %pstCflTbl, align 8
  store %struct.VME_DB_HASH_ENTRY_S* null, %struct.VME_DB_HASH_ENTRY_S** %pstEntry, align 8
  %0 = load %struct.tagVME_DB_HASH_HANDLE*, %struct.tagVME_DB_HASH_HANDLE** %pstHash.addr, align 8
  %stHashExtraInfo = getelementptr inbounds %struct.tagVME_DB_HASH_HANDLE, %struct.tagVME_DB_HASH_HANDLE* %0, i32 0, i32 0
  %stCbHash = getelementptr inbounds %struct.VME_DB_EXTRA_INFO_HASH_S, %struct.VME_DB_EXTRA_INFO_HASH_S* %stHashExtraInfo, i32 0, i32 1
  %pfHash = getelementptr inbounds %struct.VME_DB_HASH_PF_S, %struct.VME_DB_HASH_PF_S* %stCbHash, i32 0, i32 1
  store i32 (i8*, i32, i32*)* @DJBHash, i32 (i8*, i32, i32*)** %pfHash, align 4
  %1 = load %struct.tagVME_DB_HASH_HANDLE*, %struct.tagVME_DB_HASH_HANDLE** %pstHash.addr, align 8
  %stHashExtraInfo1 = getelementptr inbounds %struct.tagVME_DB_HASH_HANDLE, %struct.tagVME_DB_HASH_HANDLE* %1, i32 0, i32 0
  %stCbHash2 = getelementptr inbounds %struct.VME_DB_EXTRA_INFO_HASH_S, %struct.VME_DB_EXTRA_INFO_HASH_S* %stHashExtraInfo1, i32 0, i32 1
  %pfHash3 = getelementptr inbounds %struct.VME_DB_HASH_PF_S, %struct.VME_DB_HASH_PF_S* %stCbHash2, i32 0, i32 1
  %2 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %pfHash3, align 4
  %3 = load i8*, i8** %pKey.addr, align 8
  %4 = load i32, i32* %uiKeyLen.addr, align 4
  %call = call i32 %2(i8* %3, i32 %4, i32* %uiHashValue)
  store i32 %call, i32* %uiRet, align 4
  %5 = load i32, i32* %uiRet, align 4
  %cmp = icmp ne i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.VME_DB_HASH_ENTRY_S* null, %struct.VME_DB_HASH_ENTRY_S** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %uiHashValue, align 4
  %7 = load %struct.tagVME_DB_HASH_HANDLE*, %struct.tagVME_DB_HASH_HANDLE** %pstHash.addr, align 8
  %stHashExtraInfo4 = getelementptr inbounds %struct.tagVME_DB_HASH_HANDLE, %struct.tagVME_DB_HASH_HANDLE* %7, i32 0, i32 0
  %uiHashSize = getelementptr inbounds %struct.VME_DB_EXTRA_INFO_HASH_S, %struct.VME_DB_EXTRA_INFO_HASH_S* %stHashExtraInfo4, i32 0, i32 0
  %8 = load i32, i32* %uiHashSize, align 8
  %int_cast_to_i64 = zext i32 %8 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64)
  %rem = urem i32 %6, %8, !klee.check.div !12
  store i32 %rem, i32* %uiHashPos, align 4
  %9 = load i32, i32* %uiHashPos, align 4
  %10 = load %struct.tagVME_DB_HASH_HANDLE*, %struct.tagVME_DB_HASH_HANDLE** %pstHash.addr, align 8
  %stHashExtraInfo5 = getelementptr inbounds %struct.tagVME_DB_HASH_HANDLE, %struct.tagVME_DB_HASH_HANDLE* %10, i32 0, i32 0
  %uiHashSize6 = getelementptr inbounds %struct.VME_DB_EXTRA_INFO_HASH_S, %struct.VME_DB_EXTRA_INFO_HASH_S* %stHashExtraInfo5, i32 0, i32 0
  %11 = load i32, i32* %uiHashSize6, align 8
  %cmp7 = icmp uge i32 %9, %11
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  store %struct.VME_DB_HASH_ENTRY_S* null, %struct.VME_DB_HASH_ENTRY_S** %retval, align 8
  br label %return

if.end9:                                          ; preds = %if.end
  %12 = load %struct.tagVME_DB_HASH_HANDLE*, %struct.tagVME_DB_HASH_HANDLE** %pstHash.addr, align 8
  %astHashBucket = getelementptr inbounds %struct.tagVME_DB_HASH_HANDLE, %struct.tagVME_DB_HASH_HANDLE* %12, i32 0, i32 1
  %13 = load i32, i32* %uiHashPos, align 4
  %idxprom = zext i32 %13 to i64
  %arrayidx = getelementptr inbounds [0 x %struct.VME_DB_HASH_CFL_TBL], [0 x %struct.VME_DB_HASH_CFL_TBL]* %astHashBucket, i64 0, i64 %idxprom
  store %struct.VME_DB_HASH_CFL_TBL* %arrayidx, %struct.VME_DB_HASH_CFL_TBL** %pstCflTbl, align 8
  %14 = load %struct.VME_DB_HASH_CFL_TBL*, %struct.VME_DB_HASH_CFL_TBL** %pstCflTbl, align 8
  %stHead = getelementptr inbounds %struct.VME_DB_HASH_CFL_TBL, %struct.VME_DB_HASH_CFL_TBL* %14, i32 0, i32 0
  %d_pstFirst = getelementptr inbounds %struct.tagHASH_CFL_TBL_HEAD, %struct.tagHASH_CFL_TBL_HEAD* %stHead, i32 0, i32 0
  %15 = load %struct.tagVME_DB_HASH_ENTRY*, %struct.tagVME_DB_HASH_ENTRY** %d_pstFirst, align 8
  %16 = bitcast %struct.tagVME_DB_HASH_ENTRY* %15 to %struct.VME_DB_HASH_ENTRY_S*
  store %struct.VME_DB_HASH_ENTRY_S* %16, %struct.VME_DB_HASH_ENTRY_S** %pstEntry, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end9
  %17 = load %struct.VME_DB_HASH_ENTRY_S*, %struct.VME_DB_HASH_ENTRY_S** %pstEntry, align 8
  %tobool = icmp ne %struct.VME_DB_HASH_ENTRY_S* %17, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32 (i8*, i8*, i32, i8*, i32*)*, i32 (i8*, i8*, i32, i8*, i32*)** %pfCmpKey.addr, align 8
  %19 = load i8*, i8** %pUserArg.addr, align 8
  %20 = load i8*, i8** %pKey.addr, align 8
  %21 = load i32, i32* %uiKeyLen.addr, align 4
  %22 = load %struct.VME_DB_HASH_ENTRY_S*, %struct.VME_DB_HASH_ENTRY_S** %pstEntry, align 8
  %23 = bitcast %struct.VME_DB_HASH_ENTRY_S* %22 to i8*
  %call10 = call i32 %18(i8* %19, i8* %20, i32 %21, i8* %23, i32* %enResult)
  store i32 %call10, i32* %uiRet, align 4
  %24 = load i32, i32* %uiRet, align 4
  %cmp11 = icmp ne i32 %24, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.body
  store %struct.VME_DB_HASH_ENTRY_S* null, %struct.VME_DB_HASH_ENTRY_S** %retval, align 8
  br label %return

if.end13:                                         ; preds = %for.body
  %25 = load i32, i32* %enResult, align 4
  %cmp14 = icmp eq i32 %25, 2
  br i1 %cmp14, label %for.end, label %for.inc

for.inc:                                          ; preds = %if.end13
  %26 = load %struct.VME_DB_HASH_ENTRY_S*, %struct.VME_DB_HASH_ENTRY_S** %pstEntry, align 8
  %stField = getelementptr inbounds %struct.VME_DB_HASH_ENTRY_S, %struct.VME_DB_HASH_ENTRY_S* %26, i32 0, i32 0
  %d_pstNext = getelementptr inbounds %struct.anon, %struct.anon* %stField, i32 0, i32 0
  %27 = load %struct.tagVME_DB_HASH_ENTRY*, %struct.tagVME_DB_HASH_ENTRY** %d_pstNext, align 8
  %28 = bitcast %struct.tagVME_DB_HASH_ENTRY* %27 to %struct.VME_DB_HASH_ENTRY_S*
  store %struct.VME_DB_HASH_ENTRY_S* %28, %struct.VME_DB_HASH_ENTRY_S** %pstEntry, align 8
  br label %for.cond

for.end:                                          ; preds = %if.end13, %for.cond
  %29 = load %struct.VME_DB_HASH_ENTRY_S*, %struct.VME_DB_HASH_ENTRY_S** %pstEntry, align 8
  store %struct.VME_DB_HASH_ENTRY_S* %29, %struct.VME_DB_HASH_ENTRY_S** %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then12, %if.then8, %if.then
  %30 = load %struct.VME_DB_HASH_ENTRY_S*, %struct.VME_DB_HASH_ENTRY_S** %retval, align 8
  ret %struct.VME_DB_HASH_ENTRY_S* %30
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.VME_DB_CONTAINER_ENTRY_UN* @VME_DB_CONTAINER_GetRec(%struct.tagVME_DB_CONTAINER_HANDLE* %pstContainer, i8* %pKey, i32 %uiKeyLen) #0 {
entry:
  %retval = alloca %struct.VME_DB_CONTAINER_ENTRY_UN*, align 8
  %pstContainer.addr = alloca %struct.tagVME_DB_CONTAINER_HANDLE*, align 8
  %pKey.addr = alloca i8*, align 8
  %uiKeyLen.addr = alloca i32, align 4
  store %struct.tagVME_DB_CONTAINER_HANDLE* %pstContainer, %struct.tagVME_DB_CONTAINER_HANDLE** %pstContainer.addr, align 8
  store i8* %pKey, i8** %pKey.addr, align 8
  store i32 %uiKeyLen, i32* %uiKeyLen.addr, align 4
  %0 = load %struct.tagVME_DB_CONTAINER_HANDLE*, %struct.tagVME_DB_CONTAINER_HANDLE** %pstContainer.addr, align 8
  %enType = getelementptr inbounds %struct.tagVME_DB_CONTAINER_HANDLE, %struct.tagVME_DB_CONTAINER_HANDLE* %0, i32 0, i32 0
  %1 = load i32, i32* %enType, align 8
  switch i32 %1, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.epilog
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.tagVME_DB_CONTAINER_HANDLE*, %struct.tagVME_DB_CONTAINER_HANDLE** %pstContainer.addr, align 8
  %unHandle = getelementptr inbounds %struct.tagVME_DB_CONTAINER_HANDLE, %struct.tagVME_DB_CONTAINER_HANDLE* %2, i32 0, i32 2
  %pstHash = bitcast %union.anon* %unHandle to %struct.tagVME_DB_HASH_ENV**
  %3 = load %struct.tagVME_DB_HASH_ENV*, %struct.tagVME_DB_HASH_ENV** %pstHash, align 8
  %4 = bitcast %struct.tagVME_DB_HASH_ENV* %3 to %struct.tagVME_DB_HASH_HANDLE*
  %5 = load i8*, i8** %pKey.addr, align 8
  %6 = load i32, i32* %uiKeyLen.addr, align 4
  %7 = load %struct.tagVME_DB_CONTAINER_HANDLE*, %struct.tagVME_DB_CONTAINER_HANDLE** %pstContainer.addr, align 8
  %stCbFuncSet = getelementptr inbounds %struct.tagVME_DB_CONTAINER_HANDLE, %struct.tagVME_DB_CONTAINER_HANDLE* %7, i32 0, i32 1
  %pfCmpKey = getelementptr inbounds %struct.VME_DB_CONTAINER_CBFUNC_SET_S, %struct.VME_DB_CONTAINER_CBFUNC_SET_S* %stCbFuncSet, i32 0, i32 0
  %8 = load i32 (i8*, i8*, i32, i8*, i32*)*, i32 (i8*, i8*, i32, i8*, i32*)** %pfCmpKey, align 8
  %9 = load %struct.tagVME_DB_CONTAINER_HANDLE*, %struct.tagVME_DB_CONTAINER_HANDLE** %pstContainer.addr, align 8
  %stCbFuncSet1 = getelementptr inbounds %struct.tagVME_DB_CONTAINER_HANDLE, %struct.tagVME_DB_CONTAINER_HANDLE* %9, i32 0, i32 1
  %pUserArg = getelementptr inbounds %struct.VME_DB_CONTAINER_CBFUNC_SET_S, %struct.VME_DB_CONTAINER_CBFUNC_SET_S* %stCbFuncSet1, i32 0, i32 2
  %10 = load i8*, i8** %pUserArg, align 8
  %call = call %struct.VME_DB_HASH_ENTRY_S* @VME_DB_HASH_GetRec(%struct.tagVME_DB_HASH_HANDLE* %4, i8* %5, i32 %6, i32 (i8*, i8*, i32, i8*, i32*)* %8, i8* %10)
  %11 = bitcast %struct.VME_DB_HASH_ENTRY_S* %call to i8*
  %12 = bitcast i8* %11 to %struct.VME_DB_CONTAINER_ENTRY_UN*
  store %struct.VME_DB_CONTAINER_ENTRY_UN* %12, %struct.VME_DB_CONTAINER_ENTRY_UN** %retval, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store %struct.VME_DB_CONTAINER_ENTRY_UN* null, %struct.VME_DB_CONTAINER_ENTRY_UN** %retval, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb, %sw.default
  %13 = load %struct.VME_DB_CONTAINER_ENTRY_UN*, %struct.VME_DB_CONTAINER_ENTRY_UN** %retval, align 8
  ret %struct.VME_DB_CONTAINER_ENTRY_UN* %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.VME_DB_USER_DATA_S* @VME_DB_NODE_TO_USER_DATA(i32 %pNode, i32 %uiIndexCount) #0 {
entry:
  %pNode.addr = alloca i32, align 4
  %uiIndexCount.addr = alloca i32, align 4
  store i32 %pNode, i32* %pNode.addr, align 4
  store i32 %uiIndexCount, i32* %uiIndexCount.addr, align 4
  %0 = load i32, i32* %pNode.addr, align 4
  %conv = sext i32 %0 to i64
  %1 = inttoptr i64 %conv to i8*
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 56
  %2 = load i32, i32* %uiIndexCount.addr, align 4
  %mul = mul nsw i32 %2, 28
  %idx.ext = sext i32 %mul to i64
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext
  %3 = bitcast i8* %add.ptr1 to %struct.VME_DB_USER_DATA_S*
  ret %struct.VME_DB_USER_DATA_S* %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @VME_DB_GetRec(%struct.tagVME_DB_TBL_ENV* %pstTable, i8* %pKey, i32 %uiKeyLen, i64* %phRec) #0 {
entry:
  %retval = alloca i8*, align 8
  %pstTable.addr = alloca %struct.tagVME_DB_TBL_ENV*, align 8
  %pKey.addr = alloca i8*, align 8
  %uiKeyLen.addr = alloca i32, align 4
  %phRec.addr = alloca i64*, align 8
  %pstPvtHandle = alloca %struct.VME_DB_REC_HANDLE_PVT_S*, align 8
  %punMainEntry = alloca %struct.VME_DB_CONTAINER_ENTRY_UN*, align 8
  %pstUserData = alloca %struct.VME_DB_USER_DATA_S*, align 8
  store %struct.tagVME_DB_TBL_ENV* %pstTable, %struct.tagVME_DB_TBL_ENV** %pstTable.addr, align 8
  store i8* %pKey, i8** %pKey.addr, align 8
  store i32 %uiKeyLen, i32* %uiKeyLen.addr, align 4
  store i64* %phRec, i64** %phRec.addr, align 8
  %0 = load i64*, i64** %phRec.addr, align 8
  %1 = bitcast i64* %0 to %struct.VME_DB_REC_HANDLE_PVT_S*
  store %struct.VME_DB_REC_HANDLE_PVT_S* %1, %struct.VME_DB_REC_HANDLE_PVT_S** %pstPvtHandle, align 8
  store %struct.VME_DB_CONTAINER_ENTRY_UN* null, %struct.VME_DB_CONTAINER_ENTRY_UN** %punMainEntry, align 8
  store %struct.VME_DB_USER_DATA_S* null, %struct.VME_DB_USER_DATA_S** %pstUserData, align 8
  %2 = load %struct.tagVME_DB_TBL_ENV*, %struct.tagVME_DB_TBL_ENV** %pstTable.addr, align 8
  %pstMainCtnr = getelementptr inbounds %struct.tagVME_DB_TBL_ENV, %struct.tagVME_DB_TBL_ENV* %2, i32 0, i32 2
  %arraydecay = getelementptr inbounds [16 x %struct.tagVME_DB_CONTAINER_ENV], [16 x %struct.tagVME_DB_CONTAINER_ENV]* %pstMainCtnr, i64 0, i64 0
  %3 = bitcast %struct.tagVME_DB_CONTAINER_ENV* %arraydecay to %struct.tagVME_DB_CONTAINER_HANDLE*
  %4 = load i8*, i8** %pKey.addr, align 8
  %5 = load i32, i32* %uiKeyLen.addr, align 4
  %call = call %struct.VME_DB_CONTAINER_ENTRY_UN* @VME_DB_CONTAINER_GetRec(%struct.tagVME_DB_CONTAINER_HANDLE* %3, i8* %4, i32 %5)
  store %struct.VME_DB_CONTAINER_ENTRY_UN* %call, %struct.VME_DB_CONTAINER_ENTRY_UN** %punMainEntry, align 8
  %6 = load %struct.VME_DB_CONTAINER_ENTRY_UN*, %struct.VME_DB_CONTAINER_ENTRY_UN** %punMainEntry, align 8
  %cmp = icmp eq %struct.VME_DB_CONTAINER_ENTRY_UN* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct.VME_DB_CONTAINER_ENTRY_UN*, %struct.VME_DB_CONTAINER_ENTRY_UN** %punMainEntry, align 8
  %8 = bitcast %struct.VME_DB_CONTAINER_ENTRY_UN* %7 to i8*
  %9 = load %struct.VME_DB_REC_HANDLE_PVT_S*, %struct.VME_DB_REC_HANDLE_PVT_S** %pstPvtHandle, align 8
  %pNode = getelementptr inbounds %struct.VME_DB_REC_HANDLE_PVT_S, %struct.VME_DB_REC_HANDLE_PVT_S* %9, i32 0, i32 0
  store i8* %8, i8** %pNode, align 8
  %10 = load %struct.VME_DB_REC_HANDLE_PVT_S*, %struct.VME_DB_REC_HANDLE_PVT_S** %pstPvtHandle, align 8
  %pNode1 = getelementptr inbounds %struct.VME_DB_REC_HANDLE_PVT_S, %struct.VME_DB_REC_HANDLE_PVT_S* %10, i32 0, i32 0
  %11 = load i8*, i8** %pNode1, align 8
  %12 = ptrtoint i8* %11 to i32
  %13 = load %struct.tagVME_DB_TBL_ENV*, %struct.tagVME_DB_TBL_ENV** %pstTable.addr, align 8
  %uiIndexCount = getelementptr inbounds %struct.tagVME_DB_TBL_ENV, %struct.tagVME_DB_TBL_ENV* %13, i32 0, i32 3
  %14 = load i32, i32* %uiIndexCount, align 1
  %call2 = call %struct.VME_DB_USER_DATA_S* @VME_DB_NODE_TO_USER_DATA(i32 %12, i32 %14)
  store %struct.VME_DB_USER_DATA_S* %call2, %struct.VME_DB_USER_DATA_S** %pstUserData, align 8
  %15 = load %struct.VME_DB_USER_DATA_S*, %struct.VME_DB_USER_DATA_S** %pstUserData, align 8
  %aucRecord = getelementptr inbounds %struct.VME_DB_USER_DATA_S, %struct.VME_DB_USER_DATA_S* %15, i32 0, i32 1
  %arraydecay3 = getelementptr inbounds [0 x i8], [0 x i8]* %aucRecord, i64 0, i64 0
  store i8* %arraydecay3, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %16 = load i8*, i8** %retval, align 8
  ret i8* %16
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.VME_DB_HASH_ENTRY_S* @VME_DB_HASH_GetFirstRec(%struct.tagVME_DB_HASH_HANDLE* %pstHash) #0 {
entry:
  %retval = alloca %struct.VME_DB_HASH_ENTRY_S*, align 8
  %pstHash.addr = alloca %struct.tagVME_DB_HASH_HANDLE*, align 8
  %i = alloca i32, align 4
  %pstEntry = alloca %struct.VME_DB_HASH_ENTRY_S*, align 8
  store %struct.tagVME_DB_HASH_HANDLE* %pstHash, %struct.tagVME_DB_HASH_HANDLE** %pstHash.addr, align 8
  store %struct.VME_DB_HASH_ENTRY_S* null, %struct.VME_DB_HASH_ENTRY_S** %pstEntry, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.tagVME_DB_HASH_HANDLE*, %struct.tagVME_DB_HASH_HANDLE** %pstHash.addr, align 8
  %stHashExtraInfo = getelementptr inbounds %struct.tagVME_DB_HASH_HANDLE, %struct.tagVME_DB_HASH_HANDLE* %1, i32 0, i32 0
  %uiHashSize = getelementptr inbounds %struct.VME_DB_EXTRA_INFO_HASH_S, %struct.VME_DB_EXTRA_INFO_HASH_S* %stHashExtraInfo, i32 0, i32 0
  %2 = load i32, i32* %uiHashSize, align 8
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.tagVME_DB_HASH_HANDLE*, %struct.tagVME_DB_HASH_HANDLE** %pstHash.addr, align 8
  %astHashBucket = getelementptr inbounds %struct.tagVME_DB_HASH_HANDLE, %struct.tagVME_DB_HASH_HANDLE* %3, i32 0, i32 1
  %4 = load i32, i32* %i, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds [0 x %struct.VME_DB_HASH_CFL_TBL], [0 x %struct.VME_DB_HASH_CFL_TBL]* %astHashBucket, i64 0, i64 %idxprom
  %stHead = getelementptr inbounds %struct.VME_DB_HASH_CFL_TBL, %struct.VME_DB_HASH_CFL_TBL* %arrayidx, i32 0, i32 0
  %d_pstFirst = getelementptr inbounds %struct.tagHASH_CFL_TBL_HEAD, %struct.tagHASH_CFL_TBL_HEAD* %stHead, i32 0, i32 0
  %5 = load %struct.tagVME_DB_HASH_ENTRY*, %struct.tagVME_DB_HASH_ENTRY** %d_pstFirst, align 8
  %6 = bitcast %struct.tagVME_DB_HASH_ENTRY* %5 to %struct.VME_DB_HASH_ENTRY_S*
  store %struct.VME_DB_HASH_ENTRY_S* %6, %struct.VME_DB_HASH_ENTRY_S** %pstEntry, align 8
  %7 = load %struct.VME_DB_HASH_ENTRY_S*, %struct.VME_DB_HASH_ENTRY_S** %pstEntry, align 8
  %tobool = icmp ne %struct.VME_DB_HASH_ENTRY_S* %7, null
  br i1 %tobool, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %8 = load %struct.VME_DB_HASH_ENTRY_S*, %struct.VME_DB_HASH_ENTRY_S** %pstEntry, align 8
  store %struct.VME_DB_HASH_ENTRY_S* %8, %struct.VME_DB_HASH_ENTRY_S** %retval, align 8
  br label %return

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.VME_DB_HASH_ENTRY_S* null, %struct.VME_DB_HASH_ENTRY_S** %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %10 = load %struct.VME_DB_HASH_ENTRY_S*, %struct.VME_DB_HASH_ENTRY_S** %retval, align 8
  ret %struct.VME_DB_HASH_ENTRY_S* %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.VME_DB_CONTAINER_ENTRY_UN* @VME_DB_CONTAINER_GetFirstRec(%struct.tagVME_DB_CONTAINER_HANDLE* %pstContainer) #0 {
entry:
  %retval = alloca %struct.VME_DB_CONTAINER_ENTRY_UN*, align 8
  %pstContainer.addr = alloca %struct.tagVME_DB_CONTAINER_HANDLE*, align 8
  store %struct.tagVME_DB_CONTAINER_HANDLE* %pstContainer, %struct.tagVME_DB_CONTAINER_HANDLE** %pstContainer.addr, align 8
  %0 = load %struct.tagVME_DB_CONTAINER_HANDLE*, %struct.tagVME_DB_CONTAINER_HANDLE** %pstContainer.addr, align 8
  %enType = getelementptr inbounds %struct.tagVME_DB_CONTAINER_HANDLE, %struct.tagVME_DB_CONTAINER_HANDLE* %0, i32 0, i32 0
  %1 = load i32, i32* %enType, align 8
  switch i32 %1, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.epilog
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.tagVME_DB_CONTAINER_HANDLE*, %struct.tagVME_DB_CONTAINER_HANDLE** %pstContainer.addr, align 8
  %unHandle = getelementptr inbounds %struct.tagVME_DB_CONTAINER_HANDLE, %struct.tagVME_DB_CONTAINER_HANDLE* %2, i32 0, i32 2
  %pstHash = bitcast %union.anon* %unHandle to %struct.tagVME_DB_HASH_ENV**
  %3 = load %struct.tagVME_DB_HASH_ENV*, %struct.tagVME_DB_HASH_ENV** %pstHash, align 8
  %4 = bitcast %struct.tagVME_DB_HASH_ENV* %3 to %struct.tagVME_DB_HASH_HANDLE*
  %call = call %struct.VME_DB_HASH_ENTRY_S* @VME_DB_HASH_GetFirstRec(%struct.tagVME_DB_HASH_HANDLE* %4)
  %5 = bitcast %struct.VME_DB_HASH_ENTRY_S* %call to i8*
  %6 = bitcast i8* %5 to %struct.VME_DB_CONTAINER_ENTRY_UN*
  store %struct.VME_DB_CONTAINER_ENTRY_UN* %6, %struct.VME_DB_CONTAINER_ENTRY_UN** %retval, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store %struct.VME_DB_CONTAINER_ENTRY_UN* null, %struct.VME_DB_CONTAINER_ENTRY_UN** %retval, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb, %sw.default
  %7 = load %struct.VME_DB_CONTAINER_ENTRY_UN*, %struct.VME_DB_CONTAINER_ENTRY_UN** %retval, align 8
  ret %struct.VME_DB_CONTAINER_ENTRY_UN* %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @VME_DB_GetFirstRec(%struct.tagVME_DB_TBL_ENV* %pstTable, i64* %phRec) #0 {
entry:
  %retval = alloca i8*, align 8
  %pstTable.addr = alloca %struct.tagVME_DB_TBL_ENV*, align 8
  %phRec.addr = alloca i64*, align 8
  %pstPvtHandle = alloca %struct.VME_DB_REC_HANDLE_PVT_S*, align 8
  %punMainEntry = alloca %struct.VME_DB_CONTAINER_ENTRY_UN*, align 8
  %pstUserData = alloca %struct.VME_DB_USER_DATA_S*, align 8
  store %struct.tagVME_DB_TBL_ENV* %pstTable, %struct.tagVME_DB_TBL_ENV** %pstTable.addr, align 8
  store i64* %phRec, i64** %phRec.addr, align 8
  %0 = load i64*, i64** %phRec.addr, align 8
  %1 = bitcast i64* %0 to %struct.VME_DB_REC_HANDLE_PVT_S*
  store %struct.VME_DB_REC_HANDLE_PVT_S* %1, %struct.VME_DB_REC_HANDLE_PVT_S** %pstPvtHandle, align 8
  store %struct.VME_DB_CONTAINER_ENTRY_UN* null, %struct.VME_DB_CONTAINER_ENTRY_UN** %punMainEntry, align 8
  store %struct.VME_DB_USER_DATA_S* null, %struct.VME_DB_USER_DATA_S** %pstUserData, align 8
  %2 = load %struct.tagVME_DB_TBL_ENV*, %struct.tagVME_DB_TBL_ENV** %pstTable.addr, align 8
  %pstMainCtnr = getelementptr inbounds %struct.tagVME_DB_TBL_ENV, %struct.tagVME_DB_TBL_ENV* %2, i32 0, i32 2
  %arraydecay = getelementptr inbounds [16 x %struct.tagVME_DB_CONTAINER_ENV], [16 x %struct.tagVME_DB_CONTAINER_ENV]* %pstMainCtnr, i64 0, i64 0
  %3 = bitcast %struct.tagVME_DB_CONTAINER_ENV* %arraydecay to %struct.tagVME_DB_CONTAINER_HANDLE*
  %call = call %struct.VME_DB_CONTAINER_ENTRY_UN* @VME_DB_CONTAINER_GetFirstRec(%struct.tagVME_DB_CONTAINER_HANDLE* %3)
  store %struct.VME_DB_CONTAINER_ENTRY_UN* %call, %struct.VME_DB_CONTAINER_ENTRY_UN** %punMainEntry, align 8
  %4 = load %struct.VME_DB_CONTAINER_ENTRY_UN*, %struct.VME_DB_CONTAINER_ENTRY_UN** %punMainEntry, align 8
  %cmp = icmp eq %struct.VME_DB_CONTAINER_ENTRY_UN* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.VME_DB_CONTAINER_ENTRY_UN*, %struct.VME_DB_CONTAINER_ENTRY_UN** %punMainEntry, align 8
  %6 = bitcast %struct.VME_DB_CONTAINER_ENTRY_UN* %5 to i8*
  %7 = load %struct.VME_DB_REC_HANDLE_PVT_S*, %struct.VME_DB_REC_HANDLE_PVT_S** %pstPvtHandle, align 8
  %pNode = getelementptr inbounds %struct.VME_DB_REC_HANDLE_PVT_S, %struct.VME_DB_REC_HANDLE_PVT_S* %7, i32 0, i32 0
  store i8* %6, i8** %pNode, align 8
  %8 = load %struct.VME_DB_REC_HANDLE_PVT_S*, %struct.VME_DB_REC_HANDLE_PVT_S** %pstPvtHandle, align 8
  %pNode1 = getelementptr inbounds %struct.VME_DB_REC_HANDLE_PVT_S, %struct.VME_DB_REC_HANDLE_PVT_S* %8, i32 0, i32 0
  %9 = load i8*, i8** %pNode1, align 8
  %10 = ptrtoint i8* %9 to i32
  %11 = load %struct.tagVME_DB_TBL_ENV*, %struct.tagVME_DB_TBL_ENV** %pstTable.addr, align 8
  %uiIndexCount = getelementptr inbounds %struct.tagVME_DB_TBL_ENV, %struct.tagVME_DB_TBL_ENV* %11, i32 0, i32 3
  %12 = load i32, i32* %uiIndexCount, align 1
  %call2 = call %struct.VME_DB_USER_DATA_S* @VME_DB_NODE_TO_USER_DATA(i32 %10, i32 %12)
  store %struct.VME_DB_USER_DATA_S* %call2, %struct.VME_DB_USER_DATA_S** %pstUserData, align 8
  %13 = load %struct.VME_DB_USER_DATA_S*, %struct.VME_DB_USER_DATA_S** %pstUserData, align 8
  %aucRecord = getelementptr inbounds %struct.VME_DB_USER_DATA_S, %struct.VME_DB_USER_DATA_S* %13, i32 0, i32 1
  %arraydecay3 = getelementptr inbounds [0 x i8], [0 x i8]* %aucRecord, i64 0, i64 0
  store i8* %arraydecay3, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %14 = load i8*, i8** %retval, align 8
  ret i8* %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.VME_DB_HASH_ENTRY_S* @VME_DB_HASH_GetNextRec(%struct.tagVME_DB_HASH_HANDLE* %pstHash, %struct.VME_DB_HASH_ENTRY_S* %pstCurEntry) #0 {
entry:
  %retval = alloca %struct.VME_DB_HASH_ENTRY_S*, align 8
  %pstHash.addr = alloca %struct.tagVME_DB_HASH_HANDLE*, align 8
  %pstCurEntry.addr = alloca %struct.VME_DB_HASH_ENTRY_S*, align 8
  %uiHashPos = alloca i32, align 4
  %pstNextEntry = alloca %struct.VME_DB_HASH_ENTRY_S*, align 8
  store %struct.tagVME_DB_HASH_HANDLE* %pstHash, %struct.tagVME_DB_HASH_HANDLE** %pstHash.addr, align 8
  store %struct.VME_DB_HASH_ENTRY_S* %pstCurEntry, %struct.VME_DB_HASH_ENTRY_S** %pstCurEntry.addr, align 8
  store %struct.VME_DB_HASH_ENTRY_S* null, %struct.VME_DB_HASH_ENTRY_S** %pstNextEntry, align 8
  %0 = load %struct.VME_DB_HASH_ENTRY_S*, %struct.VME_DB_HASH_ENTRY_S** %pstCurEntry.addr, align 8
  %stField = getelementptr inbounds %struct.VME_DB_HASH_ENTRY_S, %struct.VME_DB_HASH_ENTRY_S* %0, i32 0, i32 0
  %d_pstNext = getelementptr inbounds %struct.anon, %struct.anon* %stField, i32 0, i32 0
  %1 = load %struct.tagVME_DB_HASH_ENTRY*, %struct.tagVME_DB_HASH_ENTRY** %d_pstNext, align 8
  %2 = bitcast %struct.tagVME_DB_HASH_ENTRY* %1 to %struct.VME_DB_HASH_ENTRY_S*
  store %struct.VME_DB_HASH_ENTRY_S* %2, %struct.VME_DB_HASH_ENTRY_S** %pstNextEntry, align 8
  %3 = load %struct.VME_DB_HASH_ENTRY_S*, %struct.VME_DB_HASH_ENTRY_S** %pstNextEntry, align 8
  %tobool = icmp ne %struct.VME_DB_HASH_ENTRY_S* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.VME_DB_HASH_ENTRY_S*, %struct.VME_DB_HASH_ENTRY_S** %pstNextEntry, align 8
  store %struct.VME_DB_HASH_ENTRY_S* %4, %struct.VME_DB_HASH_ENTRY_S** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.VME_DB_HASH_ENTRY_S*, %struct.VME_DB_HASH_ENTRY_S** %pstCurEntry.addr, align 8
  %uiHashPos1 = getelementptr inbounds %struct.VME_DB_HASH_ENTRY_S, %struct.VME_DB_HASH_ENTRY_S* %5, i32 0, i32 1
  %6 = load i32, i32* %uiHashPos1, align 8
  %add = add i32 %6, 1
  store i32 %add, i32* %uiHashPos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %uiHashPos, align 4
  %8 = load %struct.tagVME_DB_HASH_HANDLE*, %struct.tagVME_DB_HASH_HANDLE** %pstHash.addr, align 8
  %stHashExtraInfo = getelementptr inbounds %struct.tagVME_DB_HASH_HANDLE, %struct.tagVME_DB_HASH_HANDLE* %8, i32 0, i32 0
  %uiHashSize = getelementptr inbounds %struct.VME_DB_EXTRA_INFO_HASH_S, %struct.VME_DB_EXTRA_INFO_HASH_S* %stHashExtraInfo, i32 0, i32 0
  %9 = load i32, i32* %uiHashSize, align 8
  %cmp = icmp ult i32 %7, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.tagVME_DB_HASH_HANDLE*, %struct.tagVME_DB_HASH_HANDLE** %pstHash.addr, align 8
  %astHashBucket = getelementptr inbounds %struct.tagVME_DB_HASH_HANDLE, %struct.tagVME_DB_HASH_HANDLE* %10, i32 0, i32 1
  %11 = load i32, i32* %uiHashPos, align 4
  %idxprom = zext i32 %11 to i64
  %arrayidx = getelementptr inbounds [0 x %struct.VME_DB_HASH_CFL_TBL], [0 x %struct.VME_DB_HASH_CFL_TBL]* %astHashBucket, i64 0, i64 %idxprom
  %stHead = getelementptr inbounds %struct.VME_DB_HASH_CFL_TBL, %struct.VME_DB_HASH_CFL_TBL* %arrayidx, i32 0, i32 0
  %d_pstFirst = getelementptr inbounds %struct.tagHASH_CFL_TBL_HEAD, %struct.tagHASH_CFL_TBL_HEAD* %stHead, i32 0, i32 0
  %12 = load %struct.tagVME_DB_HASH_ENTRY*, %struct.tagVME_DB_HASH_ENTRY** %d_pstFirst, align 8
  %13 = bitcast %struct.tagVME_DB_HASH_ENTRY* %12 to %struct.VME_DB_HASH_ENTRY_S*
  store %struct.VME_DB_HASH_ENTRY_S* %13, %struct.VME_DB_HASH_ENTRY_S** %pstNextEntry, align 8
  %14 = load %struct.VME_DB_HASH_ENTRY_S*, %struct.VME_DB_HASH_ENTRY_S** %pstNextEntry, align 8
  %tobool2 = icmp ne %struct.VME_DB_HASH_ENTRY_S* %14, null
  br i1 %tobool2, label %if.then3, label %for.inc

if.then3:                                         ; preds = %for.body
  %15 = load %struct.VME_DB_HASH_ENTRY_S*, %struct.VME_DB_HASH_ENTRY_S** %pstNextEntry, align 8
  store %struct.VME_DB_HASH_ENTRY_S* %15, %struct.VME_DB_HASH_ENTRY_S** %retval, align 8
  br label %return

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %uiHashPos, align 4
  %inc = add i32 %16, 1
  store i32 %inc, i32* %uiHashPos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.VME_DB_HASH_ENTRY_S* null, %struct.VME_DB_HASH_ENTRY_S** %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then3, %if.then
  %17 = load %struct.VME_DB_HASH_ENTRY_S*, %struct.VME_DB_HASH_ENTRY_S** %retval, align 8
  ret %struct.VME_DB_HASH_ENTRY_S* %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.VME_DB_CONTAINER_ENTRY_UN* @VME_DB_CONTAINER_GetNextRec(%struct.tagVME_DB_CONTAINER_HANDLE* %pstContainer, %struct.VME_DB_CONTAINER_ENTRY_UN* %punCurEntry) #0 {
entry:
  %retval = alloca %struct.VME_DB_CONTAINER_ENTRY_UN*, align 8
  %pstContainer.addr = alloca %struct.tagVME_DB_CONTAINER_HANDLE*, align 8
  %punCurEntry.addr = alloca %struct.VME_DB_CONTAINER_ENTRY_UN*, align 8
  store %struct.tagVME_DB_CONTAINER_HANDLE* %pstContainer, %struct.tagVME_DB_CONTAINER_HANDLE** %pstContainer.addr, align 8
  store %struct.VME_DB_CONTAINER_ENTRY_UN* %punCurEntry, %struct.VME_DB_CONTAINER_ENTRY_UN** %punCurEntry.addr, align 8
  %0 = load %struct.tagVME_DB_CONTAINER_HANDLE*, %struct.tagVME_DB_CONTAINER_HANDLE** %pstContainer.addr, align 8
  %enType = getelementptr inbounds %struct.tagVME_DB_CONTAINER_HANDLE, %struct.tagVME_DB_CONTAINER_HANDLE* %0, i32 0, i32 0
  %1 = load i32, i32* %enType, align 8
  switch i32 %1, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.epilog
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.tagVME_DB_CONTAINER_HANDLE*, %struct.tagVME_DB_CONTAINER_HANDLE** %pstContainer.addr, align 8
  %unHandle = getelementptr inbounds %struct.tagVME_DB_CONTAINER_HANDLE, %struct.tagVME_DB_CONTAINER_HANDLE* %2, i32 0, i32 2
  %pstHash = bitcast %union.anon* %unHandle to %struct.tagVME_DB_HASH_ENV**
  %3 = load %struct.tagVME_DB_HASH_ENV*, %struct.tagVME_DB_HASH_ENV** %pstHash, align 8
  %4 = bitcast %struct.tagVME_DB_HASH_ENV* %3 to %struct.tagVME_DB_HASH_HANDLE*
  %5 = load %struct.VME_DB_CONTAINER_ENTRY_UN*, %struct.VME_DB_CONTAINER_ENTRY_UN** %punCurEntry.addr, align 8
  %stHash = getelementptr inbounds %struct.VME_DB_CONTAINER_ENTRY_UN, %struct.VME_DB_CONTAINER_ENTRY_UN* %5, i32 0, i32 1
  %6 = bitcast %struct.tagVME_DB_HASH_ENTRY* %stHash to %struct.VME_DB_HASH_ENTRY_S*
  %call = call %struct.VME_DB_HASH_ENTRY_S* @VME_DB_HASH_GetNextRec(%struct.tagVME_DB_HASH_HANDLE* %4, %struct.VME_DB_HASH_ENTRY_S* %6)
  %7 = bitcast %struct.VME_DB_HASH_ENTRY_S* %call to i8*
  %8 = bitcast i8* %7 to %struct.VME_DB_CONTAINER_ENTRY_UN*
  store %struct.VME_DB_CONTAINER_ENTRY_UN* %8, %struct.VME_DB_CONTAINER_ENTRY_UN** %retval, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store %struct.VME_DB_CONTAINER_ENTRY_UN* null, %struct.VME_DB_CONTAINER_ENTRY_UN** %retval, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb, %sw.default
  %9 = load %struct.VME_DB_CONTAINER_ENTRY_UN*, %struct.VME_DB_CONTAINER_ENTRY_UN** %retval, align 8
  ret %struct.VME_DB_CONTAINER_ENTRY_UN* %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @VME_DB_GetNextRec(%struct.tagVME_DB_TBL_ENV* %pstTable, i64 %hCurRec, i64* %phNextRec) #0 {
entry:
  %retval = alloca i8*, align 8
  %pstTable.addr = alloca %struct.tagVME_DB_TBL_ENV*, align 8
  %hCurRec.addr = alloca i64, align 8
  %phNextRec.addr = alloca i64*, align 8
  %pstCurPvtHandle = alloca %struct.VME_DB_REC_HANDLE_PVT_S*, align 8
  %pstNextPvtHandle = alloca %struct.VME_DB_REC_HANDLE_PVT_S*, align 8
  %punCurMainEntry = alloca %struct.VME_DB_CONTAINER_ENTRY_UN*, align 8
  %punNextMainEntry = alloca %struct.VME_DB_CONTAINER_ENTRY_UN*, align 8
  %pstUserData = alloca %struct.VME_DB_USER_DATA_S*, align 8
  store %struct.tagVME_DB_TBL_ENV* %pstTable, %struct.tagVME_DB_TBL_ENV** %pstTable.addr, align 8
  store i64 %hCurRec, i64* %hCurRec.addr, align 8
  store i64* %phNextRec, i64** %phNextRec.addr, align 8
  %0 = bitcast i64* %hCurRec.addr to %struct.VME_DB_REC_HANDLE_PVT_S*
  store %struct.VME_DB_REC_HANDLE_PVT_S* %0, %struct.VME_DB_REC_HANDLE_PVT_S** %pstCurPvtHandle, align 8
  %1 = load i64*, i64** %phNextRec.addr, align 8
  %2 = bitcast i64* %1 to %struct.VME_DB_REC_HANDLE_PVT_S*
  store %struct.VME_DB_REC_HANDLE_PVT_S* %2, %struct.VME_DB_REC_HANDLE_PVT_S** %pstNextPvtHandle, align 8
  store %struct.VME_DB_CONTAINER_ENTRY_UN* null, %struct.VME_DB_CONTAINER_ENTRY_UN** %punCurMainEntry, align 8
  store %struct.VME_DB_CONTAINER_ENTRY_UN* null, %struct.VME_DB_CONTAINER_ENTRY_UN** %punNextMainEntry, align 8
  store %struct.VME_DB_USER_DATA_S* null, %struct.VME_DB_USER_DATA_S** %pstUserData, align 8
  %3 = load %struct.VME_DB_REC_HANDLE_PVT_S*, %struct.VME_DB_REC_HANDLE_PVT_S** %pstCurPvtHandle, align 8
  %pNode = getelementptr inbounds %struct.VME_DB_REC_HANDLE_PVT_S, %struct.VME_DB_REC_HANDLE_PVT_S* %3, i32 0, i32 0
  %4 = load i8*, i8** %pNode, align 8
  %5 = bitcast i8* %4 to %struct.VME_DB_CONTAINER_ENTRY_UN*
  store %struct.VME_DB_CONTAINER_ENTRY_UN* %5, %struct.VME_DB_CONTAINER_ENTRY_UN** %punCurMainEntry, align 8
  %6 = load %struct.tagVME_DB_TBL_ENV*, %struct.tagVME_DB_TBL_ENV** %pstTable.addr, align 8
  %pstMainCtnr = getelementptr inbounds %struct.tagVME_DB_TBL_ENV, %struct.tagVME_DB_TBL_ENV* %6, i32 0, i32 2
  %arraydecay = getelementptr inbounds [16 x %struct.tagVME_DB_CONTAINER_ENV], [16 x %struct.tagVME_DB_CONTAINER_ENV]* %pstMainCtnr, i64 0, i64 0
  %7 = bitcast %struct.tagVME_DB_CONTAINER_ENV* %arraydecay to %struct.tagVME_DB_CONTAINER_HANDLE*
  %8 = load %struct.VME_DB_CONTAINER_ENTRY_UN*, %struct.VME_DB_CONTAINER_ENTRY_UN** %punCurMainEntry, align 8
  %call = call %struct.VME_DB_CONTAINER_ENTRY_UN* @VME_DB_CONTAINER_GetNextRec(%struct.tagVME_DB_CONTAINER_HANDLE* %7, %struct.VME_DB_CONTAINER_ENTRY_UN* %8)
  store %struct.VME_DB_CONTAINER_ENTRY_UN* %call, %struct.VME_DB_CONTAINER_ENTRY_UN** %punNextMainEntry, align 8
  %9 = load %struct.VME_DB_CONTAINER_ENTRY_UN*, %struct.VME_DB_CONTAINER_ENTRY_UN** %punNextMainEntry, align 8
  %cmp = icmp eq %struct.VME_DB_CONTAINER_ENTRY_UN* %9, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %10 = load %struct.VME_DB_CONTAINER_ENTRY_UN*, %struct.VME_DB_CONTAINER_ENTRY_UN** %punNextMainEntry, align 8
  %11 = bitcast %struct.VME_DB_CONTAINER_ENTRY_UN* %10 to i8*
  %12 = load %struct.VME_DB_REC_HANDLE_PVT_S*, %struct.VME_DB_REC_HANDLE_PVT_S** %pstNextPvtHandle, align 8
  %pNode1 = getelementptr inbounds %struct.VME_DB_REC_HANDLE_PVT_S, %struct.VME_DB_REC_HANDLE_PVT_S* %12, i32 0, i32 0
  store i8* %11, i8** %pNode1, align 8
  %13 = load %struct.VME_DB_REC_HANDLE_PVT_S*, %struct.VME_DB_REC_HANDLE_PVT_S** %pstNextPvtHandle, align 8
  %pNode2 = getelementptr inbounds %struct.VME_DB_REC_HANDLE_PVT_S, %struct.VME_DB_REC_HANDLE_PVT_S* %13, i32 0, i32 0
  %14 = load i8*, i8** %pNode2, align 8
  %15 = ptrtoint i8* %14 to i32
  %16 = load %struct.tagVME_DB_TBL_ENV*, %struct.tagVME_DB_TBL_ENV** %pstTable.addr, align 8
  %uiIndexCount = getelementptr inbounds %struct.tagVME_DB_TBL_ENV, %struct.tagVME_DB_TBL_ENV* %16, i32 0, i32 3
  %17 = load i32, i32* %uiIndexCount, align 1
  %call3 = call %struct.VME_DB_USER_DATA_S* @VME_DB_NODE_TO_USER_DATA(i32 %15, i32 %17)
  store %struct.VME_DB_USER_DATA_S* %call3, %struct.VME_DB_USER_DATA_S** %pstUserData, align 8
  %18 = load %struct.VME_DB_USER_DATA_S*, %struct.VME_DB_USER_DATA_S** %pstUserData, align 8
  %aucRecord = getelementptr inbounds %struct.VME_DB_USER_DATA_S, %struct.VME_DB_USER_DATA_S* %18, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [0 x i8], [0 x i8]* %aucRecord, i64 0, i64 0
  store i8* %arraydecay4, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %19 = load i8*, i8** %retval, align 8
  ret i8* %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @AIS_ZoneMZoneHostInfoCfg(%struct.tagVmeSmpMsgInfo** %msgInfo, %struct.AisQueryInofZone** %aiInofZoneHostInfo, %struct.AisQueryInofZone* %aiInofZoneHost, %struct.AisDbZoneMZoneCfgRecord** %zoneRec, i8* %thisLocal) #0 {
entry:
  %msgInfo.addr = alloca %struct.tagVmeSmpMsgInfo**, align 8
  %aiInofZoneHostInfo.addr = alloca %struct.AisQueryInofZone**, align 8
  %aiInofZoneHost.addr = alloca %struct.AisQueryInofZone*, align 8
  %zoneRec.addr = alloca %struct.AisDbZoneMZoneCfgRecord**, align 8
  %thisLocal.addr = alloca i8*, align 8
  store %struct.tagVmeSmpMsgInfo** %msgInfo, %struct.tagVmeSmpMsgInfo*** %msgInfo.addr, align 8
  store %struct.AisQueryInofZone** %aiInofZoneHostInfo, %struct.AisQueryInofZone*** %aiInofZoneHostInfo.addr, align 8
  store %struct.AisQueryInofZone* %aiInofZoneHost, %struct.AisQueryInofZone** %aiInofZoneHost.addr, align 8
  store %struct.AisDbZoneMZoneCfgRecord** %zoneRec, %struct.AisDbZoneMZoneCfgRecord*** %zoneRec.addr, align 8
  store i8* %thisLocal, i8** %thisLocal.addr, align 8
  %0 = load %struct.tagVmeSmpMsgInfo**, %struct.tagVmeSmpMsgInfo*** %msgInfo.addr, align 8
  %1 = load %struct.tagVmeSmpMsgInfo*, %struct.tagVmeSmpMsgInfo** %0, align 8
  %pOptionData = getelementptr inbounds %struct.tagVmeSmpMsgInfo, %struct.tagVmeSmpMsgInfo* %1, i32 0, i32 11
  %2 = load i8*, i8** %pOptionData, align 1
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.AisQueryInofZone*, %struct.AisQueryInofZone** %aiInofZoneHost.addr, align 8
  %4 = load %struct.AisQueryInofZone**, %struct.AisQueryInofZone*** %aiInofZoneHostInfo.addr, align 8
  store %struct.AisQueryInofZone* %3, %struct.AisQueryInofZone** %4, align 8
  %5 = load i8*, i8** %thisLocal.addr, align 8
  %6 = bitcast i8* %5 to %struct.AisLocal*
  %aisTblHandle = getelementptr inbounds %struct.AisLocal, %struct.AisLocal* %6, i32 0, i32 14
  %arrayidx = getelementptr inbounds [14 x %struct.tagVME_DB_TBL_ENV*], [14 x %struct.tagVME_DB_TBL_ENV*]* %aisTblHandle, i64 0, i64 5
  %7 = load %struct.tagVME_DB_TBL_ENV*, %struct.tagVME_DB_TBL_ENV** %arrayidx, align 1
  %8 = load %struct.AisQueryInofZone**, %struct.AisQueryInofZone*** %aiInofZoneHostInfo.addr, align 8
  %9 = load %struct.AisQueryInofZone*, %struct.AisQueryInofZone** %8, align 8
  %zone = getelementptr inbounds %struct.AisQueryInofZone, %struct.AisQueryInofZone* %9, i32 0, i32 2
  %hRec = getelementptr inbounds %struct.AisQueryInofZoneInfo, %struct.AisQueryInofZoneInfo* %zone, i32 0, i32 0
  %call = call i8* @VME_DB_GetFirstRec(%struct.tagVME_DB_TBL_ENV* %7, i64* %hRec)
  %10 = bitcast i8* %call to %struct.AisDbZoneMZoneCfgRecord*
  %11 = load %struct.AisDbZoneMZoneCfgRecord**, %struct.AisDbZoneMZoneCfgRecord*** %zoneRec.addr, align 8
  store %struct.AisDbZoneMZoneCfgRecord* %10, %struct.AisDbZoneMZoneCfgRecord** %11, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = load %struct.tagVmeSmpMsgInfo**, %struct.tagVmeSmpMsgInfo*** %msgInfo.addr, align 8
  %13 = load %struct.tagVmeSmpMsgInfo*, %struct.tagVmeSmpMsgInfo** %12, align 8
  %pOptionData1 = getelementptr inbounds %struct.tagVmeSmpMsgInfo, %struct.tagVmeSmpMsgInfo* %13, i32 0, i32 11
  %14 = load i8*, i8** %pOptionData1, align 1
  %15 = bitcast i8* %14 to %struct.AisQueryInofZone*
  %16 = load %struct.AisQueryInofZone**, %struct.AisQueryInofZone*** %aiInofZoneHostInfo.addr, align 8
  store %struct.AisQueryInofZone* %15, %struct.AisQueryInofZone** %16, align 8
  %17 = load i8*, i8** %thisLocal.addr, align 8
  %18 = bitcast i8* %17 to %struct.AisLocal*
  %aisTblHandle2 = getelementptr inbounds %struct.AisLocal, %struct.AisLocal* %18, i32 0, i32 14
  %arrayidx3 = getelementptr inbounds [14 x %struct.tagVME_DB_TBL_ENV*], [14 x %struct.tagVME_DB_TBL_ENV*]* %aisTblHandle2, i64 0, i64 5
  %19 = load %struct.tagVME_DB_TBL_ENV*, %struct.tagVME_DB_TBL_ENV** %arrayidx3, align 1
  %20 = load %struct.AisQueryInofZone**, %struct.AisQueryInofZone*** %aiInofZoneHostInfo.addr, align 8
  %21 = load %struct.AisQueryInofZone*, %struct.AisQueryInofZone** %20, align 8
  %zone4 = getelementptr inbounds %struct.AisQueryInofZone, %struct.AisQueryInofZone* %21, i32 0, i32 2
  %tblKey = getelementptr inbounds %struct.AisQueryInofZoneInfo, %struct.AisQueryInofZoneInfo* %zone4, i32 0, i32 1
  %22 = bitcast %struct.AisDbZoneMZoneCfgKey* %tblKey to i8*
  %23 = load %struct.AisQueryInofZone**, %struct.AisQueryInofZone*** %aiInofZoneHostInfo.addr, align 8
  %24 = load %struct.AisQueryInofZone*, %struct.AisQueryInofZone** %23, align 8
  %zone5 = getelementptr inbounds %struct.AisQueryInofZone, %struct.AisQueryInofZone* %24, i32 0, i32 2
  %hRec6 = getelementptr inbounds %struct.AisQueryInofZoneInfo, %struct.AisQueryInofZoneInfo* %zone5, i32 0, i32 0
  %call7 = call i8* @VME_DB_GetRec(%struct.tagVME_DB_TBL_ENV* %19, i8* %22, i32 36, i64* %hRec6)
  %25 = bitcast i8* %call7 to %struct.AisDbZoneMZoneCfgRecord*
  %26 = load %struct.AisDbZoneMZoneCfgRecord**, %struct.AisDbZoneMZoneCfgRecord*** %zoneRec.addr, align 8
  store %struct.AisDbZoneMZoneCfgRecord* %25, %struct.AisDbZoneMZoneCfgRecord** %26, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @AIS_ZoneWithoutHostRec(i8* %thisLocal, %struct.tagVmeSmpMsgInfo* %msgInfo, %struct.AisDbZoneMZoneCfgRecord* %zoneRec, %struct.AisQueryInofHostEnp* byval(%struct.AisQueryInofHostEnp) align 8 %inofHostEnp, i32* %count) #0 {
entry:
  %thisLocal.addr = alloca i8*, align 8
  %msgInfo.addr = alloca %struct.tagVmeSmpMsgInfo*, align 8
  %zoneRec.addr = alloca %struct.AisDbZoneMZoneCfgRecord*, align 8
  %count.addr = alloca i32*, align 8
  store i8* %thisLocal, i8** %thisLocal.addr, align 8
  store %struct.tagVmeSmpMsgInfo* %msgInfo, %struct.tagVmeSmpMsgInfo** %msgInfo.addr, align 8
  store %struct.AisDbZoneMZoneCfgRecord* %zoneRec, %struct.AisDbZoneMZoneCfgRecord** %zoneRec.addr, align 8
  store i32* %count, i32** %count.addr, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @AIS_ZoneHostSetOptionData(%struct.tagVmeSmpMsgInfo* %msgInfo, %struct.AisQueryInofZone* %aiInofZoneHostInfo, %struct.AisDbZoneMZoneCfgRecord* %zoneTempRec, i64 %zoneHdlRec) #0 {
entry:
  %msgInfo.addr = alloca %struct.tagVmeSmpMsgInfo*, align 8
  %aiInofZoneHostInfo.addr = alloca %struct.AisQueryInofZone*, align 8
  %zoneTempRec.addr = alloca %struct.AisDbZoneMZoneCfgRecord*, align 8
  %zoneHdlRec.addr = alloca i64, align 8
  store %struct.tagVmeSmpMsgInfo* %msgInfo, %struct.tagVmeSmpMsgInfo** %msgInfo.addr, align 8
  store %struct.AisQueryInofZone* %aiInofZoneHostInfo, %struct.AisQueryInofZone** %aiInofZoneHostInfo.addr, align 8
  store %struct.AisDbZoneMZoneCfgRecord* %zoneTempRec, %struct.AisDbZoneMZoneCfgRecord** %zoneTempRec.addr, align 8
  store i64 %zoneHdlRec, i64* %zoneHdlRec.addr, align 8
  %0 = load i64, i64* %zoneHdlRec.addr, align 8
  %1 = load %struct.AisQueryInofZone*, %struct.AisQueryInofZone** %aiInofZoneHostInfo.addr, align 8
  %zone = getelementptr inbounds %struct.AisQueryInofZone, %struct.AisQueryInofZone* %1, i32 0, i32 2
  %hRec = getelementptr inbounds %struct.AisQueryInofZoneInfo, %struct.AisQueryInofZoneInfo* %zone, i32 0, i32 0
  store i64 %0, i64* %hRec, align 8
  %2 = load %struct.AisQueryInofZone*, %struct.AisQueryInofZone** %aiInofZoneHostInfo.addr, align 8
  %zone1 = getelementptr inbounds %struct.AisQueryInofZone, %struct.AisQueryInofZone* %2, i32 0, i32 2
  %tblKey = getelementptr inbounds %struct.AisQueryInofZoneInfo, %struct.AisQueryInofZoneInfo* %zone1, i32 0, i32 1
  %3 = bitcast %struct.AisDbZoneMZoneCfgKey* %tblKey to i8*
  %4 = load %struct.AisDbZoneMZoneCfgRecord*, %struct.AisDbZoneMZoneCfgRecord** %zoneTempRec.addr, align 8
  %tblKey2 = getelementptr inbounds %struct.AisDbZoneMZoneCfgRecord, %struct.AisDbZoneMZoneCfgRecord* %4, i32 0, i32 0
  %5 = bitcast %struct.AisDbZoneMZoneCfgKey* %tblKey2 to i8*
  %6 = call i8* @memcpy(i8* %3, i8* %5, i64 36)
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @AIS_ZoneSetOptionData(%struct.tagVmeSmpMsgInfo* %msgInfo, %struct.AisQueryInofZone* %aiInofZoneHostInfo, %struct.AisDbZoneMZoneCfgRecord* %zoneTempRec, i64 %zoneHdlTempRec) #0 {
entry:
  %msgInfo.addr = alloca %struct.tagVmeSmpMsgInfo*, align 8
  %aiInofZoneHostInfo.addr = alloca %struct.AisQueryInofZone*, align 8
  %zoneTempRec.addr = alloca %struct.AisDbZoneMZoneCfgRecord*, align 8
  %zoneHdlTempRec.addr = alloca i64, align 8
  store %struct.tagVmeSmpMsgInfo* %msgInfo, %struct.tagVmeSmpMsgInfo** %msgInfo.addr, align 8
  store %struct.AisQueryInofZone* %aiInofZoneHostInfo, %struct.AisQueryInofZone** %aiInofZoneHostInfo.addr, align 8
  store %struct.AisDbZoneMZoneCfgRecord* %zoneTempRec, %struct.AisDbZoneMZoneCfgRecord** %zoneTempRec.addr, align 8
  store i64 %zoneHdlTempRec, i64* %zoneHdlTempRec.addr, align 8
  %0 = load i64, i64* %zoneHdlTempRec.addr, align 8
  %1 = load %struct.AisQueryInofZone*, %struct.AisQueryInofZone** %aiInofZoneHostInfo.addr, align 8
  %zone = getelementptr inbounds %struct.AisQueryInofZone, %struct.AisQueryInofZone* %1, i32 0, i32 2
  %hRec = getelementptr inbounds %struct.AisQueryInofZoneInfo, %struct.AisQueryInofZoneInfo* %zone, i32 0, i32 0
  store i64 %0, i64* %hRec, align 8
  %2 = load %struct.AisQueryInofZone*, %struct.AisQueryInofZone** %aiInofZoneHostInfo.addr, align 8
  %zone1 = getelementptr inbounds %struct.AisQueryInofZone, %struct.AisQueryInofZone* %2, i32 0, i32 2
  %tblKey = getelementptr inbounds %struct.AisQueryInofZoneInfo, %struct.AisQueryInofZoneInfo* %zone1, i32 0, i32 1
  %3 = bitcast %struct.AisDbZoneMZoneCfgKey* %tblKey to i8*
  %4 = load %struct.AisDbZoneMZoneCfgRecord*, %struct.AisDbZoneMZoneCfgRecord** %zoneTempRec.addr, align 8
  %tblKey2 = getelementptr inbounds %struct.AisDbZoneMZoneCfgRecord, %struct.AisDbZoneMZoneCfgRecord* %4, i32 0, i32 0
  %5 = bitcast %struct.AisDbZoneMZoneCfgKey* %tblKey2 to i8*
  %6 = call i8* @memcpy(i8* %3, i8* %5, i64 36)
  %7 = load %struct.AisQueryInofZone*, %struct.AisQueryInofZone** %aiInofZoneHostInfo.addr, align 8
  %optionType = getelementptr inbounds %struct.AisQueryInofZone, %struct.AisQueryInofZone* %7, i32 0, i32 1
  store i8 1, i8* %optionType, align 1
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @strcmp(i8* %str1, i8* %str2) #0 {
entry:
  %retval = alloca i32, align 4
  %str1.addr = alloca i8*, align 8
  %str2.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %str1, i8** %str1.addr, align 8
  store i8* %str2, i8** %str2.addr, align 8
  store i32 0, i32* %ret, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %str1.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = zext i8 %1 to i32
  %2 = load i8*, i8** %str2.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv1 = zext i8 %3 to i32
  %sub = sub nsw i32 %conv, %conv1
  store i32 %sub, i32* %ret, align 4
  %tobool = icmp ne i32 %sub, 0
  br i1 %tobool, label %while.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %4 = load i8*, i8** %str1.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv2 = sext i8 %5 to i32
  %tobool3 = icmp ne i32 %conv2, 0
  br i1 %tobool3, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %6 = load i8*, i8** %str1.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %str1.addr, align 8
  %7 = load i8*, i8** %str2.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr4, i8** %str2.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond, %land.rhs
  %8 = load i32, i32* %ret, align 4
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  store i32 -1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %while.end
  %9 = load i32, i32* %ret, align 4
  %cmp6 = icmp sgt i32 %9, 0
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.else
  store i32 1, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.else
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then8, %if.then
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @strcpy(i8* %dst, i8* %src) #0 {
entry:
  %dst.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %ret = alloca i8*, align 8
  store i8* %dst, i8** %dst.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  %0 = load i8*, i8** %dst.addr, align 8
  store i8* %0, i8** %ret, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %1 = load i8*, i8** %src.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %src.addr, align 8
  %2 = load i8, i8* %1, align 1
  %3 = load i8*, i8** %dst.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr1, i8** %dst.addr, align 8
  store i8 %2, i8* %3, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.cond, label %while.end

while.end:                                        ; preds = %while.cond
  %4 = load i8*, i8** %ret, align 8
  ret i8* %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @AIS_ZoneMGetHostHandle(%struct.AisQueryInofZone** %aiInofZoneHostInfo, %struct.AisDbZoneMZoneHostCfgRecord** %hostRec, i8* %thisLocal, i64* %hostHdlRec) #0 {
entry:
  %aiInofZoneHostInfo.addr = alloca %struct.AisQueryInofZone**, align 8
  %hostRec.addr = alloca %struct.AisDbZoneMZoneHostCfgRecord**, align 8
  %thisLocal.addr = alloca i8*, align 8
  %hostHdlRec.addr = alloca i64*, align 8
  store %struct.AisQueryInofZone** %aiInofZoneHostInfo, %struct.AisQueryInofZone*** %aiInofZoneHostInfo.addr, align 8
  store %struct.AisDbZoneMZoneHostCfgRecord** %hostRec, %struct.AisDbZoneMZoneHostCfgRecord*** %hostRec.addr, align 8
  store i8* %thisLocal, i8** %thisLocal.addr, align 8
  store i64* %hostHdlRec, i64** %hostHdlRec.addr, align 8
  %0 = load %struct.AisQueryInofZone**, %struct.AisQueryInofZone*** %aiInofZoneHostInfo.addr, align 8
  %1 = load %struct.AisQueryInofZone*, %struct.AisQueryInofZone** %0, align 8
  %optionType = getelementptr inbounds %struct.AisQueryInofZone, %struct.AisQueryInofZone* %1, i32 0, i32 1
  %2 = load i8, i8* %optionType, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 2
  %3 = load i8*, i8** %thisLocal.addr, align 8
  %4 = bitcast i8* %3 to %struct.AisLocal*
  %aisTblHandle = getelementptr inbounds %struct.AisLocal, %struct.AisLocal* %4, i32 0, i32 14
  %arrayidx = getelementptr inbounds [14 x %struct.tagVME_DB_TBL_ENV*], [14 x %struct.tagVME_DB_TBL_ENV*]* %aisTblHandle, i64 0, i64 6
  %5 = load %struct.tagVME_DB_TBL_ENV*, %struct.tagVME_DB_TBL_ENV** %arrayidx, align 1
  %6 = load %struct.AisQueryInofZone**, %struct.AisQueryInofZone*** %aiInofZoneHostInfo.addr, align 8
  %7 = load %struct.AisQueryInofZone*, %struct.AisQueryInofZone** %6, align 8
  %zoneHost = getelementptr inbounds %struct.AisQueryInofZone, %struct.AisQueryInofZone* %7, i32 0, i32 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %hRec = getelementptr inbounds %struct.AisQueryInofZoneHostInfo, %struct.AisQueryInofZoneHostInfo* %zoneHost, i32 0, i32 0
  %call = call i8* @VME_DB_GetFirstRec(%struct.tagVME_DB_TBL_ENV* %5, i64* %hRec)
  %8 = bitcast i8* %call to %struct.AisDbZoneMZoneHostCfgRecord*
  %9 = load %struct.AisDbZoneMZoneHostCfgRecord**, %struct.AisDbZoneMZoneHostCfgRecord*** %hostRec.addr, align 8
  store %struct.AisDbZoneMZoneHostCfgRecord* %8, %struct.AisDbZoneMZoneHostCfgRecord** %9, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %tblKey = getelementptr inbounds %struct.AisQueryInofZoneHostInfo, %struct.AisQueryInofZoneHostInfo* %zoneHost, i32 0, i32 1
  %10 = bitcast %struct.AisDbZoneMZoneHostCfgKey* %tblKey to i8*
  %11 = load %struct.AisQueryInofZone**, %struct.AisQueryInofZone*** %aiInofZoneHostInfo.addr, align 8
  %12 = load %struct.AisQueryInofZone*, %struct.AisQueryInofZone** %11, align 8
  %zoneHost5 = getelementptr inbounds %struct.AisQueryInofZone, %struct.AisQueryInofZone* %12, i32 0, i32 3
  %hRec6 = getelementptr inbounds %struct.AisQueryInofZoneHostInfo, %struct.AisQueryInofZoneHostInfo* %zoneHost5, i32 0, i32 0
  %call7 = call i8* @VME_DB_GetRec(%struct.tagVME_DB_TBL_ENV* %5, i8* %10, i32 56, i64* %hRec6)
  %13 = bitcast i8* %call7 to %struct.AisDbZoneMZoneHostCfgRecord*
  %14 = load %struct.AisDbZoneMZoneHostCfgRecord**, %struct.AisDbZoneMZoneHostCfgRecord*** %hostRec.addr, align 8
  store %struct.AisDbZoneMZoneHostCfgRecord* %13, %struct.AisDbZoneMZoneHostCfgRecord** %14, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load %struct.AisQueryInofZone**, %struct.AisQueryInofZone*** %aiInofZoneHostInfo.addr, align 8
  %16 = load %struct.AisQueryInofZone*, %struct.AisQueryInofZone** %15, align 8
  %optionType8 = getelementptr inbounds %struct.AisQueryInofZone, %struct.AisQueryInofZone* %16, i32 0, i32 1
  store i8 0, i8* %optionType8, align 1
  %17 = load %struct.AisQueryInofZone**, %struct.AisQueryInofZone*** %aiInofZoneHostInfo.addr, align 8
  %18 = load %struct.AisQueryInofZone*, %struct.AisQueryInofZone** %17, align 8
  %zoneHost9 = getelementptr inbounds %struct.AisQueryInofZone, %struct.AisQueryInofZone* %18, i32 0, i32 3
  %hRec10 = getelementptr inbounds %struct.AisQueryInofZoneHostInfo, %struct.AisQueryInofZoneHostInfo* %zoneHost9, i32 0, i32 0
  %19 = load i64, i64* %hRec10, align 8
  %20 = load i64*, i64** %hostHdlRec.addr, align 8
  store i64 %19, i64* %20, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @AIS_ZoneMQueryZone(i8* %thisLocal, %struct.AisQueryInofZone* %aiInofZoneHostInfo, %struct.tagVmeSmpMsgInfo* %msgInfo, %struct.AisQueryInofHostEnp* byval(%struct.AisQueryInofHostEnp) align 8 %inofHostEnp, i32* %count) #0 {
entry:
  %thisLocal.addr = alloca i8*, align 8
  %aiInofZoneHostInfo.addr = alloca %struct.AisQueryInofZone*, align 8
  %msgInfo.addr = alloca %struct.tagVmeSmpMsgInfo*, align 8
  %count.addr = alloca i32*, align 8
  %temp = alloca %struct.CLASS_AIS_DISINOFZONEDYN_S, align 4
  %hostHdlRec = alloca i64, align 8
  %hostHdlRecTemp = alloca i64, align 8
  %hostRec = alloca %struct.AisDbZoneMZoneHostCfgRecord*, align 8
  %hostRecTemp = alloca %struct.AisDbZoneMZoneHostCfgRecord*, align 8
  %ret = alloca i32, align 4
  store i8* %thisLocal, i8** %thisLocal.addr, align 8
  store %struct.AisQueryInofZone* %aiInofZoneHostInfo, %struct.AisQueryInofZone** %aiInofZoneHostInfo.addr, align 8
  store %struct.tagVmeSmpMsgInfo* %msgInfo, %struct.tagVmeSmpMsgInfo** %msgInfo.addr, align 8
  store i32* %count, i32** %count.addr, align 8
  %0 = load %struct.AisQueryInofZone*, %struct.AisQueryInofZone** %aiInofZoneHostInfo.addr, align 8
  %isMatch = getelementptr inbounds %struct.AisQueryInofZone, %struct.AisQueryInofZone* %0, i32 0, i32 0
  store i8 0, i8* %isMatch, align 8
  %1 = bitcast %struct.CLASS_AIS_DISINOFZONEDYN_S* %temp to i8*
  %2 = call i8* @memset(i8* %1, i32 0, i64 68)
  store i64 0, i64* %hostHdlRec, align 8
  store i64 0, i64* %hostHdlRecTemp, align 8
  store %struct.AisDbZoneMZoneHostCfgRecord* null, %struct.AisDbZoneMZoneHostCfgRecord** %hostRec, align 8
  store %struct.AisDbZoneMZoneHostCfgRecord* null, %struct.AisDbZoneMZoneHostCfgRecord** %hostRecTemp, align 8
  %3 = load i8*, i8** %thisLocal.addr, align 8
  call void @AIS_ZoneMGetHostHandle(%struct.AisQueryInofZone** %aiInofZoneHostInfo.addr, %struct.AisDbZoneMZoneHostCfgRecord** %hostRec, i8* %3, i64* %hostHdlRec)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct.AisDbZoneMZoneHostCfgRecord*, %struct.AisDbZoneMZoneHostCfgRecord** %hostRec, align 8
  %tobool = icmp ne %struct.AisDbZoneMZoneHostCfgRecord* %4, null
  br i1 %tobool, label %land.rhs, label %for.end

land.rhs:                                         ; preds = %for.cond
  %5 = load i8*, i8** %thisLocal.addr, align 8
  %6 = bitcast i8* %5 to %struct.AisLocal*
  %aisTblHandle = getelementptr inbounds %struct.AisLocal, %struct.AisLocal* %6, i32 0, i32 14
  %arrayidx = getelementptr inbounds [14 x %struct.tagVME_DB_TBL_ENV*], [14 x %struct.tagVME_DB_TBL_ENV*]* %aisTblHandle, i64 0, i64 6
  %7 = load %struct.tagVME_DB_TBL_ENV*, %struct.tagVME_DB_TBL_ENV** %arrayidx, align 1
  %8 = load i64, i64* %hostHdlRec, align 8
  %call = call i8* @VME_DB_GetNextRec(%struct.tagVME_DB_TBL_ENV* %7, i64 %8, i64* %hostHdlRecTemp)
  %9 = bitcast i8* %call to %struct.AisDbZoneMZoneHostCfgRecord*
  store %struct.AisDbZoneMZoneHostCfgRecord* %9, %struct.AisDbZoneMZoneHostCfgRecord** %hostRecTemp, align 8
  %10 = load %struct.AisQueryInofZone*, %struct.AisQueryInofZone** %aiInofZoneHostInfo.addr, align 8
  %zone = getelementptr inbounds %struct.AisQueryInofZone, %struct.AisQueryInofZone* %10, i32 0, i32 2
  %tblKey = getelementptr inbounds %struct.AisQueryInofZoneInfo, %struct.AisQueryInofZoneInfo* %zone, i32 0, i32 1
  %zoneName = getelementptr inbounds %struct.AisDbZoneMZoneCfgKey, %struct.AisDbZoneMZoneCfgKey* %tblKey, i32 0, i32 1
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %zoneName, i64 0, i64 0
  %11 = load %struct.AisDbZoneMZoneHostCfgRecord*, %struct.AisDbZoneMZoneHostCfgRecord** %hostRec, align 8
  %tblKey1 = getelementptr inbounds %struct.AisDbZoneMZoneHostCfgRecord, %struct.AisDbZoneMZoneHostCfgRecord* %11, i32 0, i32 0
  %zoneName2 = getelementptr inbounds %struct.AisDbZoneMZoneHostCfgKey, %struct.AisDbZoneMZoneHostCfgKey* %tblKey1, i32 0, i32 1
  %arraydecay3 = getelementptr inbounds [32 x i8], [32 x i8]* %zoneName2, i64 0, i64 0
  %call4 = call i32 @strcmp(i8* %arraydecay, i8* %arraydecay3)
  %cmp = icmp ne i32 %call4, 0
  br i1 %cmp, label %for.inc, label %if.else

if.else:                                          ; preds = %land.rhs
  %12 = load %struct.AisQueryInofZone*, %struct.AisQueryInofZone** %aiInofZoneHostInfo.addr, align 8
  %isMatch5 = getelementptr inbounds %struct.AisQueryInofZone, %struct.AisQueryInofZone* %12, i32 0, i32 0
  store i8 1, i8* %isMatch5, align 8
  %consistent = getelementptr inbounds %struct.AisQueryInofHostEnp, %struct.AisQueryInofHostEnp* %inofHostEnp, i32 0, i32 1
  %13 = load i32, i32* %consistent, align 4
  %cmp6 = icmp eq i32 %13, 1
  br i1 %cmp6, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %if.else
  %14 = load %struct.AisDbZoneMZoneHostCfgRecord*, %struct.AisDbZoneMZoneHostCfgRecord** %hostRec, align 8
  %tblData = getelementptr inbounds %struct.AisDbZoneMZoneHostCfgRecord, %struct.AisDbZoneMZoneHostCfgRecord* %14, i32 0, i32 1
  %refIp1 = getelementptr inbounds %struct.AisDbZoneMZoneHostCfgData, %struct.AisDbZoneMZoneHostCfgData* %tblData, i32 0, i32 0
  %ipAddress = getelementptr inbounds %struct.ZoneMIpAddress, %struct.ZoneMIpAddress* %refIp1, i32 0, i32 0
  %addrIpv4 = bitcast %union.AisZoneMIp* %ipAddress to i32*
  %15 = load i32, i32* %addrIpv4, align 4
  %cmp7 = icmp ne i32 %15, 0
  br i1 %cmp7, label %land.lhs.true8, label %if.end14

land.lhs.true8:                                   ; preds = %land.lhs.true
  %16 = load %struct.AisDbZoneMZoneHostCfgRecord*, %struct.AisDbZoneMZoneHostCfgRecord** %hostRec, align 8
  %tblData9 = getelementptr inbounds %struct.AisDbZoneMZoneHostCfgRecord, %struct.AisDbZoneMZoneHostCfgRecord* %16, i32 0, i32 1
  %refIp2 = getelementptr inbounds %struct.AisDbZoneMZoneHostCfgData, %struct.AisDbZoneMZoneHostCfgData* %tblData9, i32 0, i32 1
  %ipAddress10 = getelementptr inbounds %struct.ZoneMIpAddress, %struct.ZoneMIpAddress* %refIp2, i32 0, i32 0
  %addrIpv411 = bitcast %union.AisZoneMIp* %ipAddress10 to i32*
  %17 = load i32, i32* %addrIpv411, align 4
  %cmp12 = icmp ne i32 %17, 0
  br i1 %cmp12, label %for.inc, label %if.end14

if.end14:                                         ; preds = %land.lhs.true8, %land.lhs.true, %if.else
  %18 = load %struct.AisDbZoneMZoneHostCfgRecord*, %struct.AisDbZoneMZoneHostCfgRecord** %hostRec, align 8
  %tblKey15 = getelementptr inbounds %struct.AisDbZoneMZoneHostCfgRecord, %struct.AisDbZoneMZoneHostCfgRecord* %18, i32 0, i32 0
  %hostIpStart = getelementptr inbounds %struct.AisDbZoneMZoneHostCfgKey, %struct.AisDbZoneMZoneHostCfgKey* %tblKey15, i32 0, i32 2
  %ipAddress16 = getelementptr inbounds %struct.ZoneMIpAddress, %struct.ZoneMIpAddress* %hostIpStart, i32 0, i32 0
  %addrIpv417 = bitcast %union.AisZoneMIp* %ipAddress16 to i32*
  %19 = load i32, i32* %addrIpv417, align 4
  %hostIp = getelementptr inbounds %struct.CLASS_AIS_DISINOFZONEDYN_S, %struct.CLASS_AIS_DISINOFZONEDYN_S* %temp, i32 0, i32 2
  store i32 %19, i32* %hostIp, align 4
  %zoneName18 = getelementptr inbounds %struct.CLASS_AIS_DISINOFZONEDYN_S, %struct.CLASS_AIS_DISINOFZONEDYN_S* %temp, i32 0, i32 9
  %arraydecay19 = getelementptr inbounds [32 x i8], [32 x i8]* %zoneName18, i64 0, i64 0
  %20 = load %struct.AisDbZoneMZoneHostCfgRecord*, %struct.AisDbZoneMZoneHostCfgRecord** %hostRec, align 8
  %tblKey20 = getelementptr inbounds %struct.AisDbZoneMZoneHostCfgRecord, %struct.AisDbZoneMZoneHostCfgRecord* %20, i32 0, i32 0
  %zoneName21 = getelementptr inbounds %struct.AisDbZoneMZoneHostCfgKey, %struct.AisDbZoneMZoneHostCfgKey* %tblKey20, i32 0, i32 1
  %arraydecay22 = getelementptr inbounds [32 x i8], [32 x i8]* %zoneName21, i64 0, i64 0
  %21 = call i8* @memcpy(i8* %arraydecay19, i8* %arraydecay22, i64 32)
  %22 = ptrtoint i8* %arraydecay19 to i32
  store i32 %22, i32* %ret, align 4
  %23 = load %struct.AisDbZoneMZoneHostCfgRecord*, %struct.AisDbZoneMZoneHostCfgRecord** %hostRec, align 8
  %tblData23 = getelementptr inbounds %struct.AisDbZoneMZoneHostCfgRecord, %struct.AisDbZoneMZoneHostCfgRecord* %23, i32 0, i32 1
  %refIp124 = getelementptr inbounds %struct.AisDbZoneMZoneHostCfgData, %struct.AisDbZoneMZoneHostCfgData* %tblData23, i32 0, i32 0
  %ipAddress25 = getelementptr inbounds %struct.ZoneMIpAddress, %struct.ZoneMIpAddress* %refIp124, i32 0, i32 0
  %addrIpv426 = bitcast %union.AisZoneMIp* %ipAddress25 to i32*
  %24 = load i32, i32* %addrIpv426, align 4
  %learnedIp1 = getelementptr inbounds %struct.CLASS_AIS_DISINOFZONEDYN_S, %struct.CLASS_AIS_DISINOFZONEDYN_S* %temp, i32 0, i32 3
  store i32 %24, i32* %learnedIp1, align 4
  %25 = load %struct.AisDbZoneMZoneHostCfgRecord*, %struct.AisDbZoneMZoneHostCfgRecord** %hostRec, align 8
  %tblData27 = getelementptr inbounds %struct.AisDbZoneMZoneHostCfgRecord, %struct.AisDbZoneMZoneHostCfgRecord* %25, i32 0, i32 1
  %refIp228 = getelementptr inbounds %struct.AisDbZoneMZoneHostCfgData, %struct.AisDbZoneMZoneHostCfgData* %tblData27, i32 0, i32 1
  %ipAddress29 = getelementptr inbounds %struct.ZoneMIpAddress, %struct.ZoneMIpAddress* %refIp228, i32 0, i32 0
  %addrIpv430 = bitcast %union.AisZoneMIp* %ipAddress29 to i32*
  %26 = load i32, i32* %addrIpv430, align 4
  %learnedIp2 = getelementptr inbounds %struct.CLASS_AIS_DISINOFZONEDYN_S, %struct.CLASS_AIS_DISINOFZONEDYN_S* %temp, i32 0, i32 4
  store i32 %26, i32* %learnedIp2, align 4
  %27 = load i32*, i32** %count.addr, align 8
  %28 = load i32, i32* %27, align 4
  %add = add i32 %28, 1
  %29 = load i32*, i32** %count.addr, align 8
  store i32 %add, i32* %29, align 4
  %30 = load i32*, i32** %count.addr, align 8
  %31 = load i32, i32* %30, align 4
  %cmp31 = icmp ugt i32 %31, 50
  %32 = load i64, i64* %hostHdlRecTemp, align 8
  %cmp33 = icmp ne i64 %32, 0
  %or.cond = and i1 %cmp31, %cmp33
  %33 = load %struct.AisDbZoneMZoneHostCfgRecord*, %struct.AisDbZoneMZoneHostCfgRecord** %hostRecTemp, align 8
  %cmp35 = icmp ne %struct.AisDbZoneMZoneHostCfgRecord* %33, null
  %or.cond1 = and i1 %or.cond, %cmp35
  br i1 %or.cond1, label %land.lhs.true36, label %for.inc

land.lhs.true36:                                  ; preds = %if.end14
  %34 = load %struct.AisQueryInofZone*, %struct.AisQueryInofZone** %aiInofZoneHostInfo.addr, align 8
  %zone37 = getelementptr inbounds %struct.AisQueryInofZone, %struct.AisQueryInofZone* %34, i32 0, i32 2
  %tblKey38 = getelementptr inbounds %struct.AisQueryInofZoneInfo, %struct.AisQueryInofZoneInfo* %zone37, i32 0, i32 1
  %zoneName39 = getelementptr inbounds %struct.AisDbZoneMZoneCfgKey, %struct.AisDbZoneMZoneCfgKey* %tblKey38, i32 0, i32 1
  %arraydecay40 = getelementptr inbounds [32 x i8], [32 x i8]* %zoneName39, i64 0, i64 0
  %35 = load %struct.AisDbZoneMZoneHostCfgRecord*, %struct.AisDbZoneMZoneHostCfgRecord** %hostRecTemp, align 8
  %tblKey41 = getelementptr inbounds %struct.AisDbZoneMZoneHostCfgRecord, %struct.AisDbZoneMZoneHostCfgRecord* %35, i32 0, i32 0
  %zoneName42 = getelementptr inbounds %struct.AisDbZoneMZoneHostCfgKey, %struct.AisDbZoneMZoneHostCfgKey* %tblKey41, i32 0, i32 1
  %arraydecay43 = getelementptr inbounds [32 x i8], [32 x i8]* %zoneName42, i64 0, i64 0
  %call44 = call i32 @strcmp(i8* %arraydecay40, i8* %arraydecay43)
  %cmp45 = icmp eq i32 %call44, 0
  br i1 %cmp45, label %if.then46, label %for.inc

if.then46:                                        ; preds = %land.lhs.true36
  %36 = load i64, i64* %hostHdlRecTemp, align 8
  %37 = load %struct.AisQueryInofZone*, %struct.AisQueryInofZone** %aiInofZoneHostInfo.addr, align 8
  %zoneHost = getelementptr inbounds %struct.AisQueryInofZone, %struct.AisQueryInofZone* %37, i32 0, i32 3
  %hRec = getelementptr inbounds %struct.AisQueryInofZoneHostInfo, %struct.AisQueryInofZoneHostInfo* %zoneHost, i32 0, i32 0
  store i64 %36, i64* %hRec, align 8
  %38 = load %struct.AisQueryInofZone*, %struct.AisQueryInofZone** %aiInofZoneHostInfo.addr, align 8
  %zoneHost47 = getelementptr inbounds %struct.AisQueryInofZone, %struct.AisQueryInofZone* %38, i32 0, i32 3
  %tblKey48 = getelementptr inbounds %struct.AisQueryInofZoneHostInfo, %struct.AisQueryInofZoneHostInfo* %zoneHost47, i32 0, i32 1
  %39 = bitcast %struct.AisDbZoneMZoneHostCfgKey* %tblKey48 to i8*
  %40 = load %struct.AisDbZoneMZoneHostCfgRecord*, %struct.AisDbZoneMZoneHostCfgRecord** %hostRecTemp, align 8
  %tblKey49 = getelementptr inbounds %struct.AisDbZoneMZoneHostCfgRecord, %struct.AisDbZoneMZoneHostCfgRecord* %40, i32 0, i32 0
  %41 = bitcast %struct.AisDbZoneMZoneHostCfgKey* %tblKey49 to i8*
  %42 = call i8* @memcpy(i8* %39, i8* %41, i64 56)
  %43 = load %struct.AisQueryInofZone*, %struct.AisQueryInofZone** %aiInofZoneHostInfo.addr, align 8
  %optionType = getelementptr inbounds %struct.AisQueryInofZone, %struct.AisQueryInofZone* %43, i32 0, i32 1
  store i8 2, i8* %optionType, align 1
  br label %for.end

for.inc:                                          ; preds = %if.end14, %land.lhs.true36, %land.lhs.true8, %land.rhs
  %44 = load %struct.AisDbZoneMZoneHostCfgRecord*, %struct.AisDbZoneMZoneHostCfgRecord** %hostRecTemp, align 8
  store %struct.AisDbZoneMZoneHostCfgRecord* %44, %struct.AisDbZoneMZoneHostCfgRecord** %hostRec, align 8
  %45 = load i64, i64* %hostHdlRecTemp, align 8
  store i64 %45, i64* %hostHdlRec, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond, %if.then46
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @AIS_ZoneMQueryZoneCfg(i32 %consistent, i8* %thisLocal, %struct.tagVmeSmpMsgInfo* %msgInfo) #0 {
entry:
  %retval = alloca i32, align 4
  %consistent.addr = alloca i32, align 4
  %thisLocal.addr = alloca i8*, align 8
  %msgInfo.addr = alloca %struct.tagVmeSmpMsgInfo*, align 8
  %ret = alloca i32, align 4
  %count = alloca i32, align 4
  %aiInofZoneHost = alloca %struct.AisQueryInofZone, align 8
  %aiInofZoneHostInfo = alloca %struct.AisQueryInofZone*, align 8
  %zoneHdlRec = alloca i64, align 8
  %zoneHdlTempRec = alloca i64, align 8
  %zoneRec = alloca %struct.AisDbZoneMZoneCfgRecord*, align 8
  %zoneTempRec = alloca %struct.AisDbZoneMZoneCfgRecord*, align 8
  %inofHostEnp = alloca %struct.AisQueryInofHostEnp, align 8
  %zoneMMgr = alloca %struct.AisZoneMMgr*, align 8
  store i32 %consistent, i32* %consistent.addr, align 4
  store i8* %thisLocal, i8** %thisLocal.addr, align 8
  store %struct.tagVmeSmpMsgInfo* %msgInfo, %struct.tagVmeSmpMsgInfo** %msgInfo.addr, align 8
  store i32 0, i32* %count, align 4
  %0 = bitcast %struct.AisQueryInofZone* %aiInofZoneHost to i8*
  %1 = call i8* @memset(i8* %0, i32 0, i64 120)
  store %struct.AisQueryInofZone* null, %struct.AisQueryInofZone** %aiInofZoneHostInfo, align 8
  store i64 0, i64* %zoneHdlRec, align 8
  store i64 0, i64* %zoneHdlTempRec, align 8
  store %struct.AisDbZoneMZoneCfgRecord* null, %struct.AisDbZoneMZoneCfgRecord** %zoneRec, align 8
  store %struct.AisDbZoneMZoneCfgRecord* null, %struct.AisDbZoneMZoneCfgRecord** %zoneTempRec, align 8
  %2 = bitcast %struct.AisQueryInofHostEnp* %inofHostEnp to i8*
  %3 = call i8* @memcpy(i8* %2, i8* bitcast (%struct.AisQueryInofHostEnp* @__const.AIS_ZoneMQueryZoneCfg.inofHostEnp to i8*), i64 24)
  %4 = load i8*, i8** %thisLocal.addr, align 8
  %cmp = icmp eq i8* %4, null
  br i1 %cmp, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  %5 = load i8*, i8** %thisLocal.addr, align 8
  %6 = bitcast i8* %5 to %struct.AisLocal*
  %zoneMMgr1 = getelementptr inbounds %struct.AisLocal, %struct.AisLocal* %6, i32 0, i32 22
  %7 = load %struct.AisZoneMMgr*, %struct.AisZoneMMgr** %zoneMMgr1, align 1
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi %struct.AisZoneMMgr* [ %7, %cond.false ], [ null, %entry ]
  store %struct.AisZoneMMgr* %cond, %struct.AisZoneMMgr** %zoneMMgr, align 8
  %8 = load %struct.AisZoneMMgr*, %struct.AisZoneMMgr** %zoneMMgr, align 8
  %cmp2 = icmp eq %struct.AisZoneMMgr* %8, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %cond.end
  %9 = load i8*, i8** %thisLocal.addr, align 8
  call void @AIS_ZoneMZoneHostInfoCfg(%struct.tagVmeSmpMsgInfo** %msgInfo.addr, %struct.AisQueryInofZone** %aiInofZoneHostInfo, %struct.AisQueryInofZone* %aiInofZoneHost, %struct.AisDbZoneMZoneCfgRecord** %zoneRec, i8* %9)
  %10 = load %struct.AisQueryInofZone*, %struct.AisQueryInofZone** %aiInofZoneHostInfo, align 8
  %zone = getelementptr inbounds %struct.AisQueryInofZone, %struct.AisQueryInofZone* %10, i32 0, i32 2
  %hRec = getelementptr inbounds %struct.AisQueryInofZoneInfo, %struct.AisQueryInofZoneInfo* %zone, i32 0, i32 0
  %11 = load i64, i64* %hRec, align 8
  store i64 %11, i64* %zoneHdlRec, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load %struct.AisDbZoneMZoneCfgRecord*, %struct.AisDbZoneMZoneCfgRecord** %zoneRec, align 8
  %tobool = icmp ne %struct.AisDbZoneMZoneCfgRecord* %12, null
  br i1 %tobool, label %land.rhs, label %for.end

land.rhs:                                         ; preds = %for.cond
  %13 = load i8*, i8** %thisLocal.addr, align 8
  %14 = bitcast i8* %13 to %struct.AisLocal*
  %aisTblHandle = getelementptr inbounds %struct.AisLocal, %struct.AisLocal* %14, i32 0, i32 14
  %arrayidx = getelementptr inbounds [14 x %struct.tagVME_DB_TBL_ENV*], [14 x %struct.tagVME_DB_TBL_ENV*]* %aisTblHandle, i64 0, i64 5
  %15 = load %struct.tagVME_DB_TBL_ENV*, %struct.tagVME_DB_TBL_ENV** %arrayidx, align 1
  %16 = load i64, i64* %zoneHdlRec, align 8
  %call = call i8* @VME_DB_GetNextRec(%struct.tagVME_DB_TBL_ENV* %15, i64 %16, i64* %zoneHdlTempRec)
  %17 = bitcast i8* %call to %struct.AisDbZoneMZoneCfgRecord*
  store %struct.AisDbZoneMZoneCfgRecord* %17, %struct.AisDbZoneMZoneCfgRecord** %zoneTempRec, align 8
  %18 = load %struct.AisQueryInofZone*, %struct.AisQueryInofZone** %aiInofZoneHostInfo, align 8
  %zone3 = getelementptr inbounds %struct.AisQueryInofZone, %struct.AisQueryInofZone* %18, i32 0, i32 2
  %tblKey = getelementptr inbounds %struct.AisQueryInofZoneInfo, %struct.AisQueryInofZoneInfo* %zone3, i32 0, i32 1
  %zoneName = getelementptr inbounds %struct.AisDbZoneMZoneCfgKey, %struct.AisDbZoneMZoneCfgKey* %tblKey, i32 0, i32 1
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %zoneName, i64 0, i64 0
  %19 = load %struct.AisDbZoneMZoneCfgRecord*, %struct.AisDbZoneMZoneCfgRecord** %zoneRec, align 8
  %tblKey4 = getelementptr inbounds %struct.AisDbZoneMZoneCfgRecord, %struct.AisDbZoneMZoneCfgRecord* %19, i32 0, i32 0
  %zoneName5 = getelementptr inbounds %struct.AisDbZoneMZoneCfgKey, %struct.AisDbZoneMZoneCfgKey* %tblKey4, i32 0, i32 1
  %arraydecay6 = getelementptr inbounds [32 x i8], [32 x i8]* %zoneName5, i64 0, i64 0
  %call7 = call i8* @strcpy(i8* %arraydecay, i8* %arraydecay6)
  %20 = ptrtoint i8* %call7 to i32
  store i32 %20, i32* %ret, align 4
  %21 = load i32, i32* %ret, align 4
  %cmp8 = icmp ne i32 %21, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %land.rhs
  %22 = load i32, i32* %ret, align 4
  store i32 %22, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %land.rhs
  %localIp = getelementptr inbounds %struct.AisQueryInofHostEnp, %struct.AisQueryInofHostEnp* %inofHostEnp, i32 0, i32 0
  %23 = load %struct.AisZoneMMgr*, %struct.AisZoneMMgr** %zoneMMgr, align 8
  %localIp11 = getelementptr inbounds %struct.AisZoneMMgr, %struct.AisZoneMMgr* %23, i32 0, i32 11
  %24 = bitcast %struct.ZoneMIpAddress* %localIp to i8*
  %25 = bitcast %struct.ZoneMIpAddress* %localIp11 to i8*
  %26 = call i8* @memcpy(i8* %24, i8* %25, i64 20)
  %27 = load i32, i32* %consistent.addr, align 4
  %consistent12 = getelementptr inbounds %struct.AisQueryInofHostEnp, %struct.AisQueryInofHostEnp* %inofHostEnp, i32 0, i32 1
  store i32 %27, i32* %consistent12, align 4
  %28 = load i8*, i8** %thisLocal.addr, align 8
  %29 = load %struct.AisQueryInofZone*, %struct.AisQueryInofZone** %aiInofZoneHostInfo, align 8
  %30 = load %struct.tagVmeSmpMsgInfo*, %struct.tagVmeSmpMsgInfo** %msgInfo.addr, align 8
  call void @AIS_ZoneMQueryZone(i8* %28, %struct.AisQueryInofZone* %29, %struct.tagVmeSmpMsgInfo* %30, %struct.AisQueryInofHostEnp* byval(%struct.AisQueryInofHostEnp) align 8 %inofHostEnp, i32* %count)
  %31 = load %struct.AisQueryInofZone*, %struct.AisQueryInofZone** %aiInofZoneHostInfo, align 8
  %isMatch = getelementptr inbounds %struct.AisQueryInofZone, %struct.AisQueryInofZone* %31, i32 0, i32 0
  %32 = load i8, i8* %isMatch, align 8
  %conv = zext i8 %32 to i32
  %cmp13 = icmp eq i32 %conv, 0
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end10
  %33 = load i8*, i8** %thisLocal.addr, align 8
  %34 = load %struct.tagVmeSmpMsgInfo*, %struct.tagVmeSmpMsgInfo** %msgInfo.addr, align 8
  %35 = load %struct.AisDbZoneMZoneCfgRecord*, %struct.AisDbZoneMZoneCfgRecord** %zoneRec, align 8
  %call16 = call i32 @AIS_ZoneWithoutHostRec(i8* %33, %struct.tagVmeSmpMsgInfo* %34, %struct.AisDbZoneMZoneCfgRecord* %35, %struct.AisQueryInofHostEnp* byval(%struct.AisQueryInofHostEnp) align 8 %inofHostEnp, i32* %count)
  store i32 %call16, i32* %ret, align 4
  %36 = load i32, i32* %ret, align 4
  %cmp17 = icmp ne i32 %36, 0
  br i1 %cmp17, label %if.then19, label %if.end27

if.then19:                                        ; preds = %if.then15
  %37 = load i32, i32* %ret, align 4
  store i32 %37, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end10
  %38 = load %struct.AisQueryInofZone*, %struct.AisQueryInofZone** %aiInofZoneHostInfo, align 8
  %optionType = getelementptr inbounds %struct.AisQueryInofZone, %struct.AisQueryInofZone* %38, i32 0, i32 1
  %39 = load i8, i8* %optionType, align 1
  %conv21 = zext i8 %39 to i32
  %cmp22 = icmp eq i32 %conv21, 2
  br i1 %cmp22, label %if.then24, label %if.end27

if.then24:                                        ; preds = %if.else
  %40 = load %struct.tagVmeSmpMsgInfo*, %struct.tagVmeSmpMsgInfo** %msgInfo.addr, align 8
  %41 = load %struct.AisQueryInofZone*, %struct.AisQueryInofZone** %aiInofZoneHostInfo, align 8
  %42 = load %struct.AisDbZoneMZoneCfgRecord*, %struct.AisDbZoneMZoneCfgRecord** %zoneRec, align 8
  %43 = load i64, i64* %zoneHdlRec, align 8
  %call25 = call i32 @AIS_ZoneHostSetOptionData(%struct.tagVmeSmpMsgInfo* %40, %struct.AisQueryInofZone* %41, %struct.AisDbZoneMZoneCfgRecord* %42, i64 %43)
  store i32 %call25, i32* %ret, align 4
  br label %for.end

if.end27:                                         ; preds = %if.else, %if.then15
  %44 = load i32, i32* %count, align 4
  %cmp28 = icmp ugt i32 %44, 50
  %45 = load i64, i64* %zoneHdlTempRec, align 8
  %cmp30 = icmp ne i64 %45, 0
  %or.cond = and i1 %cmp28, %cmp30
  br i1 %or.cond, label %if.then32, label %for.inc

if.then32:                                        ; preds = %if.end27
  %46 = load %struct.tagVmeSmpMsgInfo*, %struct.tagVmeSmpMsgInfo** %msgInfo.addr, align 8
  %47 = load %struct.AisQueryInofZone*, %struct.AisQueryInofZone** %aiInofZoneHostInfo, align 8
  %48 = load %struct.AisDbZoneMZoneCfgRecord*, %struct.AisDbZoneMZoneCfgRecord** %zoneTempRec, align 8
  %49 = load i64, i64* %zoneHdlTempRec, align 8
  %call33 = call i32 @AIS_ZoneSetOptionData(%struct.tagVmeSmpMsgInfo* %46, %struct.AisQueryInofZone* %47, %struct.AisDbZoneMZoneCfgRecord* %48, i64 %49)
  store i32 %call33, i32* %ret, align 4
  br label %for.end

for.inc:                                          ; preds = %if.end27
  %50 = load %struct.AisDbZoneMZoneCfgRecord*, %struct.AisDbZoneMZoneCfgRecord** %zoneTempRec, align 8
  store %struct.AisDbZoneMZoneCfgRecord* %50, %struct.AisDbZoneMZoneCfgRecord** %zoneRec, align 8
  %51 = load i64, i64* %zoneHdlTempRec, align 8
  store i64 %51, i64* %zoneHdlRec, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond, %if.then32, %if.then24
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then19, %if.then9, %if.then
  %52 = load i32, i32* %retval, align 4
  ret i32 %52
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %int1 = alloca i32, align 4
  %struct1 = alloca %struct.AisLocal, align 1
  %struct2 = alloca %struct.tagVmeSmpMsgInfo, align 1
  %r = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %int1 to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %1 = bitcast %struct.AisLocal* %struct1 to i8*
  call void @klee_make_symbolic(i8* %1, i64 7640, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %2 = bitcast %struct.tagVmeSmpMsgInfo* %struct2 to i8*
  call void @klee_make_symbolic(i8* %2, i64 76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %3 = load i32, i32* %int1, align 4
  %4 = bitcast %struct.AisLocal* %struct1 to i8*
  %call = call i32 @AIS_ZoneMQueryZoneCfg(i32 %3, i8* %4, %struct.tagVmeSmpMsgInfo* %struct2)
  store i32 %call, i32* %r, align 4
  %5 = load i32, i32* %r, align 4
  ret i32 %5
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8*, i8*, i64) #0 !dbg !13 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !23, metadata !DIExpression()), !dbg !24
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !25, metadata !DIExpression()), !dbg !26
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i8** %7, metadata !29, metadata !DIExpression()), !dbg !32
  %9 = load i8*, i8** %4, align 8, !dbg !33
  store i8* %9, i8** %7, align 8, !dbg !32
  call void @llvm.dbg.declare(metadata i8** %8, metadata !34, metadata !DIExpression()), !dbg !37
  %10 = load i8*, i8** %5, align 8, !dbg !38
  store i8* %10, i8** %8, align 8, !dbg !37
  br label %11, !dbg !39

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !40
  %13 = add i64 %12, -1, !dbg !40
  store i64 %13, i64* %6, align 8, !dbg !40
  %14 = icmp ugt i64 %12, 0, !dbg !41
  br i1 %14, label %15, label %21, !dbg !39

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !42
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !42
  store i8* %17, i8** %8, align 8, !dbg !42
  %18 = load i8, i8* %16, align 1, !dbg !43
  %19 = load i8*, i8** %7, align 8, !dbg !44
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !44
  store i8* %20, i8** %7, align 8, !dbg !44
  store i8 %18, i8* %19, align 1, !dbg !45
  br label %11, !dbg !39, !llvm.loop !46

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !47
  ret i8* %22, !dbg !48
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8*, i32, i64) #0 !dbg !49 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !54, metadata !DIExpression()), !dbg !55
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !56, metadata !DIExpression()), !dbg !57
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata i8** %7, metadata !60, metadata !DIExpression()), !dbg !61
  %8 = load i8*, i8** %4, align 8, !dbg !62
  store i8* %8, i8** %7, align 8, !dbg !61
  br label %9, !dbg !63

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !64
  %11 = add i64 %10, -1, !dbg !64
  store i64 %11, i64* %6, align 8, !dbg !64
  %12 = icmp ugt i64 %10, 0, !dbg !65
  br i1 %12, label %13, label %18, !dbg !63

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !66
  %15 = trunc i32 %14 to i8, !dbg !66
  %16 = load i8*, i8** %7, align 8, !dbg !67
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !67
  store i8* %17, i8** %7, align 8, !dbg !67
  store i8 %15, i8* %16, align 1, !dbg !68
  br label %9, !dbg !63, !llvm.loop !69

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !70
  ret i8* %19, !dbg !71
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @klee_div_zero_check(i64) #0 !dbg !72 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !77, metadata !DIExpression()), !dbg !78
  %3 = load i64, i64* %2, align 8, !dbg !79
  %4 = icmp eq i64 %3, 0, !dbg !81
  br i1 %4, label %5, label %6, !dbg !82

5:                                                ; preds = %1
  call void @klee_report_error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.8, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.9, i64 0, i64 0)) #5, !dbg !83
  unreachable, !dbg !83

6:                                                ; preds = %1
  ret void, !dbg !84
}

; Function Attrs: noreturn
declare dso_local void @klee_report_error(i8*, i32, i8*, i8*) #4

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3, !4, !4, !4}
!llvm.dbg.cu = !{!5, !8, !10}

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
!10 = distinct !DICompileUnit(language: DW_LANG_C89, file: !11, producer: "clang version 9.0.0-2~ubuntu18.04.2 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !7, nameTableKind: None)
!11 = !DIFile(filename: "/tmp/klee_src/runtime/Intrinsic/klee_div_zero_check.c", directory: "/tmp/klee_build90stp_z3/runtime/Intrinsic")
!12 = !{!"True"}
!13 = distinct !DISubprogram(name: "memcpy", scope: !14, file: !14, line: 12, type: !15, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !7)
!14 = !DIFile(filename: "klee_src/runtime/Freestanding/memcpy.c", directory: "/tmp")
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !17, !18, !20}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !21, line: 46, baseType: !22)
!21 = !DIFile(filename: "/usr/lib/llvm-9/lib/clang/9.0.0/include/stddef.h", directory: "")
!22 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!23 = !DILocalVariable(name: "destaddr", arg: 1, scope: !13, file: !14, line: 12, type: !17)
!24 = !DILocation(line: 12, column: 20, scope: !13)
!25 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !13, file: !14, line: 12, type: !18)
!26 = !DILocation(line: 12, column: 42, scope: !13)
!27 = !DILocalVariable(name: "len", arg: 3, scope: !13, file: !14, line: 12, type: !20)
!28 = !DILocation(line: 12, column: 58, scope: !13)
!29 = !DILocalVariable(name: "dest", scope: !13, file: !14, line: 13, type: !30)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!32 = !DILocation(line: 13, column: 9, scope: !13)
!33 = !DILocation(line: 13, column: 16, scope: !13)
!34 = !DILocalVariable(name: "src", scope: !13, file: !14, line: 14, type: !35)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!37 = !DILocation(line: 14, column: 15, scope: !13)
!38 = !DILocation(line: 14, column: 21, scope: !13)
!39 = !DILocation(line: 16, column: 3, scope: !13)
!40 = !DILocation(line: 16, column: 13, scope: !13)
!41 = !DILocation(line: 16, column: 16, scope: !13)
!42 = !DILocation(line: 17, column: 19, scope: !13)
!43 = !DILocation(line: 17, column: 15, scope: !13)
!44 = !DILocation(line: 17, column: 10, scope: !13)
!45 = !DILocation(line: 17, column: 13, scope: !13)
!46 = distinct !{!46, !39, !42}
!47 = !DILocation(line: 18, column: 10, scope: !13)
!48 = !DILocation(line: 18, column: 3, scope: !13)
!49 = distinct !DISubprogram(name: "memset", scope: !50, file: !50, line: 12, type: !51, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !7)
!50 = !DIFile(filename: "klee_src/runtime/Freestanding/memset.c", directory: "/tmp")
!51 = !DISubroutineType(types: !52)
!52 = !{!17, !17, !53, !20}
!53 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!54 = !DILocalVariable(name: "dst", arg: 1, scope: !49, file: !50, line: 12, type: !17)
!55 = !DILocation(line: 12, column: 20, scope: !49)
!56 = !DILocalVariable(name: "s", arg: 2, scope: !49, file: !50, line: 12, type: !53)
!57 = !DILocation(line: 12, column: 29, scope: !49)
!58 = !DILocalVariable(name: "count", arg: 3, scope: !49, file: !50, line: 12, type: !20)
!59 = !DILocation(line: 12, column: 39, scope: !49)
!60 = !DILocalVariable(name: "a", scope: !49, file: !50, line: 13, type: !30)
!61 = !DILocation(line: 13, column: 9, scope: !49)
!62 = !DILocation(line: 13, column: 13, scope: !49)
!63 = !DILocation(line: 14, column: 3, scope: !49)
!64 = !DILocation(line: 14, column: 15, scope: !49)
!65 = !DILocation(line: 14, column: 18, scope: !49)
!66 = !DILocation(line: 15, column: 12, scope: !49)
!67 = !DILocation(line: 15, column: 7, scope: !49)
!68 = !DILocation(line: 15, column: 10, scope: !49)
!69 = distinct !{!69, !63, !66}
!70 = !DILocation(line: 16, column: 10, scope: !49)
!71 = !DILocation(line: 16, column: 3, scope: !49)
!72 = distinct !DISubprogram(name: "klee_div_zero_check", scope: !73, file: !73, line: 12, type: !74, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !7)
!73 = !DIFile(filename: "klee_src/runtime/Intrinsic/klee_div_zero_check.c", directory: "/tmp")
!74 = !DISubroutineType(types: !75)
!75 = !{null, !76}
!76 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!77 = !DILocalVariable(name: "z", arg: 1, scope: !72, file: !73, line: 12, type: !76)
!78 = !DILocation(line: 12, column: 36, scope: !72)
!79 = !DILocation(line: 13, column: 7, scope: !80)
!80 = distinct !DILexicalBlock(scope: !72, file: !73, line: 13, column: 7)
!81 = !DILocation(line: 13, column: 9, scope: !80)
!82 = !DILocation(line: 13, column: 7, scope: !72)
!83 = !DILocation(line: 14, column: 5, scope: !80)
!84 = !DILocation(line: 15, column: 1, scope: !72)
