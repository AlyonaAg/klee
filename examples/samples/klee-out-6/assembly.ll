; ModuleID = '/home/klee/examples/samples/linked_list_1.bc'
source_filename = "linked_list_1.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tagTLV_FEII_PATH = type { %struct.tagVrpTLVHead, i32, i32 }
%struct.tagVrpTLVHead = type { i16, i16 }
%struct.SLL = type { %struct.SLL_NODE, %struct.SLL_NODE*, i32, [4 x i8] }
%struct.SLL_NODE = type { %struct.SLL_NODE*, i64 }
%struct.tagVosCpuTick = type { i32, i32 }
%struct.tagVosSystm = type { i16, i8, i8, i8, i8, i8, i8, i32 }
%struct.SYS_tagSysTime = type { i16, i8, i8, i8, i8, i8, i8, i32 }
%struct.FEII_TLV_HEADER_S = type { i16, i16 }
%struct.tagQOS_TLV_PROXY = type <{ i32, i32, i8*, i8*, i32 }>

@.str = private unnamed_addr constant [13 x i8] c"FEI_Blackbox\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"FEI_DBG_GetDebugSwitch\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"FEI_DBG_SetDebugSwitch\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"FEI_DeleteTimer\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"FEI_LOG_AddInhibitNode\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"FEI_LOG_IsInhibit\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"FEI_TREEM_FindFirstTlv\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"FEI_TREEM_FindNextTlv\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"QOS_SLL_GetNext\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"SSP_Debug\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"SSP_DiagLog\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"VOS_CpuTick2Ms\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"VOS_StrLen\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"VOS_StrStr[0]\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"VOS_SystimeSecSince1970\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"VRP_Free_F\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"VRP_Local_SystimeGet\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"memcpy_s\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"memset_s\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"snprintf_truncated_s\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"strcpy_s\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"vsnprintf_truncated_s\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"proxy[0]\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"proxy[0].user_data\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"proxy[0].next[0]\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"proxy[0].next[0].user_data\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"proxy[0].next[0].next[0]\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"head[0]\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"$tlvNum\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"$RET\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @FEI_Blackbox(i32 %uiMod, i32 %uiTbl, i32 %uiEvent, i8* %pucMsg, i32 %uiMsgLen, i8* %pThis) #0 {
entry:
  %uiMod.addr = alloca i32, align 4
  %uiTbl.addr = alloca i32, align 4
  %uiEvent.addr = alloca i32, align 4
  %pucMsg.addr = alloca i8*, align 8
  %uiMsgLen.addr = alloca i32, align 4
  %pThis.addr = alloca i8*, align 8
  %FEI_Blackbox = alloca i32, align 4
  store i32 %uiMod, i32* %uiMod.addr, align 4
  store i32 %uiTbl, i32* %uiTbl.addr, align 4
  store i32 %uiEvent, i32* %uiEvent.addr, align 4
  store i8* %pucMsg, i8** %pucMsg.addr, align 8
  store i32 %uiMsgLen, i32* %uiMsgLen.addr, align 4
  store i8* %pThis, i8** %pThis.addr, align 8
  %0 = bitcast i32* %FEI_Blackbox to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %1 = load i32, i32* %FEI_Blackbox, align 4
  ret i32 %1
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @FEI_CreatePeriodTimer(i32 %pInstance, i32 %uiTimeValue, i32 %uiTimerType, i8* %pParam, i32 %uiflags, i8* %pThis) #0 {
entry:
  %pInstance.addr = alloca i32, align 4
  %uiTimeValue.addr = alloca i32, align 4
  %uiTimerType.addr = alloca i32, align 4
  %pParam.addr = alloca i8*, align 8
  %uiflags.addr = alloca i32, align 4
  %pThis.addr = alloca i8*, align 8
  %FEI_CreatePeriodTimer = alloca i8*, align 8
  store i32 %pInstance, i32* %pInstance.addr, align 4
  store i32 %uiTimeValue, i32* %uiTimeValue.addr, align 4
  store i32 %uiTimerType, i32* %uiTimerType.addr, align 4
  store i8* %pParam, i8** %pParam.addr, align 8
  store i32 %uiflags, i32* %uiflags.addr, align 4
  store i8* %pThis, i8** %pThis.addr, align 8
  store i8* null, i8** %FEI_CreatePeriodTimer, align 8
  %0 = load i8*, i8** %FEI_CreatePeriodTimer, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @FEI_DBG_GetDebugSwitch(i32 %uiSwitchId, i32 %uiInstanceId1, i32 %uiInstanceId2, i32 %uiInstanceId3, i32 %uiInstanceId4, i32 %uiInstanceId5, i8* %pCondition, i8* %pThis) #0 {
entry:
  %uiSwitchId.addr = alloca i32, align 4
  %uiInstanceId1.addr = alloca i32, align 4
  %uiInstanceId2.addr = alloca i32, align 4
  %uiInstanceId3.addr = alloca i32, align 4
  %uiInstanceId4.addr = alloca i32, align 4
  %uiInstanceId5.addr = alloca i32, align 4
  %pCondition.addr = alloca i8*, align 8
  %pThis.addr = alloca i8*, align 8
  %FEI_DBG_GetDebugSwitch = alloca i32, align 4
  store i32 %uiSwitchId, i32* %uiSwitchId.addr, align 4
  store i32 %uiInstanceId1, i32* %uiInstanceId1.addr, align 4
  store i32 %uiInstanceId2, i32* %uiInstanceId2.addr, align 4
  store i32 %uiInstanceId3, i32* %uiInstanceId3.addr, align 4
  store i32 %uiInstanceId4, i32* %uiInstanceId4.addr, align 4
  store i32 %uiInstanceId5, i32* %uiInstanceId5.addr, align 4
  store i8* %pCondition, i8** %pCondition.addr, align 8
  store i8* %pThis, i8** %pThis.addr, align 8
  %0 = bitcast i32* %FEI_DBG_GetDebugSwitch to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %1 = load i32, i32* %FEI_DBG_GetDebugSwitch, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @FEI_DBG_SetDebugSwitch(i32 %uiSwitchId, i32 %uiSwitchStat, i8* %pThis) #0 {
entry:
  %uiSwitchId.addr = alloca i32, align 4
  %uiSwitchStat.addr = alloca i32, align 4
  %pThis.addr = alloca i8*, align 8
  %FEI_DBG_SetDebugSwitch = alloca i32, align 4
  store i32 %uiSwitchId, i32* %uiSwitchId.addr, align 4
  store i32 %uiSwitchStat, i32* %uiSwitchStat.addr, align 4
  store i8* %pThis, i8** %pThis.addr, align 8
  %0 = bitcast i32* %FEI_DBG_SetDebugSwitch to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %1 = load i32, i32* %FEI_DBG_SetDebugSwitch, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @FEI_DeleteTimer(i32 %pInstance, i32 %uiTimerType, i8* %pTimer, i8* %pThis) #0 {
entry:
  %pInstance.addr = alloca i32, align 4
  %uiTimerType.addr = alloca i32, align 4
  %pTimer.addr = alloca i8*, align 8
  %pThis.addr = alloca i8*, align 8
  %FEI_DeleteTimer = alloca i32, align 4
  store i32 %pInstance, i32* %pInstance.addr, align 4
  store i32 %uiTimerType, i32* %uiTimerType.addr, align 4
  store i8* %pTimer, i8** %pTimer.addr, align 8
  store i8* %pThis, i8** %pThis.addr, align 8
  %0 = bitcast i32* %FEI_DeleteTimer to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %1 = load i32, i32* %FEI_DeleteTimer, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @FEI_LOG_AddInhibitNode(i32 %uiInfoId, i8* %pThis) #0 {
entry:
  %uiInfoId.addr = alloca i32, align 4
  %pThis.addr = alloca i8*, align 8
  %FEI_LOG_AddInhibitNode = alloca i32, align 4
  store i32 %uiInfoId, i32* %uiInfoId.addr, align 4
  store i8* %pThis, i8** %pThis.addr, align 8
  %0 = bitcast i32* %FEI_LOG_AddInhibitNode to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %1 = load i32, i32* %FEI_LOG_AddInhibitNode, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @FEI_LOG_IsInhibit(i32 %uiEventLogId, i8** %ppNode, i8* %pThis) #0 {
entry:
  %uiEventLogId.addr = alloca i32, align 4
  %ppNode.addr = alloca i8**, align 8
  %pThis.addr = alloca i8*, align 8
  %FEI_LOG_IsInhibit = alloca i32, align 4
  store i32 %uiEventLogId, i32* %uiEventLogId.addr, align 4
  store i8** %ppNode, i8*** %ppNode.addr, align 8
  store i8* %pThis, i8** %pThis.addr, align 8
  %0 = bitcast i32* %FEI_LOG_IsInhibit to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %1 = load i32, i32* %FEI_LOG_IsInhibit, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FEI_LOG_UpdateInhibitList(i8* %pThis) #0 {
entry:
  %pThis.addr = alloca i8*, align 8
  store i8* %pThis, i8** %pThis.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @FEI_TREEM_FindFirstTlv(%struct.tagTLV_FEII_PATH* %pstPath, %struct.tagVrpTLVHead** %ppstFristTlv, i8* %pThis) #0 {
entry:
  %pstPath.addr = alloca %struct.tagTLV_FEII_PATH*, align 8
  %ppstFristTlv.addr = alloca %struct.tagVrpTLVHead**, align 8
  %pThis.addr = alloca i8*, align 8
  %FEI_TREEM_FindFirstTlv = alloca i32, align 4
  store %struct.tagTLV_FEII_PATH* %pstPath, %struct.tagTLV_FEII_PATH** %pstPath.addr, align 8
  store %struct.tagVrpTLVHead** %ppstFristTlv, %struct.tagVrpTLVHead*** %ppstFristTlv.addr, align 8
  store i8* %pThis, i8** %pThis.addr, align 8
  %0 = bitcast i32* %FEI_TREEM_FindFirstTlv to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %1 = load i32, i32* %FEI_TREEM_FindFirstTlv, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @FEI_TREEM_FindNextTlv(%struct.tagTLV_FEII_PATH* %pstPath, %struct.tagVrpTLVHead* %pstCurrentTlv, %struct.tagVrpTLVHead** %ppstNextTlv, i8* %pThis) #0 {
entry:
  %pstPath.addr = alloca %struct.tagTLV_FEII_PATH*, align 8
  %pstCurrentTlv.addr = alloca %struct.tagVrpTLVHead*, align 8
  %ppstNextTlv.addr = alloca %struct.tagVrpTLVHead**, align 8
  %pThis.addr = alloca i8*, align 8
  %FEI_TREEM_FindNextTlv = alloca i32, align 4
  store %struct.tagTLV_FEII_PATH* %pstPath, %struct.tagTLV_FEII_PATH** %pstPath.addr, align 8
  store %struct.tagVrpTLVHead* %pstCurrentTlv, %struct.tagVrpTLVHead** %pstCurrentTlv.addr, align 8
  store %struct.tagVrpTLVHead** %ppstNextTlv, %struct.tagVrpTLVHead*** %ppstNextTlv.addr, align 8
  store i8* %pThis, i8** %pThis.addr, align 8
  %0 = bitcast i32* %FEI_TREEM_FindNextTlv to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %1 = load i32, i32* %FEI_TREEM_FindNextTlv, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @FEI_UTIL_MALLOC(i32 %uiSize, i32 %uiMid, i8* %pcFile, i32 %uiLine, i8* %pThis) #0 {
entry:
  %uiSize.addr = alloca i32, align 4
  %uiMid.addr = alloca i32, align 4
  %pcFile.addr = alloca i8*, align 8
  %uiLine.addr = alloca i32, align 4
  %pThis.addr = alloca i8*, align 8
  %FEI_UTIL_MALLOC = alloca i8*, align 8
  store i32 %uiSize, i32* %uiSize.addr, align 4
  store i32 %uiMid, i32* %uiMid.addr, align 4
  store i8* %pcFile, i8** %pcFile.addr, align 8
  store i32 %uiLine, i32* %uiLine.addr, align 4
  store i8* %pThis, i8** %pThis.addr, align 8
  store i8* null, i8** %FEI_UTIL_MALLOC, align 8
  %0 = load i8*, i8** %FEI_UTIL_MALLOC, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @QOS_SLL_Add(%struct.SLL* %list, i8* %data, i32 %len) #0 {
entry:
  %list.addr = alloca %struct.SLL*, align 8
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %QOS_SLL_Add = alloca i8*, align 8
  store %struct.SLL* %list, %struct.SLL** %list.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i8* null, i8** %QOS_SLL_Add, align 8
  %0 = load i8*, i8** %QOS_SLL_Add, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @QOS_SLL_Del(%struct.SLL* %list, i8* %userData) #0 {
entry:
  %list.addr = alloca %struct.SLL*, align 8
  %userData.addr = alloca i8*, align 8
  store %struct.SLL* %list, %struct.SLL** %list.addr, align 8
  store i8* %userData, i8** %userData.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @QOS_SLL_Destroy(%struct.SLL* %list) #0 {
entry:
  %list.addr = alloca %struct.SLL*, align 8
  store %struct.SLL* %list, %struct.SLL** %list.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @QOS_SLL_Find(%struct.SLL* %list, i32 %cmpFunc, i8* %cmdKey) #0 {
entry:
  %list.addr = alloca %struct.SLL*, align 8
  %cmpFunc.addr = alloca i32, align 4
  %cmdKey.addr = alloca i8*, align 8
  %QOS_SLL_Find = alloca i8*, align 8
  store %struct.SLL* %list, %struct.SLL** %list.addr, align 8
  store i32 %cmpFunc, i32* %cmpFunc.addr, align 4
  store i8* %cmdKey, i8** %cmdKey.addr, align 8
  store i8* null, i8** %QOS_SLL_Find, align 8
  %0 = load i8*, i8** %QOS_SLL_Find, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @QOS_SLL_GetNext(%struct.SLL* %list, i8** %nodeWalk, i8** %userData) #0 {
entry:
  %list.addr = alloca %struct.SLL*, align 8
  %nodeWalk.addr = alloca i8**, align 8
  %userData.addr = alloca i8**, align 8
  %QOS_SLL_GetNext = alloca i32, align 4
  store %struct.SLL* %list, %struct.SLL** %list.addr, align 8
  store i8** %nodeWalk, i8*** %nodeWalk.addr, align 8
  store i8** %userData, i8*** %userData.addr, align 8
  %0 = bitcast i32* %QOS_SLL_GetNext to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %1 = load i32, i32* %QOS_SLL_GetNext, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @QOS_SLL_Init(%struct.SLL* %list) #0 {
entry:
  %list.addr = alloca %struct.SLL*, align 8
  store %struct.SLL* %list, %struct.SLL** %list.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @SSP_Debug(i32 %hAppCid, i32 %uiSwitchId, i8* %pcCondtion, i32 %uiInfoId, i8* %pcFmt) #0 {
entry:
  %hAppCid.addr = alloca i32, align 4
  %uiSwitchId.addr = alloca i32, align 4
  %pcCondtion.addr = alloca i8*, align 8
  %uiInfoId.addr = alloca i32, align 4
  %pcFmt.addr = alloca i8*, align 8
  %SSP_Debug = alloca i32, align 4
  store i32 %hAppCid, i32* %hAppCid.addr, align 4
  store i32 %uiSwitchId, i32* %uiSwitchId.addr, align 4
  store i8* %pcCondtion, i8** %pcCondtion.addr, align 8
  store i32 %uiInfoId, i32* %uiInfoId.addr, align 4
  store i8* %pcFmt, i8** %pcFmt.addr, align 8
  %0 = bitcast i32* %SSP_Debug to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %1 = load i32, i32* %SSP_Debug, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @SSP_DiagLog(i32 %hAppCid, i32 %uiInfoId, i8* %pcFmt) #0 {
entry:
  %hAppCid.addr = alloca i32, align 4
  %uiInfoId.addr = alloca i32, align 4
  %pcFmt.addr = alloca i8*, align 8
  %SSP_DiagLog = alloca i32, align 4
  store i32 %hAppCid, i32* %hAppCid.addr, align 4
  store i32 %uiInfoId, i32* %uiInfoId.addr, align 4
  store i8* %pcFmt, i8** %pcFmt.addr, align 8
  %0 = bitcast i32* %SSP_DiagLog to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %1 = load i32, i32* %SSP_DiagLog, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @VOS_CpuTick2Ms(%struct.tagVosCpuTick* %pstCputick, i32* %puiMilliSecsHigh, i32* %puiMilliSecsLow) #0 {
entry:
  %pstCputick.addr = alloca %struct.tagVosCpuTick*, align 8
  %puiMilliSecsHigh.addr = alloca i32*, align 8
  %puiMilliSecsLow.addr = alloca i32*, align 8
  %VOS_CpuTick2Ms = alloca i32, align 4
  store %struct.tagVosCpuTick* %pstCputick, %struct.tagVosCpuTick** %pstCputick.addr, align 8
  store i32* %puiMilliSecsHigh, i32** %puiMilliSecsHigh.addr, align 8
  store i32* %puiMilliSecsLow, i32** %puiMilliSecsLow.addr, align 8
  %0 = bitcast i32* %VOS_CpuTick2Ms to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %1 = load i32, i32* %VOS_CpuTick2Ms, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @VOS_GetCpuTick(i32* %puiLow, i32* %puiHigh) #0 {
entry:
  %puiLow.addr = alloca i32*, align 8
  %puiHigh.addr = alloca i32*, align 8
  store i32* %puiLow, i32** %puiLow.addr, align 8
  store i32* %puiHigh, i32** %puiHigh.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @VOS_StrLen(i8* %pscStr) #0 {
entry:
  %pscStr.addr = alloca i8*, align 8
  %VOS_StrLen = alloca i32, align 4
  store i8* %pscStr, i8** %pscStr.addr, align 8
  %0 = bitcast i32* %VOS_StrLen to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %1 = load i32, i32* %VOS_StrLen, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @VOS_StrStr(i8* %pscStr1, i8* %pscStr2) #0 {
entry:
  %pscStr1.addr = alloca i8*, align 8
  %pscStr2.addr = alloca i8*, align 8
  %VOS_StrStr = alloca i8*, align 8
  store i8* %pscStr1, i8** %pscStr1.addr, align 8
  store i8* %pscStr2, i8** %pscStr2.addr, align 8
  %call = call i8* @malloc(i64 1)
  store i8* %call, i8** %VOS_StrStr, align 8
  %0 = load i8*, i8** %VOS_StrStr, align 8
  call void @klee_make_symbolic(i8* %0, i64 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %1 = load i8*, i8** %VOS_StrStr, align 8
  ret i8* %1
}

declare dso_local i8* @malloc(i64) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @VOS_SystimeSecSince1970(%struct.tagVosSystm* %pstSystime, i32* %puiRetSecHigh, i32* %puiRetSecLow) #0 {
entry:
  %pstSystime.addr = alloca %struct.tagVosSystm*, align 8
  %puiRetSecHigh.addr = alloca i32*, align 8
  %puiRetSecLow.addr = alloca i32*, align 8
  %VOS_SystimeSecSince1970 = alloca i32, align 4
  store %struct.tagVosSystm* %pstSystime, %struct.tagVosSystm** %pstSystime.addr, align 8
  store i32* %puiRetSecHigh, i32** %puiRetSecHigh.addr, align 8
  store i32* %puiRetSecLow, i32** %puiRetSecLow.addr, align 8
  %0 = bitcast i32* %VOS_SystimeSecSince1970 to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0))
  %1 = load i32, i32* %VOS_SystimeSecSince1970, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @VRP_Assert(i8* %pFileName, i32 %uiLine, i8* %pcLog) #0 {
entry:
  %pFileName.addr = alloca i8*, align 8
  %uiLine.addr = alloca i32, align 4
  %pcLog.addr = alloca i8*, align 8
  store i8* %pFileName, i8** %pFileName.addr, align 8
  store i32 %uiLine, i32* %uiLine.addr, align 4
  store i8* %pcLog, i8** %pcLog.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @VRP_Free_F(i8* %pAddr, i8* %pcFile, i32 %uiLine) #0 {
entry:
  %pAddr.addr = alloca i8*, align 8
  %pcFile.addr = alloca i8*, align 8
  %uiLine.addr = alloca i32, align 4
  %VRP_Free_F = alloca i32, align 4
  store i8* %pAddr, i8** %pAddr.addr, align 8
  store i8* %pcFile, i8** %pcFile.addr, align 8
  store i32 %uiLine, i32* %uiLine.addr, align 4
  %0 = bitcast i32* %VRP_Free_F to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  %1 = load i32, i32* %VRP_Free_F, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @VRP_Local_SystimeGet(%struct.SYS_tagSysTime* %pstSysTime, i32* %puiIsDst) #0 {
entry:
  %pstSysTime.addr = alloca %struct.SYS_tagSysTime*, align 8
  %puiIsDst.addr = alloca i32*, align 8
  %VRP_Local_SystimeGet = alloca i32, align 4
  store %struct.SYS_tagSysTime* %pstSysTime, %struct.SYS_tagSysTime** %pstSysTime.addr, align 8
  store i32* %puiIsDst, i32** %puiIsDst.addr, align 8
  %0 = bitcast i32* %VRP_Local_SystimeGet to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0))
  %1 = load i32, i32* %VRP_Local_SystimeGet, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @memcpy_s(i8* %dest, i64 %destMax, i8* %src, i64 %count) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %destMax.addr = alloca i64, align 8
  %src.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %memcpy_s = alloca i32, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i64 %destMax, i64* %destMax.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  %0 = bitcast i32* %memcpy_s to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  %1 = load i32, i32* %memcpy_s, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @memset_s(i8* %dest, i64 %destMax, i32 %c, i64 %count) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %destMax.addr = alloca i64, align 8
  %c.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  %memset_s = alloca i32, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i64 %destMax, i64* %destMax.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  store i64 %count, i64* %count.addr, align 8
  %0 = bitcast i32* %memset_s to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  %1 = load i32, i32* %memset_s, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @snprintf_truncated_s(i8* %strDest, i64 %destMax, i8* %format) #0 {
entry:
  %strDest.addr = alloca i8*, align 8
  %destMax.addr = alloca i64, align 8
  %format.addr = alloca i8*, align 8
  %snprintf_truncated_s = alloca i32, align 4
  store i8* %strDest, i8** %strDest.addr, align 8
  store i64 %destMax, i64* %destMax.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  %0 = bitcast i32* %snprintf_truncated_s to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0))
  %1 = load i32, i32* %snprintf_truncated_s, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @strcpy_s(i8* %strDest, i64 %destMax, i8* %strSrc) #0 {
entry:
  %strDest.addr = alloca i8*, align 8
  %destMax.addr = alloca i64, align 8
  %strSrc.addr = alloca i8*, align 8
  %strcpy_s = alloca i32, align 4
  store i8* %strDest, i8** %strDest.addr, align 8
  store i64 %destMax, i64* %destMax.addr, align 8
  store i8* %strSrc, i8** %strSrc.addr, align 8
  %0 = bitcast i32* %strcpy_s to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0))
  %1 = load i32, i32* %strcpy_s, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vsnprintf_truncated_s(i8* %strDest, i64 %destMax, i8* %format, i32 %argList) #0 {
entry:
  %strDest.addr = alloca i8*, align 8
  %destMax.addr = alloca i64, align 8
  %format.addr = alloca i8*, align 8
  %argList.addr = alloca i32, align 4
  %vsnprintf_truncated_s = alloca i32, align 4
  store i8* %strDest, i8** %strDest.addr, align 8
  store i64 %destMax, i64* %destMax.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  store i32 %argList, i32* %argList.addr, align 4
  %0 = bitcast i32* %vsnprintf_truncated_s to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0))
  %1 = load i32, i32* %vsnprintf_truncated_s, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @QOS_GetFimTlvInfo(i32* %type, i32* %len, i8** %value, i8* %tlvIn) #0 {
entry:
  %type.addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %value.addr = alloca i8**, align 8
  %tlvIn.addr = alloca i8*, align 8
  %tlvHead = alloca %struct.FEII_TLV_HEADER_S*, align 8
  store i32* %type, i32** %type.addr, align 8
  store i32* %len, i32** %len.addr, align 8
  store i8** %value, i8*** %value.addr, align 8
  store i8* %tlvIn, i8** %tlvIn.addr, align 8
  %0 = load i8*, i8** %tlvIn.addr, align 8
  %1 = bitcast i8* %0 to %struct.FEII_TLV_HEADER_S*
  store %struct.FEII_TLV_HEADER_S* %1, %struct.FEII_TLV_HEADER_S** %tlvHead, align 8
  %2 = load %struct.FEII_TLV_HEADER_S*, %struct.FEII_TLV_HEADER_S** %tlvHead, align 8
  %usTLVType = getelementptr inbounds %struct.FEII_TLV_HEADER_S, %struct.FEII_TLV_HEADER_S* %2, i32 0, i32 0
  %3 = load i16, i16* %usTLVType, align 2
  %conv = zext i16 %3 to i32
  %4 = load i32*, i32** %type.addr, align 8
  store i32 %conv, i32* %4, align 4
  %5 = load %struct.FEII_TLV_HEADER_S*, %struct.FEII_TLV_HEADER_S** %tlvHead, align 8
  %usTLVLen = getelementptr inbounds %struct.FEII_TLV_HEADER_S, %struct.FEII_TLV_HEADER_S* %5, i32 0, i32 1
  %6 = load i16, i16* %usTLVLen, align 2
  %conv1 = zext i16 %6 to i32
  %7 = load i32*, i32** %len.addr, align 8
  store i32 %conv1, i32* %7, align 4
  %8 = load %struct.FEII_TLV_HEADER_S*, %struct.FEII_TLV_HEADER_S** %tlvHead, align 8
  %add.ptr = getelementptr inbounds %struct.FEII_TLV_HEADER_S, %struct.FEII_TLV_HEADER_S* %8, i64 1
  %9 = bitcast %struct.FEII_TLV_HEADER_S* %add.ptr to i8*
  %10 = load i8**, i8*** %value.addr, align 8
  store i8* %9, i8** %10, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @qos_walk_fim_tlv(%struct.tagQOS_TLV_PROXY* %proxy, i8* %head, i32 %tlvNum) #0 {
entry:
  %retval = alloca i32, align 4
  %proxy.addr = alloca %struct.tagQOS_TLV_PROXY*, align 8
  %head.addr = alloca i8*, align 8
  %tlvNum.addr = alloca i32, align 4
  store %struct.tagQOS_TLV_PROXY* %proxy, %struct.tagQOS_TLV_PROXY** %proxy.addr, align 8
  store i8* %head, i8** %head.addr, align 8
  store i32 %tlvNum, i32* %tlvNum.addr, align 4
  %0 = load %struct.tagQOS_TLV_PROXY*, %struct.tagQOS_TLV_PROXY** %proxy.addr, align 8
  %count = getelementptr inbounds %struct.tagQOS_TLV_PROXY, %struct.tagQOS_TLV_PROXY* %0, i32 0, i32 4
  %1 = load i32, i32* %count, align 1
  %2 = load i32, i32* %tlvNum.addr, align 4
  %cmp = icmp uge i32 %1, %2
  %conv = zext i1 %cmp to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

do.end:                                           ; preds = %entry
  %3 = load %struct.tagQOS_TLV_PROXY*, %struct.tagQOS_TLV_PROXY** %proxy.addr, align 8
  %next = getelementptr inbounds %struct.tagQOS_TLV_PROXY, %struct.tagQOS_TLV_PROXY* %3, i32 0, i32 3
  %4 = load i8*, i8** %next, align 1
  %cmp3 = icmp eq i8* %4, null
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %do.end
  %5 = load i8*, i8** %head.addr, align 8
  %6 = load %struct.tagQOS_TLV_PROXY*, %struct.tagQOS_TLV_PROXY** %proxy.addr, align 8
  %next6 = getelementptr inbounds %struct.tagQOS_TLV_PROXY, %struct.tagQOS_TLV_PROXY* %6, i32 0, i32 3
  store i8* %5, i8** %next6, align 1
  br label %if.end10

if.else:                                          ; preds = %do.end
  %7 = load %struct.tagQOS_TLV_PROXY*, %struct.tagQOS_TLV_PROXY** %proxy.addr, align 8
  %next7 = getelementptr inbounds %struct.tagQOS_TLV_PROXY, %struct.tagQOS_TLV_PROXY* %7, i32 0, i32 3
  %8 = load i8*, i8** %next7, align 1
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 4
  %9 = load %struct.tagQOS_TLV_PROXY*, %struct.tagQOS_TLV_PROXY** %proxy.addr, align 8
  %len = getelementptr inbounds %struct.tagQOS_TLV_PROXY, %struct.tagQOS_TLV_PROXY* %9, i32 0, i32 1
  %10 = load i32, i32* %len, align 1
  %idx.ext = zext i32 %10 to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext
  %11 = load %struct.tagQOS_TLV_PROXY*, %struct.tagQOS_TLV_PROXY** %proxy.addr, align 8
  %next9 = getelementptr inbounds %struct.tagQOS_TLV_PROXY, %struct.tagQOS_TLV_PROXY* %11, i32 0, i32 3
  store i8* %add.ptr8, i8** %next9, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then5
  %12 = load %struct.tagQOS_TLV_PROXY*, %struct.tagQOS_TLV_PROXY** %proxy.addr, align 8
  %type = getelementptr inbounds %struct.tagQOS_TLV_PROXY, %struct.tagQOS_TLV_PROXY* %12, i32 0, i32 0
  %13 = load %struct.tagQOS_TLV_PROXY*, %struct.tagQOS_TLV_PROXY** %proxy.addr, align 8
  %len11 = getelementptr inbounds %struct.tagQOS_TLV_PROXY, %struct.tagQOS_TLV_PROXY* %13, i32 0, i32 1
  %14 = load %struct.tagQOS_TLV_PROXY*, %struct.tagQOS_TLV_PROXY** %proxy.addr, align 8
  %user_data = getelementptr inbounds %struct.tagQOS_TLV_PROXY, %struct.tagQOS_TLV_PROXY* %14, i32 0, i32 2
  %15 = load %struct.tagQOS_TLV_PROXY*, %struct.tagQOS_TLV_PROXY** %proxy.addr, align 8
  %next12 = getelementptr inbounds %struct.tagQOS_TLV_PROXY, %struct.tagQOS_TLV_PROXY* %15, i32 0, i32 3
  %16 = load i8*, i8** %next12, align 1
  call void @QOS_GetFimTlvInfo(i32* %type, i32* %len11, i8** %user_data, i8* %16)
  %17 = load %struct.tagQOS_TLV_PROXY*, %struct.tagQOS_TLV_PROXY** %proxy.addr, align 8
  %user_data14 = getelementptr inbounds %struct.tagQOS_TLV_PROXY, %struct.tagQOS_TLV_PROXY* %17, i32 0, i32 2
  %18 = load i8*, i8** %user_data14, align 1
  %cmp15 = icmp eq i8* %18, null
  %conv16 = zext i1 %cmp15 to i32
  %cmp17 = icmp ne i32 %conv16, 0
  br i1 %cmp17, label %if.then19, label %do.end21

if.then19:                                        ; preds = %if.end10
  store i32 1, i32* %retval, align 4
  br label %return

do.end21:                                         ; preds = %if.end10
  %19 = load %struct.tagQOS_TLV_PROXY*, %struct.tagQOS_TLV_PROXY** %proxy.addr, align 8
  %count22 = getelementptr inbounds %struct.tagQOS_TLV_PROXY, %struct.tagQOS_TLV_PROXY* %19, i32 0, i32 4
  %20 = load i32, i32* %count22, align 1
  %inc = add i32 %20, 1
  store i32 %inc, i32* %count22, align 1
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end21, %if.then19, %if.then
  %21 = load i32, i32* %retval, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %proxy = alloca %struct.tagQOS_TLV_PROXY*, align 8
  %proxy_0_user_data = alloca [1024 x i8], align 16
  %proxy_0_next = alloca %struct.tagQOS_TLV_PROXY*, align 8
  %proxy_0_next_0_user_data = alloca [1024 x i8], align 16
  %proxy_0_next_0_next = alloca %struct.tagQOS_TLV_PROXY*, align 8
  %head = alloca %struct.tagVrpTLVHead*, align 8
  %tlvNum = alloca i32, align 4
  %res = alloca i32, align 4
  %RET = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i8* @malloc(i64 28)
  %0 = bitcast i8* %call to %struct.tagQOS_TLV_PROXY*
  store %struct.tagQOS_TLV_PROXY* %0, %struct.tagQOS_TLV_PROXY** %proxy, align 8
  %1 = load %struct.tagQOS_TLV_PROXY*, %struct.tagQOS_TLV_PROXY** %proxy, align 8
  %2 = bitcast %struct.tagQOS_TLV_PROXY* %1 to i8*
  call void @klee_make_symbolic(i8* %2, i64 28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0))
  %3 = bitcast [1024 x i8]* %proxy_0_user_data to i8*
  call void @klee_make_symbolic(i8* %3, i64 1024, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0))
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %proxy_0_user_data, i64 0, i64 0
  %4 = load %struct.tagQOS_TLV_PROXY*, %struct.tagQOS_TLV_PROXY** %proxy, align 8
  %arrayidx = getelementptr inbounds %struct.tagQOS_TLV_PROXY, %struct.tagQOS_TLV_PROXY* %4, i64 0
  %user_data = getelementptr inbounds %struct.tagQOS_TLV_PROXY, %struct.tagQOS_TLV_PROXY* %arrayidx, i32 0, i32 2
  store i8* %arraydecay, i8** %user_data, align 1
  %call1 = call i8* @malloc(i64 28)
  %5 = bitcast i8* %call1 to %struct.tagQOS_TLV_PROXY*
  store %struct.tagQOS_TLV_PROXY* %5, %struct.tagQOS_TLV_PROXY** %proxy_0_next, align 8
  %6 = load %struct.tagQOS_TLV_PROXY*, %struct.tagQOS_TLV_PROXY** %proxy_0_next, align 8
  %7 = bitcast %struct.tagQOS_TLV_PROXY* %6 to i8*
  call void @klee_make_symbolic(i8* %7, i64 28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0))
  %8 = bitcast [1024 x i8]* %proxy_0_next_0_user_data to i8*
  call void @klee_make_symbolic(i8* %8, i64 1024, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i64 0, i64 0))
  %arraydecay2 = getelementptr inbounds [1024 x i8], [1024 x i8]* %proxy_0_next_0_user_data, i64 0, i64 0
  %9 = load %struct.tagQOS_TLV_PROXY*, %struct.tagQOS_TLV_PROXY** %proxy_0_next, align 8
  %arrayidx3 = getelementptr inbounds %struct.tagQOS_TLV_PROXY, %struct.tagQOS_TLV_PROXY* %9, i64 0
  %user_data4 = getelementptr inbounds %struct.tagQOS_TLV_PROXY, %struct.tagQOS_TLV_PROXY* %arrayidx3, i32 0, i32 2
  store i8* %arraydecay2, i8** %user_data4, align 1
  %call5 = call i8* @malloc(i64 28)
  %10 = bitcast i8* %call5 to %struct.tagQOS_TLV_PROXY*
  store %struct.tagQOS_TLV_PROXY* %10, %struct.tagQOS_TLV_PROXY** %proxy_0_next_0_next, align 8
  %11 = load %struct.tagQOS_TLV_PROXY*, %struct.tagQOS_TLV_PROXY** %proxy_0_next_0_next, align 8
  %12 = bitcast %struct.tagQOS_TLV_PROXY* %11 to i8*
  call void @klee_make_symbolic(i8* %12, i64 28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i64 0, i64 0))
  %13 = load %struct.tagQOS_TLV_PROXY*, %struct.tagQOS_TLV_PROXY** %proxy_0_next_0_next, align 8
  %arrayidx6 = getelementptr inbounds %struct.tagQOS_TLV_PROXY, %struct.tagQOS_TLV_PROXY* %13, i64 0
  %user_data7 = getelementptr inbounds %struct.tagQOS_TLV_PROXY, %struct.tagQOS_TLV_PROXY* %arrayidx6, i32 0, i32 2
  store i8* null, i8** %user_data7, align 1
  %14 = load %struct.tagQOS_TLV_PROXY*, %struct.tagQOS_TLV_PROXY** %proxy_0_next_0_next, align 8
  %arrayidx8 = getelementptr inbounds %struct.tagQOS_TLV_PROXY, %struct.tagQOS_TLV_PROXY* %14, i64 0
  %next = getelementptr inbounds %struct.tagQOS_TLV_PROXY, %struct.tagQOS_TLV_PROXY* %arrayidx8, i32 0, i32 3
  store i8* null, i8** %next, align 1
  %15 = load %struct.tagQOS_TLV_PROXY*, %struct.tagQOS_TLV_PROXY** %proxy_0_next_0_next, align 8
  %16 = bitcast %struct.tagQOS_TLV_PROXY* %15 to i8*
  %17 = load %struct.tagQOS_TLV_PROXY*, %struct.tagQOS_TLV_PROXY** %proxy_0_next, align 8
  %arrayidx9 = getelementptr inbounds %struct.tagQOS_TLV_PROXY, %struct.tagQOS_TLV_PROXY* %17, i64 0
  %next10 = getelementptr inbounds %struct.tagQOS_TLV_PROXY, %struct.tagQOS_TLV_PROXY* %arrayidx9, i32 0, i32 3
  store i8* %16, i8** %next10, align 1
  %18 = load %struct.tagQOS_TLV_PROXY*, %struct.tagQOS_TLV_PROXY** %proxy_0_next, align 8
  %19 = bitcast %struct.tagQOS_TLV_PROXY* %18 to i8*
  %20 = load %struct.tagQOS_TLV_PROXY*, %struct.tagQOS_TLV_PROXY** %proxy, align 8
  %arrayidx11 = getelementptr inbounds %struct.tagQOS_TLV_PROXY, %struct.tagQOS_TLV_PROXY* %20, i64 0
  %next12 = getelementptr inbounds %struct.tagQOS_TLV_PROXY, %struct.tagQOS_TLV_PROXY* %arrayidx11, i32 0, i32 3
  store i8* %19, i8** %next12, align 1
  %call13 = call i8* @malloc(i64 4)
  %21 = bitcast i8* %call13 to %struct.tagVrpTLVHead*
  store %struct.tagVrpTLVHead* %21, %struct.tagVrpTLVHead** %head, align 8
  %22 = load %struct.tagVrpTLVHead*, %struct.tagVrpTLVHead** %head, align 8
  %23 = bitcast %struct.tagVrpTLVHead* %22 to i8*
  call void @klee_make_symbolic(i8* %23, i64 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0))
  %24 = bitcast i32* %tlvNum to i8*
  call void @klee_make_symbolic(i8* %24, i64 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0))
  %25 = load %struct.tagQOS_TLV_PROXY*, %struct.tagQOS_TLV_PROXY** %proxy, align 8
  %26 = load %struct.tagVrpTLVHead*, %struct.tagVrpTLVHead** %head, align 8
  %27 = bitcast %struct.tagVrpTLVHead* %26 to i8*
  %28 = load i32, i32* %tlvNum, align 4
  %call14 = call i32 @qos_walk_fim_tlv(%struct.tagQOS_TLV_PROXY* %25, i8* %27, i32 %28)
  store i32 %call14, i32* %res, align 4
  %29 = bitcast i32* %RET to i8*
  call void @klee_make_symbolic(i8* %29, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0))
  %30 = load i32, i32* %RET, align 4
  %31 = load i32, i32* %res, align 4
  %cmp = icmp eq i32 %30, %31
  %conv = zext i1 %cmp to i32
  %conv15 = sext i32 %conv to i64
  call void @klee_assume(i64 %conv15)
  ret i32 0
}

declare dso_local void @klee_assume(i64) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
