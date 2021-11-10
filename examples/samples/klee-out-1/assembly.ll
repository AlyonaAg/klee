; ModuleID = '/home/klee/examples/samples/big_array_2.bc'
source_filename = "big_array_2.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tagTLV_FEII_PATH = type { %struct.tagVrpTLVHead, i32, i32 }
%struct.tagVrpTLVHead = type { i16, i16 }
%struct.SLL = type { %struct.SLL_NODE, %struct.SLL_NODE*, i32, [4 x i8] }
%struct.SLL_NODE = type { %struct.SLL_NODE*, i64 }
%struct.tagVosCpuTick = type { i32, i32 }
%struct.tagVosSystm = type { i16, i8, i8, i8, i8, i8, i8, i32 }
%struct.SYS_tagSysTime = type { i16, i8, i8, i8, i8, i8, i8, i32 }
%struct.QosDynTlv = type <{ i16, i16, i8* }>
%struct.FEII_TLV_HEADER_S = type { i16, i16 }

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
@.str.22 = private unnamed_addr constant [5 x i8] c"buff\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"buffLen\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"dynTlv\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"tlvNum\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"outLen[0]\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"$RET\00", align 1

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
define dso_local i32 @QOS_JoinTlvs(i8* %buff, i32 %buffLen, %struct.QosDynTlv* %dynTlv, i32 %tlvNum, i32* %outLen) #0 {
entry:
  %retval = alloca i32, align 4
  %buff.addr = alloca i8*, align 8
  %buffLen.addr = alloca i32, align 4
  %dynTlv.addr = alloca %struct.QosDynTlv*, align 8
  %tlvNum.addr = alloca i32, align 4
  %outLen.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %groupLen = alloca i32, align 4
  %tlv = alloca %struct.FEII_TLV_HEADER_S*, align 8
  %ret = alloca i32, align 4
  store i8* %buff, i8** %buff.addr, align 8
  store i32 %buffLen, i32* %buffLen.addr, align 4
  store %struct.QosDynTlv* %dynTlv, %struct.QosDynTlv** %dynTlv.addr, align 8
  store i32 %tlvNum, i32* %tlvNum.addr, align 4
  store i32* %outLen, i32** %outLen.addr, align 8
  %0 = load i32*, i32** %outLen.addr, align 8
  store i32 0, i32* %0, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end42, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %tlvNum.addr, align 4
  %cmp = icmp ult i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.QosDynTlv*, %struct.QosDynTlv** %dynTlv.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds %struct.QosDynTlv, %struct.QosDynTlv* %3, i64 %idxprom
  %len = getelementptr inbounds %struct.QosDynTlv, %struct.QosDynTlv* %arrayidx, i32 0, i32 1
  %5 = load i16, i16* %len, align 1
  %conv = zext i16 %5 to i64
  %add = add i64 4, %conv
  %conv1 = trunc i64 %add to i32
  store i32 %conv1, i32* %groupLen, align 4
  %6 = load i32*, i32** %outLen.addr, align 8
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %groupLen, align 4
  %add2 = add i32 %7, %8
  %9 = load i32, i32* %buffLen.addr, align 4
  %cmp3 = icmp ugt i32 %add2, %9
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  %10 = load i8*, i8** %buff.addr, align 8
  %11 = load i32*, i32** %outLen.addr, align 8
  %12 = load i32, i32* %11, align 4
  %idx.ext = zext i32 %12 to i64
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %idx.ext
  %13 = bitcast i8* %add.ptr to %struct.FEII_TLV_HEADER_S*
  store %struct.FEII_TLV_HEADER_S* %13, %struct.FEII_TLV_HEADER_S** %tlv, align 8
  %14 = load %struct.FEII_TLV_HEADER_S*, %struct.FEII_TLV_HEADER_S** %tlv, align 8
  %usTLVType = getelementptr inbounds %struct.FEII_TLV_HEADER_S, %struct.FEII_TLV_HEADER_S* %14, i32 0, i32 0
  %15 = load i16, i16* %usTLVType, align 2
  %conv5 = zext i16 %15 to i32
  %16 = load %struct.QosDynTlv*, %struct.QosDynTlv** %dynTlv.addr, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom6 = zext i32 %17 to i64
  %arrayidx7 = getelementptr inbounds %struct.QosDynTlv, %struct.QosDynTlv* %16, i64 %idxprom6
  %type = getelementptr inbounds %struct.QosDynTlv, %struct.QosDynTlv* %arrayidx7, i32 0, i32 0
  %18 = load i16, i16* %type, align 1
  %conv8 = zext i16 %18 to i32
  %cmp9 = icmp sgt i32 %conv5, %conv8
  br i1 %cmp9, label %if.then11, label %if.end16

if.then11:                                        ; preds = %if.end
  %19 = load %struct.QosDynTlv*, %struct.QosDynTlv** %dynTlv.addr, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom12 = zext i32 %20 to i64
  %arrayidx13 = getelementptr inbounds %struct.QosDynTlv, %struct.QosDynTlv* %19, i64 %idxprom12
  %type14 = getelementptr inbounds %struct.QosDynTlv, %struct.QosDynTlv* %arrayidx13, i32 0, i32 0
  %21 = load i16, i16* %type14, align 1
  %22 = load %struct.FEII_TLV_HEADER_S*, %struct.FEII_TLV_HEADER_S** %tlv, align 8
  %usTLVType15 = getelementptr inbounds %struct.FEII_TLV_HEADER_S, %struct.FEII_TLV_HEADER_S* %22, i32 0, i32 0
  store i16 %21, i16* %usTLVType15, align 2
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.end
  %23 = load %struct.FEII_TLV_HEADER_S*, %struct.FEII_TLV_HEADER_S** %tlv, align 8
  %usTLVLen = getelementptr inbounds %struct.FEII_TLV_HEADER_S, %struct.FEII_TLV_HEADER_S* %23, i32 0, i32 1
  %24 = load i16, i16* %usTLVLen, align 2
  %conv17 = zext i16 %24 to i32
  %25 = load %struct.QosDynTlv*, %struct.QosDynTlv** %dynTlv.addr, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom18 = zext i32 %26 to i64
  %arrayidx19 = getelementptr inbounds %struct.QosDynTlv, %struct.QosDynTlv* %25, i64 %idxprom18
  %len20 = getelementptr inbounds %struct.QosDynTlv, %struct.QosDynTlv* %arrayidx19, i32 0, i32 1
  %27 = load i16, i16* %len20, align 1
  %conv21 = zext i16 %27 to i32
  %cmp22 = icmp sgt i32 %conv17, %conv21
  br i1 %cmp22, label %if.then24, label %if.end29

if.then24:                                        ; preds = %if.end16
  %28 = load %struct.QosDynTlv*, %struct.QosDynTlv** %dynTlv.addr, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom25 = zext i32 %29 to i64
  %arrayidx26 = getelementptr inbounds %struct.QosDynTlv, %struct.QosDynTlv* %28, i64 %idxprom25
  %len27 = getelementptr inbounds %struct.QosDynTlv, %struct.QosDynTlv* %arrayidx26, i32 0, i32 1
  %30 = load i16, i16* %len27, align 1
  %31 = load %struct.FEII_TLV_HEADER_S*, %struct.FEII_TLV_HEADER_S** %tlv, align 8
  %usTLVLen28 = getelementptr inbounds %struct.FEII_TLV_HEADER_S, %struct.FEII_TLV_HEADER_S* %31, i32 0, i32 1
  store i16 %30, i16* %usTLVLen28, align 2
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %if.end16
  %32 = load %struct.FEII_TLV_HEADER_S*, %struct.FEII_TLV_HEADER_S** %tlv, align 8
  %add.ptr30 = getelementptr inbounds %struct.FEII_TLV_HEADER_S, %struct.FEII_TLV_HEADER_S* %32, i64 1
  %33 = bitcast %struct.FEII_TLV_HEADER_S* %add.ptr30 to i8*
  %34 = load i32, i32* %buffLen.addr, align 4
  %35 = load i32*, i32** %outLen.addr, align 8
  %36 = load i32, i32* %35, align 4
  %sub = sub i32 %34, %36
  %conv31 = zext i32 %sub to i64
  %sub32 = sub i64 %conv31, 4
  %37 = load %struct.QosDynTlv*, %struct.QosDynTlv** %dynTlv.addr, align 8
  %38 = load i32, i32* %i, align 4
  %idxprom33 = zext i32 %38 to i64
  %arrayidx34 = getelementptr inbounds %struct.QosDynTlv, %struct.QosDynTlv* %37, i64 %idxprom33
  %value = getelementptr inbounds %struct.QosDynTlv, %struct.QosDynTlv* %arrayidx34, i32 0, i32 2
  %39 = load i8*, i8** %value, align 1
  %40 = load %struct.QosDynTlv*, %struct.QosDynTlv** %dynTlv.addr, align 8
  %41 = load i32, i32* %i, align 4
  %idxprom35 = zext i32 %41 to i64
  %arrayidx36 = getelementptr inbounds %struct.QosDynTlv, %struct.QosDynTlv* %40, i64 %idxprom35
  %len37 = getelementptr inbounds %struct.QosDynTlv, %struct.QosDynTlv* %arrayidx36, i32 0, i32 1
  %42 = load i16, i16* %len37, align 1
  %conv38 = zext i16 %42 to i64
  %call = call i32 @memcpy_s(i8* %33, i64 %sub32, i8* %39, i64 %conv38)
  store i32 %call, i32* %ret, align 4
  %43 = load i32, i32* %ret, align 4
  %cmp39 = icmp ne i32 %43, 1
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end29
  store i32 0, i32* %retval, align 4
  br label %return

if.end42:                                         ; preds = %if.end29
  %44 = load i32, i32* %groupLen, align 4
  %45 = load i32*, i32** %outLen.addr, align 8
  %46 = load i32, i32* %45, align 4
  %add43 = add i32 %46, %44
  store i32 %add43, i32* %45, align 4
  %47 = load i32, i32* %i, align 4
  %inc = add i32 %47, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %48 = load i32*, i32** %outLen.addr, align 8
  %49 = load i32, i32* %48, align 4
  %cmp44 = icmp ugt i32 %49, 1024
  br i1 %cmp44, label %if.then46, label %if.else

if.then46:                                        ; preds = %for.end
  store i32 1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %for.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then46, %if.then41, %if.then
  %50 = load i32, i32* %retval, align 4
  ret i32 %50
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %buff = alloca [4096 x i8], align 16
  %buffLen = alloca i32, align 4
  %dynTlv = alloca [6 x %struct.QosDynTlv], align 16
  %tlvNum = alloca i32, align 4
  %outLen = alloca i32*, align 8
  %res = alloca i32, align 4
  %RET = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [4096 x i8]* %buff to i8*
  call void @klee_make_symbolic(i8* %0, i64 4096, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0))
  %1 = bitcast i32* %buffLen to i8*
  call void @klee_make_symbolic(i8* %1, i64 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0))
  %2 = bitcast [6 x %struct.QosDynTlv]* %dynTlv to i8*
  call void @klee_make_symbolic(i8* %2, i64 72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0))
  %arrayidx = getelementptr inbounds [6 x %struct.QosDynTlv], [6 x %struct.QosDynTlv]* %dynTlv, i64 0, i64 0
  %value = getelementptr inbounds %struct.QosDynTlv, %struct.QosDynTlv* %arrayidx, i32 0, i32 2
  store i8* null, i8** %value, align 4
  %arrayidx1 = getelementptr inbounds [6 x %struct.QosDynTlv], [6 x %struct.QosDynTlv]* %dynTlv, i64 0, i64 1
  %value2 = getelementptr inbounds %struct.QosDynTlv, %struct.QosDynTlv* %arrayidx1, i32 0, i32 2
  store i8* null, i8** %value2, align 4
  %arrayidx3 = getelementptr inbounds [6 x %struct.QosDynTlv], [6 x %struct.QosDynTlv]* %dynTlv, i64 0, i64 2
  %value4 = getelementptr inbounds %struct.QosDynTlv, %struct.QosDynTlv* %arrayidx3, i32 0, i32 2
  store i8* null, i8** %value4, align 4
  %arrayidx5 = getelementptr inbounds [6 x %struct.QosDynTlv], [6 x %struct.QosDynTlv]* %dynTlv, i64 0, i64 3
  %value6 = getelementptr inbounds %struct.QosDynTlv, %struct.QosDynTlv* %arrayidx5, i32 0, i32 2
  store i8* null, i8** %value6, align 4
  %arrayidx7 = getelementptr inbounds [6 x %struct.QosDynTlv], [6 x %struct.QosDynTlv]* %dynTlv, i64 0, i64 4
  %value8 = getelementptr inbounds %struct.QosDynTlv, %struct.QosDynTlv* %arrayidx7, i32 0, i32 2
  store i8* null, i8** %value8, align 4
  %arrayidx9 = getelementptr inbounds [6 x %struct.QosDynTlv], [6 x %struct.QosDynTlv]* %dynTlv, i64 0, i64 5
  %value10 = getelementptr inbounds %struct.QosDynTlv, %struct.QosDynTlv* %arrayidx9, i32 0, i32 2
  store i8* null, i8** %value10, align 4
  %3 = bitcast i32* %tlvNum to i8*
  call void @klee_make_symbolic(i8* %3, i64 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0))
  %call = call i8* @malloc(i64 4)
  %4 = bitcast i8* %call to i32*
  store i32* %4, i32** %outLen, align 8
  %5 = load i32*, i32** %outLen, align 8
  %6 = bitcast i32* %5 to i8*
  call void @klee_make_symbolic(i8* %6, i64 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0))
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %buff, i64 0, i64 0
  %7 = load i32, i32* %buffLen, align 4
  %arraydecay11 = getelementptr inbounds [6 x %struct.QosDynTlv], [6 x %struct.QosDynTlv]* %dynTlv, i64 0, i64 0
  %8 = load i32, i32* %tlvNum, align 4
  %9 = load i32*, i32** %outLen, align 8
  %call12 = call i32 @QOS_JoinTlvs(i8* %arraydecay, i32 %7, %struct.QosDynTlv* %arraydecay11, i32 %8, i32* %9)
  store i32 %call12, i32* %res, align 4
  %10 = bitcast i32* %RET to i8*
  call void @klee_make_symbolic(i8* %10, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0))
  %11 = load i32, i32* %RET, align 4
  %12 = load i32, i32* %res, align 4
  %cmp = icmp eq i32 %11, %12
  %conv = zext i1 %cmp to i32
  %conv13 = sext i32 %conv to i64
  call void @klee_assume(i64 %conv13)
  ret i32 0
}

declare dso_local void @klee_assume(i64) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
