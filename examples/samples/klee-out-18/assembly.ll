; ModuleID = '/home/klee/examples/samples/union.bc'
source_filename = "union.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.HSTM_FLOWPROB_DATA = type { [2 x %struct.sdata], [32 x i8] }
%struct.sdata = type { %struct.HSTM_CPUTICK, i64, i64 }
%struct.HSTM_CPUTICK = type { i32, i32 }
%struct.HstmDfxFicPatchData = type { i32, [5 x i32] }
%struct.tagTLV_FEII_TM_COMM_MSG = type { i32, i32, i32, i32, i32, i32, [16 x i32], [0 x i32] }
%struct.stHSTM_CHECK_KEY_COMMON = type <{ i32, i32, i32, i8* }>
%struct.stHSTM_CHECK_DATA_COMMON = type { i32, i32, i32, i32, i8* }
%struct.SLL = type { %struct.SLL_NODE, %struct.SLL_NODE*, i32, [4 x i8] }
%struct.SLL_NODE = type { %struct.SLL_NODE*, i64 }
%struct.HSTM_DFX_ALARM_INFO = type { i32, i32, i32, %struct.HSTM_DFX_ALARM_INFO_EXT, i32 }
%struct.HSTM_DFX_ALARM_INFO_EXT = type { i32, i32, i32, i32, i32, i32 }
%union.tagFEI_HSTM_INST_INFO = type { %struct.tagFEI_HSTM_INST_BIT_INFO }
%struct.tagFEI_HSTM_INST_BIT_INFO = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"FEI_TM_fe_operate_interlaken\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"HSTM_ISO_ClearSdsDecErrCnt\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"HSTM_ISO_DisableFmeaFeatures\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"HSTM_ISO_GetCardIdByTbTp\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"HSTM_ISO_GetChassisId\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"HSTM_ISO_GetFeiCompCid\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"HSTM_ISO_GetHsBoardIngressNum\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"HSTM_ISO_GetMulticastLeafInfo\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"HSTM_ISO_GetOutchannelByTbTp\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"HSTM_ISO_GetSmCfgInfoByTbTp\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"HSTM_ISO_GetSqIdByTbTpFromTblm\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"HSTM_ISO_GetTmDeviceCount\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"HSTM_ISO_GetTmTypeByChipHardType\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"HSTM_ISO_IsSr2tB\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"HSTM_ISO_IsSr2taB\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"HSTM_ISO_IsTmIsolateEnabled\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"HSTM_ISO_IsVirtualClusterMode\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"HSTM_ISO_IsolateMcTable\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"HSTM_ISO_IsolateQosTable\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"HSTM_ISO_QueryServiceSq\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"HSTM_ISO_ReportXficPatchData\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"HSTM_ISO_SendAlarmMsgToFei\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"HSTM_ISO_SendChipIsolateEvent\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"HSTM_ISO_SendCommMsgToFeisw\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"HSTM_ISO_SendLinkErrMsgToFeisw\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"HSTM_ISO_SendRsqResAlarmMsgToFei\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"HSTM_ISO_SendSqIsoEopEvent\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"HSTM_ISO_SendSqJamEopMsg\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"HSTM_ISO_SetLastSaidPingTime\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"HSTM_ISO_ShowHisPeerTbLinkState\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"HSTM_ISO_ShowLinkSeqInfo\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"HSTM_ISO_ShowPeerTbLinkState\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"HSTM_ISO_SlaveExist\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"HSTM_ISO_TblmAdd\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"HSTM_ISO_TblmDelete\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"HSTM_ISO_TblmQuery\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"HSTM_ISO_TblmQueryWithoutChip\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"HSTM_S3BP_GetBpStatus\00", align 1
@.str.38 = private unnamed_addr constant [24 x i8] c"HSTM_S3BP_IsSfuBpClosed\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"SSP_DiagLog\00", align 1
@.str.40 = private unnamed_addr constant [24 x i8] c"fei_hstm_dfx_s3bp_check\00", align 1
@.str.41 = private unnamed_addr constant [46 x i8] c"hstm_dfx_fic_linklost_local_data_init_by_tblm\00", align 1
@.str.42 = private unnamed_addr constant [25 x i8] c"hstm_dfx_hal_heart_check\00", align 1
@.str.43 = private unnamed_addr constant [36 x i8] c"hstm_dfx_s3bp_main_check_timer_proc\00", align 1
@.str.44 = private unnamed_addr constant [23 x i8] c"hstm_dfx_s3bp_msg_proc\00", align 1
@.str.45 = private unnamed_addr constant [31 x i8] c"hstm_iso_backup_board_type_get\00", align 1
@.str.46 = private unnamed_addr constant [22 x i8] c"hstm_iso_bkb_type_get\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"hstm_iso_bkp_ver_get\00", align 1
@.str.48 = private unnamed_addr constant [25 x i8] c"hstm_iso_common_api_init\00", align 1
@.str.49 = private unnamed_addr constant [30 x i8] c"hstm_iso_dfx_fic_serdes_check\00", align 1
@.str.50 = private unnamed_addr constant [30 x i8] c"hstm_iso_fei_forward_mode_get\00", align 1
@.str.51 = private unnamed_addr constant [33 x i8] c"hstm_iso_fenode_protect_mode_get\00", align 1
@.str.52 = private unnamed_addr constant [26 x i8] c"hstm_iso_forward_mode_get\00", align 1
@.str.53 = private unnamed_addr constant [39 x i8] c"hstm_iso_hstm_low_latency_mode_env_get\00", align 1
@.str.54 = private unnamed_addr constant [39 x i8] c"hstm_iso_hstm_low_latency_mode_env_set\00", align 1
@.str.55 = private unnamed_addr constant [28 x i8] c"hstm_iso_local_hardtype_get\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"hstm_iso_msg_fei2feisw\00", align 1
@.str.57 = private unnamed_addr constant [29 x i8] c"hstm_iso_node_role_is_backup\00", align 1
@.str.58 = private unnamed_addr constant [20 x i8] c"hstm_iso_nof_tm_get\00", align 1
@.str.59 = private unnamed_addr constant [26 x i8] c"hstm_iso_npu_protect_mode\00", align 1
@.str.60 = private unnamed_addr constant [26 x i8] c"hstm_iso_service_type_get\00", align 1
@.str.61 = private unnamed_addr constant [21 x i8] c"hstm_iso_slot_no_get\00", align 1
@.str.62 = private unnamed_addr constant [24 x i8] c"hstm_iso_xfic_state_get\00", align 1
@.str.63 = private unnamed_addr constant [18 x i8] c"hstm_sll_node_add\00", align 1
@.str.64 = private unnamed_addr constant [31 x i8] c"hsu_ex_dfx_heart_status_report\00", align 1
@.str.65 = private unnamed_addr constant [29 x i8] c"hsu_ex_flex_voq_cmd_probe_VR\00", align 1
@.str.66 = private unnamed_addr constant [30 x i8] c"hsu_ex_flex_voq_vsq_on_or_off\00", align 1
@.str.67 = private unnamed_addr constant [27 x i8] c"hsu_ex_hstm_dfx_alm_report\00", align 1
@.str.68 = private unnamed_addr constant [32 x i8] c"hsu_ex_hstm_dfx_fe_check_id_get\00", align 1
@.str.69 = private unnamed_addr constant [38 x i8] c"hsu_ex_hstm_dfx_fic_serdes_err_report\00", align 1
@.str.70 = private unnamed_addr constant [27 x i8] c"hsu_ex_hstm_sfu_start_flag\00", align 1
@.str.71 = private unnamed_addr constant [25 x i8] c"hsu_os_FEI_FLOWPROB_Init\00", align 1
@.str.72 = private unnamed_addr constant [22 x i8] c"hsu_os_FLOWPROB_Start\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"memcpy_s\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"memset_s\00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"snprintf_s\00", align 1
@.str.76 = private unnamed_addr constant [21 x i8] c"snprintf_truncated_s\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"sprintf_s\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"strcpy_s\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"strncpy_s\00", align 1
@.str.80 = private unnamed_addr constant [22 x i8] c"vsnprintf_truncated_s\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"bit_info\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"lane_id\00", align 1
@.str.83 = private unnamed_addr constant [9 x i8] c"nof_lane\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @FEI_TM_fe_operate_interlaken(i32 %ui_fe_id, i32 %ui_tm_id, i32 %en_operate_type) #0 {
entry:
  %ui_fe_id.addr = alloca i32, align 4
  %ui_tm_id.addr = alloca i32, align 4
  %en_operate_type.addr = alloca i32, align 4
  %FEI_TM_fe_operate_interlaken = alloca i32, align 4
  store i32 %ui_fe_id, i32* %ui_fe_id.addr, align 4
  store i32 %ui_tm_id, i32* %ui_tm_id.addr, align 4
  store i32 %en_operate_type, i32* %en_operate_type.addr, align 4
  %0 = bitcast i32* %FEI_TM_fe_operate_interlaken to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %1 = load i32, i32* %FEI_TM_fe_operate_interlaken, align 4
  ret i32 %1
}

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_ClearSdsDecErrCnt(i32 %chipId) #0 {
entry:
  %chipId.addr = alloca i32, align 4
  %HSTM_ISO_ClearSdsDecErrCnt = alloca i32, align 4
  store i32 %chipId, i32* %chipId.addr, align 4
  %0 = bitcast i32* %HSTM_ISO_ClearSdsDecErrCnt to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %1 = load i32, i32* %HSTM_ISO_ClearSdsDecErrCnt, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @HSTM_ISO_DisableFmeaFeatures(i32 %disableType) #0 {
entry:
  %disableType.addr = alloca i32, align 4
  %HSTM_ISO_DisableFmeaFeatures = alloca i8, align 1
  store i32 %disableType, i32* %disableType.addr, align 4
  call void @klee_make_symbolic(i8* %HSTM_ISO_DisableFmeaFeatures, i64 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %0 = load i8, i8* %HSTM_ISO_DisableFmeaFeatures, align 1
  %tobool = trunc i8 %0 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_GetCardIdByTbTp(i32 %uiTb, i32 %uiTp, i32* %puiCardId, i32* %puiPortId, i8* %pThis) #0 {
entry:
  %uiTb.addr = alloca i32, align 4
  %uiTp.addr = alloca i32, align 4
  %puiCardId.addr = alloca i32*, align 8
  %puiPortId.addr = alloca i32*, align 8
  %pThis.addr = alloca i8*, align 8
  %HSTM_ISO_GetCardIdByTbTp = alloca i32, align 4
  store i32 %uiTb, i32* %uiTb.addr, align 4
  store i32 %uiTp, i32* %uiTp.addr, align 4
  store i32* %puiCardId, i32** %puiCardId.addr, align 8
  store i32* %puiPortId, i32** %puiPortId.addr, align 8
  store i8* %pThis, i8** %pThis.addr, align 8
  %0 = bitcast i32* %HSTM_ISO_GetCardIdByTbTp to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %1 = load i32, i32* %HSTM_ISO_GetCardIdByTbTp, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_GetChassisId() #0 {
entry:
  %HSTM_ISO_GetChassisId = alloca i32, align 4
  %0 = bitcast i32* %HSTM_ISO_GetChassisId to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %1 = load i32, i32* %HSTM_ISO_GetChassisId, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_GetFeiCompCid() #0 {
entry:
  %HSTM_ISO_GetFeiCompCid = alloca i32, align 4
  %0 = bitcast i32* %HSTM_ISO_GetFeiCompCid to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %1 = load i32, i32* %HSTM_ISO_GetFeiCompCid, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @HSTM_ISO_GetFeiThis() #0 {
entry:
  %HSTM_ISO_GetFeiThis = alloca i8*, align 8
  store i8* null, i8** %HSTM_ISO_GetFeiThis, align 8
  %0 = load i8*, i8** %HSTM_ISO_GetFeiThis, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @HSTM_ISO_GetFlowProbData(i8* %inData, %struct.HSTM_FLOWPROB_DATA* %outData) #0 {
entry:
  %inData.addr = alloca i8*, align 8
  %outData.addr = alloca %struct.HSTM_FLOWPROB_DATA*, align 8
  store i8* %inData, i8** %inData.addr, align 8
  store %struct.HSTM_FLOWPROB_DATA* %outData, %struct.HSTM_FLOWPROB_DATA** %outData.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_GetHsBoardIngressNum(i32 %boardType) #0 {
entry:
  %boardType.addr = alloca i32, align 4
  %HSTM_ISO_GetHsBoardIngressNum = alloca i32, align 4
  store i32 %boardType, i32* %boardType.addr, align 4
  %0 = bitcast i32* %HSTM_ISO_GetHsBoardIngressNum to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %1 = load i32, i32* %HSTM_ISO_GetHsBoardIngressNum, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_GetMulticastLeafInfo(i32 %chip_id, i32* %mlid, i8* %leafinfo) #0 {
entry:
  %chip_id.addr = alloca i32, align 4
  %mlid.addr = alloca i32*, align 8
  %leafinfo.addr = alloca i8*, align 8
  %HSTM_ISO_GetMulticastLeafInfo = alloca i32, align 4
  store i32 %chip_id, i32* %chip_id.addr, align 4
  store i32* %mlid, i32** %mlid.addr, align 8
  store i8* %leafinfo, i8** %leafinfo.addr, align 8
  %0 = bitcast i32* %HSTM_ISO_GetMulticastLeafInfo to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %1 = load i32, i32* %HSTM_ISO_GetMulticastLeafInfo, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_GetOutchannelByTbTp(i32 %tb, i32 %tp, i32* %outChannel, i8* %pThis) #0 {
entry:
  %tb.addr = alloca i32, align 4
  %tp.addr = alloca i32, align 4
  %outChannel.addr = alloca i32*, align 8
  %pThis.addr = alloca i8*, align 8
  %HSTM_ISO_GetOutchannelByTbTp = alloca i32, align 4
  store i32 %tb, i32* %tb.addr, align 4
  store i32 %tp, i32* %tp.addr, align 4
  store i32* %outChannel, i32** %outChannel.addr, align 8
  store i8* %pThis, i8** %pThis.addr, align 8
  %0 = bitcast i32* %HSTM_ISO_GetOutchannelByTbTp to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %1 = load i32, i32* %HSTM_ISO_GetOutchannelByTbTp, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_GetSmCfgInfoByTbTp(i8* %smCfg, i32 %tbId, i32 %tpId) #0 {
entry:
  %smCfg.addr = alloca i8*, align 8
  %tbId.addr = alloca i32, align 4
  %tpId.addr = alloca i32, align 4
  %HSTM_ISO_GetSmCfgInfoByTbTp = alloca i32, align 4
  store i8* %smCfg, i8** %smCfg.addr, align 8
  store i32 %tbId, i32* %tbId.addr, align 4
  store i32 %tpId, i32* %tpId.addr, align 4
  %0 = bitcast i32* %HSTM_ISO_GetSmCfgInfoByTbTp to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %1 = load i32, i32* %HSTM_ISO_GetSmCfgInfoByTbTp, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_GetSqIdByTbTpFromTblm(i32 %chipId, i32 %chipType, i16 zeroext %tb, i16 zeroext %tp) #0 {
entry:
  %chipId.addr = alloca i32, align 4
  %chipType.addr = alloca i32, align 4
  %tb.addr = alloca i16, align 2
  %tp.addr = alloca i16, align 2
  %HSTM_ISO_GetSqIdByTbTpFromTblm = alloca i32, align 4
  store i32 %chipId, i32* %chipId.addr, align 4
  store i32 %chipType, i32* %chipType.addr, align 4
  store i16 %tb, i16* %tb.addr, align 2
  store i16 %tp, i16* %tp.addr, align 2
  %0 = bitcast i32* %HSTM_ISO_GetSqIdByTbTpFromTblm to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  %1 = load i32, i32* %HSTM_ISO_GetSqIdByTbTpFromTblm, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_GetTmDeviceCount() #0 {
entry:
  %HSTM_ISO_GetTmDeviceCount = alloca i32, align 4
  %0 = bitcast i32* %HSTM_ISO_GetTmDeviceCount to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  %1 = load i32, i32* %HSTM_ISO_GetTmDeviceCount, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_GetTmTypeByChipHardType(i32 %tmHardType) #0 {
entry:
  %tmHardType.addr = alloca i32, align 4
  %HSTM_ISO_GetTmTypeByChipHardType = alloca i32, align 4
  store i32 %tmHardType, i32* %tmHardType.addr, align 4
  %0 = bitcast i32* %HSTM_ISO_GetTmTypeByChipHardType to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0))
  %1 = load i32, i32* %HSTM_ISO_GetTmTypeByChipHardType, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @HSTM_ISO_IsSr2tB() #0 {
entry:
  %HSTM_ISO_IsSr2tB = alloca i8, align 1
  call void @klee_make_symbolic(i8* %HSTM_ISO_IsSr2tB, i64 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  %0 = load i8, i8* %HSTM_ISO_IsSr2tB, align 1
  %tobool = trunc i8 %0 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @HSTM_ISO_IsSr2taB() #0 {
entry:
  %HSTM_ISO_IsSr2taB = alloca i8, align 1
  call void @klee_make_symbolic(i8* %HSTM_ISO_IsSr2taB, i64 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0))
  %0 = load i8, i8* %HSTM_ISO_IsSr2taB, align 1
  %tobool = trunc i8 %0 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @HSTM_ISO_IsTmIsolateEnabled() #0 {
entry:
  %HSTM_ISO_IsTmIsolateEnabled = alloca i8, align 1
  call void @klee_make_symbolic(i8* %HSTM_ISO_IsTmIsolateEnabled, i64 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0))
  %0 = load i8, i8* %HSTM_ISO_IsTmIsolateEnabled, align 1
  %tobool = trunc i8 %0 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @HSTM_ISO_IsVirtualClusterMode() #0 {
entry:
  %HSTM_ISO_IsVirtualClusterMode = alloca i8, align 1
  call void @klee_make_symbolic(i8* %HSTM_ISO_IsVirtualClusterMode, i64 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0))
  %0 = load i8, i8* %HSTM_ISO_IsVirtualClusterMode, align 1
  %tobool = trunc i8 %0 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_IsolateMcTable(i32 %chipId, i32 %srvType, i32 %srvId, i32 %faultSts) #0 {
entry:
  %chipId.addr = alloca i32, align 4
  %srvType.addr = alloca i32, align 4
  %srvId.addr = alloca i32, align 4
  %faultSts.addr = alloca i32, align 4
  %HSTM_ISO_IsolateMcTable = alloca i32, align 4
  store i32 %chipId, i32* %chipId.addr, align 4
  store i32 %srvType, i32* %srvType.addr, align 4
  store i32 %srvId, i32* %srvId.addr, align 4
  store i32 %faultSts, i32* %faultSts.addr, align 4
  %0 = bitcast i32* %HSTM_ISO_IsolateMcTable to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0))
  %1 = load i32, i32* %HSTM_ISO_IsolateMcTable, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_IsolateQosTable(i32 %chipType, i32 %chipId, i32 %srvType, i32 %srvId, i32 %direction, i32 %faultSts) #0 {
entry:
  %chipType.addr = alloca i32, align 4
  %chipId.addr = alloca i32, align 4
  %srvType.addr = alloca i32, align 4
  %srvId.addr = alloca i32, align 4
  %direction.addr = alloca i32, align 4
  %faultSts.addr = alloca i32, align 4
  %HSTM_ISO_IsolateQosTable = alloca i32, align 4
  store i32 %chipType, i32* %chipType.addr, align 4
  store i32 %chipId, i32* %chipId.addr, align 4
  store i32 %srvType, i32* %srvType.addr, align 4
  store i32 %srvId, i32* %srvId.addr, align 4
  store i32 %direction, i32* %direction.addr, align 4
  store i32 %faultSts, i32* %faultSts.addr, align 4
  %0 = bitcast i32* %HSTM_ISO_IsolateQosTable to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0))
  %1 = load i32, i32* %HSTM_ISO_IsolateQosTable, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @HSTM_ISO_NotifyChipResetToNp(i32 %chipId) #0 {
entry:
  %chipId.addr = alloca i32, align 4
  store i32 %chipId, i32* %chipId.addr, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @HSTM_ISO_QueryServiceSq(i32 %chipId, i32 %sqId) #0 {
entry:
  %chipId.addr = alloca i32, align 4
  %sqId.addr = alloca i32, align 4
  %HSTM_ISO_QueryServiceSq = alloca i8, align 1
  store i32 %chipId, i32* %chipId.addr, align 4
  store i32 %sqId, i32* %sqId.addr, align 4
  call void @klee_make_symbolic(i8* %HSTM_ISO_QueryServiceSq, i64 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0))
  %0 = load i8, i8* %HSTM_ISO_QueryServiceSq, align 1
  %tobool = trunc i8 %0 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @HSTM_ISO_ReportSaidTrafficFallInt(i32 %devId, i32 %intId, i32 %intAddr, i32 %value) #0 {
entry:
  %devId.addr = alloca i32, align 4
  %intId.addr = alloca i32, align 4
  %intAddr.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store i32 %devId, i32* %devId.addr, align 4
  store i32 %intId, i32* %intId.addr, align 4
  store i32 %intAddr, i32* %intAddr.addr, align 4
  store i32 %value, i32* %value.addr, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_ReportXficPatchData(%struct.HstmDfxFicPatchData* %patchData) #0 {
entry:
  %patchData.addr = alloca %struct.HstmDfxFicPatchData*, align 8
  %HSTM_ISO_ReportXficPatchData = alloca i32, align 4
  store %struct.HstmDfxFicPatchData* %patchData, %struct.HstmDfxFicPatchData** %patchData.addr, align 8
  %0 = bitcast i32* %HSTM_ISO_ReportXficPatchData to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0))
  %1 = load i32, i32* %HSTM_ISO_ReportXficPatchData, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @HSTM_ISO_ResetLpu(i32 %cause) #0 {
entry:
  %cause.addr = alloca i32, align 4
  store i32 %cause, i32* %cause.addr, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_SendAlarmMsgToFei(i32 %reasonId, i32 %alarmId, i32 %severityType, i32 %alarmState, i8* %param) #0 {
entry:
  %reasonId.addr = alloca i32, align 4
  %alarmId.addr = alloca i32, align 4
  %severityType.addr = alloca i32, align 4
  %alarmState.addr = alloca i32, align 4
  %param.addr = alloca i8*, align 8
  %HSTM_ISO_SendAlarmMsgToFei = alloca i32, align 4
  store i32 %reasonId, i32* %reasonId.addr, align 4
  store i32 %alarmId, i32* %alarmId.addr, align 4
  store i32 %severityType, i32* %severityType.addr, align 4
  store i32 %alarmState, i32* %alarmState.addr, align 4
  store i8* %param, i8** %param.addr, align 8
  %0 = bitcast i32* %HSTM_ISO_SendAlarmMsgToFei to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i64 0, i64 0))
  %1 = load i32, i32* %HSTM_ISO_SendAlarmMsgToFei, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_SendChipIsolateEvent(i32 %chipId, i32 %isoType, i1 zeroext %isNpConnectMultiTm) #0 {
entry:
  %chipId.addr = alloca i32, align 4
  %isoType.addr = alloca i32, align 4
  %isNpConnectMultiTm.addr = alloca i8, align 1
  %HSTM_ISO_SendChipIsolateEvent = alloca i32, align 4
  store i32 %chipId, i32* %chipId.addr, align 4
  store i32 %isoType, i32* %isoType.addr, align 4
  %frombool = zext i1 %isNpConnectMultiTm to i8
  store i8 %frombool, i8* %isNpConnectMultiTm.addr, align 1
  %0 = bitcast i32* %HSTM_ISO_SendChipIsolateEvent to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.22, i64 0, i64 0))
  %1 = load i32, i32* %HSTM_ISO_SendChipIsolateEvent, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_SendCommMsgToFeisw(%struct.tagTLV_FEII_TM_COMM_MSG* %comm_msg, i1 zeroext %flowCtrlMsg, i8* %ext_data, i32 %ext_data_len) #0 {
entry:
  %comm_msg.addr = alloca %struct.tagTLV_FEII_TM_COMM_MSG*, align 8
  %flowCtrlMsg.addr = alloca i8, align 1
  %ext_data.addr = alloca i8*, align 8
  %ext_data_len.addr = alloca i32, align 4
  %HSTM_ISO_SendCommMsgToFeisw = alloca i32, align 4
  store %struct.tagTLV_FEII_TM_COMM_MSG* %comm_msg, %struct.tagTLV_FEII_TM_COMM_MSG** %comm_msg.addr, align 8
  %frombool = zext i1 %flowCtrlMsg to i8
  store i8 %frombool, i8* %flowCtrlMsg.addr, align 1
  store i8* %ext_data, i8** %ext_data.addr, align 8
  store i32 %ext_data_len, i32* %ext_data_len.addr, align 4
  %0 = bitcast i32* %HSTM_ISO_SendCommMsgToFeisw to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i64 0, i64 0))
  %1 = load i32, i32* %HSTM_ISO_SendCommMsgToFeisw, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @HSTM_ISO_SendIsolateEventToNp(i32 %tmId) #0 {
entry:
  %tmId.addr = alloca i32, align 4
  store i32 %tmId, i32* %tmId.addr, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_SendLinkErrMsgToFeisw(i32 %uiDevId, i32 %uiLinkId, i32 %eLinkErrType, i8* %pThis) #0 {
entry:
  %uiDevId.addr = alloca i32, align 4
  %uiLinkId.addr = alloca i32, align 4
  %eLinkErrType.addr = alloca i32, align 4
  %pThis.addr = alloca i8*, align 8
  %HSTM_ISO_SendLinkErrMsgToFeisw = alloca i32, align 4
  store i32 %uiDevId, i32* %uiDevId.addr, align 4
  store i32 %uiLinkId, i32* %uiLinkId.addr, align 4
  store i32 %eLinkErrType, i32* %eLinkErrType.addr, align 4
  store i8* %pThis, i8** %pThis.addr, align 8
  %0 = bitcast i32* %HSTM_ISO_SendLinkErrMsgToFeisw to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i64 0, i64 0))
  %1 = load i32, i32* %HSTM_ISO_SendLinkErrMsgToFeisw, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_SendRsqResAlarmMsgToFei(i32 %reasonId, i32 %alarmState, i8* %param) #0 {
entry:
  %reasonId.addr = alloca i32, align 4
  %alarmState.addr = alloca i32, align 4
  %param.addr = alloca i8*, align 8
  %HSTM_ISO_SendRsqResAlarmMsgToFei = alloca i32, align 4
  store i32 %reasonId, i32* %reasonId.addr, align 4
  store i32 %alarmState, i32* %alarmState.addr, align 4
  store i8* %param, i8** %param.addr, align 8
  %0 = bitcast i32* %HSTM_ISO_SendRsqResAlarmMsgToFei to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i64 0, i64 0))
  %1 = load i32, i32* %HSTM_ISO_SendRsqResAlarmMsgToFei, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_SendSqIsoEopEvent(i32 %chip_id, i32 %srv_id, i32 %fault_sts) #0 {
entry:
  %chip_id.addr = alloca i32, align 4
  %srv_id.addr = alloca i32, align 4
  %fault_sts.addr = alloca i32, align 4
  %HSTM_ISO_SendSqIsoEopEvent = alloca i32, align 4
  store i32 %chip_id, i32* %chip_id.addr, align 4
  store i32 %srv_id, i32* %srv_id.addr, align 4
  store i32 %fault_sts, i32* %fault_sts.addr, align 4
  %0 = bitcast i32* %HSTM_ISO_SendSqIsoEopEvent to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0))
  %1 = load i32, i32* %HSTM_ISO_SendSqIsoEopEvent, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_SendSqJamEopMsg(i32 %chip_id, i32 %jam_sq_id, i32 %jam_sq_state) #0 {
entry:
  %chip_id.addr = alloca i32, align 4
  %jam_sq_id.addr = alloca i32, align 4
  %jam_sq_state.addr = alloca i32, align 4
  %HSTM_ISO_SendSqJamEopMsg = alloca i32, align 4
  store i32 %chip_id, i32* %chip_id.addr, align 4
  store i32 %jam_sq_id, i32* %jam_sq_id.addr, align 4
  store i32 %jam_sq_state, i32* %jam_sq_state.addr, align 4
  %0 = bitcast i32* %HSTM_ISO_SendSqJamEopMsg to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i64 0, i64 0))
  %1 = load i32, i32* %HSTM_ISO_SendSqJamEopMsg, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @HSTM_ISO_SetFeiThis(i8* %pThis) #0 {
entry:
  %pThis.addr = alloca i8*, align 8
  store i8* %pThis, i8** %pThis.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @HSTM_ISO_SetFlowProbData(%struct.HSTM_FLOWPROB_DATA* %inData, i8* %outData) #0 {
entry:
  %inData.addr = alloca %struct.HSTM_FLOWPROB_DATA*, align 8
  %outData.addr = alloca i8*, align 8
  store %struct.HSTM_FLOWPROB_DATA* %inData, %struct.HSTM_FLOWPROB_DATA** %inData.addr, align 8
  store i8* %outData, i8** %outData.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_SetLastSaidPingTime() #0 {
entry:
  %HSTM_ISO_SetLastSaidPingTime = alloca i32, align 4
  %0 = bitcast i32* %HSTM_ISO_SetLastSaidPingTime to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i64 0, i64 0))
  %1 = load i32, i32* %HSTM_ISO_SetLastSaidPingTime, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_ShowHisPeerTbLinkState(i8* %outBuffer, i32* %outLen, i32 %maxLen, i8* %pThis) #0 {
entry:
  %outBuffer.addr = alloca i8*, align 8
  %outLen.addr = alloca i32*, align 8
  %maxLen.addr = alloca i32, align 4
  %pThis.addr = alloca i8*, align 8
  %HSTM_ISO_ShowHisPeerTbLinkState = alloca i32, align 4
  store i8* %outBuffer, i8** %outBuffer.addr, align 8
  store i32* %outLen, i32** %outLen.addr, align 8
  store i32 %maxLen, i32* %maxLen.addr, align 4
  store i8* %pThis, i8** %pThis.addr, align 8
  %0 = bitcast i32* %HSTM_ISO_ShowHisPeerTbLinkState to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i64 0, i64 0))
  %1 = load i32, i32* %HSTM_ISO_ShowHisPeerTbLinkState, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_ShowLinkSeqInfo(i32 %tlvType, i8* %outBuffer, i32* %outLen, i32 %maxLen, i8* %pThis) #0 {
entry:
  %tlvType.addr = alloca i32, align 4
  %outBuffer.addr = alloca i8*, align 8
  %outLen.addr = alloca i32*, align 8
  %maxLen.addr = alloca i32, align 4
  %pThis.addr = alloca i8*, align 8
  %HSTM_ISO_ShowLinkSeqInfo = alloca i32, align 4
  store i32 %tlvType, i32* %tlvType.addr, align 4
  store i8* %outBuffer, i8** %outBuffer.addr, align 8
  store i32* %outLen, i32** %outLen.addr, align 8
  store i32 %maxLen, i32* %maxLen.addr, align 4
  store i8* %pThis, i8** %pThis.addr, align 8
  %0 = bitcast i32* %HSTM_ISO_ShowLinkSeqInfo to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i64 0, i64 0))
  %1 = load i32, i32* %HSTM_ISO_ShowLinkSeqInfo, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_ShowPeerTbLinkState(i8* %outBuffer, i32* %outLen, i32 %maxLen, i8* %pThis) #0 {
entry:
  %outBuffer.addr = alloca i8*, align 8
  %outLen.addr = alloca i32*, align 8
  %maxLen.addr = alloca i32, align 4
  %pThis.addr = alloca i8*, align 8
  %HSTM_ISO_ShowPeerTbLinkState = alloca i32, align 4
  store i8* %outBuffer, i8** %outBuffer.addr, align 8
  store i32* %outLen, i32** %outLen.addr, align 8
  store i32 %maxLen, i32* %maxLen.addr, align 4
  store i8* %pThis, i8** %pThis.addr, align 8
  %0 = bitcast i32* %HSTM_ISO_ShowPeerTbLinkState to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i64 0, i64 0))
  %1 = load i32, i32* %HSTM_ISO_ShowPeerTbLinkState, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_SlaveExist() #0 {
entry:
  %HSTM_ISO_SlaveExist = alloca i32, align 4
  %0 = bitcast i32* %HSTM_ISO_SlaveExist to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i64 0, i64 0))
  %1 = load i32, i32* %HSTM_ISO_SlaveExist, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @HSTM_ISO_StartupTimeStamp(i32 %chipId, i32 %action, i8* %desc) #0 {
entry:
  %chipId.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %desc.addr = alloca i8*, align 8
  store i32 %chipId, i32* %chipId.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  store i8* %desc, i8** %desc.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_TblmAdd(i32 %chipId, i32 %tblId, i8* %saveKey, i32 %keySize, i8* %saveData, i32 %datasize) #0 {
entry:
  %chipId.addr = alloca i32, align 4
  %tblId.addr = alloca i32, align 4
  %saveKey.addr = alloca i8*, align 8
  %keySize.addr = alloca i32, align 4
  %saveData.addr = alloca i8*, align 8
  %datasize.addr = alloca i32, align 4
  %HSTM_ISO_TblmAdd = alloca i32, align 4
  store i32 %chipId, i32* %chipId.addr, align 4
  store i32 %tblId, i32* %tblId.addr, align 4
  store i8* %saveKey, i8** %saveKey.addr, align 8
  store i32 %keySize, i32* %keySize.addr, align 4
  store i8* %saveData, i8** %saveData.addr, align 8
  store i32 %datasize, i32* %datasize.addr, align 4
  %0 = bitcast i32* %HSTM_ISO_TblmAdd to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i64 0, i64 0))
  %1 = load i32, i32* %HSTM_ISO_TblmAdd, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_TblmDelete(i32 %chipId, i32 %tblId, i8* %delKey, i32 %keySize) #0 {
entry:
  %chipId.addr = alloca i32, align 4
  %tblId.addr = alloca i32, align 4
  %delKey.addr = alloca i8*, align 8
  %keySize.addr = alloca i32, align 4
  %HSTM_ISO_TblmDelete = alloca i32, align 4
  store i32 %chipId, i32* %chipId.addr, align 4
  store i32 %tblId, i32* %tblId.addr, align 4
  store i8* %delKey, i8** %delKey.addr, align 8
  store i32 %keySize, i32* %keySize.addr, align 4
  %0 = bitcast i32* %HSTM_ISO_TblmDelete to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i64 0, i64 0))
  %1 = load i32, i32* %HSTM_ISO_TblmDelete, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_TblmQuery(i32 %chipId, i32 %tblId, i8* %queryKey, i32 %keySize, i8* %queryData, i32 %datasize) #0 {
entry:
  %chipId.addr = alloca i32, align 4
  %tblId.addr = alloca i32, align 4
  %queryKey.addr = alloca i8*, align 8
  %keySize.addr = alloca i32, align 4
  %queryData.addr = alloca i8*, align 8
  %datasize.addr = alloca i32, align 4
  %HSTM_ISO_TblmQuery = alloca i32, align 4
  store i32 %chipId, i32* %chipId.addr, align 4
  store i32 %tblId, i32* %tblId.addr, align 4
  store i8* %queryKey, i8** %queryKey.addr, align 8
  store i32 %keySize, i32* %keySize.addr, align 4
  store i8* %queryData, i8** %queryData.addr, align 8
  store i32 %datasize, i32* %datasize.addr, align 4
  %0 = bitcast i32* %HSTM_ISO_TblmQuery to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i64 0, i64 0))
  %1 = load i32, i32* %HSTM_ISO_TblmQuery, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_TblmQueryWithoutChip(i32 %tblId, i8* %queryKey, i32 %keySize, i8* %queryData, i32 %dataSize) #0 {
entry:
  %tblId.addr = alloca i32, align 4
  %queryKey.addr = alloca i8*, align 8
  %keySize.addr = alloca i32, align 4
  %queryData.addr = alloca i8*, align 8
  %dataSize.addr = alloca i32, align 4
  %HSTM_ISO_TblmQueryWithoutChip = alloca i32, align 4
  store i32 %tblId, i32* %tblId.addr, align 4
  store i8* %queryKey, i8** %queryKey.addr, align 8
  store i32 %keySize, i32* %keySize.addr, align 4
  store i8* %queryData, i8** %queryData.addr, align 8
  store i32 %dataSize, i32* %dataSize.addr, align 4
  %0 = bitcast i32* %HSTM_ISO_TblmQueryWithoutChip to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.36, i64 0, i64 0))
  %1 = load i32, i32* %HSTM_ISO_TblmQueryWithoutChip, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_S3BP_GetBpStatus(i32 %chip_id) #0 {
entry:
  %chip_id.addr = alloca i32, align 4
  %HSTM_S3BP_GetBpStatus = alloca i32, align 4
  store i32 %chip_id, i32* %chip_id.addr, align 4
  %0 = bitcast i32* %HSTM_S3BP_GetBpStatus to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.37, i64 0, i64 0))
  %1 = load i32, i32* %HSTM_S3BP_GetBpStatus, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @HSTM_S3BP_IsSfuBpClosed(i32 %chipId) #0 {
entry:
  %chipId.addr = alloca i32, align 4
  %HSTM_S3BP_IsSfuBpClosed = alloca i8, align 1
  store i32 %chipId, i32* %chipId.addr, align 4
  call void @klee_make_symbolic(i8* %HSTM_S3BP_IsSfuBpClosed, i64 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.38, i64 0, i64 0))
  %0 = load i8, i8* %HSTM_S3BP_IsSfuBpClosed, align 1
  %tobool = trunc i8 %0 to i1
  ret i1 %tobool
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
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i64 0, i64 0))
  %1 = load i32, i32* %SSP_DiagLog, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fei_hstm_dfx_s3bp_check(%struct.stHSTM_CHECK_KEY_COMMON* %comm_key, %struct.stHSTM_CHECK_DATA_COMMON* %comm_data) #0 {
entry:
  %comm_key.addr = alloca %struct.stHSTM_CHECK_KEY_COMMON*, align 8
  %comm_data.addr = alloca %struct.stHSTM_CHECK_DATA_COMMON*, align 8
  %fei_hstm_dfx_s3bp_check = alloca i32, align 4
  store %struct.stHSTM_CHECK_KEY_COMMON* %comm_key, %struct.stHSTM_CHECK_KEY_COMMON** %comm_key.addr, align 8
  store %struct.stHSTM_CHECK_DATA_COMMON* %comm_data, %struct.stHSTM_CHECK_DATA_COMMON** %comm_data.addr, align 8
  %0 = bitcast i32* %fei_hstm_dfx_s3bp_check to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.40, i64 0, i64 0))
  %1 = load i32, i32* %fei_hstm_dfx_s3bp_check, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hstm_dfx_fic_linklost_local_data_init_by_tblm() #0 {
entry:
  %hstm_dfx_fic_linklost_local_data_init_by_tblm = alloca i32, align 4
  %0 = bitcast i32* %hstm_dfx_fic_linklost_local_data_init_by_tblm to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.41, i64 0, i64 0))
  %1 = load i32, i32* %hstm_dfx_fic_linklost_local_data_init_by_tblm, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @hstm_dfx_fic_linklost_turn_fsm_into_array() #0 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hstm_dfx_hal_heart_check(%struct.stHSTM_CHECK_KEY_COMMON* %check_key, %struct.stHSTM_CHECK_DATA_COMMON* %comm_data) #0 {
entry:
  %check_key.addr = alloca %struct.stHSTM_CHECK_KEY_COMMON*, align 8
  %comm_data.addr = alloca %struct.stHSTM_CHECK_DATA_COMMON*, align 8
  %hstm_dfx_hal_heart_check = alloca i32, align 4
  store %struct.stHSTM_CHECK_KEY_COMMON* %check_key, %struct.stHSTM_CHECK_KEY_COMMON** %check_key.addr, align 8
  store %struct.stHSTM_CHECK_DATA_COMMON* %comm_data, %struct.stHSTM_CHECK_DATA_COMMON** %comm_data.addr, align 8
  %0 = bitcast i32* %hstm_dfx_hal_heart_check to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0))
  %1 = load i32, i32* %hstm_dfx_hal_heart_check, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hstm_dfx_s3bp_main_check_timer_proc(i8* %pMsg, i8* %pThis) #0 {
entry:
  %pMsg.addr = alloca i8*, align 8
  %pThis.addr = alloca i8*, align 8
  %hstm_dfx_s3bp_main_check_timer_proc = alloca i32, align 4
  store i8* %pMsg, i8** %pMsg.addr, align 8
  store i8* %pThis, i8** %pThis.addr, align 8
  %0 = bitcast i32* %hstm_dfx_s3bp_main_check_timer_proc to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.43, i64 0, i64 0))
  %1 = load i32, i32* %hstm_dfx_s3bp_main_check_timer_proc, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hstm_dfx_s3bp_msg_proc(i8* %pMsg, i8* %pThis) #0 {
entry:
  %pMsg.addr = alloca i8*, align 8
  %pThis.addr = alloca i8*, align 8
  %hstm_dfx_s3bp_msg_proc = alloca i32, align 4
  store i8* %pMsg, i8** %pMsg.addr, align 8
  store i8* %pThis, i8** %pThis.addr, align 8
  %0 = bitcast i32* %hstm_dfx_s3bp_msg_proc to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.44, i64 0, i64 0))
  %1 = load i32, i32* %hstm_dfx_s3bp_msg_proc, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hstm_iso_backup_board_type_get() #0 {
entry:
  %hstm_iso_backup_board_type_get = alloca i32, align 4
  %0 = bitcast i32* %hstm_iso_backup_board_type_get to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.45, i64 0, i64 0))
  %1 = load i32, i32* %hstm_iso_backup_board_type_get, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hstm_iso_bkb_type_get() #0 {
entry:
  %hstm_iso_bkb_type_get = alloca i32, align 4
  %0 = bitcast i32* %hstm_iso_bkb_type_get to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.46, i64 0, i64 0))
  %1 = load i32, i32* %hstm_iso_bkb_type_get, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hstm_iso_bkp_ver_get() #0 {
entry:
  %hstm_iso_bkp_ver_get = alloca i32, align 4
  %0 = bitcast i32* %hstm_iso_bkp_ver_get to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i64 0, i64 0))
  %1 = load i32, i32* %hstm_iso_bkp_ver_get, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hstm_iso_common_api_init() #0 {
entry:
  %hstm_iso_common_api_init = alloca i32, align 4
  %0 = bitcast i32* %hstm_iso_common_api_init to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.48, i64 0, i64 0))
  %1 = load i32, i32* %hstm_iso_common_api_init, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hstm_iso_dfx_fic_serdes_check(%struct.stHSTM_CHECK_KEY_COMMON* %check_key, %struct.stHSTM_CHECK_DATA_COMMON* %comm_data) #0 {
entry:
  %check_key.addr = alloca %struct.stHSTM_CHECK_KEY_COMMON*, align 8
  %comm_data.addr = alloca %struct.stHSTM_CHECK_DATA_COMMON*, align 8
  %hstm_iso_dfx_fic_serdes_check = alloca i32, align 4
  store %struct.stHSTM_CHECK_KEY_COMMON* %check_key, %struct.stHSTM_CHECK_KEY_COMMON** %check_key.addr, align 8
  store %struct.stHSTM_CHECK_DATA_COMMON* %comm_data, %struct.stHSTM_CHECK_DATA_COMMON** %comm_data.addr, align 8
  %0 = bitcast i32* %hstm_iso_dfx_fic_serdes_check to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.49, i64 0, i64 0))
  %1 = load i32, i32* %hstm_iso_dfx_fic_serdes_check, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hstm_iso_fei_forward_mode_get() #0 {
entry:
  %hstm_iso_fei_forward_mode_get = alloca i32, align 4
  %0 = bitcast i32* %hstm_iso_fei_forward_mode_get to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.50, i64 0, i64 0))
  %1 = load i32, i32* %hstm_iso_fei_forward_mode_get, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hstm_iso_fenode_protect_mode_get() #0 {
entry:
  %hstm_iso_fenode_protect_mode_get = alloca i32, align 4
  %0 = bitcast i32* %hstm_iso_fenode_protect_mode_get to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.51, i64 0, i64 0))
  %1 = load i32, i32* %hstm_iso_fenode_protect_mode_get, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hstm_iso_forward_mode_get() #0 {
entry:
  %hstm_iso_forward_mode_get = alloca i32, align 4
  %0 = bitcast i32* %hstm_iso_forward_mode_get to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.52, i64 0, i64 0))
  %1 = load i32, i32* %hstm_iso_forward_mode_get, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hstm_iso_hstm_low_latency_mode_env_get(i32* %mode) #0 {
entry:
  %mode.addr = alloca i32*, align 8
  %hstm_iso_hstm_low_latency_mode_env_get = alloca i32, align 4
  store i32* %mode, i32** %mode.addr, align 8
  %0 = bitcast i32* %hstm_iso_hstm_low_latency_mode_env_get to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.53, i64 0, i64 0))
  %1 = load i32, i32* %hstm_iso_hstm_low_latency_mode_env_get, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hstm_iso_hstm_low_latency_mode_env_set(i32 %mode, i32 %trigger) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %trigger.addr = alloca i32, align 4
  %hstm_iso_hstm_low_latency_mode_env_set = alloca i32, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %trigger, i32* %trigger.addr, align 4
  %0 = bitcast i32* %hstm_iso_hstm_low_latency_mode_env_set to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.54, i64 0, i64 0))
  %1 = load i32, i32* %hstm_iso_hstm_low_latency_mode_env_set, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hstm_iso_local_hardtype_get() #0 {
entry:
  %hstm_iso_local_hardtype_get = alloca i32, align 4
  %0 = bitcast i32* %hstm_iso_local_hardtype_get to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.55, i64 0, i64 0))
  %1 = load i32, i32* %hstm_iso_local_hardtype_get, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hstm_iso_msg_fei2feisw(i32 %hstm_msg_type, i32 %uiMsgDataLen, i8* %pstLpuMsgData) #0 {
entry:
  %hstm_msg_type.addr = alloca i32, align 4
  %uiMsgDataLen.addr = alloca i32, align 4
  %pstLpuMsgData.addr = alloca i8*, align 8
  %hstm_iso_msg_fei2feisw = alloca i32, align 4
  store i32 %hstm_msg_type, i32* %hstm_msg_type.addr, align 4
  store i32 %uiMsgDataLen, i32* %uiMsgDataLen.addr, align 4
  store i8* %pstLpuMsgData, i8** %pstLpuMsgData.addr, align 8
  %0 = bitcast i32* %hstm_iso_msg_fei2feisw to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.56, i64 0, i64 0))
  %1 = load i32, i32* %hstm_iso_msg_fei2feisw, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hstm_iso_node_role_is_backup() #0 {
entry:
  %hstm_iso_node_role_is_backup = alloca i32, align 4
  %0 = bitcast i32* %hstm_iso_node_role_is_backup to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.57, i64 0, i64 0))
  %1 = load i32, i32* %hstm_iso_node_role_is_backup, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hstm_iso_nof_tm_get() #0 {
entry:
  %hstm_iso_nof_tm_get = alloca i32, align 4
  %0 = bitcast i32* %hstm_iso_nof_tm_get to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.58, i64 0, i64 0))
  %1 = load i32, i32* %hstm_iso_nof_tm_get, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @hstm_iso_npu_protect_mode() #0 {
entry:
  %hstm_iso_npu_protect_mode = alloca i8, align 1
  call void @klee_make_symbolic(i8* %hstm_iso_npu_protect_mode, i64 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.59, i64 0, i64 0))
  %0 = load i8, i8* %hstm_iso_npu_protect_mode, align 1
  %tobool = trunc i8 %0 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hstm_iso_service_type_get() #0 {
entry:
  %hstm_iso_service_type_get = alloca i32, align 4
  %0 = bitcast i32* %hstm_iso_service_type_get to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.60, i64 0, i64 0))
  %1 = load i32, i32* %hstm_iso_service_type_get, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hstm_iso_slot_no_get() #0 {
entry:
  %hstm_iso_slot_no_get = alloca i32, align 4
  %0 = bitcast i32* %hstm_iso_slot_no_get to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.61, i64 0, i64 0))
  %1 = load i32, i32* %hstm_iso_slot_no_get, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hstm_iso_xfic_state_get(i32 %chip_id, i8* %ctrl_info, i8* %pThis) #0 {
entry:
  %chip_id.addr = alloca i32, align 4
  %ctrl_info.addr = alloca i8*, align 8
  %pThis.addr = alloca i8*, align 8
  %hstm_iso_xfic_state_get = alloca i32, align 4
  store i32 %chip_id, i32* %chip_id.addr, align 4
  store i8* %ctrl_info, i8** %ctrl_info.addr, align 8
  store i8* %pThis, i8** %pThis.addr, align 8
  %0 = bitcast i32* %hstm_iso_xfic_state_get to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.62, i64 0, i64 0))
  %1 = load i32, i32* %hstm_iso_xfic_state_get, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @hstm_sll_free(%struct.SLL* %head) #0 {
entry:
  %head.addr = alloca %struct.SLL*, align 8
  store %struct.SLL* %head, %struct.SLL** %head.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hstm_sll_node_add(%struct.SLL* %head, i8* %usr_data, i32 %data_len) #0 {
entry:
  %head.addr = alloca %struct.SLL*, align 8
  %usr_data.addr = alloca i8*, align 8
  %data_len.addr = alloca i32, align 4
  %hstm_sll_node_add = alloca i32, align 4
  store %struct.SLL* %head, %struct.SLL** %head.addr, align 8
  store i8* %usr_data, i8** %usr_data.addr, align 8
  store i32 %data_len, i32* %data_len.addr, align 4
  %0 = bitcast i32* %hstm_sll_node_add to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i64 0, i64 0))
  %1 = load i32, i32* %hstm_sll_node_add, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hsu_ex_dfx_heart_status_report(i32 %almState, i32 %lastState, i8* %pThis) #0 {
entry:
  %almState.addr = alloca i32, align 4
  %lastState.addr = alloca i32, align 4
  %pThis.addr = alloca i8*, align 8
  %hsu_ex_dfx_heart_status_report = alloca i32, align 4
  store i32 %almState, i32* %almState.addr, align 4
  store i32 %lastState, i32* %lastState.addr, align 4
  store i8* %pThis, i8** %pThis.addr, align 8
  %0 = bitcast i32* %hsu_ex_dfx_heart_status_report to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.64, i64 0, i64 0))
  %1 = load i32, i32* %hsu_ex_dfx_heart_status_report, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hsu_ex_flex_voq_cmd_probe_VR(i8* %p_key, i8* %p_data) #0 {
entry:
  %p_key.addr = alloca i8*, align 8
  %p_data.addr = alloca i8*, align 8
  %hsu_ex_flex_voq_cmd_probe_VR = alloca i32, align 4
  store i8* %p_key, i8** %p_key.addr, align 8
  store i8* %p_data, i8** %p_data.addr, align 8
  %0 = bitcast i32* %hsu_ex_flex_voq_cmd_probe_VR to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.65, i64 0, i64 0))
  %1 = load i32, i32* %hsu_ex_flex_voq_cmd_probe_VR, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hsu_ex_flex_voq_vsq_on_or_off(i32 %chip_id, i32 %vsq_id, i32 %dst_g_fic_id, i32 %tm_port, i32 %valid_flag, i32 %wred_no) #0 {
entry:
  %chip_id.addr = alloca i32, align 4
  %vsq_id.addr = alloca i32, align 4
  %dst_g_fic_id.addr = alloca i32, align 4
  %tm_port.addr = alloca i32, align 4
  %valid_flag.addr = alloca i32, align 4
  %wred_no.addr = alloca i32, align 4
  %hsu_ex_flex_voq_vsq_on_or_off = alloca i32, align 4
  store i32 %chip_id, i32* %chip_id.addr, align 4
  store i32 %vsq_id, i32* %vsq_id.addr, align 4
  store i32 %dst_g_fic_id, i32* %dst_g_fic_id.addr, align 4
  store i32 %tm_port, i32* %tm_port.addr, align 4
  store i32 %valid_flag, i32* %valid_flag.addr, align 4
  store i32 %wred_no, i32* %wred_no.addr, align 4
  %0 = bitcast i32* %hsu_ex_flex_voq_vsq_on_or_off to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.66, i64 0, i64 0))
  %1 = load i32, i32* %hsu_ex_flex_voq_vsq_on_or_off, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hsu_ex_hstm_dfx_alm_report(%struct.HSTM_DFX_ALARM_INFO* %almInfo, i32 %alarmState) #0 {
entry:
  %almInfo.addr = alloca %struct.HSTM_DFX_ALARM_INFO*, align 8
  %alarmState.addr = alloca i32, align 4
  %hsu_ex_hstm_dfx_alm_report = alloca i32, align 4
  store %struct.HSTM_DFX_ALARM_INFO* %almInfo, %struct.HSTM_DFX_ALARM_INFO** %almInfo.addr, align 8
  store i32 %alarmState, i32* %alarmState.addr, align 4
  %0 = bitcast i32* %hsu_ex_hstm_dfx_alm_report to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.67, i64 0, i64 0))
  %1 = load i32, i32* %hsu_ex_hstm_dfx_alm_report, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hsu_ex_hstm_dfx_fe_check_id_get(i32 %ffa_check_id) #0 {
entry:
  %ffa_check_id.addr = alloca i32, align 4
  %hsu_ex_hstm_dfx_fe_check_id_get = alloca i32, align 4
  store i32 %ffa_check_id, i32* %ffa_check_id.addr, align 4
  %0 = bitcast i32* %hsu_ex_hstm_dfx_fe_check_id_get to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.68, i64 0, i64 0))
  %1 = load i32, i32* %hsu_ex_hstm_dfx_fe_check_id_get, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hsu_ex_hstm_dfx_fic_serdes_err_report(i32 %chipId, i32 %linkId, i32 %linkErrType, i8* %pThis) #0 {
entry:
  %chipId.addr = alloca i32, align 4
  %linkId.addr = alloca i32, align 4
  %linkErrType.addr = alloca i32, align 4
  %pThis.addr = alloca i8*, align 8
  %hsu_ex_hstm_dfx_fic_serdes_err_report = alloca i32, align 4
  store i32 %chipId, i32* %chipId.addr, align 4
  store i32 %linkId, i32* %linkId.addr, align 4
  store i32 %linkErrType, i32* %linkErrType.addr, align 4
  store i8* %pThis, i8** %pThis.addr, align 8
  %0 = bitcast i32* %hsu_ex_hstm_dfx_fic_serdes_err_report to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.69, i64 0, i64 0))
  %1 = load i32, i32* %hsu_ex_hstm_dfx_fic_serdes_err_report, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hsu_ex_hstm_sfu_start_flag(i32 %sfu_slot) #0 {
entry:
  %sfu_slot.addr = alloca i32, align 4
  %hsu_ex_hstm_sfu_start_flag = alloca i32, align 4
  store i32 %sfu_slot, i32* %sfu_slot.addr, align 4
  %0 = bitcast i32* %hsu_ex_hstm_sfu_start_flag to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.70, i64 0, i64 0))
  %1 = load i32, i32* %hsu_ex_hstm_sfu_start_flag, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hsu_os_FEI_FLOWPROB_Init(i8* %pThis) #0 {
entry:
  %pThis.addr = alloca i8*, align 8
  %hsu_os_FEI_FLOWPROB_Init = alloca i32, align 4
  store i8* %pThis, i8** %pThis.addr, align 8
  %0 = bitcast i32* %hsu_os_FEI_FLOWPROB_Init to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.71, i64 0, i64 0))
  %1 = load i32, i32* %hsu_os_FEI_FLOWPROB_Init, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hsu_os_FLOWPROB_Start(i32 %cid, i8* %probInfo, i32* %probId) #0 {
entry:
  %cid.addr = alloca i32, align 4
  %probInfo.addr = alloca i8*, align 8
  %probId.addr = alloca i32*, align 8
  %hsu_os_FLOWPROB_Start = alloca i32, align 4
  store i32 %cid, i32* %cid.addr, align 4
  store i8* %probInfo, i8** %probInfo.addr, align 8
  store i32* %probId, i32** %probId.addr, align 8
  %0 = bitcast i32* %hsu_os_FLOWPROB_Start to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.72, i64 0, i64 0))
  %1 = load i32, i32* %hsu_os_FLOWPROB_Start, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @iof_bootinfo_printf(i8* %fmt) #0 {
entry:
  %fmt.addr = alloca i8*, align 8
  store i8* %fmt, i8** %fmt.addr, align 8
  ret void
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
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.73, i64 0, i64 0))
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
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0))
  %1 = load i32, i32* %memset_s, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @snprintf_s(i8* %strDest, i64 %destMax, i64 %count, i8* %format) #0 {
entry:
  %strDest.addr = alloca i8*, align 8
  %destMax.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  %format.addr = alloca i8*, align 8
  %snprintf_s = alloca i32, align 4
  store i8* %strDest, i8** %strDest.addr, align 8
  store i64 %destMax, i64* %destMax.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  %0 = bitcast i32* %snprintf_s to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.75, i64 0, i64 0))
  %1 = load i32, i32* %snprintf_s, align 4
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
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.76, i64 0, i64 0))
  %1 = load i32, i32* %snprintf_truncated_s, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sprintf_s(i8* %strDest, i64 %destMax, i8* %format) #0 {
entry:
  %strDest.addr = alloca i8*, align 8
  %destMax.addr = alloca i64, align 8
  %format.addr = alloca i8*, align 8
  %sprintf_s = alloca i32, align 4
  store i8* %strDest, i8** %strDest.addr, align 8
  store i64 %destMax, i64* %destMax.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  %0 = bitcast i32* %sprintf_s to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i64 0, i64 0))
  %1 = load i32, i32* %sprintf_s, align 4
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
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i64 0, i64 0))
  %1 = load i32, i32* %strcpy_s, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @strncpy_s(i8* %strDest, i64 %destMax, i8* %strSrc, i64 %count) #0 {
entry:
  %strDest.addr = alloca i8*, align 8
  %destMax.addr = alloca i64, align 8
  %strSrc.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %strncpy_s = alloca i32, align 4
  store i8* %strDest, i8** %strDest.addr, align 8
  store i64 %destMax, i64* %destMax.addr, align 8
  store i8* %strSrc, i8** %strSrc.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  %0 = bitcast i32* %strncpy_s to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i64 0, i64 0))
  %1 = load i32, i32* %strncpy_s, align 4
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
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.80, i64 0, i64 0))
  %1 = load i32, i32* %vsnprintf_truncated_s, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fei_hstm_check_ilk_get_tmid_and_ilkid(i32 %fe_id, i32 %fe_ilk_id, i32* %tm_id, i32* %tm_ilk_id) #0 {
entry:
  %fe_id.addr = alloca i32, align 4
  %fe_ilk_id.addr = alloca i32, align 4
  %tm_id.addr = alloca i32*, align 8
  %tm_ilk_id.addr = alloca i32*, align 8
  store i32 %fe_id, i32* %fe_id.addr, align 4
  store i32 %fe_ilk_id, i32* %fe_ilk_id.addr, align 4
  store i32* %tm_id, i32** %tm_id.addr, align 8
  store i32* %tm_ilk_id, i32** %tm_ilk_id.addr, align 8
  %0 = load i32, i32* %fe_id.addr, align 4
  %cmp = icmp ugt i32 %0, 32
  %1 = load i32, i32* %fe_id.addr, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %shl = shl i32 %1, 1
  %2 = load i32*, i32** %tm_id.addr, align 8
  store i32 %shl, i32* %2, align 4
  %3 = load i32, i32* %fe_ilk_id.addr, align 4
  %shl1 = shl i32 %3, 1
  %4 = load i32*, i32** %tm_ilk_id.addr, align 8
  store i32 %shl1, i32* %4, align 4
  br label %if.end7

if.else:                                          ; preds = %entry
  %cmp2 = icmp ule i32 %1, 32
  %5 = load i32, i32* %fe_id.addr, align 4
  %cmp3 = icmp ugt i32 %5, 16
  %or.cond = and i1 %cmp2, %cmp3
  %6 = load i32, i32* %fe_id.addr, align 4
  br i1 %or.cond, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  %mul = mul i32 %6, 2
  %7 = load i32*, i32** %tm_id.addr, align 8
  store i32 %mul, i32* %7, align 4
  %8 = load i32, i32* %fe_ilk_id.addr, align 4
  %9 = load i32*, i32** %tm_ilk_id.addr, align 8
  store i32 %8, i32* %9, align 4
  br label %if.end7

if.else5:                                         ; preds = %if.else
  %10 = load i32*, i32** %tm_id.addr, align 8
  store i32 %6, i32* %10, align 4
  %11 = load i32, i32* %fe_ilk_id.addr, align 4
  %mul6 = mul i32 %11, 2
  %12 = load i32*, i32** %tm_ilk_id.addr, align 8
  store i32 %mul6, i32* %12, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.else5, %if.then
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @hstm_dfx_ilk_lane_isolate_health_info(i32 %bit_info.coerce, i32 %lane_id, i32 %nof_lane) #0 {
entry:
  %bit_info = alloca %union.tagFEI_HSTM_INST_INFO, align 4
  %lane_id.addr = alloca i32, align 4
  %nof_lane.addr = alloca i32, align 4
  %tm_id = alloca i32, align 4
  %core_id = alloca i32, align 4
  %dir = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %union.tagFEI_HSTM_INST_INFO, %union.tagFEI_HSTM_INST_INFO* %bit_info, i32 0, i32 0
  %coerce.dive1 = getelementptr inbounds %struct.tagFEI_HSTM_INST_BIT_INFO, %struct.tagFEI_HSTM_INST_BIT_INFO* %coerce.dive, i32 0, i32 0
  store i32 %bit_info.coerce, i32* %coerce.dive1, align 4
  store i32 %lane_id, i32* %lane_id.addr, align 4
  store i32 %nof_lane, i32* %nof_lane.addr, align 4
  store i32 0, i32* %tm_id, align 4
  store i32 0, i32* %core_id, align 4
  %stInstBitInfo = bitcast %union.tagFEI_HSTM_INST_INFO* %bit_info to %struct.tagFEI_HSTM_INST_BIT_INFO*
  %0 = bitcast %struct.tagFEI_HSTM_INST_BIT_INFO* %stInstBitInfo to i32*
  %bf.load = load i32, i32* %0, align 4
  %bf.lshr = lshr i32 %bf.load, 2
  %bf.clear = and i32 %bf.lshr, 1
  store i32 %bf.clear, i32* %dir, align 4
  %1 = load i32, i32* %lane_id.addr, align 4
  %cmp = icmp ule i32 %1, 32
  %2 = load i32, i32* %nof_lane.addr, align 4
  %cmp2 = icmp ule i32 %2, 16
  %or.cond = or i1 %cmp, %cmp2
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %lane_id.addr, align 4
  %4 = load i32, i32* %tm_id, align 4
  %add = add i32 %4, %3
  store i32 %add, i32* %tm_id, align 4
  %5 = load i32, i32* %nof_lane.addr, align 4
  %6 = load i32, i32* %core_id, align 4
  %add3 = add i32 %6, %5
  store i32 %add3, i32* %core_id, align 4
  %stInstBitInfo4 = bitcast %union.tagFEI_HSTM_INST_INFO* %bit_info to %struct.tagFEI_HSTM_INST_BIT_INFO*
  %7 = bitcast %struct.tagFEI_HSTM_INST_BIT_INFO* %stInstBitInfo4 to i32*
  %bf.load5 = load i32, i32* %7, align 4
  %bf.lshr6 = lshr i32 %bf.load5, 6
  %bf.clear7 = and i32 %bf.lshr6, 3
  %stInstBitInfo8 = bitcast %union.tagFEI_HSTM_INST_INFO* %bit_info to %struct.tagFEI_HSTM_INST_BIT_INFO*
  %8 = bitcast %struct.tagFEI_HSTM_INST_BIT_INFO* %stInstBitInfo8 to i32*
  %bf.load9 = load i32, i32* %8, align 4
  %bf.lshr10 = lshr i32 %bf.load9, 3
  %bf.clear11 = and i32 %bf.lshr10, 7
  %call = call i32 @fei_hstm_check_ilk_get_tmid_and_ilkid(i32 %bf.clear7, i32 %bf.clear11, i32* %tm_id, i32* %core_id)
  br label %if.end23

if.else:                                          ; preds = %entry
  %9 = load i32, i32* %nof_lane.addr, align 4
  %cmp12 = icmp ugt i32 %9, 16
  br i1 %cmp12, label %if.then13, label %if.end23

if.then13:                                        ; preds = %if.else
  %10 = load i32, i32* %lane_id.addr, align 4
  %shr = lshr i32 %10, 1
  store i32 %shr, i32* %tm_id, align 4
  %11 = load i32, i32* %lane_id.addr, align 4
  %12 = load i32, i32* %nof_lane.addr, align 4
  %or = or i32 %11, %12
  store i32 %or, i32* %core_id, align 4
  %stInstBitInfo14 = bitcast %union.tagFEI_HSTM_INST_INFO* %bit_info to %struct.tagFEI_HSTM_INST_BIT_INFO*
  %13 = bitcast %struct.tagFEI_HSTM_INST_BIT_INFO* %stInstBitInfo14 to i32*
  %bf.load15 = load i32, i32* %13, align 4
  %bf.lshr16 = lshr i32 %bf.load15, 6
  %bf.clear17 = and i32 %bf.lshr16, 3
  %stInstBitInfo18 = bitcast %union.tagFEI_HSTM_INST_INFO* %bit_info to %struct.tagFEI_HSTM_INST_BIT_INFO*
  %14 = bitcast %struct.tagFEI_HSTM_INST_BIT_INFO* %stInstBitInfo18 to i32*
  %bf.load19 = load i32, i32* %14, align 4
  %bf.lshr20 = lshr i32 %bf.load19, 3
  %bf.clear21 = and i32 %bf.lshr20, 7
  %call22 = call i32 @fei_hstm_check_ilk_get_tmid_and_ilkid(i32 %bf.clear17, i32 %bf.clear21, i32* %tm_id, i32* %core_id)
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then13, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %bit_info = alloca %union.tagFEI_HSTM_INST_INFO, align 4
  %lane_id = alloca i32, align 4
  %nof_lane = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast %union.tagFEI_HSTM_INST_INFO* %bit_info to i8*
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.81, i64 0, i64 0))
  %1 = bitcast i32* %lane_id to i8*
  call void @klee_make_symbolic(i8* %1, i64 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.82, i64 0, i64 0))
  %2 = bitcast i32* %nof_lane to i8*
  call void @klee_make_symbolic(i8* %2, i64 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.83, i64 0, i64 0))
  %3 = load i32, i32* %lane_id, align 4
  %4 = load i32, i32* %nof_lane, align 4
  %coerce.dive = getelementptr inbounds %union.tagFEI_HSTM_INST_INFO, %union.tagFEI_HSTM_INST_INFO* %bit_info, i32 0, i32 0
  %coerce.dive1 = getelementptr inbounds %struct.tagFEI_HSTM_INST_BIT_INFO, %struct.tagFEI_HSTM_INST_BIT_INFO* %coerce.dive, i32 0, i32 0
  %5 = load i32, i32* %coerce.dive1, align 4
  call void @hstm_dfx_ilk_lane_isolate_health_info(i32 %5, i32 %3, i32 %4)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
