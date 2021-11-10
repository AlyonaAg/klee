; ModuleID = '/home/klee/examples/new/union.bc'
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
@.str.81 = private unnamed_addr constant [3 x i8] c"1\0A\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"2\0A\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c"3\0A\00", align 1
@.str.84 = private unnamed_addr constant [3 x i8] c"!\0A\00", align 1
@.str.85 = private unnamed_addr constant [3 x i8] c"?\0A\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"bit_info\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"lane_id\00", align 1
@.str.88 = private unnamed_addr constant [9 x i8] c"nof_lane\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @FEI_TM_fe_operate_interlaken(i32 %ui_fe_id, i32 %ui_tm_id, i32 %en_operate_type) #0 !dbg !393 {
entry:
  %ui_fe_id.addr = alloca i32, align 4
  %ui_tm_id.addr = alloca i32, align 4
  %en_operate_type.addr = alloca i32, align 4
  %FEI_TM_fe_operate_interlaken = alloca i32, align 4
  store i32 %ui_fe_id, i32* %ui_fe_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ui_fe_id.addr, metadata !401, metadata !DIExpression()), !dbg !402
  store i32 %ui_tm_id, i32* %ui_tm_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ui_tm_id.addr, metadata !403, metadata !DIExpression()), !dbg !404
  store i32 %en_operate_type, i32* %en_operate_type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %en_operate_type.addr, metadata !405, metadata !DIExpression()), !dbg !406
  call void @llvm.dbg.declare(metadata i32* %FEI_TM_fe_operate_interlaken, metadata !407, metadata !DIExpression()), !dbg !408
  %0 = bitcast i32* %FEI_TM_fe_operate_interlaken to i8*, !dbg !409
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0)), !dbg !410
  %1 = load i32, i32* %FEI_TM_fe_operate_interlaken, align 4, !dbg !411
  ret i32 %1, !dbg !412
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_ClearSdsDecErrCnt(i32 %chipId) #0 !dbg !413 {
entry:
  %chipId.addr = alloca i32, align 4
  %HSTM_ISO_ClearSdsDecErrCnt = alloca i32, align 4
  store i32 %chipId, i32* %chipId.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chipId.addr, metadata !416, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.declare(metadata i32* %HSTM_ISO_ClearSdsDecErrCnt, metadata !418, metadata !DIExpression()), !dbg !419
  %0 = bitcast i32* %HSTM_ISO_ClearSdsDecErrCnt to i8*, !dbg !420
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)), !dbg !421
  %1 = load i32, i32* %HSTM_ISO_ClearSdsDecErrCnt, align 4, !dbg !422
  ret i32 %1, !dbg !423
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @HSTM_ISO_DisableFmeaFeatures(i32 %disableType) #0 !dbg !424 {
entry:
  %disableType.addr = alloca i32, align 4
  %HSTM_ISO_DisableFmeaFeatures = alloca i8, align 1
  store i32 %disableType, i32* %disableType.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %disableType.addr, metadata !428, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.declare(metadata i8* %HSTM_ISO_DisableFmeaFeatures, metadata !430, metadata !DIExpression()), !dbg !431
  call void @klee_make_symbolic(i8* %HSTM_ISO_DisableFmeaFeatures, i64 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0)), !dbg !432
  %0 = load i8, i8* %HSTM_ISO_DisableFmeaFeatures, align 1, !dbg !433
  %tobool = trunc i8 %0 to i1, !dbg !433
  ret i1 %tobool, !dbg !434
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_GetCardIdByTbTp(i32 %uiTb, i32 %uiTp, i32* %puiCardId, i32* %puiPortId, i8* %pThis) #0 !dbg !435 {
entry:
  %uiTb.addr = alloca i32, align 4
  %uiTp.addr = alloca i32, align 4
  %puiCardId.addr = alloca i32*, align 8
  %puiPortId.addr = alloca i32*, align 8
  %pThis.addr = alloca i8*, align 8
  %HSTM_ISO_GetCardIdByTbTp = alloca i32, align 4
  store i32 %uiTb, i32* %uiTb.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %uiTb.addr, metadata !439, metadata !DIExpression()), !dbg !440
  store i32 %uiTp, i32* %uiTp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %uiTp.addr, metadata !441, metadata !DIExpression()), !dbg !442
  store i32* %puiCardId, i32** %puiCardId.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %puiCardId.addr, metadata !443, metadata !DIExpression()), !dbg !444
  store i32* %puiPortId, i32** %puiPortId.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %puiPortId.addr, metadata !445, metadata !DIExpression()), !dbg !446
  store i8* %pThis, i8** %pThis.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pThis.addr, metadata !447, metadata !DIExpression()), !dbg !448
  call void @llvm.dbg.declare(metadata i32* %HSTM_ISO_GetCardIdByTbTp, metadata !449, metadata !DIExpression()), !dbg !450
  %0 = bitcast i32* %HSTM_ISO_GetCardIdByTbTp to i8*, !dbg !451
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0)), !dbg !452
  %1 = load i32, i32* %HSTM_ISO_GetCardIdByTbTp, align 4, !dbg !453
  ret i32 %1, !dbg !454
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_GetChassisId() #0 !dbg !455 {
entry:
  %HSTM_ISO_GetChassisId = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %HSTM_ISO_GetChassisId, metadata !458, metadata !DIExpression()), !dbg !459
  %0 = bitcast i32* %HSTM_ISO_GetChassisId to i8*, !dbg !460
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0)), !dbg !461
  %1 = load i32, i32* %HSTM_ISO_GetChassisId, align 4, !dbg !462
  ret i32 %1, !dbg !463
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_GetFeiCompCid() #0 !dbg !464 {
entry:
  %HSTM_ISO_GetFeiCompCid = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %HSTM_ISO_GetFeiCompCid, metadata !465, metadata !DIExpression()), !dbg !466
  %0 = bitcast i32* %HSTM_ISO_GetFeiCompCid to i8*, !dbg !467
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0)), !dbg !468
  %1 = load i32, i32* %HSTM_ISO_GetFeiCompCid, align 4, !dbg !469
  ret i32 %1, !dbg !470
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @HSTM_ISO_GetFeiThis() #0 !dbg !471 {
entry:
  %HSTM_ISO_GetFeiThis = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %HSTM_ISO_GetFeiThis, metadata !473, metadata !DIExpression()), !dbg !474
  store i8* null, i8** %HSTM_ISO_GetFeiThis, align 8, !dbg !475
  %0 = load i8*, i8** %HSTM_ISO_GetFeiThis, align 8, !dbg !476
  ret i8* %0, !dbg !477
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @HSTM_ISO_GetFlowProbData(i8* %inData, %struct.HSTM_FLOWPROB_DATA* %outData) #0 !dbg !478 {
entry:
  %inData.addr = alloca i8*, align 8
  %outData.addr = alloca %struct.HSTM_FLOWPROB_DATA*, align 8
  store i8* %inData, i8** %inData.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %inData.addr, metadata !506, metadata !DIExpression()), !dbg !507
  store %struct.HSTM_FLOWPROB_DATA* %outData, %struct.HSTM_FLOWPROB_DATA** %outData.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.HSTM_FLOWPROB_DATA** %outData.addr, metadata !508, metadata !DIExpression()), !dbg !509
  ret void, !dbg !510
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_GetHsBoardIngressNum(i32 %boardType) #0 !dbg !511 {
entry:
  %boardType.addr = alloca i32, align 4
  %HSTM_ISO_GetHsBoardIngressNum = alloca i32, align 4
  store i32 %boardType, i32* %boardType.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %boardType.addr, metadata !515, metadata !DIExpression()), !dbg !516
  call void @llvm.dbg.declare(metadata i32* %HSTM_ISO_GetHsBoardIngressNum, metadata !517, metadata !DIExpression()), !dbg !518
  %0 = bitcast i32* %HSTM_ISO_GetHsBoardIngressNum to i8*, !dbg !519
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0)), !dbg !520
  %1 = load i32, i32* %HSTM_ISO_GetHsBoardIngressNum, align 4, !dbg !521
  ret i32 %1, !dbg !522
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_GetMulticastLeafInfo(i32 %chip_id, i32* %mlid, i8* %leafinfo) #0 !dbg !523 {
entry:
  %chip_id.addr = alloca i32, align 4
  %mlid.addr = alloca i32*, align 8
  %leafinfo.addr = alloca i8*, align 8
  %HSTM_ISO_GetMulticastLeafInfo = alloca i32, align 4
  store i32 %chip_id, i32* %chip_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chip_id.addr, metadata !526, metadata !DIExpression()), !dbg !527
  store i32* %mlid, i32** %mlid.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %mlid.addr, metadata !528, metadata !DIExpression()), !dbg !529
  store i8* %leafinfo, i8** %leafinfo.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %leafinfo.addr, metadata !530, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.declare(metadata i32* %HSTM_ISO_GetMulticastLeafInfo, metadata !532, metadata !DIExpression()), !dbg !533
  %0 = bitcast i32* %HSTM_ISO_GetMulticastLeafInfo to i8*, !dbg !534
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0)), !dbg !535
  %1 = load i32, i32* %HSTM_ISO_GetMulticastLeafInfo, align 4, !dbg !536
  ret i32 %1, !dbg !537
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_GetOutchannelByTbTp(i32 %tb, i32 %tp, i32* %outChannel, i8* %pThis) #0 !dbg !538 {
entry:
  %tb.addr = alloca i32, align 4
  %tp.addr = alloca i32, align 4
  %outChannel.addr = alloca i32*, align 8
  %pThis.addr = alloca i8*, align 8
  %HSTM_ISO_GetOutchannelByTbTp = alloca i32, align 4
  store i32 %tb, i32* %tb.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %tb.addr, metadata !541, metadata !DIExpression()), !dbg !542
  store i32 %tp, i32* %tp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %tp.addr, metadata !543, metadata !DIExpression()), !dbg !544
  store i32* %outChannel, i32** %outChannel.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %outChannel.addr, metadata !545, metadata !DIExpression()), !dbg !546
  store i8* %pThis, i8** %pThis.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pThis.addr, metadata !547, metadata !DIExpression()), !dbg !548
  call void @llvm.dbg.declare(metadata i32* %HSTM_ISO_GetOutchannelByTbTp, metadata !549, metadata !DIExpression()), !dbg !550
  %0 = bitcast i32* %HSTM_ISO_GetOutchannelByTbTp to i8*, !dbg !551
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0)), !dbg !552
  %1 = load i32, i32* %HSTM_ISO_GetOutchannelByTbTp, align 4, !dbg !553
  ret i32 %1, !dbg !554
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_GetSmCfgInfoByTbTp(i8* %smCfg, i32 %tbId, i32 %tpId) #0 !dbg !555 {
entry:
  %smCfg.addr = alloca i8*, align 8
  %tbId.addr = alloca i32, align 4
  %tpId.addr = alloca i32, align 4
  %HSTM_ISO_GetSmCfgInfoByTbTp = alloca i32, align 4
  store i8* %smCfg, i8** %smCfg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %smCfg.addr, metadata !558, metadata !DIExpression()), !dbg !559
  store i32 %tbId, i32* %tbId.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %tbId.addr, metadata !560, metadata !DIExpression()), !dbg !561
  store i32 %tpId, i32* %tpId.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %tpId.addr, metadata !562, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.declare(metadata i32* %HSTM_ISO_GetSmCfgInfoByTbTp, metadata !564, metadata !DIExpression()), !dbg !565
  %0 = bitcast i32* %HSTM_ISO_GetSmCfgInfoByTbTp to i8*, !dbg !566
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0)), !dbg !567
  %1 = load i32, i32* %HSTM_ISO_GetSmCfgInfoByTbTp, align 4, !dbg !568
  ret i32 %1, !dbg !569
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_GetSqIdByTbTpFromTblm(i32 %chipId, i32 %chipType, i16 zeroext %tb, i16 zeroext %tp) #0 !dbg !570 {
entry:
  %chipId.addr = alloca i32, align 4
  %chipType.addr = alloca i32, align 4
  %tb.addr = alloca i16, align 2
  %tp.addr = alloca i16, align 2
  %HSTM_ISO_GetSqIdByTbTpFromTblm = alloca i32, align 4
  store i32 %chipId, i32* %chipId.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chipId.addr, metadata !576, metadata !DIExpression()), !dbg !577
  store i32 %chipType, i32* %chipType.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chipType.addr, metadata !578, metadata !DIExpression()), !dbg !579
  store i16 %tb, i16* %tb.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %tb.addr, metadata !580, metadata !DIExpression()), !dbg !581
  store i16 %tp, i16* %tp.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %tp.addr, metadata !582, metadata !DIExpression()), !dbg !583
  call void @llvm.dbg.declare(metadata i32* %HSTM_ISO_GetSqIdByTbTpFromTblm, metadata !584, metadata !DIExpression()), !dbg !585
  %0 = bitcast i32* %HSTM_ISO_GetSqIdByTbTpFromTblm to i8*, !dbg !586
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0)), !dbg !587
  %1 = load i32, i32* %HSTM_ISO_GetSqIdByTbTpFromTblm, align 4, !dbg !588
  ret i32 %1, !dbg !589
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_GetTmDeviceCount() #0 !dbg !590 {
entry:
  %HSTM_ISO_GetTmDeviceCount = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %HSTM_ISO_GetTmDeviceCount, metadata !591, metadata !DIExpression()), !dbg !592
  %0 = bitcast i32* %HSTM_ISO_GetTmDeviceCount to i8*, !dbg !593
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0)), !dbg !594
  %1 = load i32, i32* %HSTM_ISO_GetTmDeviceCount, align 4, !dbg !595
  ret i32 %1, !dbg !596
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_GetTmTypeByChipHardType(i32 %tmHardType) #0 !dbg !597 {
entry:
  %tmHardType.addr = alloca i32, align 4
  %HSTM_ISO_GetTmTypeByChipHardType = alloca i32, align 4
  store i32 %tmHardType, i32* %tmHardType.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %tmHardType.addr, metadata !601, metadata !DIExpression()), !dbg !602
  call void @llvm.dbg.declare(metadata i32* %HSTM_ISO_GetTmTypeByChipHardType, metadata !603, metadata !DIExpression()), !dbg !604
  %0 = bitcast i32* %HSTM_ISO_GetTmTypeByChipHardType to i8*, !dbg !605
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0)), !dbg !606
  %1 = load i32, i32* %HSTM_ISO_GetTmTypeByChipHardType, align 4, !dbg !607
  ret i32 %1, !dbg !608
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @HSTM_ISO_IsSr2tB() #0 !dbg !609 {
entry:
  %HSTM_ISO_IsSr2tB = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %HSTM_ISO_IsSr2tB, metadata !612, metadata !DIExpression()), !dbg !613
  call void @klee_make_symbolic(i8* %HSTM_ISO_IsSr2tB, i64 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0)), !dbg !614
  %0 = load i8, i8* %HSTM_ISO_IsSr2tB, align 1, !dbg !615
  %tobool = trunc i8 %0 to i1, !dbg !615
  ret i1 %tobool, !dbg !616
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @HSTM_ISO_IsSr2taB() #0 !dbg !617 {
entry:
  %HSTM_ISO_IsSr2taB = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %HSTM_ISO_IsSr2taB, metadata !618, metadata !DIExpression()), !dbg !619
  call void @klee_make_symbolic(i8* %HSTM_ISO_IsSr2taB, i64 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0)), !dbg !620
  %0 = load i8, i8* %HSTM_ISO_IsSr2taB, align 1, !dbg !621
  %tobool = trunc i8 %0 to i1, !dbg !621
  ret i1 %tobool, !dbg !622
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @HSTM_ISO_IsTmIsolateEnabled() #0 !dbg !623 {
entry:
  %HSTM_ISO_IsTmIsolateEnabled = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %HSTM_ISO_IsTmIsolateEnabled, metadata !624, metadata !DIExpression()), !dbg !625
  call void @klee_make_symbolic(i8* %HSTM_ISO_IsTmIsolateEnabled, i64 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0)), !dbg !626
  %0 = load i8, i8* %HSTM_ISO_IsTmIsolateEnabled, align 1, !dbg !627
  %tobool = trunc i8 %0 to i1, !dbg !627
  ret i1 %tobool, !dbg !628
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @HSTM_ISO_IsVirtualClusterMode() #0 !dbg !629 {
entry:
  %HSTM_ISO_IsVirtualClusterMode = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %HSTM_ISO_IsVirtualClusterMode, metadata !630, metadata !DIExpression()), !dbg !631
  call void @klee_make_symbolic(i8* %HSTM_ISO_IsVirtualClusterMode, i64 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0)), !dbg !632
  %0 = load i8, i8* %HSTM_ISO_IsVirtualClusterMode, align 1, !dbg !633
  %tobool = trunc i8 %0 to i1, !dbg !633
  ret i1 %tobool, !dbg !634
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_IsolateMcTable(i32 %chipId, i32 %srvType, i32 %srvId, i32 %faultSts) #0 !dbg !635 {
entry:
  %chipId.addr = alloca i32, align 4
  %srvType.addr = alloca i32, align 4
  %srvId.addr = alloca i32, align 4
  %faultSts.addr = alloca i32, align 4
  %HSTM_ISO_IsolateMcTable = alloca i32, align 4
  store i32 %chipId, i32* %chipId.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chipId.addr, metadata !638, metadata !DIExpression()), !dbg !639
  store i32 %srvType, i32* %srvType.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %srvType.addr, metadata !640, metadata !DIExpression()), !dbg !641
  store i32 %srvId, i32* %srvId.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %srvId.addr, metadata !642, metadata !DIExpression()), !dbg !643
  store i32 %faultSts, i32* %faultSts.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %faultSts.addr, metadata !644, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.declare(metadata i32* %HSTM_ISO_IsolateMcTable, metadata !646, metadata !DIExpression()), !dbg !647
  %0 = bitcast i32* %HSTM_ISO_IsolateMcTable to i8*, !dbg !648
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0)), !dbg !649
  %1 = load i32, i32* %HSTM_ISO_IsolateMcTable, align 4, !dbg !650
  ret i32 %1, !dbg !651
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_IsolateQosTable(i32 %chipType, i32 %chipId, i32 %srvType, i32 %srvId, i32 %direction, i32 %faultSts) #0 !dbg !652 {
entry:
  %chipType.addr = alloca i32, align 4
  %chipId.addr = alloca i32, align 4
  %srvType.addr = alloca i32, align 4
  %srvId.addr = alloca i32, align 4
  %direction.addr = alloca i32, align 4
  %faultSts.addr = alloca i32, align 4
  %HSTM_ISO_IsolateQosTable = alloca i32, align 4
  store i32 %chipType, i32* %chipType.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chipType.addr, metadata !655, metadata !DIExpression()), !dbg !656
  store i32 %chipId, i32* %chipId.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chipId.addr, metadata !657, metadata !DIExpression()), !dbg !658
  store i32 %srvType, i32* %srvType.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %srvType.addr, metadata !659, metadata !DIExpression()), !dbg !660
  store i32 %srvId, i32* %srvId.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %srvId.addr, metadata !661, metadata !DIExpression()), !dbg !662
  store i32 %direction, i32* %direction.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %direction.addr, metadata !663, metadata !DIExpression()), !dbg !664
  store i32 %faultSts, i32* %faultSts.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %faultSts.addr, metadata !665, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.declare(metadata i32* %HSTM_ISO_IsolateQosTable, metadata !667, metadata !DIExpression()), !dbg !668
  %0 = bitcast i32* %HSTM_ISO_IsolateQosTable to i8*, !dbg !669
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0)), !dbg !670
  %1 = load i32, i32* %HSTM_ISO_IsolateQosTable, align 4, !dbg !671
  ret i32 %1, !dbg !672
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @HSTM_ISO_NotifyChipResetToNp(i32 %chipId) #0 !dbg !673 {
entry:
  %chipId.addr = alloca i32, align 4
  store i32 %chipId, i32* %chipId.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chipId.addr, metadata !676, metadata !DIExpression()), !dbg !677
  ret void, !dbg !678
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @HSTM_ISO_QueryServiceSq(i32 %chipId, i32 %sqId) #0 !dbg !679 {
entry:
  %chipId.addr = alloca i32, align 4
  %sqId.addr = alloca i32, align 4
  %HSTM_ISO_QueryServiceSq = alloca i8, align 1
  store i32 %chipId, i32* %chipId.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chipId.addr, metadata !682, metadata !DIExpression()), !dbg !683
  store i32 %sqId, i32* %sqId.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sqId.addr, metadata !684, metadata !DIExpression()), !dbg !685
  call void @llvm.dbg.declare(metadata i8* %HSTM_ISO_QueryServiceSq, metadata !686, metadata !DIExpression()), !dbg !687
  call void @klee_make_symbolic(i8* %HSTM_ISO_QueryServiceSq, i64 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0)), !dbg !688
  %0 = load i8, i8* %HSTM_ISO_QueryServiceSq, align 1, !dbg !689
  %tobool = trunc i8 %0 to i1, !dbg !689
  ret i1 %tobool, !dbg !690
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @HSTM_ISO_ReportSaidTrafficFallInt(i32 %devId, i32 %intId, i32 %intAddr, i32 %value) #0 !dbg !691 {
entry:
  %devId.addr = alloca i32, align 4
  %intId.addr = alloca i32, align 4
  %intAddr.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store i32 %devId, i32* %devId.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %devId.addr, metadata !694, metadata !DIExpression()), !dbg !695
  store i32 %intId, i32* %intId.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intId.addr, metadata !696, metadata !DIExpression()), !dbg !697
  store i32 %intAddr, i32* %intAddr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intAddr.addr, metadata !698, metadata !DIExpression()), !dbg !699
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !700, metadata !DIExpression()), !dbg !701
  ret void, !dbg !702
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_ReportXficPatchData(%struct.HstmDfxFicPatchData* %patchData) #0 !dbg !703 {
entry:
  %patchData.addr = alloca %struct.HstmDfxFicPatchData*, align 8
  %HSTM_ISO_ReportXficPatchData = alloca i32, align 4
  store %struct.HstmDfxFicPatchData* %patchData, %struct.HstmDfxFicPatchData** %patchData.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.HstmDfxFicPatchData** %patchData.addr, metadata !715, metadata !DIExpression()), !dbg !716
  call void @llvm.dbg.declare(metadata i32* %HSTM_ISO_ReportXficPatchData, metadata !717, metadata !DIExpression()), !dbg !718
  %0 = bitcast i32* %HSTM_ISO_ReportXficPatchData to i8*, !dbg !719
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0)), !dbg !720
  %1 = load i32, i32* %HSTM_ISO_ReportXficPatchData, align 4, !dbg !721
  ret i32 %1, !dbg !722
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @HSTM_ISO_ResetLpu(i32 %cause) #0 !dbg !723 {
entry:
  %cause.addr = alloca i32, align 4
  store i32 %cause, i32* %cause.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cause.addr, metadata !727, metadata !DIExpression()), !dbg !728
  ret void, !dbg !729
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_SendAlarmMsgToFei(i32 %reasonId, i32 %alarmId, i32 %severityType, i32 %alarmState, i8* %param) #0 !dbg !730 {
entry:
  %reasonId.addr = alloca i32, align 4
  %alarmId.addr = alloca i32, align 4
  %severityType.addr = alloca i32, align 4
  %alarmState.addr = alloca i32, align 4
  %param.addr = alloca i8*, align 8
  %HSTM_ISO_SendAlarmMsgToFei = alloca i32, align 4
  store i32 %reasonId, i32* %reasonId.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reasonId.addr, metadata !733, metadata !DIExpression()), !dbg !734
  store i32 %alarmId, i32* %alarmId.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %alarmId.addr, metadata !735, metadata !DIExpression()), !dbg !736
  store i32 %severityType, i32* %severityType.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %severityType.addr, metadata !737, metadata !DIExpression()), !dbg !738
  store i32 %alarmState, i32* %alarmState.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %alarmState.addr, metadata !739, metadata !DIExpression()), !dbg !740
  store i8* %param, i8** %param.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %param.addr, metadata !741, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.declare(metadata i32* %HSTM_ISO_SendAlarmMsgToFei, metadata !743, metadata !DIExpression()), !dbg !744
  %0 = bitcast i32* %HSTM_ISO_SendAlarmMsgToFei to i8*, !dbg !745
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i64 0, i64 0)), !dbg !746
  %1 = load i32, i32* %HSTM_ISO_SendAlarmMsgToFei, align 4, !dbg !747
  ret i32 %1, !dbg !748
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_SendChipIsolateEvent(i32 %chipId, i32 %isoType, i1 zeroext %isNpConnectMultiTm) #0 !dbg !749 {
entry:
  %chipId.addr = alloca i32, align 4
  %isoType.addr = alloca i32, align 4
  %isNpConnectMultiTm.addr = alloca i8, align 1
  %HSTM_ISO_SendChipIsolateEvent = alloca i32, align 4
  store i32 %chipId, i32* %chipId.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chipId.addr, metadata !752, metadata !DIExpression()), !dbg !753
  store i32 %isoType, i32* %isoType.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %isoType.addr, metadata !754, metadata !DIExpression()), !dbg !755
  %frombool = zext i1 %isNpConnectMultiTm to i8
  store i8 %frombool, i8* %isNpConnectMultiTm.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %isNpConnectMultiTm.addr, metadata !756, metadata !DIExpression()), !dbg !757
  call void @llvm.dbg.declare(metadata i32* %HSTM_ISO_SendChipIsolateEvent, metadata !758, metadata !DIExpression()), !dbg !759
  %0 = bitcast i32* %HSTM_ISO_SendChipIsolateEvent to i8*, !dbg !760
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.22, i64 0, i64 0)), !dbg !761
  %1 = load i32, i32* %HSTM_ISO_SendChipIsolateEvent, align 4, !dbg !762
  ret i32 %1, !dbg !763
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_SendCommMsgToFeisw(%struct.tagTLV_FEII_TM_COMM_MSG* %comm_msg, i1 zeroext %flowCtrlMsg, i8* %ext_data, i32 %ext_data_len) #0 !dbg !764 {
entry:
  %comm_msg.addr = alloca %struct.tagTLV_FEII_TM_COMM_MSG*, align 8
  %flowCtrlMsg.addr = alloca i8, align 1
  %ext_data.addr = alloca i8*, align 8
  %ext_data_len.addr = alloca i32, align 4
  %HSTM_ISO_SendCommMsgToFeisw = alloca i32, align 4
  store %struct.tagTLV_FEII_TM_COMM_MSG* %comm_msg, %struct.tagTLV_FEII_TM_COMM_MSG** %comm_msg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tagTLV_FEII_TM_COMM_MSG** %comm_msg.addr, metadata !786, metadata !DIExpression()), !dbg !787
  %frombool = zext i1 %flowCtrlMsg to i8
  store i8 %frombool, i8* %flowCtrlMsg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %flowCtrlMsg.addr, metadata !788, metadata !DIExpression()), !dbg !789
  store i8* %ext_data, i8** %ext_data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ext_data.addr, metadata !790, metadata !DIExpression()), !dbg !791
  store i32 %ext_data_len, i32* %ext_data_len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ext_data_len.addr, metadata !792, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.declare(metadata i32* %HSTM_ISO_SendCommMsgToFeisw, metadata !794, metadata !DIExpression()), !dbg !795
  %0 = bitcast i32* %HSTM_ISO_SendCommMsgToFeisw to i8*, !dbg !796
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i64 0, i64 0)), !dbg !797
  %1 = load i32, i32* %HSTM_ISO_SendCommMsgToFeisw, align 4, !dbg !798
  ret i32 %1, !dbg !799
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @HSTM_ISO_SendIsolateEventToNp(i32 %tmId) #0 !dbg !800 {
entry:
  %tmId.addr = alloca i32, align 4
  store i32 %tmId, i32* %tmId.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %tmId.addr, metadata !801, metadata !DIExpression()), !dbg !802
  ret void, !dbg !803
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_SendLinkErrMsgToFeisw(i32 %uiDevId, i32 %uiLinkId, i32 %eLinkErrType, i8* %pThis) #0 !dbg !804 {
entry:
  %uiDevId.addr = alloca i32, align 4
  %uiLinkId.addr = alloca i32, align 4
  %eLinkErrType.addr = alloca i32, align 4
  %pThis.addr = alloca i8*, align 8
  %HSTM_ISO_SendLinkErrMsgToFeisw = alloca i32, align 4
  store i32 %uiDevId, i32* %uiDevId.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %uiDevId.addr, metadata !807, metadata !DIExpression()), !dbg !808
  store i32 %uiLinkId, i32* %uiLinkId.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %uiLinkId.addr, metadata !809, metadata !DIExpression()), !dbg !810
  store i32 %eLinkErrType, i32* %eLinkErrType.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %eLinkErrType.addr, metadata !811, metadata !DIExpression()), !dbg !812
  store i8* %pThis, i8** %pThis.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pThis.addr, metadata !813, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.declare(metadata i32* %HSTM_ISO_SendLinkErrMsgToFeisw, metadata !815, metadata !DIExpression()), !dbg !816
  %0 = bitcast i32* %HSTM_ISO_SendLinkErrMsgToFeisw to i8*, !dbg !817
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i64 0, i64 0)), !dbg !818
  %1 = load i32, i32* %HSTM_ISO_SendLinkErrMsgToFeisw, align 4, !dbg !819
  ret i32 %1, !dbg !820
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_SendRsqResAlarmMsgToFei(i32 %reasonId, i32 %alarmState, i8* %param) #0 !dbg !821 {
entry:
  %reasonId.addr = alloca i32, align 4
  %alarmState.addr = alloca i32, align 4
  %param.addr = alloca i8*, align 8
  %HSTM_ISO_SendRsqResAlarmMsgToFei = alloca i32, align 4
  store i32 %reasonId, i32* %reasonId.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reasonId.addr, metadata !824, metadata !DIExpression()), !dbg !825
  store i32 %alarmState, i32* %alarmState.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %alarmState.addr, metadata !826, metadata !DIExpression()), !dbg !827
  store i8* %param, i8** %param.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %param.addr, metadata !828, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.declare(metadata i32* %HSTM_ISO_SendRsqResAlarmMsgToFei, metadata !830, metadata !DIExpression()), !dbg !831
  %0 = bitcast i32* %HSTM_ISO_SendRsqResAlarmMsgToFei to i8*, !dbg !832
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i64 0, i64 0)), !dbg !833
  %1 = load i32, i32* %HSTM_ISO_SendRsqResAlarmMsgToFei, align 4, !dbg !834
  ret i32 %1, !dbg !835
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_SendSqIsoEopEvent(i32 %chip_id, i32 %srv_id, i32 %fault_sts) #0 !dbg !836 {
entry:
  %chip_id.addr = alloca i32, align 4
  %srv_id.addr = alloca i32, align 4
  %fault_sts.addr = alloca i32, align 4
  %HSTM_ISO_SendSqIsoEopEvent = alloca i32, align 4
  store i32 %chip_id, i32* %chip_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chip_id.addr, metadata !839, metadata !DIExpression()), !dbg !840
  store i32 %srv_id, i32* %srv_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %srv_id.addr, metadata !841, metadata !DIExpression()), !dbg !842
  store i32 %fault_sts, i32* %fault_sts.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fault_sts.addr, metadata !843, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.declare(metadata i32* %HSTM_ISO_SendSqIsoEopEvent, metadata !845, metadata !DIExpression()), !dbg !846
  %0 = bitcast i32* %HSTM_ISO_SendSqIsoEopEvent to i8*, !dbg !847
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0)), !dbg !848
  %1 = load i32, i32* %HSTM_ISO_SendSqIsoEopEvent, align 4, !dbg !849
  ret i32 %1, !dbg !850
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_SendSqJamEopMsg(i32 %chip_id, i32 %jam_sq_id, i32 %jam_sq_state) #0 !dbg !851 {
entry:
  %chip_id.addr = alloca i32, align 4
  %jam_sq_id.addr = alloca i32, align 4
  %jam_sq_state.addr = alloca i32, align 4
  %HSTM_ISO_SendSqJamEopMsg = alloca i32, align 4
  store i32 %chip_id, i32* %chip_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chip_id.addr, metadata !852, metadata !DIExpression()), !dbg !853
  store i32 %jam_sq_id, i32* %jam_sq_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %jam_sq_id.addr, metadata !854, metadata !DIExpression()), !dbg !855
  store i32 %jam_sq_state, i32* %jam_sq_state.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %jam_sq_state.addr, metadata !856, metadata !DIExpression()), !dbg !857
  call void @llvm.dbg.declare(metadata i32* %HSTM_ISO_SendSqJamEopMsg, metadata !858, metadata !DIExpression()), !dbg !859
  %0 = bitcast i32* %HSTM_ISO_SendSqJamEopMsg to i8*, !dbg !860
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i64 0, i64 0)), !dbg !861
  %1 = load i32, i32* %HSTM_ISO_SendSqJamEopMsg, align 4, !dbg !862
  ret i32 %1, !dbg !863
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @HSTM_ISO_SetFeiThis(i8* %pThis) #0 !dbg !864 {
entry:
  %pThis.addr = alloca i8*, align 8
  store i8* %pThis, i8** %pThis.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pThis.addr, metadata !867, metadata !DIExpression()), !dbg !868
  ret void, !dbg !869
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @HSTM_ISO_SetFlowProbData(%struct.HSTM_FLOWPROB_DATA* %inData, i8* %outData) #0 !dbg !870 {
entry:
  %inData.addr = alloca %struct.HSTM_FLOWPROB_DATA*, align 8
  %outData.addr = alloca i8*, align 8
  store %struct.HSTM_FLOWPROB_DATA* %inData, %struct.HSTM_FLOWPROB_DATA** %inData.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.HSTM_FLOWPROB_DATA** %inData.addr, metadata !875, metadata !DIExpression()), !dbg !876
  store i8* %outData, i8** %outData.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %outData.addr, metadata !877, metadata !DIExpression()), !dbg !878
  ret void, !dbg !879
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_SetLastSaidPingTime() #0 !dbg !880 {
entry:
  %HSTM_ISO_SetLastSaidPingTime = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %HSTM_ISO_SetLastSaidPingTime, metadata !881, metadata !DIExpression()), !dbg !882
  %0 = bitcast i32* %HSTM_ISO_SetLastSaidPingTime to i8*, !dbg !883
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i64 0, i64 0)), !dbg !884
  %1 = load i32, i32* %HSTM_ISO_SetLastSaidPingTime, align 4, !dbg !885
  ret i32 %1, !dbg !886
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_ShowHisPeerTbLinkState(i8* %outBuffer, i32* %outLen, i32 %maxLen, i8* %pThis) #0 !dbg !887 {
entry:
  %outBuffer.addr = alloca i8*, align 8
  %outLen.addr = alloca i32*, align 8
  %maxLen.addr = alloca i32, align 4
  %pThis.addr = alloca i8*, align 8
  %HSTM_ISO_ShowHisPeerTbLinkState = alloca i32, align 4
  store i8* %outBuffer, i8** %outBuffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %outBuffer.addr, metadata !891, metadata !DIExpression()), !dbg !892
  store i32* %outLen, i32** %outLen.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %outLen.addr, metadata !893, metadata !DIExpression()), !dbg !894
  store i32 %maxLen, i32* %maxLen.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %maxLen.addr, metadata !895, metadata !DIExpression()), !dbg !896
  store i8* %pThis, i8** %pThis.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pThis.addr, metadata !897, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.declare(metadata i32* %HSTM_ISO_ShowHisPeerTbLinkState, metadata !899, metadata !DIExpression()), !dbg !900
  %0 = bitcast i32* %HSTM_ISO_ShowHisPeerTbLinkState to i8*, !dbg !901
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i64 0, i64 0)), !dbg !902
  %1 = load i32, i32* %HSTM_ISO_ShowHisPeerTbLinkState, align 4, !dbg !903
  ret i32 %1, !dbg !904
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_ShowLinkSeqInfo(i32 %tlvType, i8* %outBuffer, i32* %outLen, i32 %maxLen, i8* %pThis) #0 !dbg !905 {
entry:
  %tlvType.addr = alloca i32, align 4
  %outBuffer.addr = alloca i8*, align 8
  %outLen.addr = alloca i32*, align 8
  %maxLen.addr = alloca i32, align 4
  %pThis.addr = alloca i8*, align 8
  %HSTM_ISO_ShowLinkSeqInfo = alloca i32, align 4
  store i32 %tlvType, i32* %tlvType.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %tlvType.addr, metadata !908, metadata !DIExpression()), !dbg !909
  store i8* %outBuffer, i8** %outBuffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %outBuffer.addr, metadata !910, metadata !DIExpression()), !dbg !911
  store i32* %outLen, i32** %outLen.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %outLen.addr, metadata !912, metadata !DIExpression()), !dbg !913
  store i32 %maxLen, i32* %maxLen.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %maxLen.addr, metadata !914, metadata !DIExpression()), !dbg !915
  store i8* %pThis, i8** %pThis.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pThis.addr, metadata !916, metadata !DIExpression()), !dbg !917
  call void @llvm.dbg.declare(metadata i32* %HSTM_ISO_ShowLinkSeqInfo, metadata !918, metadata !DIExpression()), !dbg !919
  %0 = bitcast i32* %HSTM_ISO_ShowLinkSeqInfo to i8*, !dbg !920
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i64 0, i64 0)), !dbg !921
  %1 = load i32, i32* %HSTM_ISO_ShowLinkSeqInfo, align 4, !dbg !922
  ret i32 %1, !dbg !923
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_ShowPeerTbLinkState(i8* %outBuffer, i32* %outLen, i32 %maxLen, i8* %pThis) #0 !dbg !924 {
entry:
  %outBuffer.addr = alloca i8*, align 8
  %outLen.addr = alloca i32*, align 8
  %maxLen.addr = alloca i32, align 4
  %pThis.addr = alloca i8*, align 8
  %HSTM_ISO_ShowPeerTbLinkState = alloca i32, align 4
  store i8* %outBuffer, i8** %outBuffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %outBuffer.addr, metadata !925, metadata !DIExpression()), !dbg !926
  store i32* %outLen, i32** %outLen.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %outLen.addr, metadata !927, metadata !DIExpression()), !dbg !928
  store i32 %maxLen, i32* %maxLen.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %maxLen.addr, metadata !929, metadata !DIExpression()), !dbg !930
  store i8* %pThis, i8** %pThis.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pThis.addr, metadata !931, metadata !DIExpression()), !dbg !932
  call void @llvm.dbg.declare(metadata i32* %HSTM_ISO_ShowPeerTbLinkState, metadata !933, metadata !DIExpression()), !dbg !934
  %0 = bitcast i32* %HSTM_ISO_ShowPeerTbLinkState to i8*, !dbg !935
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i64 0, i64 0)), !dbg !936
  %1 = load i32, i32* %HSTM_ISO_ShowPeerTbLinkState, align 4, !dbg !937
  ret i32 %1, !dbg !938
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_SlaveExist() #0 !dbg !939 {
entry:
  %HSTM_ISO_SlaveExist = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %HSTM_ISO_SlaveExist, metadata !940, metadata !DIExpression()), !dbg !941
  %0 = bitcast i32* %HSTM_ISO_SlaveExist to i8*, !dbg !942
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i64 0, i64 0)), !dbg !943
  %1 = load i32, i32* %HSTM_ISO_SlaveExist, align 4, !dbg !944
  ret i32 %1, !dbg !945
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @HSTM_ISO_StartupTimeStamp(i32 %chipId, i32 %action, i8* %desc) #0 !dbg !946 {
entry:
  %chipId.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %desc.addr = alloca i8*, align 8
  store i32 %chipId, i32* %chipId.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chipId.addr, metadata !951, metadata !DIExpression()), !dbg !952
  store i32 %action, i32* %action.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %action.addr, metadata !953, metadata !DIExpression()), !dbg !954
  store i8* %desc, i8** %desc.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %desc.addr, metadata !955, metadata !DIExpression()), !dbg !956
  ret void, !dbg !957
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_TblmAdd(i32 %chipId, i32 %tblId, i8* %saveKey, i32 %keySize, i8* %saveData, i32 %datasize) #0 !dbg !958 {
entry:
  %chipId.addr = alloca i32, align 4
  %tblId.addr = alloca i32, align 4
  %saveKey.addr = alloca i8*, align 8
  %keySize.addr = alloca i32, align 4
  %saveData.addr = alloca i8*, align 8
  %datasize.addr = alloca i32, align 4
  %HSTM_ISO_TblmAdd = alloca i32, align 4
  store i32 %chipId, i32* %chipId.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chipId.addr, metadata !962, metadata !DIExpression()), !dbg !963
  store i32 %tblId, i32* %tblId.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %tblId.addr, metadata !964, metadata !DIExpression()), !dbg !965
  store i8* %saveKey, i8** %saveKey.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %saveKey.addr, metadata !966, metadata !DIExpression()), !dbg !967
  store i32 %keySize, i32* %keySize.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %keySize.addr, metadata !968, metadata !DIExpression()), !dbg !969
  store i8* %saveData, i8** %saveData.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %saveData.addr, metadata !970, metadata !DIExpression()), !dbg !971
  store i32 %datasize, i32* %datasize.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %datasize.addr, metadata !972, metadata !DIExpression()), !dbg !973
  call void @llvm.dbg.declare(metadata i32* %HSTM_ISO_TblmAdd, metadata !974, metadata !DIExpression()), !dbg !975
  %0 = bitcast i32* %HSTM_ISO_TblmAdd to i8*, !dbg !976
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i64 0, i64 0)), !dbg !977
  %1 = load i32, i32* %HSTM_ISO_TblmAdd, align 4, !dbg !978
  ret i32 %1, !dbg !979
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_TblmDelete(i32 %chipId, i32 %tblId, i8* %delKey, i32 %keySize) #0 !dbg !980 {
entry:
  %chipId.addr = alloca i32, align 4
  %tblId.addr = alloca i32, align 4
  %delKey.addr = alloca i8*, align 8
  %keySize.addr = alloca i32, align 4
  %HSTM_ISO_TblmDelete = alloca i32, align 4
  store i32 %chipId, i32* %chipId.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chipId.addr, metadata !983, metadata !DIExpression()), !dbg !984
  store i32 %tblId, i32* %tblId.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %tblId.addr, metadata !985, metadata !DIExpression()), !dbg !986
  store i8* %delKey, i8** %delKey.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %delKey.addr, metadata !987, metadata !DIExpression()), !dbg !988
  store i32 %keySize, i32* %keySize.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %keySize.addr, metadata !989, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.declare(metadata i32* %HSTM_ISO_TblmDelete, metadata !991, metadata !DIExpression()), !dbg !992
  %0 = bitcast i32* %HSTM_ISO_TblmDelete to i8*, !dbg !993
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i64 0, i64 0)), !dbg !994
  %1 = load i32, i32* %HSTM_ISO_TblmDelete, align 4, !dbg !995
  ret i32 %1, !dbg !996
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_TblmQuery(i32 %chipId, i32 %tblId, i8* %queryKey, i32 %keySize, i8* %queryData, i32 %datasize) #0 !dbg !997 {
entry:
  %chipId.addr = alloca i32, align 4
  %tblId.addr = alloca i32, align 4
  %queryKey.addr = alloca i8*, align 8
  %keySize.addr = alloca i32, align 4
  %queryData.addr = alloca i8*, align 8
  %datasize.addr = alloca i32, align 4
  %HSTM_ISO_TblmQuery = alloca i32, align 4
  store i32 %chipId, i32* %chipId.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chipId.addr, metadata !998, metadata !DIExpression()), !dbg !999
  store i32 %tblId, i32* %tblId.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %tblId.addr, metadata !1000, metadata !DIExpression()), !dbg !1001
  store i8* %queryKey, i8** %queryKey.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %queryKey.addr, metadata !1002, metadata !DIExpression()), !dbg !1003
  store i32 %keySize, i32* %keySize.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %keySize.addr, metadata !1004, metadata !DIExpression()), !dbg !1005
  store i8* %queryData, i8** %queryData.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %queryData.addr, metadata !1006, metadata !DIExpression()), !dbg !1007
  store i32 %datasize, i32* %datasize.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %datasize.addr, metadata !1008, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.declare(metadata i32* %HSTM_ISO_TblmQuery, metadata !1010, metadata !DIExpression()), !dbg !1011
  %0 = bitcast i32* %HSTM_ISO_TblmQuery to i8*, !dbg !1012
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i64 0, i64 0)), !dbg !1013
  %1 = load i32, i32* %HSTM_ISO_TblmQuery, align 4, !dbg !1014
  ret i32 %1, !dbg !1015
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_ISO_TblmQueryWithoutChip(i32 %tblId, i8* %queryKey, i32 %keySize, i8* %queryData, i32 %dataSize) #0 !dbg !1016 {
entry:
  %tblId.addr = alloca i32, align 4
  %queryKey.addr = alloca i8*, align 8
  %keySize.addr = alloca i32, align 4
  %queryData.addr = alloca i8*, align 8
  %dataSize.addr = alloca i32, align 4
  %HSTM_ISO_TblmQueryWithoutChip = alloca i32, align 4
  store i32 %tblId, i32* %tblId.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %tblId.addr, metadata !1019, metadata !DIExpression()), !dbg !1020
  store i8* %queryKey, i8** %queryKey.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %queryKey.addr, metadata !1021, metadata !DIExpression()), !dbg !1022
  store i32 %keySize, i32* %keySize.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %keySize.addr, metadata !1023, metadata !DIExpression()), !dbg !1024
  store i8* %queryData, i8** %queryData.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %queryData.addr, metadata !1025, metadata !DIExpression()), !dbg !1026
  store i32 %dataSize, i32* %dataSize.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dataSize.addr, metadata !1027, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.declare(metadata i32* %HSTM_ISO_TblmQueryWithoutChip, metadata !1029, metadata !DIExpression()), !dbg !1030
  %0 = bitcast i32* %HSTM_ISO_TblmQueryWithoutChip to i8*, !dbg !1031
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.36, i64 0, i64 0)), !dbg !1032
  %1 = load i32, i32* %HSTM_ISO_TblmQueryWithoutChip, align 4, !dbg !1033
  ret i32 %1, !dbg !1034
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HSTM_S3BP_GetBpStatus(i32 %chip_id) #0 !dbg !1035 {
entry:
  %chip_id.addr = alloca i32, align 4
  %HSTM_S3BP_GetBpStatus = alloca i32, align 4
  store i32 %chip_id, i32* %chip_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chip_id.addr, metadata !1036, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.declare(metadata i32* %HSTM_S3BP_GetBpStatus, metadata !1038, metadata !DIExpression()), !dbg !1039
  %0 = bitcast i32* %HSTM_S3BP_GetBpStatus to i8*, !dbg !1040
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.37, i64 0, i64 0)), !dbg !1041
  %1 = load i32, i32* %HSTM_S3BP_GetBpStatus, align 4, !dbg !1042
  ret i32 %1, !dbg !1043
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @HSTM_S3BP_IsSfuBpClosed(i32 %chipId) #0 !dbg !1044 {
entry:
  %chipId.addr = alloca i32, align 4
  %HSTM_S3BP_IsSfuBpClosed = alloca i8, align 1
  store i32 %chipId, i32* %chipId.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chipId.addr, metadata !1045, metadata !DIExpression()), !dbg !1046
  call void @llvm.dbg.declare(metadata i8* %HSTM_S3BP_IsSfuBpClosed, metadata !1047, metadata !DIExpression()), !dbg !1048
  call void @klee_make_symbolic(i8* %HSTM_S3BP_IsSfuBpClosed, i64 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.38, i64 0, i64 0)), !dbg !1049
  %0 = load i8, i8* %HSTM_S3BP_IsSfuBpClosed, align 1, !dbg !1050
  %tobool = trunc i8 %0 to i1, !dbg !1050
  ret i1 %tobool, !dbg !1051
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @SSP_DiagLog(i32 %hAppCid, i32 %uiInfoId, i8* %pcFmt) #0 !dbg !1052 {
entry:
  %hAppCid.addr = alloca i32, align 4
  %uiInfoId.addr = alloca i32, align 4
  %pcFmt.addr = alloca i8*, align 8
  %SSP_DiagLog = alloca i32, align 4
  store i32 %hAppCid, i32* %hAppCid.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %hAppCid.addr, metadata !1055, metadata !DIExpression()), !dbg !1056
  store i32 %uiInfoId, i32* %uiInfoId.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %uiInfoId.addr, metadata !1057, metadata !DIExpression()), !dbg !1058
  store i8* %pcFmt, i8** %pcFmt.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pcFmt.addr, metadata !1059, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.declare(metadata i32* %SSP_DiagLog, metadata !1061, metadata !DIExpression()), !dbg !1062
  %0 = bitcast i32* %SSP_DiagLog to i8*, !dbg !1063
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i64 0, i64 0)), !dbg !1064
  %1 = load i32, i32* %SSP_DiagLog, align 4, !dbg !1065
  ret i32 %1, !dbg !1066
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fei_hstm_dfx_s3bp_check(%struct.stHSTM_CHECK_KEY_COMMON* %comm_key, %struct.stHSTM_CHECK_DATA_COMMON* %comm_data) #0 !dbg !1067 {
entry:
  %comm_key.addr = alloca %struct.stHSTM_CHECK_KEY_COMMON*, align 8
  %comm_data.addr = alloca %struct.stHSTM_CHECK_DATA_COMMON*, align 8
  %fei_hstm_dfx_s3bp_check = alloca i32, align 4
  store %struct.stHSTM_CHECK_KEY_COMMON* %comm_key, %struct.stHSTM_CHECK_KEY_COMMON** %comm_key.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stHSTM_CHECK_KEY_COMMON** %comm_key.addr, metadata !1086, metadata !DIExpression()), !dbg !1087
  store %struct.stHSTM_CHECK_DATA_COMMON* %comm_data, %struct.stHSTM_CHECK_DATA_COMMON** %comm_data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stHSTM_CHECK_DATA_COMMON** %comm_data.addr, metadata !1088, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.declare(metadata i32* %fei_hstm_dfx_s3bp_check, metadata !1090, metadata !DIExpression()), !dbg !1091
  %0 = bitcast i32* %fei_hstm_dfx_s3bp_check to i8*, !dbg !1092
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.40, i64 0, i64 0)), !dbg !1093
  %1 = load i32, i32* %fei_hstm_dfx_s3bp_check, align 4, !dbg !1094
  ret i32 %1, !dbg !1095
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hstm_dfx_fic_linklost_local_data_init_by_tblm() #0 !dbg !1096 {
entry:
  %hstm_dfx_fic_linklost_local_data_init_by_tblm = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %hstm_dfx_fic_linklost_local_data_init_by_tblm, metadata !1097, metadata !DIExpression()), !dbg !1098
  %0 = bitcast i32* %hstm_dfx_fic_linklost_local_data_init_by_tblm to i8*, !dbg !1099
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.41, i64 0, i64 0)), !dbg !1100
  %1 = load i32, i32* %hstm_dfx_fic_linklost_local_data_init_by_tblm, align 4, !dbg !1101
  ret i32 %1, !dbg !1102
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @hstm_dfx_fic_linklost_turn_fsm_into_array() #0 !dbg !1103 {
entry:
  ret void, !dbg !1106
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hstm_dfx_hal_heart_check(%struct.stHSTM_CHECK_KEY_COMMON* %check_key, %struct.stHSTM_CHECK_DATA_COMMON* %comm_data) #0 !dbg !1107 {
entry:
  %check_key.addr = alloca %struct.stHSTM_CHECK_KEY_COMMON*, align 8
  %comm_data.addr = alloca %struct.stHSTM_CHECK_DATA_COMMON*, align 8
  %hstm_dfx_hal_heart_check = alloca i32, align 4
  store %struct.stHSTM_CHECK_KEY_COMMON* %check_key, %struct.stHSTM_CHECK_KEY_COMMON** %check_key.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stHSTM_CHECK_KEY_COMMON** %check_key.addr, metadata !1108, metadata !DIExpression()), !dbg !1109
  store %struct.stHSTM_CHECK_DATA_COMMON* %comm_data, %struct.stHSTM_CHECK_DATA_COMMON** %comm_data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stHSTM_CHECK_DATA_COMMON** %comm_data.addr, metadata !1110, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.declare(metadata i32* %hstm_dfx_hal_heart_check, metadata !1112, metadata !DIExpression()), !dbg !1113
  %0 = bitcast i32* %hstm_dfx_hal_heart_check to i8*, !dbg !1114
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0)), !dbg !1115
  %1 = load i32, i32* %hstm_dfx_hal_heart_check, align 4, !dbg !1116
  ret i32 %1, !dbg !1117
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hstm_dfx_s3bp_main_check_timer_proc(i8* %pMsg, i8* %pThis) #0 !dbg !1118 {
entry:
  %pMsg.addr = alloca i8*, align 8
  %pThis.addr = alloca i8*, align 8
  %hstm_dfx_s3bp_main_check_timer_proc = alloca i32, align 4
  store i8* %pMsg, i8** %pMsg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pMsg.addr, metadata !1121, metadata !DIExpression()), !dbg !1122
  store i8* %pThis, i8** %pThis.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pThis.addr, metadata !1123, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.declare(metadata i32* %hstm_dfx_s3bp_main_check_timer_proc, metadata !1125, metadata !DIExpression()), !dbg !1126
  %0 = bitcast i32* %hstm_dfx_s3bp_main_check_timer_proc to i8*, !dbg !1127
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.43, i64 0, i64 0)), !dbg !1128
  %1 = load i32, i32* %hstm_dfx_s3bp_main_check_timer_proc, align 4, !dbg !1129
  ret i32 %1, !dbg !1130
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hstm_dfx_s3bp_msg_proc(i8* %pMsg, i8* %pThis) #0 !dbg !1131 {
entry:
  %pMsg.addr = alloca i8*, align 8
  %pThis.addr = alloca i8*, align 8
  %hstm_dfx_s3bp_msg_proc = alloca i32, align 4
  store i8* %pMsg, i8** %pMsg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pMsg.addr, metadata !1132, metadata !DIExpression()), !dbg !1133
  store i8* %pThis, i8** %pThis.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pThis.addr, metadata !1134, metadata !DIExpression()), !dbg !1135
  call void @llvm.dbg.declare(metadata i32* %hstm_dfx_s3bp_msg_proc, metadata !1136, metadata !DIExpression()), !dbg !1137
  %0 = bitcast i32* %hstm_dfx_s3bp_msg_proc to i8*, !dbg !1138
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.44, i64 0, i64 0)), !dbg !1139
  %1 = load i32, i32* %hstm_dfx_s3bp_msg_proc, align 4, !dbg !1140
  ret i32 %1, !dbg !1141
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hstm_iso_backup_board_type_get() #0 !dbg !1142 {
entry:
  %hstm_iso_backup_board_type_get = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %hstm_iso_backup_board_type_get, metadata !1143, metadata !DIExpression()), !dbg !1144
  %0 = bitcast i32* %hstm_iso_backup_board_type_get to i8*, !dbg !1145
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.45, i64 0, i64 0)), !dbg !1146
  %1 = load i32, i32* %hstm_iso_backup_board_type_get, align 4, !dbg !1147
  ret i32 %1, !dbg !1148
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hstm_iso_bkb_type_get() #0 !dbg !1149 {
entry:
  %hstm_iso_bkb_type_get = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %hstm_iso_bkb_type_get, metadata !1150, metadata !DIExpression()), !dbg !1151
  %0 = bitcast i32* %hstm_iso_bkb_type_get to i8*, !dbg !1152
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.46, i64 0, i64 0)), !dbg !1153
  %1 = load i32, i32* %hstm_iso_bkb_type_get, align 4, !dbg !1154
  ret i32 %1, !dbg !1155
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hstm_iso_bkp_ver_get() #0 !dbg !1156 {
entry:
  %hstm_iso_bkp_ver_get = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %hstm_iso_bkp_ver_get, metadata !1157, metadata !DIExpression()), !dbg !1158
  %0 = bitcast i32* %hstm_iso_bkp_ver_get to i8*, !dbg !1159
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i64 0, i64 0)), !dbg !1160
  %1 = load i32, i32* %hstm_iso_bkp_ver_get, align 4, !dbg !1161
  ret i32 %1, !dbg !1162
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hstm_iso_common_api_init() #0 !dbg !1163 {
entry:
  %hstm_iso_common_api_init = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %hstm_iso_common_api_init, metadata !1164, metadata !DIExpression()), !dbg !1165
  %0 = bitcast i32* %hstm_iso_common_api_init to i8*, !dbg !1166
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.48, i64 0, i64 0)), !dbg !1167
  %1 = load i32, i32* %hstm_iso_common_api_init, align 4, !dbg !1168
  ret i32 %1, !dbg !1169
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hstm_iso_dfx_fic_serdes_check(%struct.stHSTM_CHECK_KEY_COMMON* %check_key, %struct.stHSTM_CHECK_DATA_COMMON* %comm_data) #0 !dbg !1170 {
entry:
  %check_key.addr = alloca %struct.stHSTM_CHECK_KEY_COMMON*, align 8
  %comm_data.addr = alloca %struct.stHSTM_CHECK_DATA_COMMON*, align 8
  %hstm_iso_dfx_fic_serdes_check = alloca i32, align 4
  store %struct.stHSTM_CHECK_KEY_COMMON* %check_key, %struct.stHSTM_CHECK_KEY_COMMON** %check_key.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stHSTM_CHECK_KEY_COMMON** %check_key.addr, metadata !1171, metadata !DIExpression()), !dbg !1172
  store %struct.stHSTM_CHECK_DATA_COMMON* %comm_data, %struct.stHSTM_CHECK_DATA_COMMON** %comm_data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.stHSTM_CHECK_DATA_COMMON** %comm_data.addr, metadata !1173, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.declare(metadata i32* %hstm_iso_dfx_fic_serdes_check, metadata !1175, metadata !DIExpression()), !dbg !1176
  %0 = bitcast i32* %hstm_iso_dfx_fic_serdes_check to i8*, !dbg !1177
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.49, i64 0, i64 0)), !dbg !1178
  %1 = load i32, i32* %hstm_iso_dfx_fic_serdes_check, align 4, !dbg !1179
  ret i32 %1, !dbg !1180
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hstm_iso_fei_forward_mode_get() #0 !dbg !1181 {
entry:
  %hstm_iso_fei_forward_mode_get = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %hstm_iso_fei_forward_mode_get, metadata !1185, metadata !DIExpression()), !dbg !1186
  %0 = bitcast i32* %hstm_iso_fei_forward_mode_get to i8*, !dbg !1187
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.50, i64 0, i64 0)), !dbg !1188
  %1 = load i32, i32* %hstm_iso_fei_forward_mode_get, align 4, !dbg !1189
  ret i32 %1, !dbg !1190
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hstm_iso_fenode_protect_mode_get() #0 !dbg !1191 {
entry:
  %hstm_iso_fenode_protect_mode_get = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %hstm_iso_fenode_protect_mode_get, metadata !1192, metadata !DIExpression()), !dbg !1193
  %0 = bitcast i32* %hstm_iso_fenode_protect_mode_get to i8*, !dbg !1194
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.51, i64 0, i64 0)), !dbg !1195
  %1 = load i32, i32* %hstm_iso_fenode_protect_mode_get, align 4, !dbg !1196
  ret i32 %1, !dbg !1197
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hstm_iso_forward_mode_get() #0 !dbg !1198 {
entry:
  %hstm_iso_forward_mode_get = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %hstm_iso_forward_mode_get, metadata !1199, metadata !DIExpression()), !dbg !1200
  %0 = bitcast i32* %hstm_iso_forward_mode_get to i8*, !dbg !1201
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.52, i64 0, i64 0)), !dbg !1202
  %1 = load i32, i32* %hstm_iso_forward_mode_get, align 4, !dbg !1203
  ret i32 %1, !dbg !1204
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hstm_iso_hstm_low_latency_mode_env_get(i32* %mode) #0 !dbg !1205 {
entry:
  %mode.addr = alloca i32*, align 8
  %hstm_iso_hstm_low_latency_mode_env_get = alloca i32, align 4
  store i32* %mode, i32** %mode.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %mode.addr, metadata !1208, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.declare(metadata i32* %hstm_iso_hstm_low_latency_mode_env_get, metadata !1210, metadata !DIExpression()), !dbg !1211
  %0 = bitcast i32* %hstm_iso_hstm_low_latency_mode_env_get to i8*, !dbg !1212
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.53, i64 0, i64 0)), !dbg !1213
  %1 = load i32, i32* %hstm_iso_hstm_low_latency_mode_env_get, align 4, !dbg !1214
  ret i32 %1, !dbg !1215
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hstm_iso_hstm_low_latency_mode_env_set(i32 %mode, i32 %trigger) #0 !dbg !1216 {
entry:
  %mode.addr = alloca i32, align 4
  %trigger.addr = alloca i32, align 4
  %hstm_iso_hstm_low_latency_mode_env_set = alloca i32, align 4
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !1219, metadata !DIExpression()), !dbg !1220
  store i32 %trigger, i32* %trigger.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %trigger.addr, metadata !1221, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.declare(metadata i32* %hstm_iso_hstm_low_latency_mode_env_set, metadata !1223, metadata !DIExpression()), !dbg !1224
  %0 = bitcast i32* %hstm_iso_hstm_low_latency_mode_env_set to i8*, !dbg !1225
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.54, i64 0, i64 0)), !dbg !1226
  %1 = load i32, i32* %hstm_iso_hstm_low_latency_mode_env_set, align 4, !dbg !1227
  ret i32 %1, !dbg !1228
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hstm_iso_local_hardtype_get() #0 !dbg !1229 {
entry:
  %hstm_iso_local_hardtype_get = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %hstm_iso_local_hardtype_get, metadata !1232, metadata !DIExpression()), !dbg !1233
  %0 = bitcast i32* %hstm_iso_local_hardtype_get to i8*, !dbg !1234
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.55, i64 0, i64 0)), !dbg !1235
  %1 = load i32, i32* %hstm_iso_local_hardtype_get, align 4, !dbg !1236
  ret i32 %1, !dbg !1237
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hstm_iso_msg_fei2feisw(i32 %hstm_msg_type, i32 %uiMsgDataLen, i8* %pstLpuMsgData) #0 !dbg !1238 {
entry:
  %hstm_msg_type.addr = alloca i32, align 4
  %uiMsgDataLen.addr = alloca i32, align 4
  %pstLpuMsgData.addr = alloca i8*, align 8
  %hstm_iso_msg_fei2feisw = alloca i32, align 4
  store i32 %hstm_msg_type, i32* %hstm_msg_type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %hstm_msg_type.addr, metadata !1241, metadata !DIExpression()), !dbg !1242
  store i32 %uiMsgDataLen, i32* %uiMsgDataLen.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %uiMsgDataLen.addr, metadata !1243, metadata !DIExpression()), !dbg !1244
  store i8* %pstLpuMsgData, i8** %pstLpuMsgData.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pstLpuMsgData.addr, metadata !1245, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.declare(metadata i32* %hstm_iso_msg_fei2feisw, metadata !1247, metadata !DIExpression()), !dbg !1248
  %0 = bitcast i32* %hstm_iso_msg_fei2feisw to i8*, !dbg !1249
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.56, i64 0, i64 0)), !dbg !1250
  %1 = load i32, i32* %hstm_iso_msg_fei2feisw, align 4, !dbg !1251
  ret i32 %1, !dbg !1252
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hstm_iso_node_role_is_backup() #0 !dbg !1253 {
entry:
  %hstm_iso_node_role_is_backup = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %hstm_iso_node_role_is_backup, metadata !1254, metadata !DIExpression()), !dbg !1255
  %0 = bitcast i32* %hstm_iso_node_role_is_backup to i8*, !dbg !1256
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.57, i64 0, i64 0)), !dbg !1257
  %1 = load i32, i32* %hstm_iso_node_role_is_backup, align 4, !dbg !1258
  ret i32 %1, !dbg !1259
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hstm_iso_nof_tm_get() #0 !dbg !1260 {
entry:
  %hstm_iso_nof_tm_get = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %hstm_iso_nof_tm_get, metadata !1261, metadata !DIExpression()), !dbg !1262
  %0 = bitcast i32* %hstm_iso_nof_tm_get to i8*, !dbg !1263
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.58, i64 0, i64 0)), !dbg !1264
  %1 = load i32, i32* %hstm_iso_nof_tm_get, align 4, !dbg !1265
  ret i32 %1, !dbg !1266
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @hstm_iso_npu_protect_mode() #0 !dbg !1267 {
entry:
  %hstm_iso_npu_protect_mode = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %hstm_iso_npu_protect_mode, metadata !1268, metadata !DIExpression()), !dbg !1269
  call void @klee_make_symbolic(i8* %hstm_iso_npu_protect_mode, i64 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.59, i64 0, i64 0)), !dbg !1270
  %0 = load i8, i8* %hstm_iso_npu_protect_mode, align 1, !dbg !1271
  %tobool = trunc i8 %0 to i1, !dbg !1271
  ret i1 %tobool, !dbg !1272
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hstm_iso_service_type_get() #0 !dbg !1273 {
entry:
  %hstm_iso_service_type_get = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %hstm_iso_service_type_get, metadata !1274, metadata !DIExpression()), !dbg !1275
  %0 = bitcast i32* %hstm_iso_service_type_get to i8*, !dbg !1276
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.60, i64 0, i64 0)), !dbg !1277
  %1 = load i32, i32* %hstm_iso_service_type_get, align 4, !dbg !1278
  ret i32 %1, !dbg !1279
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hstm_iso_slot_no_get() #0 !dbg !1280 {
entry:
  %hstm_iso_slot_no_get = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %hstm_iso_slot_no_get, metadata !1281, metadata !DIExpression()), !dbg !1282
  %0 = bitcast i32* %hstm_iso_slot_no_get to i8*, !dbg !1283
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.61, i64 0, i64 0)), !dbg !1284
  %1 = load i32, i32* %hstm_iso_slot_no_get, align 4, !dbg !1285
  ret i32 %1, !dbg !1286
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hstm_iso_xfic_state_get(i32 %chip_id, i8* %ctrl_info, i8* %pThis) #0 !dbg !1287 {
entry:
  %chip_id.addr = alloca i32, align 4
  %ctrl_info.addr = alloca i8*, align 8
  %pThis.addr = alloca i8*, align 8
  %hstm_iso_xfic_state_get = alloca i32, align 4
  store i32 %chip_id, i32* %chip_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chip_id.addr, metadata !1290, metadata !DIExpression()), !dbg !1291
  store i8* %ctrl_info, i8** %ctrl_info.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ctrl_info.addr, metadata !1292, metadata !DIExpression()), !dbg !1293
  store i8* %pThis, i8** %pThis.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pThis.addr, metadata !1294, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.declare(metadata i32* %hstm_iso_xfic_state_get, metadata !1296, metadata !DIExpression()), !dbg !1297
  %0 = bitcast i32* %hstm_iso_xfic_state_get to i8*, !dbg !1298
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.62, i64 0, i64 0)), !dbg !1299
  %1 = load i32, i32* %hstm_iso_xfic_state_get, align 4, !dbg !1300
  ret i32 %1, !dbg !1301
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @hstm_sll_free(%struct.SLL* %head) #0 !dbg !1302 {
entry:
  %head.addr = alloca %struct.SLL*, align 8
  store %struct.SLL* %head, %struct.SLL** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.SLL** %head.addr, metadata !1321, metadata !DIExpression()), !dbg !1322
  ret void, !dbg !1323
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hstm_sll_node_add(%struct.SLL* %head, i8* %usr_data, i32 %data_len) #0 !dbg !1324 {
entry:
  %head.addr = alloca %struct.SLL*, align 8
  %usr_data.addr = alloca i8*, align 8
  %data_len.addr = alloca i32, align 4
  %hstm_sll_node_add = alloca i32, align 4
  store %struct.SLL* %head, %struct.SLL** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.SLL** %head.addr, metadata !1327, metadata !DIExpression()), !dbg !1328
  store i8* %usr_data, i8** %usr_data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %usr_data.addr, metadata !1329, metadata !DIExpression()), !dbg !1330
  store i32 %data_len, i32* %data_len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data_len.addr, metadata !1331, metadata !DIExpression()), !dbg !1332
  call void @llvm.dbg.declare(metadata i32* %hstm_sll_node_add, metadata !1333, metadata !DIExpression()), !dbg !1334
  %0 = bitcast i32* %hstm_sll_node_add to i8*, !dbg !1335
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i64 0, i64 0)), !dbg !1336
  %1 = load i32, i32* %hstm_sll_node_add, align 4, !dbg !1337
  ret i32 %1, !dbg !1338
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hsu_ex_dfx_heart_status_report(i32 %almState, i32 %lastState, i8* %pThis) #0 !dbg !1339 {
entry:
  %almState.addr = alloca i32, align 4
  %lastState.addr = alloca i32, align 4
  %pThis.addr = alloca i8*, align 8
  %hsu_ex_dfx_heart_status_report = alloca i32, align 4
  store i32 %almState, i32* %almState.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %almState.addr, metadata !1342, metadata !DIExpression()), !dbg !1343
  store i32 %lastState, i32* %lastState.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %lastState.addr, metadata !1344, metadata !DIExpression()), !dbg !1345
  store i8* %pThis, i8** %pThis.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pThis.addr, metadata !1346, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.declare(metadata i32* %hsu_ex_dfx_heart_status_report, metadata !1348, metadata !DIExpression()), !dbg !1349
  %0 = bitcast i32* %hsu_ex_dfx_heart_status_report to i8*, !dbg !1350
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.64, i64 0, i64 0)), !dbg !1351
  %1 = load i32, i32* %hsu_ex_dfx_heart_status_report, align 4, !dbg !1352
  ret i32 %1, !dbg !1353
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hsu_ex_flex_voq_cmd_probe_VR(i8* %p_key, i8* %p_data) #0 !dbg !1354 {
entry:
  %p_key.addr = alloca i8*, align 8
  %p_data.addr = alloca i8*, align 8
  %hsu_ex_flex_voq_cmd_probe_VR = alloca i32, align 4
  store i8* %p_key, i8** %p_key.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p_key.addr, metadata !1355, metadata !DIExpression()), !dbg !1356
  store i8* %p_data, i8** %p_data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p_data.addr, metadata !1357, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.declare(metadata i32* %hsu_ex_flex_voq_cmd_probe_VR, metadata !1359, metadata !DIExpression()), !dbg !1360
  %0 = bitcast i32* %hsu_ex_flex_voq_cmd_probe_VR to i8*, !dbg !1361
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.65, i64 0, i64 0)), !dbg !1362
  %1 = load i32, i32* %hsu_ex_flex_voq_cmd_probe_VR, align 4, !dbg !1363
  ret i32 %1, !dbg !1364
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hsu_ex_flex_voq_vsq_on_or_off(i32 %chip_id, i32 %vsq_id, i32 %dst_g_fic_id, i32 %tm_port, i32 %valid_flag, i32 %wred_no) #0 !dbg !1365 {
entry:
  %chip_id.addr = alloca i32, align 4
  %vsq_id.addr = alloca i32, align 4
  %dst_g_fic_id.addr = alloca i32, align 4
  %tm_port.addr = alloca i32, align 4
  %valid_flag.addr = alloca i32, align 4
  %wred_no.addr = alloca i32, align 4
  %hsu_ex_flex_voq_vsq_on_or_off = alloca i32, align 4
  store i32 %chip_id, i32* %chip_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chip_id.addr, metadata !1366, metadata !DIExpression()), !dbg !1367
  store i32 %vsq_id, i32* %vsq_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %vsq_id.addr, metadata !1368, metadata !DIExpression()), !dbg !1369
  store i32 %dst_g_fic_id, i32* %dst_g_fic_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dst_g_fic_id.addr, metadata !1370, metadata !DIExpression()), !dbg !1371
  store i32 %tm_port, i32* %tm_port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %tm_port.addr, metadata !1372, metadata !DIExpression()), !dbg !1373
  store i32 %valid_flag, i32* %valid_flag.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %valid_flag.addr, metadata !1374, metadata !DIExpression()), !dbg !1375
  store i32 %wred_no, i32* %wred_no.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wred_no.addr, metadata !1376, metadata !DIExpression()), !dbg !1377
  call void @llvm.dbg.declare(metadata i32* %hsu_ex_flex_voq_vsq_on_or_off, metadata !1378, metadata !DIExpression()), !dbg !1379
  %0 = bitcast i32* %hsu_ex_flex_voq_vsq_on_or_off to i8*, !dbg !1380
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.66, i64 0, i64 0)), !dbg !1381
  %1 = load i32, i32* %hsu_ex_flex_voq_vsq_on_or_off, align 4, !dbg !1382
  ret i32 %1, !dbg !1383
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hsu_ex_hstm_dfx_alm_report(%struct.HSTM_DFX_ALARM_INFO* %almInfo, i32 %alarmState) #0 !dbg !1384 {
entry:
  %almInfo.addr = alloca %struct.HSTM_DFX_ALARM_INFO*, align 8
  %alarmState.addr = alloca i32, align 4
  %hsu_ex_hstm_dfx_alm_report = alloca i32, align 4
  store %struct.HSTM_DFX_ALARM_INFO* %almInfo, %struct.HSTM_DFX_ALARM_INFO** %almInfo.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.HSTM_DFX_ALARM_INFO** %almInfo.addr, metadata !1405, metadata !DIExpression()), !dbg !1406
  store i32 %alarmState, i32* %alarmState.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %alarmState.addr, metadata !1407, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.declare(metadata i32* %hsu_ex_hstm_dfx_alm_report, metadata !1409, metadata !DIExpression()), !dbg !1410
  %0 = bitcast i32* %hsu_ex_hstm_dfx_alm_report to i8*, !dbg !1411
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.67, i64 0, i64 0)), !dbg !1412
  %1 = load i32, i32* %hsu_ex_hstm_dfx_alm_report, align 4, !dbg !1413
  ret i32 %1, !dbg !1414
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hsu_ex_hstm_dfx_fe_check_id_get(i32 %ffa_check_id) #0 !dbg !1415 {
entry:
  %ffa_check_id.addr = alloca i32, align 4
  %hsu_ex_hstm_dfx_fe_check_id_get = alloca i32, align 4
  store i32 %ffa_check_id, i32* %ffa_check_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ffa_check_id.addr, metadata !1416, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.declare(metadata i32* %hsu_ex_hstm_dfx_fe_check_id_get, metadata !1418, metadata !DIExpression()), !dbg !1419
  %0 = bitcast i32* %hsu_ex_hstm_dfx_fe_check_id_get to i8*, !dbg !1420
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.68, i64 0, i64 0)), !dbg !1421
  %1 = load i32, i32* %hsu_ex_hstm_dfx_fe_check_id_get, align 4, !dbg !1422
  ret i32 %1, !dbg !1423
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hsu_ex_hstm_dfx_fic_serdes_err_report(i32 %chipId, i32 %linkId, i32 %linkErrType, i8* %pThis) #0 !dbg !1424 {
entry:
  %chipId.addr = alloca i32, align 4
  %linkId.addr = alloca i32, align 4
  %linkErrType.addr = alloca i32, align 4
  %pThis.addr = alloca i8*, align 8
  %hsu_ex_hstm_dfx_fic_serdes_err_report = alloca i32, align 4
  store i32 %chipId, i32* %chipId.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chipId.addr, metadata !1427, metadata !DIExpression()), !dbg !1428
  store i32 %linkId, i32* %linkId.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %linkId.addr, metadata !1429, metadata !DIExpression()), !dbg !1430
  store i32 %linkErrType, i32* %linkErrType.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %linkErrType.addr, metadata !1431, metadata !DIExpression()), !dbg !1432
  store i8* %pThis, i8** %pThis.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pThis.addr, metadata !1433, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.declare(metadata i32* %hsu_ex_hstm_dfx_fic_serdes_err_report, metadata !1435, metadata !DIExpression()), !dbg !1436
  %0 = bitcast i32* %hsu_ex_hstm_dfx_fic_serdes_err_report to i8*, !dbg !1437
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.69, i64 0, i64 0)), !dbg !1438
  %1 = load i32, i32* %hsu_ex_hstm_dfx_fic_serdes_err_report, align 4, !dbg !1439
  ret i32 %1, !dbg !1440
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hsu_ex_hstm_sfu_start_flag(i32 %sfu_slot) #0 !dbg !1441 {
entry:
  %sfu_slot.addr = alloca i32, align 4
  %hsu_ex_hstm_sfu_start_flag = alloca i32, align 4
  store i32 %sfu_slot, i32* %sfu_slot.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sfu_slot.addr, metadata !1442, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.declare(metadata i32* %hsu_ex_hstm_sfu_start_flag, metadata !1444, metadata !DIExpression()), !dbg !1445
  %0 = bitcast i32* %hsu_ex_hstm_sfu_start_flag to i8*, !dbg !1446
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.70, i64 0, i64 0)), !dbg !1447
  %1 = load i32, i32* %hsu_ex_hstm_sfu_start_flag, align 4, !dbg !1448
  ret i32 %1, !dbg !1449
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hsu_os_FEI_FLOWPROB_Init(i8* %pThis) #0 !dbg !1450 {
entry:
  %pThis.addr = alloca i8*, align 8
  %hsu_os_FEI_FLOWPROB_Init = alloca i32, align 4
  store i8* %pThis, i8** %pThis.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pThis.addr, metadata !1453, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.declare(metadata i32* %hsu_os_FEI_FLOWPROB_Init, metadata !1455, metadata !DIExpression()), !dbg !1456
  %0 = bitcast i32* %hsu_os_FEI_FLOWPROB_Init to i8*, !dbg !1457
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.71, i64 0, i64 0)), !dbg !1458
  %1 = load i32, i32* %hsu_os_FEI_FLOWPROB_Init, align 4, !dbg !1459
  ret i32 %1, !dbg !1460
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hsu_os_FLOWPROB_Start(i32 %cid, i8* %probInfo, i32* %probId) #0 !dbg !1461 {
entry:
  %cid.addr = alloca i32, align 4
  %probInfo.addr = alloca i8*, align 8
  %probId.addr = alloca i32*, align 8
  %hsu_os_FLOWPROB_Start = alloca i32, align 4
  store i32 %cid, i32* %cid.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cid.addr, metadata !1464, metadata !DIExpression()), !dbg !1465
  store i8* %probInfo, i8** %probInfo.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %probInfo.addr, metadata !1466, metadata !DIExpression()), !dbg !1467
  store i32* %probId, i32** %probId.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %probId.addr, metadata !1468, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.declare(metadata i32* %hsu_os_FLOWPROB_Start, metadata !1470, metadata !DIExpression()), !dbg !1471
  %0 = bitcast i32* %hsu_os_FLOWPROB_Start to i8*, !dbg !1472
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.72, i64 0, i64 0)), !dbg !1473
  %1 = load i32, i32* %hsu_os_FLOWPROB_Start, align 4, !dbg !1474
  ret i32 %1, !dbg !1475
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @iof_bootinfo_printf(i8* %fmt) #0 !dbg !1476 {
entry:
  %fmt.addr = alloca i8*, align 8
  store i8* %fmt, i8** %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %fmt.addr, metadata !1479, metadata !DIExpression()), !dbg !1480
  ret void, !dbg !1481
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @memcpy_s(i8* %dest, i64 %destMax, i8* %src, i64 %count) #0 !dbg !1482 {
entry:
  %dest.addr = alloca i8*, align 8
  %destMax.addr = alloca i64, align 8
  %src.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %memcpy_s = alloca i32, align 4
  store i8* %dest, i8** %dest.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dest.addr, metadata !1485, metadata !DIExpression()), !dbg !1486
  store i64 %destMax, i64* %destMax.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %destMax.addr, metadata !1487, metadata !DIExpression()), !dbg !1488
  store i8* %src, i8** %src.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %src.addr, metadata !1489, metadata !DIExpression()), !dbg !1490
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !1491, metadata !DIExpression()), !dbg !1492
  call void @llvm.dbg.declare(metadata i32* %memcpy_s, metadata !1493, metadata !DIExpression()), !dbg !1494
  %0 = bitcast i32* %memcpy_s to i8*, !dbg !1495
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.73, i64 0, i64 0)), !dbg !1496
  %1 = load i32, i32* %memcpy_s, align 4, !dbg !1497
  ret i32 %1, !dbg !1498
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @memset_s(i8* %dest, i64 %destMax, i32 %c, i64 %count) #0 !dbg !1499 {
entry:
  %dest.addr = alloca i8*, align 8
  %destMax.addr = alloca i64, align 8
  %c.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  %memset_s = alloca i32, align 4
  store i8* %dest, i8** %dest.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dest.addr, metadata !1502, metadata !DIExpression()), !dbg !1503
  store i64 %destMax, i64* %destMax.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %destMax.addr, metadata !1504, metadata !DIExpression()), !dbg !1505
  store i32 %c, i32* %c.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !1506, metadata !DIExpression()), !dbg !1507
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !1508, metadata !DIExpression()), !dbg !1509
  call void @llvm.dbg.declare(metadata i32* %memset_s, metadata !1510, metadata !DIExpression()), !dbg !1511
  %0 = bitcast i32* %memset_s to i8*, !dbg !1512
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0)), !dbg !1513
  %1 = load i32, i32* %memset_s, align 4, !dbg !1514
  ret i32 %1, !dbg !1515
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @snprintf_s(i8* %strDest, i64 %destMax, i64 %count, i8* %format) #0 !dbg !1516 {
entry:
  %strDest.addr = alloca i8*, align 8
  %destMax.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  %format.addr = alloca i8*, align 8
  %snprintf_s = alloca i32, align 4
  store i8* %strDest, i8** %strDest.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %strDest.addr, metadata !1519, metadata !DIExpression()), !dbg !1520
  store i64 %destMax, i64* %destMax.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %destMax.addr, metadata !1521, metadata !DIExpression()), !dbg !1522
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !1523, metadata !DIExpression()), !dbg !1524
  store i8* %format, i8** %format.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %format.addr, metadata !1525, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.declare(metadata i32* %snprintf_s, metadata !1527, metadata !DIExpression()), !dbg !1528
  %0 = bitcast i32* %snprintf_s to i8*, !dbg !1529
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.75, i64 0, i64 0)), !dbg !1530
  %1 = load i32, i32* %snprintf_s, align 4, !dbg !1531
  ret i32 %1, !dbg !1532
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @snprintf_truncated_s(i8* %strDest, i64 %destMax, i8* %format) #0 !dbg !1533 {
entry:
  %strDest.addr = alloca i8*, align 8
  %destMax.addr = alloca i64, align 8
  %format.addr = alloca i8*, align 8
  %snprintf_truncated_s = alloca i32, align 4
  store i8* %strDest, i8** %strDest.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %strDest.addr, metadata !1536, metadata !DIExpression()), !dbg !1537
  store i64 %destMax, i64* %destMax.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %destMax.addr, metadata !1538, metadata !DIExpression()), !dbg !1539
  store i8* %format, i8** %format.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %format.addr, metadata !1540, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.declare(metadata i32* %snprintf_truncated_s, metadata !1542, metadata !DIExpression()), !dbg !1543
  %0 = bitcast i32* %snprintf_truncated_s to i8*, !dbg !1544
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.76, i64 0, i64 0)), !dbg !1545
  %1 = load i32, i32* %snprintf_truncated_s, align 4, !dbg !1546
  ret i32 %1, !dbg !1547
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sprintf_s(i8* %strDest, i64 %destMax, i8* %format) #0 !dbg !1548 {
entry:
  %strDest.addr = alloca i8*, align 8
  %destMax.addr = alloca i64, align 8
  %format.addr = alloca i8*, align 8
  %sprintf_s = alloca i32, align 4
  store i8* %strDest, i8** %strDest.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %strDest.addr, metadata !1549, metadata !DIExpression()), !dbg !1550
  store i64 %destMax, i64* %destMax.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %destMax.addr, metadata !1551, metadata !DIExpression()), !dbg !1552
  store i8* %format, i8** %format.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %format.addr, metadata !1553, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.declare(metadata i32* %sprintf_s, metadata !1555, metadata !DIExpression()), !dbg !1556
  %0 = bitcast i32* %sprintf_s to i8*, !dbg !1557
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i64 0, i64 0)), !dbg !1558
  %1 = load i32, i32* %sprintf_s, align 4, !dbg !1559
  ret i32 %1, !dbg !1560
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @strcpy_s(i8* %strDest, i64 %destMax, i8* %strSrc) #0 !dbg !1561 {
entry:
  %strDest.addr = alloca i8*, align 8
  %destMax.addr = alloca i64, align 8
  %strSrc.addr = alloca i8*, align 8
  %strcpy_s = alloca i32, align 4
  store i8* %strDest, i8** %strDest.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %strDest.addr, metadata !1562, metadata !DIExpression()), !dbg !1563
  store i64 %destMax, i64* %destMax.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %destMax.addr, metadata !1564, metadata !DIExpression()), !dbg !1565
  store i8* %strSrc, i8** %strSrc.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %strSrc.addr, metadata !1566, metadata !DIExpression()), !dbg !1567
  call void @llvm.dbg.declare(metadata i32* %strcpy_s, metadata !1568, metadata !DIExpression()), !dbg !1569
  %0 = bitcast i32* %strcpy_s to i8*, !dbg !1570
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i64 0, i64 0)), !dbg !1571
  %1 = load i32, i32* %strcpy_s, align 4, !dbg !1572
  ret i32 %1, !dbg !1573
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @strncpy_s(i8* %strDest, i64 %destMax, i8* %strSrc, i64 %count) #0 !dbg !1574 {
entry:
  %strDest.addr = alloca i8*, align 8
  %destMax.addr = alloca i64, align 8
  %strSrc.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %strncpy_s = alloca i32, align 4
  store i8* %strDest, i8** %strDest.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %strDest.addr, metadata !1577, metadata !DIExpression()), !dbg !1578
  store i64 %destMax, i64* %destMax.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %destMax.addr, metadata !1579, metadata !DIExpression()), !dbg !1580
  store i8* %strSrc, i8** %strSrc.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %strSrc.addr, metadata !1581, metadata !DIExpression()), !dbg !1582
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !1583, metadata !DIExpression()), !dbg !1584
  call void @llvm.dbg.declare(metadata i32* %strncpy_s, metadata !1585, metadata !DIExpression()), !dbg !1586
  %0 = bitcast i32* %strncpy_s to i8*, !dbg !1587
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i64 0, i64 0)), !dbg !1588
  %1 = load i32, i32* %strncpy_s, align 4, !dbg !1589
  ret i32 %1, !dbg !1590
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vsnprintf_truncated_s(i8* %strDest, i64 %destMax, i8* %format, i32 %argList) #0 !dbg !1591 {
entry:
  %strDest.addr = alloca i8*, align 8
  %destMax.addr = alloca i64, align 8
  %format.addr = alloca i8*, align 8
  %argList.addr = alloca i32, align 4
  %vsnprintf_truncated_s = alloca i32, align 4
  store i8* %strDest, i8** %strDest.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %strDest.addr, metadata !1594, metadata !DIExpression()), !dbg !1595
  store i64 %destMax, i64* %destMax.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %destMax.addr, metadata !1596, metadata !DIExpression()), !dbg !1597
  store i8* %format, i8** %format.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %format.addr, metadata !1598, metadata !DIExpression()), !dbg !1599
  store i32 %argList, i32* %argList.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argList.addr, metadata !1600, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.declare(metadata i32* %vsnprintf_truncated_s, metadata !1602, metadata !DIExpression()), !dbg !1603
  %0 = bitcast i32* %vsnprintf_truncated_s to i8*, !dbg !1604
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.80, i64 0, i64 0)), !dbg !1605
  %1 = load i32, i32* %vsnprintf_truncated_s, align 4, !dbg !1606
  ret i32 %1, !dbg !1607
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fei_hstm_check_ilk_get_tmid_and_ilkid(i32 %fe_id, i32 %fe_ilk_id, i32* %tm_id, i32* %tm_ilk_id) #0 !dbg !1608 {
entry:
  %fe_id.addr = alloca i32, align 4
  %fe_ilk_id.addr = alloca i32, align 4
  %tm_id.addr = alloca i32*, align 8
  %tm_ilk_id.addr = alloca i32*, align 8
  store i32 %fe_id, i32* %fe_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fe_id.addr, metadata !1611, metadata !DIExpression()), !dbg !1612
  store i32 %fe_ilk_id, i32* %fe_ilk_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fe_ilk_id.addr, metadata !1613, metadata !DIExpression()), !dbg !1614
  store i32* %tm_id, i32** %tm_id.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %tm_id.addr, metadata !1615, metadata !DIExpression()), !dbg !1616
  store i32* %tm_ilk_id, i32** %tm_ilk_id.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %tm_ilk_id.addr, metadata !1617, metadata !DIExpression()), !dbg !1618
  %0 = load i32, i32* %fe_id.addr, align 4, !dbg !1619
  %cmp = icmp ugt i32 %0, 32, !dbg !1621
  br i1 %cmp, label %if.then, label %if.else, !dbg !1622

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i64 0, i64 0)), !dbg !1623
  %1 = load i32, i32* %fe_id.addr, align 4, !dbg !1625
  %shl = shl i32 %1, 1, !dbg !1626
  %2 = load i32*, i32** %tm_id.addr, align 8, !dbg !1627
  store i32 %shl, i32* %2, align 4, !dbg !1628
  %3 = load i32, i32* %fe_ilk_id.addr, align 4, !dbg !1629
  %shl1 = shl i32 %3, 1, !dbg !1630
  %4 = load i32*, i32** %tm_ilk_id.addr, align 8, !dbg !1631
  store i32 %shl1, i32* %4, align 4, !dbg !1632
  br label %if.end9, !dbg !1633

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %fe_id.addr, align 4, !dbg !1634
  %cmp2 = icmp ule i32 %5, 32, !dbg !1636
  %6 = load i32, i32* %fe_id.addr, align 4, !dbg !1637
  %cmp3 = icmp ugt i32 %6, 16, !dbg !1638
  %or.cond = and i1 %cmp2, %cmp3, !dbg !1639
  br i1 %or.cond, label %if.then4, label %if.else6, !dbg !1639

if.then4:                                         ; preds = %if.else
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i64 0, i64 0)), !dbg !1640
  %7 = load i32, i32* %fe_id.addr, align 4, !dbg !1642
  %mul = mul i32 %7, 2, !dbg !1643
  %8 = load i32*, i32** %tm_id.addr, align 8, !dbg !1644
  store i32 %mul, i32* %8, align 4, !dbg !1645
  %9 = load i32, i32* %fe_ilk_id.addr, align 4, !dbg !1646
  %10 = load i32*, i32** %tm_ilk_id.addr, align 8, !dbg !1647
  store i32 %9, i32* %10, align 4, !dbg !1648
  br label %if.end9, !dbg !1649

if.else6:                                         ; preds = %if.else
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i64 0, i64 0)), !dbg !1650
  %11 = load i32, i32* %fe_id.addr, align 4, !dbg !1652
  %12 = load i32*, i32** %tm_id.addr, align 8, !dbg !1653
  store i32 %11, i32* %12, align 4, !dbg !1654
  %13 = load i32, i32* %fe_ilk_id.addr, align 4, !dbg !1655
  %mul8 = mul i32 %13, 2, !dbg !1656
  %14 = load i32*, i32** %tm_ilk_id.addr, align 8, !dbg !1657
  store i32 %mul8, i32* %14, align 4, !dbg !1658
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.else6, %if.then
  ret i32 0, !dbg !1659
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @hstm_dfx_ilk_lane_isolate_health_info(i32 %bit_info.coerce, i32 %lane_id, i32 %nof_lane) #0 !dbg !1660 {
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
  call void @llvm.dbg.declare(metadata %union.tagFEI_HSTM_INST_INFO* %bit_info, metadata !1674, metadata !DIExpression()), !dbg !1675
  store i32 %lane_id, i32* %lane_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %lane_id.addr, metadata !1676, metadata !DIExpression()), !dbg !1677
  store i32 %nof_lane, i32* %nof_lane.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nof_lane.addr, metadata !1678, metadata !DIExpression()), !dbg !1679
  call void @llvm.dbg.declare(metadata i32* %tm_id, metadata !1680, metadata !DIExpression()), !dbg !1681
  store i32 0, i32* %tm_id, align 4, !dbg !1681
  call void @llvm.dbg.declare(metadata i32* %core_id, metadata !1682, metadata !DIExpression()), !dbg !1683
  store i32 0, i32* %core_id, align 4, !dbg !1683
  call void @llvm.dbg.declare(metadata i32* %dir, metadata !1684, metadata !DIExpression()), !dbg !1685
  %stInstBitInfo = bitcast %union.tagFEI_HSTM_INST_INFO* %bit_info to %struct.tagFEI_HSTM_INST_BIT_INFO*, !dbg !1686
  %0 = bitcast %struct.tagFEI_HSTM_INST_BIT_INFO* %stInstBitInfo to i32*, !dbg !1687
  %bf.load = load i32, i32* %0, align 4, !dbg !1687
  %bf.lshr = lshr i32 %bf.load, 2, !dbg !1687
  %bf.clear = and i32 %bf.lshr, 1, !dbg !1687
  store i32 %bf.clear, i32* %dir, align 4, !dbg !1685
  %1 = load i32, i32* %lane_id.addr, align 4, !dbg !1688
  %cmp = icmp ule i32 %1, 32, !dbg !1690
  %2 = load i32, i32* %nof_lane.addr, align 4, !dbg !1691
  %cmp2 = icmp ule i32 %2, 16, !dbg !1692
  %or.cond = or i1 %cmp, %cmp2, !dbg !1693
  br i1 %or.cond, label %if.then, label %if.else, !dbg !1693

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.84, i64 0, i64 0)), !dbg !1694
  %3 = load i32, i32* %lane_id.addr, align 4, !dbg !1696
  %4 = load i32, i32* %tm_id, align 4, !dbg !1697
  %add = add i32 %4, %3, !dbg !1697
  store i32 %add, i32* %tm_id, align 4, !dbg !1697
  %5 = load i32, i32* %nof_lane.addr, align 4, !dbg !1698
  %6 = load i32, i32* %core_id, align 4, !dbg !1699
  %add3 = add i32 %6, %5, !dbg !1699
  store i32 %add3, i32* %core_id, align 4, !dbg !1699
  %stInstBitInfo4 = bitcast %union.tagFEI_HSTM_INST_INFO* %bit_info to %struct.tagFEI_HSTM_INST_BIT_INFO*, !dbg !1700
  %7 = bitcast %struct.tagFEI_HSTM_INST_BIT_INFO* %stInstBitInfo4 to i32*, !dbg !1701
  %bf.load5 = load i32, i32* %7, align 4, !dbg !1701
  %bf.lshr6 = lshr i32 %bf.load5, 6, !dbg !1701
  %bf.clear7 = and i32 %bf.lshr6, 3, !dbg !1701
  %stInstBitInfo8 = bitcast %union.tagFEI_HSTM_INST_INFO* %bit_info to %struct.tagFEI_HSTM_INST_BIT_INFO*, !dbg !1702
  %8 = bitcast %struct.tagFEI_HSTM_INST_BIT_INFO* %stInstBitInfo8 to i32*, !dbg !1703
  %bf.load9 = load i32, i32* %8, align 4, !dbg !1703
  %bf.lshr10 = lshr i32 %bf.load9, 3, !dbg !1703
  %bf.clear11 = and i32 %bf.lshr10, 7, !dbg !1703
  %call12 = call i32 @fei_hstm_check_ilk_get_tmid_and_ilkid(i32 %bf.clear7, i32 %bf.clear11, i32* %tm_id, i32* %core_id), !dbg !1704
  br label %if.end25, !dbg !1705

if.else:                                          ; preds = %entry
  %9 = load i32, i32* %nof_lane.addr, align 4, !dbg !1706
  %cmp13 = icmp ugt i32 %9, 16, !dbg !1708
  br i1 %cmp13, label %if.then14, label %if.end25, !dbg !1709

if.then14:                                        ; preds = %if.else
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i64 0, i64 0)), !dbg !1710
  %10 = load i32, i32* %lane_id.addr, align 4, !dbg !1712
  %shr = lshr i32 %10, 1, !dbg !1713
  store i32 %shr, i32* %tm_id, align 4, !dbg !1714
  %11 = load i32, i32* %lane_id.addr, align 4, !dbg !1715
  %12 = load i32, i32* %nof_lane.addr, align 4, !dbg !1716
  %or = or i32 %11, %12, !dbg !1717
  store i32 %or, i32* %core_id, align 4, !dbg !1718
  %stInstBitInfo16 = bitcast %union.tagFEI_HSTM_INST_INFO* %bit_info to %struct.tagFEI_HSTM_INST_BIT_INFO*, !dbg !1719
  %13 = bitcast %struct.tagFEI_HSTM_INST_BIT_INFO* %stInstBitInfo16 to i32*, !dbg !1720
  %bf.load17 = load i32, i32* %13, align 4, !dbg !1720
  %bf.lshr18 = lshr i32 %bf.load17, 6, !dbg !1720
  %bf.clear19 = and i32 %bf.lshr18, 3, !dbg !1720
  %stInstBitInfo20 = bitcast %union.tagFEI_HSTM_INST_INFO* %bit_info to %struct.tagFEI_HSTM_INST_BIT_INFO*, !dbg !1721
  %14 = bitcast %struct.tagFEI_HSTM_INST_BIT_INFO* %stInstBitInfo20 to i32*, !dbg !1722
  %bf.load21 = load i32, i32* %14, align 4, !dbg !1722
  %bf.lshr22 = lshr i32 %bf.load21, 3, !dbg !1722
  %bf.clear23 = and i32 %bf.lshr22, 7, !dbg !1722
  %call24 = call i32 @fei_hstm_check_ilk_get_tmid_and_ilkid(i32 %bf.clear19, i32 %bf.clear23, i32* %tm_id, i32* %core_id), !dbg !1723
  br label %if.end25, !dbg !1724

if.end25:                                         ; preds = %if.else, %if.then14, %if.then
  ret void, !dbg !1725
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !1726 {
entry:
  %retval = alloca i32, align 4
  %bit_info = alloca %union.tagFEI_HSTM_INST_INFO, align 4
  %lane_id = alloca i32, align 4
  %nof_lane = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata %union.tagFEI_HSTM_INST_INFO* %bit_info, metadata !1729, metadata !DIExpression()), !dbg !1730
  %0 = bitcast %union.tagFEI_HSTM_INST_INFO* %bit_info to i8*, !dbg !1731
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.86, i64 0, i64 0)), !dbg !1732
  call void @llvm.dbg.declare(metadata i32* %lane_id, metadata !1733, metadata !DIExpression()), !dbg !1734
  %1 = bitcast i32* %lane_id to i8*, !dbg !1735
  call void @klee_make_symbolic(i8* %1, i64 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.87, i64 0, i64 0)), !dbg !1736
  call void @llvm.dbg.declare(metadata i32* %nof_lane, metadata !1737, metadata !DIExpression()), !dbg !1738
  %2 = bitcast i32* %nof_lane to i8*, !dbg !1739
  call void @klee_make_symbolic(i8* %2, i64 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.88, i64 0, i64 0)), !dbg !1740
  %3 = load i32, i32* %lane_id, align 4, !dbg !1741
  %4 = load i32, i32* %nof_lane, align 4, !dbg !1742
  %coerce.dive = getelementptr inbounds %union.tagFEI_HSTM_INST_INFO, %union.tagFEI_HSTM_INST_INFO* %bit_info, i32 0, i32 0, !dbg !1743
  %coerce.dive1 = getelementptr inbounds %struct.tagFEI_HSTM_INST_BIT_INFO, %struct.tagFEI_HSTM_INST_BIT_INFO* %coerce.dive, i32 0, i32 0, !dbg !1743
  %5 = load i32, i32* %coerce.dive1, align 4, !dbg !1743
  call void @hstm_dfx_ilk_lane_isolate_health_info(i32 %5, i32 %3, i32 %4), !dbg !1743
  ret i32 0, !dbg !1744
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!389, !390, !391}
!llvm.ident = !{!392}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !387, nameTableKind: None)
!1 = !DIFile(filename: "union.c", directory: "/home/klee/examples/new")
!2 = !{!3, !21, !62, !67, !123, !144, !152, !157, !319}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 3, baseType: !4, size: 32, elements: !5)
!4 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20}
!6 = !DIEnumerator(name: "HSTM_TYPE_5815", value: 0, isUnsigned: true)
!7 = !DIEnumerator(name: "HSTM_TYPE_5835", value: 1, isUnsigned: true)
!8 = !DIEnumerator(name: "HSTM_TYPE_5816", value: 2, isUnsigned: true)
!9 = !DIEnumerator(name: "HSTM_TYPE_5891", value: 3, isUnsigned: true)
!10 = !DIEnumerator(name: "HSTM_TYPE_5892", value: 4, isUnsigned: true)
!11 = !DIEnumerator(name: "HSTM_TYPE_8855", value: 5, isUnsigned: true)
!12 = !DIEnumerator(name: "HSTM_TYPE_5856", value: 6, isUnsigned: true)
!13 = !DIEnumerator(name: "HSTM_TYPE_5886", value: 7, isUnsigned: true)
!14 = !DIEnumerator(name: "HSTM_TYPE_5896", value: 8, isUnsigned: true)
!15 = !DIEnumerator(name: "HSTM_TYPE_5812", value: 9, isUnsigned: true)
!16 = !DIEnumerator(name: "HSTM_TYPE_5813", value: 10, isUnsigned: true)
!17 = !DIEnumerator(name: "HSTM_TYPE_5895", value: 11, isUnsigned: true)
!18 = !DIEnumerator(name: "HSTM_TYPE_5887", value: 12, isUnsigned: true)
!19 = !DIEnumerator(name: "HSTM_TYPE_UNKNOWN", value: 13, isUnsigned: true)
!20 = !DIEnumerator(name: "HSTM_TYPE_MAX", value: 14, isUnsigned: true)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 42, baseType: !4, size: 32, elements: !22)
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61}
!23 = !DIEnumerator(name: "HSTM_RESET_CAUSE_NONE", value: 0, isUnsigned: true)
!24 = !DIEnumerator(name: "HSTM_RESET_CAUSE_COMMON", value: 1, isUnsigned: true)
!25 = !DIEnumerator(name: "HSTM_RESET_CAUSE_SDC_CLOCK", value: 2, isUnsigned: true)
!26 = !DIEnumerator(name: "HSTM_RESET_CAUSE_DDR", value: 3, isUnsigned: true)
!27 = !DIEnumerator(name: "HSTM_RESET_CAUSE_INT", value: 4, isUnsigned: true)
!28 = !DIEnumerator(name: "HSTM_RESET_CAUSE_FDR", value: 5, isUnsigned: true)
!29 = !DIEnumerator(name: "HSTM_RESET_CAUSE_RAMTBL", value: 6, isUnsigned: true)
!30 = !DIEnumerator(name: "HSTM_RESET_CAUSE_LPFLOW", value: 7, isUnsigned: true)
!31 = !DIEnumerator(name: "HSTM_RESET_CAUSE_ILK", value: 8, isUnsigned: true)
!32 = !DIEnumerator(name: "HSTM_RESET_CAUSE_CLOCK", value: 9, isUnsigned: true)
!33 = !DIEnumerator(name: "HSTM_RESET_CAUSE_PDISO", value: 10, isUnsigned: true)
!34 = !DIEnumerator(name: "HSTM_RESET_CAUSE_IBTMJAM", value: 11, isUnsigned: true)
!35 = !DIEnumerator(name: "HSTM_RESET_CAUSE_CQ", value: 12, isUnsigned: true)
!36 = !DIEnumerator(name: "HSTM_RESET_CAUSE_PD_EXHAUST", value: 13, isUnsigned: true)
!37 = !DIEnumerator(name: "HSTM_RESET_CAUSE_PCIE", value: 14, isUnsigned: true)
!38 = !DIEnumerator(name: "HSTM_RESET_CAUSE_FQJAM", value: 15, isUnsigned: true)
!39 = !DIEnumerator(name: "HSTM_RESET_CAUSE_CMCECC", value: 16, isUnsigned: true)
!40 = !DIEnumerator(name: "HSTM_RESET_CAUSE_QMCECC", value: 17, isUnsigned: true)
!41 = !DIEnumerator(name: "HSTM_RESET_CAUSE_PRCECC", value: 18, isUnsigned: true)
!42 = !DIEnumerator(name: "HSTM_RESET_CAUSE_S3BP", value: 19, isUnsigned: true)
!43 = !DIEnumerator(name: "HSTM_RESET_CAUSE_TMRBE", value: 20, isUnsigned: true)
!44 = !DIEnumerator(name: "HSTM_RESET_CAUSE_EDRAM", value: 21, isUnsigned: true)
!45 = !DIEnumerator(name: "HSTM_RESET_CAUSE_HMC", value: 22, isUnsigned: true)
!46 = !DIEnumerator(name: "HSTM_RESET_CAUSE_MCJAM", value: 23, isUnsigned: true)
!47 = !DIEnumerator(name: "HSTM_RESET_CAUSE_LINK", value: 24, isUnsigned: true)
!48 = !DIEnumerator(name: "HSTM_RESET_CAUSE_SMQME", value: 25, isUnsigned: true)
!49 = !DIEnumerator(name: "HSTM_RESET_CAUSE_PMC", value: 26, isUnsigned: true)
!50 = !DIEnumerator(name: "HSTM_RESET_CAUSE_GQ_CREDIT", value: 27, isUnsigned: true)
!51 = !DIEnumerator(name: "HSTM_RESET_CAUSE_FIC_QME", value: 28, isUnsigned: true)
!52 = !DIEnumerator(name: "HSTM_RESET_CAUSE_CAL", value: 29, isUnsigned: true)
!53 = !DIEnumerator(name: "HSTM_RESET_CAUSE_INIT_NIF_FAIL", value: 30, isUnsigned: true)
!54 = !DIEnumerator(name: "HSTM_RESET_CAUSE_INIT_INNER_MEM_FAIL", value: 31, isUnsigned: true)
!55 = !DIEnumerator(name: "HSTM_RESET_CAUSE_INIT_OUTER_MEM_FAIL", value: 32, isUnsigned: true)
!56 = !DIEnumerator(name: "HSTM_RESET_CAUSE_INIT_TEST_REG_FAIL", value: 33, isUnsigned: true)
!57 = !DIEnumerator(name: "HSTM_RESET_CAUSE_INIT_CLK_FAIL", value: 34, isUnsigned: true)
!58 = !DIEnumerator(name: "HSTM_RESET_CAUSE_INIT_FABRIC_IF_FAIL", value: 35, isUnsigned: true)
!59 = !DIEnumerator(name: "HSTM_RESET_CAUSE_INIT_CHIP_INNER_FAIL", value: 36, isUnsigned: true)
!60 = !DIEnumerator(name: "HSTM_RESET_CAUSE_INIT_HIRAM_FAIL", value: 37, isUnsigned: true)
!61 = !DIEnumerator(name: "HSTM_RESET_CAUSE_END", value: 38, isUnsigned: true)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "HstmDfxAlarmState", file: !1, line: 183, baseType: !4, size: 32, elements: !63)
!63 = !{!64, !65, !66}
!64 = !DIEnumerator(name: "HSTM_DFX_ALARM_BEGIN", value: 1, isUnsigned: true)
!65 = !DIEnumerator(name: "HSTM_DFX_ALARM_END", value: 2, isUnsigned: true)
!66 = !DIEnumerator(name: "HSTM_DFX_ALARM_LOG_TRAP", value: 3, isUnsigned: true)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "FEISW_HS_ERR_REC_TYPE", file: !1, line: 126, baseType: !4, size: 32, elements: !68)
!68 = !{!69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122}
!69 = !DIEnumerator(name: "FEISW_HS_INIT_VALUE", value: 0, isUnsigned: true)
!70 = !DIEnumerator(name: "FEISW_HS_LINK_LOST", value: 1, isUnsigned: true)
!71 = !DIEnumerator(name: "FEISW_HS_LINK_CRC", value: 2, isUnsigned: true)
!72 = !DIEnumerator(name: "FEISW_HS_LINK_HEART", value: 3, isUnsigned: true)
!73 = !DIEnumerator(name: "FEISW_HS_LINK_UNSTABLE", value: 4, isUnsigned: true)
!74 = !DIEnumerator(name: "FEISW_HS_LINK_ENERGY_SAVE", value: 5, isUnsigned: true)
!75 = !DIEnumerator(name: "FEISW_HS_LINK_ENERGY_SAVE_CANCEL", value: 6, isUnsigned: true)
!76 = !DIEnumerator(name: "FEISW_HS_LINK_TM_RST_START", value: 7, isUnsigned: true)
!77 = !DIEnumerator(name: "FEISW_HS_LINK_TM_RST_DONE", value: 8, isUnsigned: true)
!78 = !DIEnumerator(name: "FEISW_HS_MSG_SWF_ISO", value: 9, isUnsigned: true)
!79 = !DIEnumerator(name: "FEISW_HS_LINK_LOST_FULLMESH", value: 10, isUnsigned: true)
!80 = !DIEnumerator(name: "FEISW_HS_LINK_SFU_WARMBACKUP", value: 11, isUnsigned: true)
!81 = !DIEnumerator(name: "FEISW_HS_LINK_BOARD_CHANGE", value: 12, isUnsigned: true)
!82 = !DIEnumerator(name: "FEISW_HS_LINK_TX_OPEN_ACK", value: 13, isUnsigned: true)
!83 = !DIEnumerator(name: "FEISW_HS_LINK_BOARD_CHANGE_LPU", value: 14, isUnsigned: true)
!84 = !DIEnumerator(name: "FEISW_HS_LINK_BOARD_CHANGE_SFU", value: 15, isUnsigned: true)
!85 = !DIEnumerator(name: "FEISW_HS_NG_CHIP_RST_START", value: 16, isUnsigned: true)
!86 = !DIEnumerator(name: "FEISW_HS_NG_CHIP_RST_END", value: 17, isUnsigned: true)
!87 = !DIEnumerator(name: "FEISW_HS_NG_VOQ_FAULT_START", value: 18, isUnsigned: true)
!88 = !DIEnumerator(name: "FEISW_HS_NG_VOQ_FAULT_TYPE", value: 19, isUnsigned: true)
!89 = !DIEnumerator(name: "FEISW_HS_NG_VOQ_FAULT_END", value: 20, isUnsigned: true)
!90 = !DIEnumerator(name: "FEISW_HS_CHIP_ISOMEM_ERR", value: 21, isUnsigned: true)
!91 = !DIEnumerator(name: "FEISW_HS_LINK_RESET", value: 22, isUnsigned: true)
!92 = !DIEnumerator(name: "FEISW_HS_LINK_RESET_ACK", value: 23, isUnsigned: true)
!93 = !DIEnumerator(name: "FEISW_HS_CLOSE_SFU_LINK", value: 24, isUnsigned: true)
!94 = !DIEnumerator(name: "FEISW_HS_NG_CHIP_RST_START_ACK", value: 25, isUnsigned: true)
!95 = !DIEnumerator(name: "FEISW_HS_NG_CLOSE_INGRESS_VOQ_PENDDING", value: 26, isUnsigned: true)
!96 = !DIEnumerator(name: "FEISW_HS_NG_FLUSH_INGRESS_VOQ", value: 27, isUnsigned: true)
!97 = !DIEnumerator(name: "FEISW_HS_NG_FLUSH_INGRESS_VOQ_ACK", value: 28, isUnsigned: true)
!98 = !DIEnumerator(name: "FEISW_HS_NG_FIC_TO_LINK_ACK", value: 29, isUnsigned: true)
!99 = !DIEnumerator(name: "FEISW_HS_NG_FIC_TO_SEND_AGAIN", value: 30, isUnsigned: true)
!100 = !DIEnumerator(name: "FEISW_HS_NG_FIC_TO_READY_FLAG", value: 31, isUnsigned: true)
!101 = !DIEnumerator(name: "HS_FEISW_2_FEISWAGT_INIT_UNDO_ISO", value: 32, isUnsigned: true)
!102 = !DIEnumerator(name: "FEISW_HS_TM_CHIP_RST_MSG", value: 33, isUnsigned: true)
!103 = !DIEnumerator(name: "FEISW_HS_LINK_SWICH_ON", value: 34, isUnsigned: true)
!104 = !DIEnumerator(name: "FEISW_HS_LINK_SWICH_OFF", value: 35, isUnsigned: true)
!105 = !DIEnumerator(name: "FEISW_HS_SC_CHIP_RST_START", value: 36, isUnsigned: true)
!106 = !DIEnumerator(name: "FEISW_HS_SC_CHIP_RST_DONE", value: 37, isUnsigned: true)
!107 = !DIEnumerator(name: "FEISW_HS_RESET_CHIP_LINK_DOWN", value: 38, isUnsigned: true)
!108 = !DIEnumerator(name: "FEISW_HS_BOARD_AVAILABLE_CHANGE", value: 39, isUnsigned: true)
!109 = !DIEnumerator(name: "FEISW_HS_LINK_UP_VIRTUAL", value: 40, isUnsigned: true)
!110 = !DIEnumerator(name: "FEISW_HS_SFU_ISO_MSG", value: 41, isUnsigned: true)
!111 = !DIEnumerator(name: "FEISW_HS_SFU_NG_BP", value: 42, isUnsigned: true)
!112 = !DIEnumerator(name: "FEISW_HS_SC_RUT_ERR_EXIST", value: 43, isUnsigned: true)
!113 = !DIEnumerator(name: "FEISW_HS_SC_RUT_ERR_CANCEL", value: 44, isUnsigned: true)
!114 = !DIEnumerator(name: "FEISW_HS_SFU_DISCARD_APPEAR", value: 45, isUnsigned: true)
!115 = !DIEnumerator(name: "FEISW_HS_SFU_DISCARD_CANCEL", value: 46, isUnsigned: true)
!116 = !DIEnumerator(name: "FEISW_HS_SFU_TX_OPEN_OR_CLOSE", value: 47, isUnsigned: true)
!117 = !DIEnumerator(name: "FEISW_HS_LPU_REPORT_OPEN_LINK", value: 48, isUnsigned: true)
!118 = !DIEnumerator(name: "FEISW_HS_LINK_HEART_CANCEL", value: 49, isUnsigned: true)
!119 = !DIEnumerator(name: "FEISW_HS_LINK_SEQ_MISORDER", value: 50, isUnsigned: true)
!120 = !DIEnumerator(name: "FEISW_HS_CLU_OUTERLINK_CONNECT_ERR", value: 100, isUnsigned: true)
!121 = !DIEnumerator(name: "FEISW_HS_CLU_OUTERLINK_UP_NUM_CLOSE", value: 101, isUnsigned: true)
!122 = !DIEnumerator(name: "FEISW_HS_ERR_REC_TYPE_MAX", value: 102, isUnsigned: true)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 104, baseType: !4, size: 32, elements: !124)
!124 = !{!125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143}
!125 = !DIEnumerator(name: "HSTM_ISO_TBL_CARDPORT_TBTP", value: 0, isUnsigned: true)
!126 = !DIEnumerator(name: "HSTM_ISO_TBL_HQOS_RESERVED_SQ_ID", value: 1, isUnsigned: true)
!127 = !DIEnumerator(name: "HSTM_ISO_TBL_HQOS_SQ_STATUS", value: 2, isUnsigned: true)
!128 = !DIEnumerator(name: "HSTM_ISO_TBL_HQOS_SQID_OUT", value: 3, isUnsigned: true)
!129 = !DIEnumerator(name: "HSTM_ISO_TBL_HSTM_NGSF_INTERNAL_PORT_CFG", value: 4, isUnsigned: true)
!130 = !DIEnumerator(name: "HSTM_ISO_TBL_HSTM_NGSF_SERV_PORT_CFG", value: 5, isUnsigned: true)
!131 = !DIEnumerator(name: "HSTM_ISO_TBL_HSTM_NGSF_TM_CFG", value: 6, isUnsigned: true)
!132 = !DIEnumerator(name: "HSTM_ISO_TBL_MC_TM_TREE", value: 7, isUnsigned: true)
!133 = !DIEnumerator(name: "HSTM_ISO_TBL_PHYTB", value: 8, isUnsigned: true)
!134 = !DIEnumerator(name: "HSTM_ISO_TBL_QOS_QUEUE_STAT", value: 9, isUnsigned: true)
!135 = !DIEnumerator(name: "HSTM_ISO_TBL_TBTP_CARDPORT", value: 10, isUnsigned: true)
!136 = !DIEnumerator(name: "HSTM_ISO_TBL_TBTP_PORTINFO", value: 11, isUnsigned: true)
!137 = !DIEnumerator(name: "HSTM_ISO_TBL_TM58X5_FQ_QUEUESTATQUERY", value: 12, isUnsigned: true)
!138 = !DIEnumerator(name: "HSTM_ISO_TBL_TM7021_MEM_SHARE", value: 13, isUnsigned: true)
!139 = !DIEnumerator(name: "HSTM_ISO_TBL_TM7021_MEM_MALLOC", value: 14, isUnsigned: true)
!140 = !DIEnumerator(name: "HSTM_ISO_TBL_TM7021_MEM_MANAGE", value: 15, isUnsigned: true)
!141 = !DIEnumerator(name: "HSTM_ISO_TBL_TM7021_CQ_QUEUE_ID", value: 16, isUnsigned: true)
!142 = !DIEnumerator(name: "HSTM_ISO_TBL_HQOS_SQ_PARAM_OUT", value: 17, isUnsigned: true)
!143 = !DIEnumerator(name: "HSTM_ISO_TBL_MAX", value: 18, isUnsigned: true)
!144 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 89, baseType: !4, size: 32, elements: !145)
!145 = !{!146, !147, !148, !149, !150, !151}
!146 = !DIEnumerator(name: "HSTM_FAULT_NOTUSE", value: 0, isUnsigned: true)
!147 = !DIEnumerator(name: "HSTM_FAULT_SERDES", value: 1, isUnsigned: true)
!148 = !DIEnumerator(name: "HSTM_FAULT_BP", value: 2, isUnsigned: true)
!149 = !DIEnumerator(name: "HSTM_FAULT_ITLK_BADLANE", value: 3, isUnsigned: true)
!150 = !DIEnumerator(name: "HSTM_FAULT_ITLK_BOARD_RST", value: 4, isUnsigned: true)
!151 = !DIEnumerator(name: "HSTM_FAULT_ITLK_RST0", value: 5, isUnsigned: true)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 98, baseType: !4, size: 32, elements: !153)
!153 = !{!154, !155, !156}
!154 = !DIEnumerator(name: "HSTM_FWD_MODE_UNKNOWN", value: 0, isUnsigned: true)
!155 = !DIEnumerator(name: "HSTM_FWD_MODE_7021", value: 1, isUnsigned: true)
!156 = !DIEnumerator(name: "HSTM_FWD_MODE_NGSF", value: 2, isUnsigned: true)
!157 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tagHSTM_DEVM_HARDTYPE_ENUM_E", file: !1, line: 189, baseType: !4, size: 32, elements: !158)
!158 = !{!159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318}
!159 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CR53LPUF50A", value: 4096, isUnsigned: true)
!160 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CR57LPUF240A", value: 4097, isUnsigned: true)
!161 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CR57VSUF160", value: 4098, isUnsigned: true)
!162 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CX68NPU50", value: 4099, isUnsigned: true)
!163 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CX68NPU120", value: 4100, isUnsigned: true)
!164 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CR57LPUF50C", value: 4101, isUnsigned: true)
!165 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CR57LPUF100C", value: 4102, isUnsigned: true)
!166 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CR57LPUF120A", value: 4103, isUnsigned: true)
!167 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CR57VSUF80", value: 4104, isUnsigned: true)
!168 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CR57LPU51L", value: 4105, isUnsigned: true)
!169 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CX68MNPU80G", value: 4106, isUnsigned: true)
!170 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CR57LPU1TE", value: 4107, isUnsigned: true)
!171 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CR58LPU1TC", value: 4108, isUnsigned: true)
!172 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CR58LPU1TG", value: 4109, isUnsigned: true)
!173 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CR58LPU1TCB", value: 4110, isUnsigned: true)
!174 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CR57LPUF480B", value: 4111, isUnsigned: true)
!175 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CR57LPUF480D", value: 4112, isUnsigned: true)
!176 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CR57LPU200D", value: 4113, isUnsigned: true)
!177 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CR57LPUF200C", value: 4114, isUnsigned: true)
!178 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CR57LPUF240F", value: 4115, isUnsigned: true)
!179 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CX68NPU240", value: 4116, isUnsigned: true)
!180 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CX68MNPU160G", value: 4117, isUnsigned: true)
!181 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CX68NPU480", value: 4118, isUnsigned: true)
!182 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CX68MNPU480G", value: 4119, isUnsigned: true)
!183 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CR58LPU1T6C", value: 4120, isUnsigned: true)
!184 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CR58LPUF480C", value: 4121, isUnsigned: true)
!185 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CX68NPU1TA", value: 4122, isUnsigned: true)
!186 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CX68NPU1TB", value: 4123, isUnsigned: true)
!187 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CR58LPUF4TA", value: 4124, isUnsigned: true)
!188 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CR57LPU2TC", value: 4125, isUnsigned: true)
!189 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CR58LPUF2TA", value: 4126, isUnsigned: true)
!190 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CR58LPU2TF", value: 4127, isUnsigned: true)
!191 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CR57LPUF480G", value: 4128, isUnsigned: true)
!192 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CR57LPUF1TH", value: 4129, isUnsigned: true)
!193 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CX68MNPU1T", value: 4130, isUnsigned: true)
!194 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CX68MNPU1TB", value: 4131, isUnsigned: true)
!195 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CR59LPUF1T6A", value: 4132, isUnsigned: true)
!196 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPJ3CXPA", value: 4133, isUnsigned: true)
!197 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CX68M1A2T", value: 4134, isUnsigned: true)
!198 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPJ2CXP", value: 4135, isUnsigned: true)
!199 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_ANK2CXPA", value: 4136, isUnsigned: true)
!200 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_ANK2CXPB", value: 4137, isUnsigned: true)
!201 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_ANP2CXPC", value: 4138, isUnsigned: true)
!202 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_ANP2CXPD", value: 4139, isUnsigned: true)
!203 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_NEC3CXPL", value: 4140, isUnsigned: true)
!204 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_ANG1CXPG", value: 4141, isUnsigned: true)
!205 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_ANG1CXPH", value: 4142, isUnsigned: true)
!206 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_ANG1CXPI", value: 4143, isUnsigned: true)
!207 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_ANG1CXPJ", value: 4144, isUnsigned: true)
!208 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_ANG1CXPK", value: 4145, isUnsigned: true)
!209 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_ANG1CXPL", value: 4146, isUnsigned: true)
!210 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_ANG1CXPO", value: 4147, isUnsigned: true)
!211 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_AND3CXPA", value: 4148, isUnsigned: true)
!212 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_ANK1CXPA", value: 4149, isUnsigned: true)
!213 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_ANK1CXPB", value: 4150, isUnsigned: true)
!214 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_DP21CXP160A", value: 4151, isUnsigned: true)
!215 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPJ1CXP01", value: 4152, isUnsigned: true)
!216 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CX68F1A_8H20Q", value: 4153, isUnsigned: true)
!217 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CR58LPUF2TH", value: 4154, isUnsigned: true)
!218 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CR58LPUF1TK", value: 4155, isUnsigned: true)
!219 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CR57LPU2TE", value: 4156, isUnsigned: true)
!220 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CR57LPU2TK", value: 4157, isUnsigned: true)
!221 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CR58LPU2TM", value: 4158, isUnsigned: true)
!222 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CR58LPU1TM", value: 4159, isUnsigned: true)
!223 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_DP51CXP2T2A", value: 4160, isUnsigned: true)
!224 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_GPL4TA", value: 4161, isUnsigned: true)
!225 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CR58LPUF2TJ", value: 4162, isUnsigned: true)
!226 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_DP31CXP1T2A", value: 4163, isUnsigned: true)
!227 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_GPR4KQ60CQ", value: 4164, isUnsigned: true)
!228 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_DP51CXP1T2A", value: 4165, isUnsigned: true)
!229 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_M1C", value: 4166, isUnsigned: true)
!230 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_LPUF1T", value: 4167, isUnsigned: true)
!231 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPA1EY8", value: 4168, isUnsigned: true)
!232 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPD1EY8", value: 4169, isUnsigned: true)
!233 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPA1EY16", value: 4170, isUnsigned: true)
!234 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPD1EY16", value: 4171, isUnsigned: true)
!235 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPA1FV4", value: 4172, isUnsigned: true)
!236 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPD1FV4", value: 4173, isUnsigned: true)
!237 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPA1FV8", value: 4174, isUnsigned: true)
!238 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPD1FV8", value: 4175, isUnsigned: true)
!239 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPA2FH2", value: 4176, isUnsigned: true)
!240 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPD2FH2", value: 4177, isUnsigned: true)
!241 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPA1FH4", value: 4178, isUnsigned: true)
!242 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPD1FH4", value: 4179, isUnsigned: true)
!243 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPA1FHD2", value: 4180, isUnsigned: true)
!244 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPD1FHD2", value: 4181, isUnsigned: true)
!245 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPD1FHL2", value: 4182, isUnsigned: true)
!246 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPD1FHD4", value: 4183, isUnsigned: true)
!247 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPA2FHD1", value: 4184, isUnsigned: true)
!248 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPD2FHD1", value: 4185, isUnsigned: true)
!249 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CR59LPU1T6D_5K", value: 4186, isUnsigned: true)
!250 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CR59LPU1T6D", value: 4187, isUnsigned: true)
!251 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CR59LPU1T6DA", value: 4188, isUnsigned: true)
!252 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CR59LPU1T6DA_5K_S", value: 4189, isUnsigned: true)
!253 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CR59LPU1T6E", value: 4190, isUnsigned: true)
!254 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CR59LPU1T6EA", value: 4191, isUnsigned: true)
!255 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CR59LPUF1T6AB", value: 4192, isUnsigned: true)
!256 = !DIEnumerator(name: "HSTM_EX_DRIVER_BOARD_SERVICE_VSUF_80", value: 4193, isUnsigned: true)
!257 = !DIEnumerator(name: "HSTM_EX_DRIVER_BOARD_SERVICE_VSUF_160", value: 4194, isUnsigned: true)
!258 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CR57LPU400A", value: 4195, isUnsigned: true)
!259 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CR57LPUF1TQ", value: 4196, isUnsigned: true)
!260 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_GPL2TA", value: 4197, isUnsigned: true)
!261 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CR57VSU400B", value: 4198, isUnsigned: true)
!262 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CR57VSU200B", value: 4199, isUnsigned: true)
!263 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CR57VSU400D", value: 4200, isUnsigned: true)
!264 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPA2EX8S", value: 4201, isUnsigned: true)
!265 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPD2EX8S", value: 4202, isUnsigned: true)
!266 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPA2FH1", value: 4203, isUnsigned: true)
!267 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPD2FH1", value: 4204, isUnsigned: true)
!268 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPA3FH2", value: 4205, isUnsigned: true)
!269 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPD3FH2", value: 4206, isUnsigned: true)
!270 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPA2FH4", value: 4207, isUnsigned: true)
!271 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPD2FH4", value: 4208, isUnsigned: true)
!272 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPD1FH8", value: 4209, isUnsigned: true)
!273 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPD3FHD4", value: 4210, isUnsigned: true)
!274 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPA2FHD2", value: 4211, isUnsigned: true)
!275 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPD2FHD2", value: 4212, isUnsigned: true)
!276 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPA5FHD1", value: 4213, isUnsigned: true)
!277 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPA1EG8", value: 4214, isUnsigned: true)
!278 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPD1EG8", value: 4215, isUnsigned: true)
!279 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPA1EX24S", value: 4216, isUnsigned: true)
!280 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPD1EX24S", value: 4217, isUnsigned: true)
!281 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPA2FV4", value: 4218, isUnsigned: true)
!282 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPD2FV4", value: 4219, isUnsigned: true)
!283 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_DP31CXP1T2B", value: 4220, isUnsigned: true)
!284 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_DP31CXP800D", value: 4221, isUnsigned: true)
!285 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_DP51CXP800A", value: 4222, isUnsigned: true)
!286 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_DP21CXP800AS", value: 4223, isUnsigned: true)
!287 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_ANG2CXPA", value: 4224, isUnsigned: true)
!288 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_ANK3CXPA", value: 4225, isUnsigned: true)
!289 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPA1MQ1", value: 4226, isUnsigned: true)
!290 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPA1MPA", value: 4227, isUnsigned: true)
!291 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPD1CQ1", value: 4228, isUnsigned: true)
!292 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPA2EG24", value: 4229, isUnsigned: true)
!293 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPD1MQ1", value: 4230, isUnsigned: true)
!294 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPD1EG24", value: 4231, isUnsigned: true)
!295 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPA3EG24", value: 4232, isUnsigned: true)
!296 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CR57LPUF480K", value: 4233, isUnsigned: true)
!297 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPA2EX16S", value: 4234, isUnsigned: true)
!298 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPA2EY16", value: 4235, isUnsigned: true)
!299 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPA2FV8", value: 4236, isUnsigned: true)
!300 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPA3FHD2", value: 4237, isUnsigned: true)
!301 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPA3FHD1", value: 4238, isUnsigned: true)
!302 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_GFRCXP08FA", value: 4239, isUnsigned: true)
!303 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_GPLF4T8A", value: 4240, isUnsigned: true)
!304 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_GPL14T4B", value: 4241, isUnsigned: true)
!305 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_GPL7T2B", value: 4242, isUnsigned: true)
!306 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_GPLF2T4A", value: 4243, isUnsigned: true)
!307 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_DP52CXP6T4A", value: 4244, isUnsigned: true)
!308 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CR59LPUF3T2A", value: 4245, isUnsigned: true)
!309 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_DP51CXP1T2A_M14", value: 4246, isUnsigned: true)
!310 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CR58LPU4TB", value: 4247, isUnsigned: true)
!311 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CR58LPU2TN", value: 4248, isUnsigned: true)
!312 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_TPD1GH2", value: 4249, isUnsigned: true)
!313 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CR57LPU200X", value: 4250, isUnsigned: true)
!314 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CX68NPU1TC", value: 4251, isUnsigned: true)
!315 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_CX68NPU480C", value: 4252, isUnsigned: true)
!316 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_GPL14T4A", value: 4253, isUnsigned: true)
!317 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_GPL7T2A", value: 4254, isUnsigned: true)
!318 = !DIEnumerator(name: "HSTM_EX_DEVM_HARDTYPE_UNKNOW", value: 4255, isUnsigned: true)
!319 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tagHstmTlvFeiiNotifyEventMsgProduct", file: !1, line: 352, baseType: !4, size: 32, elements: !320)
!320 = !{!321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386}
!321 = !DIEnumerator(name: "HSU_EX_FEII_TLV_NOTIFY_EVENT_PRODUCT_BASE", value: 0, isUnsigned: true)
!322 = !DIEnumerator(name: "HSU_EX_FEII_TLV_NOTIFY_PWIFSQ_STAT", value: 1, isUnsigned: true)
!323 = !DIEnumerator(name: "HSU_EX_FEII_TLV_NOTIFY_EVENT_FIMMIBSTAT", value: 2, isUnsigned: true)
!324 = !DIEnumerator(name: "HSU_EX_FEII_TLV_NOTIFY_EVENT_MAC_HOP_CPULOG", value: 3, isUnsigned: true)
!325 = !DIEnumerator(name: "HSU_EX_FEII_TLV_NOTIFY_EVENT_HSTM_COMM_MSG", value: 4, isUnsigned: true)
!326 = !DIEnumerator(name: "HSU_EX_FEII_TLV_NOTIFY_EVENT_HSTM_MSG_LINK_ERR", value: 5, isUnsigned: true)
!327 = !DIEnumerator(name: "HSU_EX_FEII_TLV_NOTIFY_EVENT_HSTM_MSG_INIT_CLK_STAT", value: 6, isUnsigned: true)
!328 = !DIEnumerator(name: "HSU_EX_FEII_TLV_NOTIFY_EVENT_HSTM_UPLOAD_ERR_INFO", value: 7, isUnsigned: true)
!329 = !DIEnumerator(name: "HSU_EX_FEII_TLV_NOTIFY_EVENT_HSTM_MSG_VOQ_STUCK", value: 8, isUnsigned: true)
!330 = !DIEnumerator(name: "HSU_EX_FEII_TLV_NOTIFY_EVENT_HSTM_MSG_VOQ_STUCK_BACK", value: 9, isUnsigned: true)
!331 = !DIEnumerator(name: "HSU_EX_FEII_TLV_NOTIFY_EVENT_HSTM_MSG_S3BP_REPORT", value: 10, isUnsigned: true)
!332 = !DIEnumerator(name: "HSU_EX_FEII_TLV_NOTIFY_EVENT_HSTM_MSG_MUL_FAULT_REPORT", value: 11, isUnsigned: true)
!333 = !DIEnumerator(name: "HSU_EX_FEII_TLV_NOTIFY_SQ_TBSPEED", value: 12, isUnsigned: true)
!334 = !DIEnumerator(name: "HSU_EX_FEII_TLV_NOTIFY_EVENT_HQOS_CELLPACKDISABLE", value: 13, isUnsigned: true)
!335 = !DIEnumerator(name: "HSU_EX_FEII_TLV_NOTIFY_CYCLE_DATA_COLLECT_PKT_LEN_HIS", value: 14, isUnsigned: true)
!336 = !DIEnumerator(name: "HSU_EX_FEII_TLV_NOTIFY_EVENT_VPW_AIB_READY", value: 15, isUnsigned: true)
!337 = !DIEnumerator(name: "HSU_EX_FEII_TLV_NOTIFY_EVENT_DN_FLOW", value: 16, isUnsigned: true)
!338 = !DIEnumerator(name: "HSU_EX_FEII_TLV_NOTIFY_EVENT_DN_EGQ", value: 17, isUnsigned: true)
!339 = !DIEnumerator(name: "HSU_EX_FEII_TLV_NOTIFY_EVENT_DN_PST", value: 18, isUnsigned: true)
!340 = !DIEnumerator(name: "HSU_EX_FEII_TLV_NOTIFY_EVENT_NGSF_PQSTAT", value: 19, isUnsigned: true)
!341 = !DIEnumerator(name: "HSU_EX_FEII_TLV_NOTIFY_EVENT_MIC_DYN_MSG", value: 20, isUnsigned: true)
!342 = !DIEnumerator(name: "HSU_EX_FEII_TLV_NOTIFY_EVENT_REPORTPQSTAT", value: 21, isUnsigned: true)
!343 = !DIEnumerator(name: "HSU_EX_FEII_TLV_NOTIFY_EVENT_UC_L3VPNSTAT", value: 22, isUnsigned: true)
!344 = !DIEnumerator(name: "HSU_EX_FEII_TLV_NOTIFY_MAC_ACCOUNTING_STAT", value: 23, isUnsigned: true)
!345 = !DIEnumerator(name: "HSU_EX_FEII_TLV_NOTIFY_EVENT_EMDI_ALARM", value: 24, isUnsigned: true)
!346 = !DIEnumerator(name: "HSU_EX_FEII_TLV_NOTIFY_EVENT_PORT_DELETE", value: 25, isUnsigned: true)
!347 = !DIEnumerator(name: "HSU_EX_FEII_TLV_NOTIFY_EVENT_GVE_FLOWDROP", value: 26, isUnsigned: true)
!348 = !DIEnumerator(name: "HSU_EX_FEII_TLV_NOTIFY_EVENT_FLEXEAPS_STATE", value: 27, isUnsigned: true)
!349 = !DIEnumerator(name: "HSU_EX_TLV_FEI_HS_MSG_HEART_INFO", value: 28, isUnsigned: true)
!350 = !DIEnumerator(name: "HSU_EX_TLV_FEI_CFG_HSTM_MSG_LINK_CTRL", value: 29, isUnsigned: true)
!351 = !DIEnumerator(name: "HSU_EX_TLV_FEI_CFG_HS_LINK_CTRL", value: 30, isUnsigned: true)
!352 = !DIEnumerator(name: "HSU_EX_TLV_FEI_CFG_HSTM_MSG_INIT_CLK_SRC", value: 31, isUnsigned: true)
!353 = !DIEnumerator(name: "HSU_EX_TLV_FEI_CFG_HSTM_MSG_CLK_SRC_VOTE", value: 32, isUnsigned: true)
!354 = !DIEnumerator(name: "HSU_EX_TLV_FEI_CFG_HSTM_MSG_LINK_ORDER", value: 33, isUnsigned: true)
!355 = !DIEnumerator(name: "HSU_EX_TLV_FEI_CFG_HSTM_MSG_PEER_LPUTYPE", value: 34, isUnsigned: true)
!356 = !DIEnumerator(name: "HSU_EX_TLV_FEI_CFG_HSTM_MSG_VOQ_STUCK", value: 35, isUnsigned: true)
!357 = !DIEnumerator(name: "HSU_EX_TLV_FEI_CFG_HSTM_MSG_VOQ_STUCK_BACK", value: 36, isUnsigned: true)
!358 = !DIEnumerator(name: "HSU_EX_TLV_FEI_CFG_HSTM_MSG_VOQ_LPU_REACH", value: 37, isUnsigned: true)
!359 = !DIEnumerator(name: "HSU_EX_TLV_FEI_CFG_HSTM_MSG_VOQ_LPU_REACH_BACK", value: 38, isUnsigned: true)
!360 = !DIEnumerator(name: "HSU_EX_TLV_FEI_CFG_HSTM_MSG_VOQ_GET_RCA", value: 39, isUnsigned: true)
!361 = !DIEnumerator(name: "HSU_EX_TLV_FEI_CFG_HSTM_MSG_VOQ_SEND_RCA_BACK", value: 40, isUnsigned: true)
!362 = !DIEnumerator(name: "HSU_EX_TLV_FEI_CFG_HSTM_MSG_UPDATE_MDT", value: 41, isUnsigned: true)
!363 = !DIEnumerator(name: "HSU_EX_TLV_FEI_CFG_HSTM_MSG_S3BP_PROC", value: 42, isUnsigned: true)
!364 = !DIEnumerator(name: "HSU_EX_TLV_FEI_CFG_HSTM_MSG_OPER_CHIP", value: 43, isUnsigned: true)
!365 = !DIEnumerator(name: "HSU_EX_TLV_FEI_CFG_HSTM_MSG_SFU_ISO_INFO", value: 44, isUnsigned: true)
!366 = !DIEnumerator(name: "HSU_EX_TLV_FEI_CFG_HSTM_MSG_SFU_DIS_INFO", value: 45, isUnsigned: true)
!367 = !DIEnumerator(name: "HSU_EX_TLV_FEI_CFG_HSTM_MSG_COMMON", value: 46, isUnsigned: true)
!368 = !DIEnumerator(name: "HSU_EX_TLV_FEI_HS_MSG_LINK_SYNC", value: 47, isUnsigned: true)
!369 = !DIEnumerator(name: "HSU_EX_TLV_FEI_HS_MSG_OPEN_TX", value: 48, isUnsigned: true)
!370 = !DIEnumerator(name: "HSU_EX_TLV_FEI_HS_MSG_OPEN_RX", value: 49, isUnsigned: true)
!371 = !DIEnumerator(name: "HSU_EX_TLV_FEI_HS_MSG_CLOSE_SDS", value: 50, isUnsigned: true)
!372 = !DIEnumerator(name: "HSU_EX_TLV_FEI_CFG_HSTM_MSG_LINK_INFO", value: 51, isUnsigned: true)
!373 = !DIEnumerator(name: "HSU_EX_TLV_FEI_HS_MSG_INIT_CLK_SRC", value: 52, isUnsigned: true)
!374 = !DIEnumerator(name: "HSU_EX_TLV_FEI_HS_MSG_CLK_SRC_VOTE", value: 53, isUnsigned: true)
!375 = !DIEnumerator(name: "HSU_EX_TLV_FEI_HS_MSG_SET_SPEED", value: 54, isUnsigned: true)
!376 = !DIEnumerator(name: "HSU_EX_FEII_TLV_NOTIFY_EVENT_HSTM_MSG_VOQ_LPU_REACH", value: 55, isUnsigned: true)
!377 = !DIEnumerator(name: "HSU_EX_FEII_TLV_NOTIFY_EVENT_HSTM_MSG_VOQ_LPU_REACH_BACK", value: 56, isUnsigned: true)
!378 = !DIEnumerator(name: "HSU_EX_FEII_TLV_NOTIFY_EVENT_HSTM_MSG_VOQ_GET_RCA", value: 57, isUnsigned: true)
!379 = !DIEnumerator(name: "HSU_EX_FEII_TLV_NOTIFY_EVENT_HSTM_MSG_VOQ_GET_RCA_BACK", value: 58, isUnsigned: true)
!380 = !DIEnumerator(name: "HSU_EX_TLV_FEI_HS_MSG_TBBP_CFG", value: 59, isUnsigned: true)
!381 = !DIEnumerator(name: "HSU_EX_TLV_FEI_HS_MSG_FIC2LINK_CONFIG", value: 60, isUnsigned: true)
!382 = !DIEnumerator(name: "HSU_EX_TLV_NOTIFY_EVENT_HSTM_MSG_QUERY_TABLE_INFO", value: 61, isUnsigned: true)
!383 = !DIEnumerator(name: "HSU_EX_TLV_NOTIFY_EVENT_HSTM_MSG_QUERY_TABLE_INFO_BACK", value: 62, isUnsigned: true)
!384 = !DIEnumerator(name: "HSU_EX_TLV_FEI_HS_MSG_LINK_STATE", value: 63, isUnsigned: true)
!385 = !DIEnumerator(name: "HSU_EX_TLV_FEI_HS_MSG_FFA_PATCH", value: 64, isUnsigned: true)
!386 = !DIEnumerator(name: "HSU_EX_FEII_TLV_NOTIFY_EVENT_MAX_product", value: 4294967295, isUnsigned: true)
!387 = !{!388}
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!389 = !{i32 2, !"Dwarf Version", i32 4}
!390 = !{i32 2, !"Debug Info Version", i32 3}
!391 = !{i32 1, !"wchar_size", i32 4}
!392 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!393 = distinct !DISubprogram(name: "FEI_TM_fe_operate_interlaken", scope: !1, file: !1, line: 483, type: !394, scopeLine: 483, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!394 = !DISubroutineType(types: !395)
!395 = !{!396, !396, !396, !4}
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !397, line: 26, baseType: !398)
!397 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !399, line: 41, baseType: !4)
!399 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!400 = !{}
!401 = !DILocalVariable(name: "ui_fe_id", arg: 1, scope: !393, file: !1, line: 483, type: !396)
!402 = !DILocation(line: 483, column: 48, scope: !393)
!403 = !DILocalVariable(name: "ui_tm_id", arg: 2, scope: !393, file: !1, line: 483, type: !396)
!404 = !DILocation(line: 483, column: 67, scope: !393)
!405 = !DILocalVariable(name: "en_operate_type", arg: 3, scope: !393, file: !1, line: 483, type: !4)
!406 = !DILocation(line: 483, column: 90, scope: !393)
!407 = !DILocalVariable(name: "FEI_TM_fe_operate_interlaken", scope: !393, file: !1, line: 484, type: !396)
!408 = !DILocation(line: 484, column: 12, scope: !393)
!409 = !DILocation(line: 485, column: 22, scope: !393)
!410 = !DILocation(line: 485, column: 3, scope: !393)
!411 = !DILocation(line: 486, column: 10, scope: !393)
!412 = !DILocation(line: 486, column: 3, scope: !393)
!413 = distinct !DISubprogram(name: "HSTM_ISO_ClearSdsDecErrCnt", scope: !1, file: !1, line: 489, type: !414, scopeLine: 489, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!414 = !DISubroutineType(types: !415)
!415 = !{!396, !396}
!416 = !DILocalVariable(name: "chipId", arg: 1, scope: !413, file: !1, line: 489, type: !396)
!417 = !DILocation(line: 489, column: 46, scope: !413)
!418 = !DILocalVariable(name: "HSTM_ISO_ClearSdsDecErrCnt", scope: !413, file: !1, line: 490, type: !396)
!419 = !DILocation(line: 490, column: 12, scope: !413)
!420 = !DILocation(line: 491, column: 22, scope: !413)
!421 = !DILocation(line: 491, column: 3, scope: !413)
!422 = !DILocation(line: 492, column: 10, scope: !413)
!423 = !DILocation(line: 492, column: 3, scope: !413)
!424 = distinct !DISubprogram(name: "HSTM_ISO_DisableFmeaFeatures", scope: !1, file: !1, line: 495, type: !425, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!425 = !DISubroutineType(types: !426)
!426 = !{!427, !396}
!427 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!428 = !DILocalVariable(name: "disableType", arg: 1, scope: !424, file: !1, line: 495, type: !396)
!429 = !DILocation(line: 495, column: 45, scope: !424)
!430 = !DILocalVariable(name: "HSTM_ISO_DisableFmeaFeatures", scope: !424, file: !1, line: 496, type: !427)
!431 = !DILocation(line: 496, column: 9, scope: !424)
!432 = !DILocation(line: 497, column: 3, scope: !424)
!433 = !DILocation(line: 498, column: 10, scope: !424)
!434 = !DILocation(line: 498, column: 3, scope: !424)
!435 = distinct !DISubprogram(name: "HSTM_ISO_GetCardIdByTbTp", scope: !1, file: !1, line: 501, type: !436, scopeLine: 501, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!436 = !DISubroutineType(types: !437)
!437 = !{!396, !396, !396, !438, !438, !388}
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!439 = !DILocalVariable(name: "uiTb", arg: 1, scope: !435, file: !1, line: 501, type: !396)
!440 = !DILocation(line: 501, column: 44, scope: !435)
!441 = !DILocalVariable(name: "uiTp", arg: 2, scope: !435, file: !1, line: 501, type: !396)
!442 = !DILocation(line: 501, column: 59, scope: !435)
!443 = !DILocalVariable(name: "puiCardId", arg: 3, scope: !435, file: !1, line: 501, type: !438)
!444 = !DILocation(line: 501, column: 75, scope: !435)
!445 = !DILocalVariable(name: "puiPortId", arg: 4, scope: !435, file: !1, line: 501, type: !438)
!446 = !DILocation(line: 501, column: 96, scope: !435)
!447 = !DILocalVariable(name: "pThis", arg: 5, scope: !435, file: !1, line: 501, type: !388)
!448 = !DILocation(line: 501, column: 113, scope: !435)
!449 = !DILocalVariable(name: "HSTM_ISO_GetCardIdByTbTp", scope: !435, file: !1, line: 502, type: !396)
!450 = !DILocation(line: 502, column: 12, scope: !435)
!451 = !DILocation(line: 503, column: 22, scope: !435)
!452 = !DILocation(line: 503, column: 3, scope: !435)
!453 = !DILocation(line: 504, column: 10, scope: !435)
!454 = !DILocation(line: 504, column: 3, scope: !435)
!455 = distinct !DISubprogram(name: "HSTM_ISO_GetChassisId", scope: !1, file: !1, line: 507, type: !456, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!456 = !DISubroutineType(types: !457)
!457 = !{!396}
!458 = !DILocalVariable(name: "HSTM_ISO_GetChassisId", scope: !455, file: !1, line: 508, type: !396)
!459 = !DILocation(line: 508, column: 12, scope: !455)
!460 = !DILocation(line: 509, column: 22, scope: !455)
!461 = !DILocation(line: 509, column: 3, scope: !455)
!462 = !DILocation(line: 510, column: 10, scope: !455)
!463 = !DILocation(line: 510, column: 3, scope: !455)
!464 = distinct !DISubprogram(name: "HSTM_ISO_GetFeiCompCid", scope: !1, file: !1, line: 513, type: !456, scopeLine: 513, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!465 = !DILocalVariable(name: "HSTM_ISO_GetFeiCompCid", scope: !464, file: !1, line: 514, type: !396)
!466 = !DILocation(line: 514, column: 12, scope: !464)
!467 = !DILocation(line: 515, column: 22, scope: !464)
!468 = !DILocation(line: 515, column: 3, scope: !464)
!469 = !DILocation(line: 516, column: 10, scope: !464)
!470 = !DILocation(line: 516, column: 3, scope: !464)
!471 = distinct !DISubprogram(name: "HSTM_ISO_GetFeiThis", scope: !1, file: !1, line: 519, type: !472, scopeLine: 519, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!472 = !DISubroutineType(types: !387)
!473 = !DILocalVariable(name: "HSTM_ISO_GetFeiThis", scope: !471, file: !1, line: 520, type: !388)
!474 = !DILocation(line: 520, column: 9, scope: !471)
!475 = !DILocation(line: 521, column: 23, scope: !471)
!476 = !DILocation(line: 522, column: 10, scope: !471)
!477 = !DILocation(line: 522, column: 3, scope: !471)
!478 = distinct !DISubprogram(name: "HSTM_ISO_GetFlowProbData", scope: !1, file: !1, line: 525, type: !479, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!479 = !DISubroutineType(types: !480)
!480 = !{null, !388, !481}
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "HSTM_FLOWPROB_DATA", file: !1, line: 430, baseType: !483)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 427, size: 640, elements: !484)
!484 = !{!485, !501}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "sdata", scope: !483, file: !1, line: 428, baseType: !486, size: 384)
!486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !487, size: 384, elements: !499)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "sdata", file: !1, line: 425, baseType: !488)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 421, size: 192, elements: !489)
!489 = !{!490, !496, !498}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !488, file: !1, line: 422, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "HSTM_CPUTICK", file: !1, line: 23, baseType: !492)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 20, size: 64, elements: !493)
!493 = !{!494, !495}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !492, file: !1, line: 21, baseType: !396, size: 32)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !492, file: !1, line: 22, baseType: !396, size: 32, offset: 32)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "packets", scope: !488, file: !1, line: 423, baseType: !497, size: 64, offset: 64)
!497 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !488, file: !1, line: 424, baseType: !497, size: 64, offset: 128)
!499 = !{!500}
!500 = !DISubrange(count: 2)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "wetdt_padding_0", scope: !483, file: !1, line: 429, baseType: !502, size: 256, offset: 384)
!502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !503, size: 256, elements: !504)
!503 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!504 = !{!505}
!505 = !DISubrange(count: 32)
!506 = !DILocalVariable(name: "inData", arg: 1, scope: !478, file: !1, line: 525, type: !388)
!507 = !DILocation(line: 525, column: 37, scope: !478)
!508 = !DILocalVariable(name: "outData", arg: 2, scope: !478, file: !1, line: 525, type: !481)
!509 = !DILocation(line: 525, column: 65, scope: !478)
!510 = !DILocation(line: 526, column: 3, scope: !478)
!511 = distinct !DISubprogram(name: "HSTM_ISO_GetHsBoardIngressNum", scope: !1, file: !1, line: 529, type: !512, scopeLine: 529, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!512 = !DISubroutineType(types: !513)
!513 = !{!396, !514}
!514 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!515 = !DILocalVariable(name: "boardType", arg: 1, scope: !511, file: !1, line: 529, type: !514)
!516 = !DILocation(line: 529, column: 44, scope: !511)
!517 = !DILocalVariable(name: "HSTM_ISO_GetHsBoardIngressNum", scope: !511, file: !1, line: 530, type: !396)
!518 = !DILocation(line: 530, column: 12, scope: !511)
!519 = !DILocation(line: 531, column: 22, scope: !511)
!520 = !DILocation(line: 531, column: 3, scope: !511)
!521 = !DILocation(line: 532, column: 10, scope: !511)
!522 = !DILocation(line: 532, column: 3, scope: !511)
!523 = distinct !DISubprogram(name: "HSTM_ISO_GetMulticastLeafInfo", scope: !1, file: !1, line: 535, type: !524, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!524 = !DISubroutineType(types: !525)
!525 = !{!396, !396, !438, !388}
!526 = !DILocalVariable(name: "chip_id", arg: 1, scope: !523, file: !1, line: 535, type: !396)
!527 = !DILocation(line: 535, column: 49, scope: !523)
!528 = !DILocalVariable(name: "mlid", arg: 2, scope: !523, file: !1, line: 535, type: !438)
!529 = !DILocation(line: 535, column: 68, scope: !523)
!530 = !DILocalVariable(name: "leafinfo", arg: 3, scope: !523, file: !1, line: 535, type: !388)
!531 = !DILocation(line: 535, column: 80, scope: !523)
!532 = !DILocalVariable(name: "HSTM_ISO_GetMulticastLeafInfo", scope: !523, file: !1, line: 536, type: !396)
!533 = !DILocation(line: 536, column: 12, scope: !523)
!534 = !DILocation(line: 537, column: 22, scope: !523)
!535 = !DILocation(line: 537, column: 3, scope: !523)
!536 = !DILocation(line: 538, column: 10, scope: !523)
!537 = !DILocation(line: 538, column: 3, scope: !523)
!538 = distinct !DISubprogram(name: "HSTM_ISO_GetOutchannelByTbTp", scope: !1, file: !1, line: 541, type: !539, scopeLine: 541, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!539 = !DISubroutineType(types: !540)
!540 = !{!396, !396, !396, !438, !388}
!541 = !DILocalVariable(name: "tb", arg: 1, scope: !538, file: !1, line: 541, type: !396)
!542 = !DILocation(line: 541, column: 48, scope: !538)
!543 = !DILocalVariable(name: "tp", arg: 2, scope: !538, file: !1, line: 541, type: !396)
!544 = !DILocation(line: 541, column: 61, scope: !538)
!545 = !DILocalVariable(name: "outChannel", arg: 3, scope: !538, file: !1, line: 541, type: !438)
!546 = !DILocation(line: 541, column: 75, scope: !538)
!547 = !DILocalVariable(name: "pThis", arg: 4, scope: !538, file: !1, line: 541, type: !388)
!548 = !DILocation(line: 541, column: 93, scope: !538)
!549 = !DILocalVariable(name: "HSTM_ISO_GetOutchannelByTbTp", scope: !538, file: !1, line: 542, type: !396)
!550 = !DILocation(line: 542, column: 12, scope: !538)
!551 = !DILocation(line: 543, column: 22, scope: !538)
!552 = !DILocation(line: 543, column: 3, scope: !538)
!553 = !DILocation(line: 544, column: 10, scope: !538)
!554 = !DILocation(line: 544, column: 3, scope: !538)
!555 = distinct !DISubprogram(name: "HSTM_ISO_GetSmCfgInfoByTbTp", scope: !1, file: !1, line: 547, type: !556, scopeLine: 547, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!556 = !DISubroutineType(types: !557)
!557 = !{!396, !388, !396, !396}
!558 = !DILocalVariable(name: "smCfg", arg: 1, scope: !555, file: !1, line: 547, type: !388)
!559 = !DILocation(line: 547, column: 44, scope: !555)
!560 = !DILocalVariable(name: "tbId", arg: 2, scope: !555, file: !1, line: 547, type: !396)
!561 = !DILocation(line: 547, column: 60, scope: !555)
!562 = !DILocalVariable(name: "tpId", arg: 3, scope: !555, file: !1, line: 547, type: !396)
!563 = !DILocation(line: 547, column: 75, scope: !555)
!564 = !DILocalVariable(name: "HSTM_ISO_GetSmCfgInfoByTbTp", scope: !555, file: !1, line: 548, type: !396)
!565 = !DILocation(line: 548, column: 12, scope: !555)
!566 = !DILocation(line: 549, column: 22, scope: !555)
!567 = !DILocation(line: 549, column: 3, scope: !555)
!568 = !DILocation(line: 550, column: 10, scope: !555)
!569 = !DILocation(line: 550, column: 3, scope: !555)
!570 = distinct !DISubprogram(name: "HSTM_ISO_GetSqIdByTbTpFromTblm", scope: !1, file: !1, line: 553, type: !571, scopeLine: 553, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!571 = !DISubroutineType(types: !572)
!572 = !{!396, !396, !396, !573, !573}
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !397, line: 25, baseType: !574)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !399, line: 39, baseType: !575)
!575 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!576 = !DILocalVariable(name: "chipId", arg: 1, scope: !570, file: !1, line: 553, type: !396)
!577 = !DILocation(line: 553, column: 50, scope: !570)
!578 = !DILocalVariable(name: "chipType", arg: 2, scope: !570, file: !1, line: 553, type: !396)
!579 = !DILocation(line: 553, column: 67, scope: !570)
!580 = !DILocalVariable(name: "tb", arg: 3, scope: !570, file: !1, line: 553, type: !573)
!581 = !DILocation(line: 553, column: 86, scope: !570)
!582 = !DILocalVariable(name: "tp", arg: 4, scope: !570, file: !1, line: 553, type: !573)
!583 = !DILocation(line: 553, column: 99, scope: !570)
!584 = !DILocalVariable(name: "HSTM_ISO_GetSqIdByTbTpFromTblm", scope: !570, file: !1, line: 554, type: !396)
!585 = !DILocation(line: 554, column: 12, scope: !570)
!586 = !DILocation(line: 555, column: 22, scope: !570)
!587 = !DILocation(line: 555, column: 3, scope: !570)
!588 = !DILocation(line: 556, column: 10, scope: !570)
!589 = !DILocation(line: 556, column: 3, scope: !570)
!590 = distinct !DISubprogram(name: "HSTM_ISO_GetTmDeviceCount", scope: !1, file: !1, line: 559, type: !456, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!591 = !DILocalVariable(name: "HSTM_ISO_GetTmDeviceCount", scope: !590, file: !1, line: 560, type: !396)
!592 = !DILocation(line: 560, column: 12, scope: !590)
!593 = !DILocation(line: 561, column: 22, scope: !590)
!594 = !DILocation(line: 561, column: 3, scope: !590)
!595 = !DILocation(line: 562, column: 10, scope: !590)
!596 = !DILocation(line: 562, column: 3, scope: !590)
!597 = distinct !DISubprogram(name: "HSTM_ISO_GetTmTypeByChipHardType", scope: !1, file: !1, line: 565, type: !598, scopeLine: 565, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!598 = !DISubroutineType(types: !599)
!599 = !{!600, !396}
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "HSTM_CHIP_TYPE_E", file: !1, line: 19, baseType: !3)
!601 = !DILocalVariable(name: "tmHardType", arg: 1, scope: !597, file: !1, line: 565, type: !396)
!602 = !DILocation(line: 565, column: 60, scope: !597)
!603 = !DILocalVariable(name: "HSTM_ISO_GetTmTypeByChipHardType", scope: !597, file: !1, line: 566, type: !600)
!604 = !DILocation(line: 566, column: 20, scope: !597)
!605 = !DILocation(line: 567, column: 22, scope: !597)
!606 = !DILocation(line: 567, column: 3, scope: !597)
!607 = !DILocation(line: 568, column: 10, scope: !597)
!608 = !DILocation(line: 568, column: 3, scope: !597)
!609 = distinct !DISubprogram(name: "HSTM_ISO_IsSr2tB", scope: !1, file: !1, line: 571, type: !610, scopeLine: 571, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!610 = !DISubroutineType(types: !611)
!611 = !{!427}
!612 = !DILocalVariable(name: "HSTM_ISO_IsSr2tB", scope: !609, file: !1, line: 572, type: !427)
!613 = !DILocation(line: 572, column: 9, scope: !609)
!614 = !DILocation(line: 573, column: 3, scope: !609)
!615 = !DILocation(line: 574, column: 10, scope: !609)
!616 = !DILocation(line: 574, column: 3, scope: !609)
!617 = distinct !DISubprogram(name: "HSTM_ISO_IsSr2taB", scope: !1, file: !1, line: 577, type: !610, scopeLine: 577, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!618 = !DILocalVariable(name: "HSTM_ISO_IsSr2taB", scope: !617, file: !1, line: 578, type: !427)
!619 = !DILocation(line: 578, column: 9, scope: !617)
!620 = !DILocation(line: 579, column: 3, scope: !617)
!621 = !DILocation(line: 580, column: 10, scope: !617)
!622 = !DILocation(line: 580, column: 3, scope: !617)
!623 = distinct !DISubprogram(name: "HSTM_ISO_IsTmIsolateEnabled", scope: !1, file: !1, line: 583, type: !610, scopeLine: 583, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!624 = !DILocalVariable(name: "HSTM_ISO_IsTmIsolateEnabled", scope: !623, file: !1, line: 584, type: !427)
!625 = !DILocation(line: 584, column: 9, scope: !623)
!626 = !DILocation(line: 585, column: 3, scope: !623)
!627 = !DILocation(line: 586, column: 10, scope: !623)
!628 = !DILocation(line: 586, column: 3, scope: !623)
!629 = distinct !DISubprogram(name: "HSTM_ISO_IsVirtualClusterMode", scope: !1, file: !1, line: 589, type: !610, scopeLine: 589, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!630 = !DILocalVariable(name: "HSTM_ISO_IsVirtualClusterMode", scope: !629, file: !1, line: 590, type: !427)
!631 = !DILocation(line: 590, column: 9, scope: !629)
!632 = !DILocation(line: 591, column: 3, scope: !629)
!633 = !DILocation(line: 592, column: 10, scope: !629)
!634 = !DILocation(line: 592, column: 3, scope: !629)
!635 = distinct !DISubprogram(name: "HSTM_ISO_IsolateMcTable", scope: !1, file: !1, line: 595, type: !636, scopeLine: 595, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!636 = !DISubroutineType(types: !637)
!637 = !{!396, !396, !396, !396, !396}
!638 = !DILocalVariable(name: "chipId", arg: 1, scope: !635, file: !1, line: 595, type: !396)
!639 = !DILocation(line: 595, column: 43, scope: !635)
!640 = !DILocalVariable(name: "srvType", arg: 2, scope: !635, file: !1, line: 595, type: !396)
!641 = !DILocation(line: 595, column: 60, scope: !635)
!642 = !DILocalVariable(name: "srvId", arg: 3, scope: !635, file: !1, line: 595, type: !396)
!643 = !DILocation(line: 595, column: 78, scope: !635)
!644 = !DILocalVariable(name: "faultSts", arg: 4, scope: !635, file: !1, line: 595, type: !396)
!645 = !DILocation(line: 595, column: 94, scope: !635)
!646 = !DILocalVariable(name: "HSTM_ISO_IsolateMcTable", scope: !635, file: !1, line: 596, type: !396)
!647 = !DILocation(line: 596, column: 12, scope: !635)
!648 = !DILocation(line: 597, column: 22, scope: !635)
!649 = !DILocation(line: 597, column: 3, scope: !635)
!650 = !DILocation(line: 598, column: 10, scope: !635)
!651 = !DILocation(line: 598, column: 3, scope: !635)
!652 = distinct !DISubprogram(name: "HSTM_ISO_IsolateQosTable", scope: !1, file: !1, line: 601, type: !653, scopeLine: 601, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!653 = !DISubroutineType(types: !654)
!654 = !{!396, !396, !396, !396, !396, !396, !396}
!655 = !DILocalVariable(name: "chipType", arg: 1, scope: !652, file: !1, line: 601, type: !396)
!656 = !DILocation(line: 601, column: 44, scope: !652)
!657 = !DILocalVariable(name: "chipId", arg: 2, scope: !652, file: !1, line: 601, type: !396)
!658 = !DILocation(line: 601, column: 63, scope: !652)
!659 = !DILocalVariable(name: "srvType", arg: 3, scope: !652, file: !1, line: 601, type: !396)
!660 = !DILocation(line: 601, column: 80, scope: !652)
!661 = !DILocalVariable(name: "srvId", arg: 4, scope: !652, file: !1, line: 601, type: !396)
!662 = !DILocation(line: 601, column: 98, scope: !652)
!663 = !DILocalVariable(name: "direction", arg: 5, scope: !652, file: !1, line: 601, type: !396)
!664 = !DILocation(line: 601, column: 114, scope: !652)
!665 = !DILocalVariable(name: "faultSts", arg: 6, scope: !652, file: !1, line: 601, type: !396)
!666 = !DILocation(line: 601, column: 134, scope: !652)
!667 = !DILocalVariable(name: "HSTM_ISO_IsolateQosTable", scope: !652, file: !1, line: 602, type: !396)
!668 = !DILocation(line: 602, column: 12, scope: !652)
!669 = !DILocation(line: 603, column: 22, scope: !652)
!670 = !DILocation(line: 603, column: 3, scope: !652)
!671 = !DILocation(line: 604, column: 10, scope: !652)
!672 = !DILocation(line: 604, column: 3, scope: !652)
!673 = distinct !DISubprogram(name: "HSTM_ISO_NotifyChipResetToNp", scope: !1, file: !1, line: 607, type: !674, scopeLine: 607, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!674 = !DISubroutineType(types: !675)
!675 = !{null, !396}
!676 = !DILocalVariable(name: "chipId", arg: 1, scope: !673, file: !1, line: 607, type: !396)
!677 = !DILocation(line: 607, column: 44, scope: !673)
!678 = !DILocation(line: 608, column: 3, scope: !673)
!679 = distinct !DISubprogram(name: "HSTM_ISO_QueryServiceSq", scope: !1, file: !1, line: 611, type: !680, scopeLine: 611, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!680 = !DISubroutineType(types: !681)
!681 = !{!427, !396, !396}
!682 = !DILocalVariable(name: "chipId", arg: 1, scope: !679, file: !1, line: 611, type: !396)
!683 = !DILocation(line: 611, column: 40, scope: !679)
!684 = !DILocalVariable(name: "sqId", arg: 2, scope: !679, file: !1, line: 611, type: !396)
!685 = !DILocation(line: 611, column: 57, scope: !679)
!686 = !DILocalVariable(name: "HSTM_ISO_QueryServiceSq", scope: !679, file: !1, line: 612, type: !427)
!687 = !DILocation(line: 612, column: 9, scope: !679)
!688 = !DILocation(line: 613, column: 3, scope: !679)
!689 = !DILocation(line: 614, column: 10, scope: !679)
!690 = !DILocation(line: 614, column: 3, scope: !679)
!691 = distinct !DISubprogram(name: "HSTM_ISO_ReportSaidTrafficFallInt", scope: !1, file: !1, line: 617, type: !692, scopeLine: 617, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!692 = !DISubroutineType(types: !693)
!693 = !{null, !396, !396, !396, !396}
!694 = !DILocalVariable(name: "devId", arg: 1, scope: !691, file: !1, line: 617, type: !396)
!695 = !DILocation(line: 617, column: 49, scope: !691)
!696 = !DILocalVariable(name: "intId", arg: 2, scope: !691, file: !1, line: 617, type: !396)
!697 = !DILocation(line: 617, column: 65, scope: !691)
!698 = !DILocalVariable(name: "intAddr", arg: 3, scope: !691, file: !1, line: 617, type: !396)
!699 = !DILocation(line: 617, column: 81, scope: !691)
!700 = !DILocalVariable(name: "value", arg: 4, scope: !691, file: !1, line: 617, type: !396)
!701 = !DILocation(line: 617, column: 99, scope: !691)
!702 = !DILocation(line: 618, column: 3, scope: !691)
!703 = distinct !DISubprogram(name: "HSTM_ISO_ReportXficPatchData", scope: !1, file: !1, line: 621, type: !704, scopeLine: 621, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!704 = !DISubroutineType(types: !705)
!705 = !{!396, !706}
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "HstmDfxFicPatchData", file: !1, line: 87, baseType: !708)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 84, size: 192, elements: !709)
!709 = !{!710, !711}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "funcId", scope: !708, file: !1, line: 85, baseType: !396, size: 32)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !708, file: !1, line: 86, baseType: !712, size: 160, offset: 32)
!712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !713)
!713 = !{!714}
!714 = !DISubrange(count: 5)
!715 = !DILocalVariable(name: "patchData", arg: 1, scope: !703, file: !1, line: 621, type: !706)
!716 = !DILocation(line: 621, column: 60, scope: !703)
!717 = !DILocalVariable(name: "HSTM_ISO_ReportXficPatchData", scope: !703, file: !1, line: 622, type: !396)
!718 = !DILocation(line: 622, column: 12, scope: !703)
!719 = !DILocation(line: 623, column: 22, scope: !703)
!720 = !DILocation(line: 623, column: 3, scope: !703)
!721 = !DILocation(line: 624, column: 10, scope: !703)
!722 = !DILocation(line: 624, column: 3, scope: !703)
!723 = distinct !DISubprogram(name: "HSTM_ISO_ResetLpu", scope: !1, file: !1, line: 627, type: !724, scopeLine: 627, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!724 = !DISubroutineType(types: !725)
!725 = !{null, !726}
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "HSTM_RESET_CAUSE_E", file: !1, line: 82, baseType: !21)
!727 = !DILocalVariable(name: "cause", arg: 1, scope: !723, file: !1, line: 627, type: !726)
!728 = !DILocation(line: 627, column: 43, scope: !723)
!729 = !DILocation(line: 628, column: 3, scope: !723)
!730 = distinct !DISubprogram(name: "HSTM_ISO_SendAlarmMsgToFei", scope: !1, file: !1, line: 631, type: !731, scopeLine: 631, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!731 = !DISubroutineType(types: !732)
!732 = !{!396, !396, !396, !4, !62, !388}
!733 = !DILocalVariable(name: "reasonId", arg: 1, scope: !730, file: !1, line: 631, type: !396)
!734 = !DILocation(line: 631, column: 46, scope: !730)
!735 = !DILocalVariable(name: "alarmId", arg: 2, scope: !730, file: !1, line: 631, type: !396)
!736 = !DILocation(line: 631, column: 65, scope: !730)
!737 = !DILocalVariable(name: "severityType", arg: 3, scope: !730, file: !1, line: 631, type: !4)
!738 = !DILocation(line: 631, column: 87, scope: !730)
!739 = !DILocalVariable(name: "alarmState", arg: 4, scope: !730, file: !1, line: 631, type: !62)
!740 = !DILocation(line: 631, column: 124, scope: !730)
!741 = !DILocalVariable(name: "param", arg: 5, scope: !730, file: !1, line: 631, type: !388)
!742 = !DILocation(line: 631, column: 142, scope: !730)
!743 = !DILocalVariable(name: "HSTM_ISO_SendAlarmMsgToFei", scope: !730, file: !1, line: 632, type: !396)
!744 = !DILocation(line: 632, column: 12, scope: !730)
!745 = !DILocation(line: 633, column: 22, scope: !730)
!746 = !DILocation(line: 633, column: 3, scope: !730)
!747 = !DILocation(line: 634, column: 10, scope: !730)
!748 = !DILocation(line: 634, column: 3, scope: !730)
!749 = distinct !DISubprogram(name: "HSTM_ISO_SendChipIsolateEvent", scope: !1, file: !1, line: 637, type: !750, scopeLine: 637, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!750 = !DISubroutineType(types: !751)
!751 = !{!396, !396, !396, !427}
!752 = !DILocalVariable(name: "chipId", arg: 1, scope: !749, file: !1, line: 637, type: !396)
!753 = !DILocation(line: 637, column: 49, scope: !749)
!754 = !DILocalVariable(name: "isoType", arg: 2, scope: !749, file: !1, line: 637, type: !396)
!755 = !DILocation(line: 637, column: 66, scope: !749)
!756 = !DILocalVariable(name: "isNpConnectMultiTm", arg: 3, scope: !749, file: !1, line: 637, type: !427)
!757 = !DILocation(line: 637, column: 81, scope: !749)
!758 = !DILocalVariable(name: "HSTM_ISO_SendChipIsolateEvent", scope: !749, file: !1, line: 638, type: !396)
!759 = !DILocation(line: 638, column: 12, scope: !749)
!760 = !DILocation(line: 639, column: 22, scope: !749)
!761 = !DILocation(line: 639, column: 3, scope: !749)
!762 = !DILocation(line: 640, column: 10, scope: !749)
!763 = !DILocation(line: 640, column: 3, scope: !749)
!764 = distinct !DISubprogram(name: "HSTM_ISO_SendCommMsgToFeisw", scope: !1, file: !1, line: 643, type: !765, scopeLine: 643, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!765 = !DISubroutineType(types: !766)
!766 = !{!396, !767, !427, !784, !396}
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tagTLV_FEII_TM_COMM_MSG", file: !1, line: 467, size: 704, elements: !769)
!769 = !{!770, !771, !772, !773, !774, !775, !776, !780}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "sub_msg_type", scope: !768, file: !1, line: 468, baseType: !396, size: 32)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "src_position", scope: !768, file: !1, line: 469, baseType: !396, size: 32, offset: 32)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "dest_position", scope: !768, file: !1, line: 470, baseType: !396, size: 32, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "seq_num", scope: !768, file: !1, line: 471, baseType: !396, size: 32, offset: 96)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "sub_msg_len", scope: !768, file: !1, line: 472, baseType: !396, size: 32, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "sub_msg_ver", scope: !768, file: !1, line: 473, baseType: !396, size: 32, offset: 160)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !768, file: !1, line: 474, baseType: !777, size: 512, offset: 192)
!777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !778)
!778 = !{!779}
!779 = !DISubrange(count: 16)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "ext_data", scope: !768, file: !1, line: 475, baseType: !781, offset: 704)
!781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !782)
!782 = !{!783}
!783 = !DISubrange(count: 0)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!786 = !DILocalVariable(name: "comm_msg", arg: 1, scope: !764, file: !1, line: 643, type: !767)
!787 = !DILocation(line: 643, column: 70, scope: !764)
!788 = !DILocalVariable(name: "flowCtrlMsg", arg: 2, scope: !764, file: !1, line: 643, type: !427)
!789 = !DILocation(line: 643, column: 86, scope: !764)
!790 = !DILocalVariable(name: "ext_data", arg: 3, scope: !764, file: !1, line: 643, type: !784)
!791 = !DILocation(line: 643, column: 111, scope: !764)
!792 = !DILocalVariable(name: "ext_data_len", arg: 4, scope: !764, file: !1, line: 643, type: !396)
!793 = !DILocation(line: 643, column: 130, scope: !764)
!794 = !DILocalVariable(name: "HSTM_ISO_SendCommMsgToFeisw", scope: !764, file: !1, line: 644, type: !396)
!795 = !DILocation(line: 644, column: 12, scope: !764)
!796 = !DILocation(line: 645, column: 22, scope: !764)
!797 = !DILocation(line: 645, column: 3, scope: !764)
!798 = !DILocation(line: 646, column: 10, scope: !764)
!799 = !DILocation(line: 646, column: 3, scope: !764)
!800 = distinct !DISubprogram(name: "HSTM_ISO_SendIsolateEventToNp", scope: !1, file: !1, line: 649, type: !674, scopeLine: 649, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!801 = !DILocalVariable(name: "tmId", arg: 1, scope: !800, file: !1, line: 649, type: !396)
!802 = !DILocation(line: 649, column: 45, scope: !800)
!803 = !DILocation(line: 650, column: 3, scope: !800)
!804 = distinct !DISubprogram(name: "HSTM_ISO_SendLinkErrMsgToFeisw", scope: !1, file: !1, line: 653, type: !805, scopeLine: 653, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!805 = !DISubroutineType(types: !806)
!806 = !{!396, !396, !396, !67, !388}
!807 = !DILocalVariable(name: "uiDevId", arg: 1, scope: !804, file: !1, line: 653, type: !396)
!808 = !DILocation(line: 653, column: 50, scope: !804)
!809 = !DILocalVariable(name: "uiLinkId", arg: 2, scope: !804, file: !1, line: 653, type: !396)
!810 = !DILocation(line: 653, column: 68, scope: !804)
!811 = !DILocalVariable(name: "eLinkErrType", arg: 3, scope: !804, file: !1, line: 653, type: !67)
!812 = !DILocation(line: 653, column: 105, scope: !804)
!813 = !DILocalVariable(name: "pThis", arg: 4, scope: !804, file: !1, line: 653, type: !388)
!814 = !DILocation(line: 653, column: 125, scope: !804)
!815 = !DILocalVariable(name: "HSTM_ISO_SendLinkErrMsgToFeisw", scope: !804, file: !1, line: 654, type: !396)
!816 = !DILocation(line: 654, column: 12, scope: !804)
!817 = !DILocation(line: 655, column: 22, scope: !804)
!818 = !DILocation(line: 655, column: 3, scope: !804)
!819 = !DILocation(line: 656, column: 10, scope: !804)
!820 = !DILocation(line: 656, column: 3, scope: !804)
!821 = distinct !DISubprogram(name: "HSTM_ISO_SendRsqResAlarmMsgToFei", scope: !1, file: !1, line: 659, type: !822, scopeLine: 659, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!822 = !DISubroutineType(types: !823)
!823 = !{!396, !396, !62, !388}
!824 = !DILocalVariable(name: "reasonId", arg: 1, scope: !821, file: !1, line: 659, type: !396)
!825 = !DILocation(line: 659, column: 52, scope: !821)
!826 = !DILocalVariable(name: "alarmState", arg: 2, scope: !821, file: !1, line: 659, type: !62)
!827 = !DILocation(line: 659, column: 85, scope: !821)
!828 = !DILocalVariable(name: "param", arg: 3, scope: !821, file: !1, line: 659, type: !388)
!829 = !DILocation(line: 659, column: 103, scope: !821)
!830 = !DILocalVariable(name: "HSTM_ISO_SendRsqResAlarmMsgToFei", scope: !821, file: !1, line: 660, type: !396)
!831 = !DILocation(line: 660, column: 12, scope: !821)
!832 = !DILocation(line: 661, column: 22, scope: !821)
!833 = !DILocation(line: 661, column: 3, scope: !821)
!834 = !DILocation(line: 662, column: 10, scope: !821)
!835 = !DILocation(line: 662, column: 3, scope: !821)
!836 = distinct !DISubprogram(name: "HSTM_ISO_SendSqIsoEopEvent", scope: !1, file: !1, line: 665, type: !837, scopeLine: 665, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!837 = !DISubroutineType(types: !838)
!838 = !{!396, !396, !396, !396}
!839 = !DILocalVariable(name: "chip_id", arg: 1, scope: !836, file: !1, line: 665, type: !396)
!840 = !DILocation(line: 665, column: 46, scope: !836)
!841 = !DILocalVariable(name: "srv_id", arg: 2, scope: !836, file: !1, line: 665, type: !396)
!842 = !DILocation(line: 665, column: 64, scope: !836)
!843 = !DILocalVariable(name: "fault_sts", arg: 3, scope: !836, file: !1, line: 665, type: !396)
!844 = !DILocation(line: 665, column: 81, scope: !836)
!845 = !DILocalVariable(name: "HSTM_ISO_SendSqIsoEopEvent", scope: !836, file: !1, line: 666, type: !396)
!846 = !DILocation(line: 666, column: 12, scope: !836)
!847 = !DILocation(line: 667, column: 22, scope: !836)
!848 = !DILocation(line: 667, column: 3, scope: !836)
!849 = !DILocation(line: 668, column: 10, scope: !836)
!850 = !DILocation(line: 668, column: 3, scope: !836)
!851 = distinct !DISubprogram(name: "HSTM_ISO_SendSqJamEopMsg", scope: !1, file: !1, line: 671, type: !837, scopeLine: 671, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!852 = !DILocalVariable(name: "chip_id", arg: 1, scope: !851, file: !1, line: 671, type: !396)
!853 = !DILocation(line: 671, column: 44, scope: !851)
!854 = !DILocalVariable(name: "jam_sq_id", arg: 2, scope: !851, file: !1, line: 671, type: !396)
!855 = !DILocation(line: 671, column: 62, scope: !851)
!856 = !DILocalVariable(name: "jam_sq_state", arg: 3, scope: !851, file: !1, line: 671, type: !396)
!857 = !DILocation(line: 671, column: 82, scope: !851)
!858 = !DILocalVariable(name: "HSTM_ISO_SendSqJamEopMsg", scope: !851, file: !1, line: 672, type: !396)
!859 = !DILocation(line: 672, column: 12, scope: !851)
!860 = !DILocation(line: 673, column: 22, scope: !851)
!861 = !DILocation(line: 673, column: 3, scope: !851)
!862 = !DILocation(line: 674, column: 10, scope: !851)
!863 = !DILocation(line: 674, column: 3, scope: !851)
!864 = distinct !DISubprogram(name: "HSTM_ISO_SetFeiThis", scope: !1, file: !1, line: 677, type: !865, scopeLine: 677, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!865 = !DISubroutineType(types: !866)
!866 = !{null, !388}
!867 = !DILocalVariable(name: "pThis", arg: 1, scope: !864, file: !1, line: 677, type: !388)
!868 = !DILocation(line: 677, column: 32, scope: !864)
!869 = !DILocation(line: 678, column: 3, scope: !864)
!870 = distinct !DISubprogram(name: "HSTM_ISO_SetFlowProbData", scope: !1, file: !1, line: 681, type: !871, scopeLine: 681, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!871 = !DISubroutineType(types: !872)
!872 = !{null, !873, !388}
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !482)
!875 = !DILocalVariable(name: "inData", arg: 1, scope: !870, file: !1, line: 681, type: !873)
!876 = !DILocation(line: 681, column: 57, scope: !870)
!877 = !DILocalVariable(name: "outData", arg: 2, scope: !870, file: !1, line: 681, type: !388)
!878 = !DILocation(line: 681, column: 71, scope: !870)
!879 = !DILocation(line: 682, column: 3, scope: !870)
!880 = distinct !DISubprogram(name: "HSTM_ISO_SetLastSaidPingTime", scope: !1, file: !1, line: 685, type: !456, scopeLine: 685, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!881 = !DILocalVariable(name: "HSTM_ISO_SetLastSaidPingTime", scope: !880, file: !1, line: 686, type: !396)
!882 = !DILocation(line: 686, column: 12, scope: !880)
!883 = !DILocation(line: 687, column: 22, scope: !880)
!884 = !DILocation(line: 687, column: 3, scope: !880)
!885 = !DILocation(line: 688, column: 10, scope: !880)
!886 = !DILocation(line: 688, column: 3, scope: !880)
!887 = distinct !DISubprogram(name: "HSTM_ISO_ShowHisPeerTbLinkState", scope: !1, file: !1, line: 691, type: !888, scopeLine: 691, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!888 = !DISubroutineType(types: !889)
!889 = !{!396, !890, !438, !396, !388}
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!891 = !DILocalVariable(name: "outBuffer", arg: 1, scope: !887, file: !1, line: 691, type: !890)
!892 = !DILocation(line: 691, column: 48, scope: !887)
!893 = !DILocalVariable(name: "outLen", arg: 2, scope: !887, file: !1, line: 691, type: !438)
!894 = !DILocation(line: 691, column: 69, scope: !887)
!895 = !DILocalVariable(name: "maxLen", arg: 3, scope: !887, file: !1, line: 691, type: !396)
!896 = !DILocation(line: 691, column: 86, scope: !887)
!897 = !DILocalVariable(name: "pThis", arg: 4, scope: !887, file: !1, line: 691, type: !388)
!898 = !DILocation(line: 691, column: 100, scope: !887)
!899 = !DILocalVariable(name: "HSTM_ISO_ShowHisPeerTbLinkState", scope: !887, file: !1, line: 692, type: !396)
!900 = !DILocation(line: 692, column: 12, scope: !887)
!901 = !DILocation(line: 693, column: 22, scope: !887)
!902 = !DILocation(line: 693, column: 3, scope: !887)
!903 = !DILocation(line: 694, column: 10, scope: !887)
!904 = !DILocation(line: 694, column: 3, scope: !887)
!905 = distinct !DISubprogram(name: "HSTM_ISO_ShowLinkSeqInfo", scope: !1, file: !1, line: 697, type: !906, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!906 = !DISubroutineType(types: !907)
!907 = !{!396, !396, !890, !438, !396, !388}
!908 = !DILocalVariable(name: "tlvType", arg: 1, scope: !905, file: !1, line: 697, type: !396)
!909 = !DILocation(line: 697, column: 44, scope: !905)
!910 = !DILocalVariable(name: "outBuffer", arg: 2, scope: !905, file: !1, line: 697, type: !890)
!911 = !DILocation(line: 697, column: 59, scope: !905)
!912 = !DILocalVariable(name: "outLen", arg: 3, scope: !905, file: !1, line: 697, type: !438)
!913 = !DILocation(line: 697, column: 80, scope: !905)
!914 = !DILocalVariable(name: "maxLen", arg: 4, scope: !905, file: !1, line: 697, type: !396)
!915 = !DILocation(line: 697, column: 97, scope: !905)
!916 = !DILocalVariable(name: "pThis", arg: 5, scope: !905, file: !1, line: 697, type: !388)
!917 = !DILocation(line: 697, column: 111, scope: !905)
!918 = !DILocalVariable(name: "HSTM_ISO_ShowLinkSeqInfo", scope: !905, file: !1, line: 698, type: !396)
!919 = !DILocation(line: 698, column: 12, scope: !905)
!920 = !DILocation(line: 699, column: 22, scope: !905)
!921 = !DILocation(line: 699, column: 3, scope: !905)
!922 = !DILocation(line: 700, column: 10, scope: !905)
!923 = !DILocation(line: 700, column: 3, scope: !905)
!924 = distinct !DISubprogram(name: "HSTM_ISO_ShowPeerTbLinkState", scope: !1, file: !1, line: 703, type: !888, scopeLine: 703, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!925 = !DILocalVariable(name: "outBuffer", arg: 1, scope: !924, file: !1, line: 703, type: !890)
!926 = !DILocation(line: 703, column: 45, scope: !924)
!927 = !DILocalVariable(name: "outLen", arg: 2, scope: !924, file: !1, line: 703, type: !438)
!928 = !DILocation(line: 703, column: 66, scope: !924)
!929 = !DILocalVariable(name: "maxLen", arg: 3, scope: !924, file: !1, line: 703, type: !396)
!930 = !DILocation(line: 703, column: 83, scope: !924)
!931 = !DILocalVariable(name: "pThis", arg: 4, scope: !924, file: !1, line: 703, type: !388)
!932 = !DILocation(line: 703, column: 97, scope: !924)
!933 = !DILocalVariable(name: "HSTM_ISO_ShowPeerTbLinkState", scope: !924, file: !1, line: 704, type: !396)
!934 = !DILocation(line: 704, column: 12, scope: !924)
!935 = !DILocation(line: 705, column: 22, scope: !924)
!936 = !DILocation(line: 705, column: 3, scope: !924)
!937 = !DILocation(line: 706, column: 10, scope: !924)
!938 = !DILocation(line: 706, column: 3, scope: !924)
!939 = distinct !DISubprogram(name: "HSTM_ISO_SlaveExist", scope: !1, file: !1, line: 709, type: !456, scopeLine: 709, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!940 = !DILocalVariable(name: "HSTM_ISO_SlaveExist", scope: !939, file: !1, line: 710, type: !396)
!941 = !DILocation(line: 710, column: 12, scope: !939)
!942 = !DILocation(line: 711, column: 22, scope: !939)
!943 = !DILocation(line: 711, column: 3, scope: !939)
!944 = !DILocation(line: 712, column: 10, scope: !939)
!945 = !DILocation(line: 712, column: 3, scope: !939)
!946 = distinct !DISubprogram(name: "HSTM_ISO_StartupTimeStamp", scope: !1, file: !1, line: 715, type: !947, scopeLine: 715, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!947 = !DISubroutineType(types: !948)
!948 = !{null, !396, !4, !949}
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !503)
!951 = !DILocalVariable(name: "chipId", arg: 1, scope: !946, file: !1, line: 715, type: !396)
!952 = !DILocation(line: 715, column: 41, scope: !946)
!953 = !DILocalVariable(name: "action", arg: 2, scope: !946, file: !1, line: 715, type: !4)
!954 = !DILocation(line: 715, column: 62, scope: !946)
!955 = !DILocalVariable(name: "desc", arg: 3, scope: !946, file: !1, line: 715, type: !949)
!956 = !DILocation(line: 715, column: 82, scope: !946)
!957 = !DILocation(line: 716, column: 3, scope: !946)
!958 = distinct !DISubprogram(name: "HSTM_ISO_TblmAdd", scope: !1, file: !1, line: 719, type: !959, scopeLine: 719, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!959 = !DISubroutineType(types: !960)
!960 = !{!396, !396, !961, !388, !396, !388, !396}
!961 = !DIDerivedType(tag: DW_TAG_typedef, name: "HstmIsoTblmId", file: !1, line: 124, baseType: !123)
!962 = !DILocalVariable(name: "chipId", arg: 1, scope: !958, file: !1, line: 719, type: !396)
!963 = !DILocation(line: 719, column: 36, scope: !958)
!964 = !DILocalVariable(name: "tblId", arg: 2, scope: !958, file: !1, line: 719, type: !961)
!965 = !DILocation(line: 719, column: 58, scope: !958)
!966 = !DILocalVariable(name: "saveKey", arg: 3, scope: !958, file: !1, line: 719, type: !388)
!967 = !DILocation(line: 719, column: 71, scope: !958)
!968 = !DILocalVariable(name: "keySize", arg: 4, scope: !958, file: !1, line: 719, type: !396)
!969 = !DILocation(line: 719, column: 89, scope: !958)
!970 = !DILocalVariable(name: "saveData", arg: 5, scope: !958, file: !1, line: 719, type: !388)
!971 = !DILocation(line: 719, column: 104, scope: !958)
!972 = !DILocalVariable(name: "datasize", arg: 6, scope: !958, file: !1, line: 719, type: !396)
!973 = !DILocation(line: 719, column: 123, scope: !958)
!974 = !DILocalVariable(name: "HSTM_ISO_TblmAdd", scope: !958, file: !1, line: 720, type: !396)
!975 = !DILocation(line: 720, column: 12, scope: !958)
!976 = !DILocation(line: 721, column: 22, scope: !958)
!977 = !DILocation(line: 721, column: 3, scope: !958)
!978 = !DILocation(line: 722, column: 10, scope: !958)
!979 = !DILocation(line: 722, column: 3, scope: !958)
!980 = distinct !DISubprogram(name: "HSTM_ISO_TblmDelete", scope: !1, file: !1, line: 725, type: !981, scopeLine: 725, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!981 = !DISubroutineType(types: !982)
!982 = !{!396, !396, !961, !388, !396}
!983 = !DILocalVariable(name: "chipId", arg: 1, scope: !980, file: !1, line: 725, type: !396)
!984 = !DILocation(line: 725, column: 39, scope: !980)
!985 = !DILocalVariable(name: "tblId", arg: 2, scope: !980, file: !1, line: 725, type: !961)
!986 = !DILocation(line: 725, column: 61, scope: !980)
!987 = !DILocalVariable(name: "delKey", arg: 3, scope: !980, file: !1, line: 725, type: !388)
!988 = !DILocation(line: 725, column: 74, scope: !980)
!989 = !DILocalVariable(name: "keySize", arg: 4, scope: !980, file: !1, line: 725, type: !396)
!990 = !DILocation(line: 725, column: 91, scope: !980)
!991 = !DILocalVariable(name: "HSTM_ISO_TblmDelete", scope: !980, file: !1, line: 726, type: !396)
!992 = !DILocation(line: 726, column: 12, scope: !980)
!993 = !DILocation(line: 727, column: 22, scope: !980)
!994 = !DILocation(line: 727, column: 3, scope: !980)
!995 = !DILocation(line: 728, column: 10, scope: !980)
!996 = !DILocation(line: 728, column: 3, scope: !980)
!997 = distinct !DISubprogram(name: "HSTM_ISO_TblmQuery", scope: !1, file: !1, line: 731, type: !959, scopeLine: 731, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!998 = !DILocalVariable(name: "chipId", arg: 1, scope: !997, file: !1, line: 731, type: !396)
!999 = !DILocation(line: 731, column: 38, scope: !997)
!1000 = !DILocalVariable(name: "tblId", arg: 2, scope: !997, file: !1, line: 731, type: !961)
!1001 = !DILocation(line: 731, column: 60, scope: !997)
!1002 = !DILocalVariable(name: "queryKey", arg: 3, scope: !997, file: !1, line: 731, type: !388)
!1003 = !DILocation(line: 731, column: 73, scope: !997)
!1004 = !DILocalVariable(name: "keySize", arg: 4, scope: !997, file: !1, line: 731, type: !396)
!1005 = !DILocation(line: 731, column: 92, scope: !997)
!1006 = !DILocalVariable(name: "queryData", arg: 5, scope: !997, file: !1, line: 731, type: !388)
!1007 = !DILocation(line: 731, column: 107, scope: !997)
!1008 = !DILocalVariable(name: "datasize", arg: 6, scope: !997, file: !1, line: 731, type: !396)
!1009 = !DILocation(line: 731, column: 127, scope: !997)
!1010 = !DILocalVariable(name: "HSTM_ISO_TblmQuery", scope: !997, file: !1, line: 732, type: !396)
!1011 = !DILocation(line: 732, column: 12, scope: !997)
!1012 = !DILocation(line: 733, column: 22, scope: !997)
!1013 = !DILocation(line: 733, column: 3, scope: !997)
!1014 = !DILocation(line: 734, column: 10, scope: !997)
!1015 = !DILocation(line: 734, column: 3, scope: !997)
!1016 = distinct !DISubprogram(name: "HSTM_ISO_TblmQueryWithoutChip", scope: !1, file: !1, line: 737, type: !1017, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!396, !961, !388, !396, !388, !396}
!1019 = !DILocalVariable(name: "tblId", arg: 1, scope: !1016, file: !1, line: 737, type: !961)
!1020 = !DILocation(line: 737, column: 54, scope: !1016)
!1021 = !DILocalVariable(name: "queryKey", arg: 2, scope: !1016, file: !1, line: 737, type: !388)
!1022 = !DILocation(line: 737, column: 67, scope: !1016)
!1023 = !DILocalVariable(name: "keySize", arg: 3, scope: !1016, file: !1, line: 737, type: !396)
!1024 = !DILocation(line: 737, column: 86, scope: !1016)
!1025 = !DILocalVariable(name: "queryData", arg: 4, scope: !1016, file: !1, line: 737, type: !388)
!1026 = !DILocation(line: 737, column: 101, scope: !1016)
!1027 = !DILocalVariable(name: "dataSize", arg: 5, scope: !1016, file: !1, line: 737, type: !396)
!1028 = !DILocation(line: 737, column: 121, scope: !1016)
!1029 = !DILocalVariable(name: "HSTM_ISO_TblmQueryWithoutChip", scope: !1016, file: !1, line: 738, type: !396)
!1030 = !DILocation(line: 738, column: 12, scope: !1016)
!1031 = !DILocation(line: 739, column: 22, scope: !1016)
!1032 = !DILocation(line: 739, column: 3, scope: !1016)
!1033 = !DILocation(line: 740, column: 10, scope: !1016)
!1034 = !DILocation(line: 740, column: 3, scope: !1016)
!1035 = distinct !DISubprogram(name: "HSTM_S3BP_GetBpStatus", scope: !1, file: !1, line: 743, type: !414, scopeLine: 743, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1036 = !DILocalVariable(name: "chip_id", arg: 1, scope: !1035, file: !1, line: 743, type: !396)
!1037 = !DILocation(line: 743, column: 41, scope: !1035)
!1038 = !DILocalVariable(name: "HSTM_S3BP_GetBpStatus", scope: !1035, file: !1, line: 744, type: !396)
!1039 = !DILocation(line: 744, column: 12, scope: !1035)
!1040 = !DILocation(line: 745, column: 22, scope: !1035)
!1041 = !DILocation(line: 745, column: 3, scope: !1035)
!1042 = !DILocation(line: 746, column: 10, scope: !1035)
!1043 = !DILocation(line: 746, column: 3, scope: !1035)
!1044 = distinct !DISubprogram(name: "HSTM_S3BP_IsSfuBpClosed", scope: !1, file: !1, line: 749, type: !425, scopeLine: 749, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1045 = !DILocalVariable(name: "chipId", arg: 1, scope: !1044, file: !1, line: 749, type: !396)
!1046 = !DILocation(line: 749, column: 40, scope: !1044)
!1047 = !DILocalVariable(name: "HSTM_S3BP_IsSfuBpClosed", scope: !1044, file: !1, line: 750, type: !427)
!1048 = !DILocation(line: 750, column: 9, scope: !1044)
!1049 = !DILocation(line: 751, column: 3, scope: !1044)
!1050 = !DILocation(line: 752, column: 10, scope: !1044)
!1051 = !DILocation(line: 752, column: 3, scope: !1044)
!1052 = distinct !DISubprogram(name: "SSP_DiagLog", scope: !1, file: !1, line: 755, type: !1053, scopeLine: 755, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!4, !4, !4, !949}
!1055 = !DILocalVariable(name: "hAppCid", arg: 1, scope: !1052, file: !1, line: 755, type: !4)
!1056 = !DILocation(line: 755, column: 39, scope: !1052)
!1057 = !DILocalVariable(name: "uiInfoId", arg: 2, scope: !1052, file: !1, line: 755, type: !4)
!1058 = !DILocation(line: 755, column: 61, scope: !1052)
!1059 = !DILocalVariable(name: "pcFmt", arg: 3, scope: !1052, file: !1, line: 755, type: !949)
!1060 = !DILocation(line: 755, column: 83, scope: !1052)
!1061 = !DILocalVariable(name: "SSP_DiagLog", scope: !1052, file: !1, line: 756, type: !4)
!1062 = !DILocation(line: 756, column: 16, scope: !1052)
!1063 = !DILocation(line: 757, column: 22, scope: !1052)
!1064 = !DILocation(line: 757, column: 3, scope: !1052)
!1065 = !DILocation(line: 758, column: 10, scope: !1052)
!1066 = !DILocation(line: 758, column: 3, scope: !1052)
!1067 = distinct !DISubprogram(name: "fei_hstm_dfx_s3bp_check", scope: !1, file: !1, line: 761, type: !1068, scopeLine: 761, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!396, !1070, !1077}
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stHSTM_CHECK_KEY_COMMON", file: !1, line: 452, size: 160, elements: !1072)
!1072 = !{!1073, !1074, !1075, !1076}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "uiChipType", scope: !1071, file: !1, line: 453, baseType: !396, size: 32)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "uiChipID", scope: !1071, file: !1, line: 454, baseType: !396, size: 32, offset: 32)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "uiCheckId", scope: !1071, file: !1, line: 455, baseType: !396, size: 32, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "pThis", scope: !1071, file: !1, line: 456, baseType: !388, size: 64, offset: 96)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stHSTM_CHECK_DATA_COMMON", file: !1, line: 444, size: 192, elements: !1079)
!1079 = !{!1080, !1081, !1082, !1084, !1085}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "uiRet", scope: !1078, file: !1, line: 445, baseType: !396, size: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "uiFaultId", scope: !1078, file: !1, line: 446, baseType: !396, size: 32, offset: 32)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "faultId", scope: !1078, file: !1, line: 447, baseType: !1083, size: 32, offset: 64)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "HstmFaultId", file: !1, line: 96, baseType: !144)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "instanceId", scope: !1078, file: !1, line: 448, baseType: !396, size: 32, offset: 96)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "pcieResult", scope: !1078, file: !1, line: 449, baseType: !388, size: 64, offset: 128)
!1086 = !DILocalVariable(name: "comm_key", arg: 1, scope: !1067, file: !1, line: 761, type: !1070)
!1087 = !DILocation(line: 761, column: 66, scope: !1067)
!1088 = !DILocalVariable(name: "comm_data", arg: 2, scope: !1067, file: !1, line: 761, type: !1077)
!1089 = !DILocation(line: 761, column: 109, scope: !1067)
!1090 = !DILocalVariable(name: "fei_hstm_dfx_s3bp_check", scope: !1067, file: !1, line: 762, type: !396)
!1091 = !DILocation(line: 762, column: 12, scope: !1067)
!1092 = !DILocation(line: 763, column: 22, scope: !1067)
!1093 = !DILocation(line: 763, column: 3, scope: !1067)
!1094 = !DILocation(line: 764, column: 10, scope: !1067)
!1095 = !DILocation(line: 764, column: 3, scope: !1067)
!1096 = distinct !DISubprogram(name: "hstm_dfx_fic_linklost_local_data_init_by_tblm", scope: !1, file: !1, line: 767, type: !456, scopeLine: 767, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1097 = !DILocalVariable(name: "hstm_dfx_fic_linklost_local_data_init_by_tblm", scope: !1096, file: !1, line: 768, type: !396)
!1098 = !DILocation(line: 768, column: 12, scope: !1096)
!1099 = !DILocation(line: 769, column: 22, scope: !1096)
!1100 = !DILocation(line: 769, column: 3, scope: !1096)
!1101 = !DILocation(line: 770, column: 10, scope: !1096)
!1102 = !DILocation(line: 770, column: 3, scope: !1096)
!1103 = distinct !DISubprogram(name: "hstm_dfx_fic_linklost_turn_fsm_into_array", scope: !1, file: !1, line: 773, type: !1104, scopeLine: 773, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{null}
!1106 = !DILocation(line: 774, column: 3, scope: !1103)
!1107 = distinct !DISubprogram(name: "hstm_dfx_hal_heart_check", scope: !1, file: !1, line: 777, type: !1068, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1108 = !DILocalVariable(name: "check_key", arg: 1, scope: !1107, file: !1, line: 777, type: !1070)
!1109 = !DILocation(line: 777, column: 67, scope: !1107)
!1110 = !DILocalVariable(name: "comm_data", arg: 2, scope: !1107, file: !1, line: 777, type: !1077)
!1111 = !DILocation(line: 777, column: 111, scope: !1107)
!1112 = !DILocalVariable(name: "hstm_dfx_hal_heart_check", scope: !1107, file: !1, line: 778, type: !396)
!1113 = !DILocation(line: 778, column: 12, scope: !1107)
!1114 = !DILocation(line: 779, column: 22, scope: !1107)
!1115 = !DILocation(line: 779, column: 3, scope: !1107)
!1116 = !DILocation(line: 780, column: 10, scope: !1107)
!1117 = !DILocation(line: 780, column: 3, scope: !1107)
!1118 = distinct !DISubprogram(name: "hstm_dfx_s3bp_main_check_timer_proc", scope: !1, file: !1, line: 783, type: !1119, scopeLine: 783, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!396, !388, !388}
!1121 = !DILocalVariable(name: "pMsg", arg: 1, scope: !1118, file: !1, line: 783, type: !388)
!1122 = !DILocation(line: 783, column: 52, scope: !1118)
!1123 = !DILocalVariable(name: "pThis", arg: 2, scope: !1118, file: !1, line: 783, type: !388)
!1124 = !DILocation(line: 783, column: 64, scope: !1118)
!1125 = !DILocalVariable(name: "hstm_dfx_s3bp_main_check_timer_proc", scope: !1118, file: !1, line: 784, type: !396)
!1126 = !DILocation(line: 784, column: 12, scope: !1118)
!1127 = !DILocation(line: 785, column: 22, scope: !1118)
!1128 = !DILocation(line: 785, column: 3, scope: !1118)
!1129 = !DILocation(line: 786, column: 10, scope: !1118)
!1130 = !DILocation(line: 786, column: 3, scope: !1118)
!1131 = distinct !DISubprogram(name: "hstm_dfx_s3bp_msg_proc", scope: !1, file: !1, line: 789, type: !1119, scopeLine: 789, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1132 = !DILocalVariable(name: "pMsg", arg: 1, scope: !1131, file: !1, line: 789, type: !388)
!1133 = !DILocation(line: 789, column: 39, scope: !1131)
!1134 = !DILocalVariable(name: "pThis", arg: 2, scope: !1131, file: !1, line: 789, type: !388)
!1135 = !DILocation(line: 789, column: 51, scope: !1131)
!1136 = !DILocalVariable(name: "hstm_dfx_s3bp_msg_proc", scope: !1131, file: !1, line: 790, type: !396)
!1137 = !DILocation(line: 790, column: 12, scope: !1131)
!1138 = !DILocation(line: 791, column: 22, scope: !1131)
!1139 = !DILocation(line: 791, column: 3, scope: !1131)
!1140 = !DILocation(line: 792, column: 10, scope: !1131)
!1141 = !DILocation(line: 792, column: 3, scope: !1131)
!1142 = distinct !DISubprogram(name: "hstm_iso_backup_board_type_get", scope: !1, file: !1, line: 795, type: !456, scopeLine: 795, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1143 = !DILocalVariable(name: "hstm_iso_backup_board_type_get", scope: !1142, file: !1, line: 796, type: !396)
!1144 = !DILocation(line: 796, column: 12, scope: !1142)
!1145 = !DILocation(line: 797, column: 22, scope: !1142)
!1146 = !DILocation(line: 797, column: 3, scope: !1142)
!1147 = !DILocation(line: 798, column: 10, scope: !1142)
!1148 = !DILocation(line: 798, column: 3, scope: !1142)
!1149 = distinct !DISubprogram(name: "hstm_iso_bkb_type_get", scope: !1, file: !1, line: 801, type: !456, scopeLine: 801, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1150 = !DILocalVariable(name: "hstm_iso_bkb_type_get", scope: !1149, file: !1, line: 802, type: !396)
!1151 = !DILocation(line: 802, column: 12, scope: !1149)
!1152 = !DILocation(line: 803, column: 22, scope: !1149)
!1153 = !DILocation(line: 803, column: 3, scope: !1149)
!1154 = !DILocation(line: 804, column: 10, scope: !1149)
!1155 = !DILocation(line: 804, column: 3, scope: !1149)
!1156 = distinct !DISubprogram(name: "hstm_iso_bkp_ver_get", scope: !1, file: !1, line: 807, type: !456, scopeLine: 807, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1157 = !DILocalVariable(name: "hstm_iso_bkp_ver_get", scope: !1156, file: !1, line: 808, type: !396)
!1158 = !DILocation(line: 808, column: 12, scope: !1156)
!1159 = !DILocation(line: 809, column: 22, scope: !1156)
!1160 = !DILocation(line: 809, column: 3, scope: !1156)
!1161 = !DILocation(line: 810, column: 10, scope: !1156)
!1162 = !DILocation(line: 810, column: 3, scope: !1156)
!1163 = distinct !DISubprogram(name: "hstm_iso_common_api_init", scope: !1, file: !1, line: 813, type: !456, scopeLine: 813, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1164 = !DILocalVariable(name: "hstm_iso_common_api_init", scope: !1163, file: !1, line: 814, type: !396)
!1165 = !DILocation(line: 814, column: 12, scope: !1163)
!1166 = !DILocation(line: 815, column: 22, scope: !1163)
!1167 = !DILocation(line: 815, column: 3, scope: !1163)
!1168 = !DILocation(line: 816, column: 10, scope: !1163)
!1169 = !DILocation(line: 816, column: 3, scope: !1163)
!1170 = distinct !DISubprogram(name: "hstm_iso_dfx_fic_serdes_check", scope: !1, file: !1, line: 819, type: !1068, scopeLine: 819, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1171 = !DILocalVariable(name: "check_key", arg: 1, scope: !1170, file: !1, line: 819, type: !1070)
!1172 = !DILocation(line: 819, column: 72, scope: !1170)
!1173 = !DILocalVariable(name: "comm_data", arg: 2, scope: !1170, file: !1, line: 819, type: !1077)
!1174 = !DILocation(line: 819, column: 116, scope: !1170)
!1175 = !DILocalVariable(name: "hstm_iso_dfx_fic_serdes_check", scope: !1170, file: !1, line: 820, type: !396)
!1176 = !DILocation(line: 820, column: 12, scope: !1170)
!1177 = !DILocation(line: 821, column: 22, scope: !1170)
!1178 = !DILocation(line: 821, column: 3, scope: !1170)
!1179 = !DILocation(line: 822, column: 10, scope: !1170)
!1180 = !DILocation(line: 822, column: 3, scope: !1170)
!1181 = distinct !DISubprogram(name: "hstm_iso_fei_forward_mode_get", scope: !1, file: !1, line: 825, type: !1182, scopeLine: 825, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!1184}
!1184 = !DIDerivedType(tag: DW_TAG_typedef, name: "HstmFwdMode", file: !1, line: 102, baseType: !152)
!1185 = !DILocalVariable(name: "hstm_iso_fei_forward_mode_get", scope: !1181, file: !1, line: 826, type: !1184)
!1186 = !DILocation(line: 826, column: 15, scope: !1181)
!1187 = !DILocation(line: 827, column: 22, scope: !1181)
!1188 = !DILocation(line: 827, column: 3, scope: !1181)
!1189 = !DILocation(line: 828, column: 10, scope: !1181)
!1190 = !DILocation(line: 828, column: 3, scope: !1181)
!1191 = distinct !DISubprogram(name: "hstm_iso_fenode_protect_mode_get", scope: !1, file: !1, line: 831, type: !456, scopeLine: 831, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1192 = !DILocalVariable(name: "hstm_iso_fenode_protect_mode_get", scope: !1191, file: !1, line: 832, type: !396)
!1193 = !DILocation(line: 832, column: 12, scope: !1191)
!1194 = !DILocation(line: 833, column: 22, scope: !1191)
!1195 = !DILocation(line: 833, column: 3, scope: !1191)
!1196 = !DILocation(line: 834, column: 10, scope: !1191)
!1197 = !DILocation(line: 834, column: 3, scope: !1191)
!1198 = distinct !DISubprogram(name: "hstm_iso_forward_mode_get", scope: !1, file: !1, line: 837, type: !1182, scopeLine: 837, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1199 = !DILocalVariable(name: "hstm_iso_forward_mode_get", scope: !1198, file: !1, line: 838, type: !1184)
!1200 = !DILocation(line: 838, column: 15, scope: !1198)
!1201 = !DILocation(line: 839, column: 22, scope: !1198)
!1202 = !DILocation(line: 839, column: 3, scope: !1198)
!1203 = !DILocation(line: 840, column: 10, scope: !1198)
!1204 = !DILocation(line: 840, column: 3, scope: !1198)
!1205 = distinct !DISubprogram(name: "hstm_iso_hstm_low_latency_mode_env_get", scope: !1, file: !1, line: 843, type: !1206, scopeLine: 843, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!396, !438}
!1208 = !DILocalVariable(name: "mode", arg: 1, scope: !1205, file: !1, line: 843, type: !438)
!1209 = !DILocation(line: 843, column: 59, scope: !1205)
!1210 = !DILocalVariable(name: "hstm_iso_hstm_low_latency_mode_env_get", scope: !1205, file: !1, line: 844, type: !396)
!1211 = !DILocation(line: 844, column: 12, scope: !1205)
!1212 = !DILocation(line: 845, column: 22, scope: !1205)
!1213 = !DILocation(line: 845, column: 3, scope: !1205)
!1214 = !DILocation(line: 846, column: 10, scope: !1205)
!1215 = !DILocation(line: 846, column: 3, scope: !1205)
!1216 = distinct !DISubprogram(name: "hstm_iso_hstm_low_latency_mode_env_set", scope: !1, file: !1, line: 849, type: !1217, scopeLine: 849, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!396, !396, !396}
!1219 = !DILocalVariable(name: "mode", arg: 1, scope: !1216, file: !1, line: 849, type: !396)
!1220 = !DILocation(line: 849, column: 58, scope: !1216)
!1221 = !DILocalVariable(name: "trigger", arg: 2, scope: !1216, file: !1, line: 849, type: !396)
!1222 = !DILocation(line: 849, column: 73, scope: !1216)
!1223 = !DILocalVariable(name: "hstm_iso_hstm_low_latency_mode_env_set", scope: !1216, file: !1, line: 850, type: !396)
!1224 = !DILocation(line: 850, column: 12, scope: !1216)
!1225 = !DILocation(line: 851, column: 22, scope: !1216)
!1226 = !DILocation(line: 851, column: 3, scope: !1216)
!1227 = !DILocation(line: 852, column: 10, scope: !1216)
!1228 = !DILocation(line: 852, column: 3, scope: !1216)
!1229 = distinct !DISubprogram(name: "hstm_iso_local_hardtype_get", scope: !1, file: !1, line: 855, type: !1230, scopeLine: 855, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!157}
!1232 = !DILocalVariable(name: "hstm_iso_local_hardtype_get", scope: !1229, file: !1, line: 856, type: !157)
!1233 = !DILocation(line: 856, column: 37, scope: !1229)
!1234 = !DILocation(line: 857, column: 22, scope: !1229)
!1235 = !DILocation(line: 857, column: 3, scope: !1229)
!1236 = !DILocation(line: 858, column: 10, scope: !1229)
!1237 = !DILocation(line: 858, column: 3, scope: !1229)
!1238 = distinct !DISubprogram(name: "hstm_iso_msg_fei2feisw", scope: !1, file: !1, line: 861, type: !1239, scopeLine: 861, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!396, !319, !396, !388}
!1241 = !DILocalVariable(name: "hstm_msg_type", arg: 1, scope: !1238, file: !1, line: 861, type: !319)
!1242 = !DILocation(line: 861, column: 74, scope: !1238)
!1243 = !DILocalVariable(name: "uiMsgDataLen", arg: 2, scope: !1238, file: !1, line: 861, type: !396)
!1244 = !DILocation(line: 861, column: 98, scope: !1238)
!1245 = !DILocalVariable(name: "pstLpuMsgData", arg: 3, scope: !1238, file: !1, line: 861, type: !388)
!1246 = !DILocation(line: 861, column: 118, scope: !1238)
!1247 = !DILocalVariable(name: "hstm_iso_msg_fei2feisw", scope: !1238, file: !1, line: 862, type: !396)
!1248 = !DILocation(line: 862, column: 12, scope: !1238)
!1249 = !DILocation(line: 863, column: 22, scope: !1238)
!1250 = !DILocation(line: 863, column: 3, scope: !1238)
!1251 = !DILocation(line: 864, column: 10, scope: !1238)
!1252 = !DILocation(line: 864, column: 3, scope: !1238)
!1253 = distinct !DISubprogram(name: "hstm_iso_node_role_is_backup", scope: !1, file: !1, line: 867, type: !456, scopeLine: 867, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1254 = !DILocalVariable(name: "hstm_iso_node_role_is_backup", scope: !1253, file: !1, line: 868, type: !396)
!1255 = !DILocation(line: 868, column: 12, scope: !1253)
!1256 = !DILocation(line: 869, column: 22, scope: !1253)
!1257 = !DILocation(line: 869, column: 3, scope: !1253)
!1258 = !DILocation(line: 870, column: 10, scope: !1253)
!1259 = !DILocation(line: 870, column: 3, scope: !1253)
!1260 = distinct !DISubprogram(name: "hstm_iso_nof_tm_get", scope: !1, file: !1, line: 873, type: !456, scopeLine: 873, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1261 = !DILocalVariable(name: "hstm_iso_nof_tm_get", scope: !1260, file: !1, line: 874, type: !396)
!1262 = !DILocation(line: 874, column: 12, scope: !1260)
!1263 = !DILocation(line: 875, column: 22, scope: !1260)
!1264 = !DILocation(line: 875, column: 3, scope: !1260)
!1265 = !DILocation(line: 876, column: 10, scope: !1260)
!1266 = !DILocation(line: 876, column: 3, scope: !1260)
!1267 = distinct !DISubprogram(name: "hstm_iso_npu_protect_mode", scope: !1, file: !1, line: 879, type: !610, scopeLine: 879, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1268 = !DILocalVariable(name: "hstm_iso_npu_protect_mode", scope: !1267, file: !1, line: 880, type: !427)
!1269 = !DILocation(line: 880, column: 9, scope: !1267)
!1270 = !DILocation(line: 881, column: 3, scope: !1267)
!1271 = !DILocation(line: 882, column: 10, scope: !1267)
!1272 = !DILocation(line: 882, column: 3, scope: !1267)
!1273 = distinct !DISubprogram(name: "hstm_iso_service_type_get", scope: !1, file: !1, line: 885, type: !456, scopeLine: 885, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1274 = !DILocalVariable(name: "hstm_iso_service_type_get", scope: !1273, file: !1, line: 886, type: !396)
!1275 = !DILocation(line: 886, column: 12, scope: !1273)
!1276 = !DILocation(line: 887, column: 22, scope: !1273)
!1277 = !DILocation(line: 887, column: 3, scope: !1273)
!1278 = !DILocation(line: 888, column: 10, scope: !1273)
!1279 = !DILocation(line: 888, column: 3, scope: !1273)
!1280 = distinct !DISubprogram(name: "hstm_iso_slot_no_get", scope: !1, file: !1, line: 891, type: !456, scopeLine: 891, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1281 = !DILocalVariable(name: "hstm_iso_slot_no_get", scope: !1280, file: !1, line: 892, type: !396)
!1282 = !DILocation(line: 892, column: 12, scope: !1280)
!1283 = !DILocation(line: 893, column: 22, scope: !1280)
!1284 = !DILocation(line: 893, column: 3, scope: !1280)
!1285 = !DILocation(line: 894, column: 10, scope: !1280)
!1286 = !DILocation(line: 894, column: 3, scope: !1280)
!1287 = distinct !DISubprogram(name: "hstm_iso_xfic_state_get", scope: !1, file: !1, line: 897, type: !1288, scopeLine: 897, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!396, !396, !784, !388}
!1290 = !DILocalVariable(name: "chip_id", arg: 1, scope: !1287, file: !1, line: 897, type: !396)
!1291 = !DILocation(line: 897, column: 43, scope: !1287)
!1292 = !DILocalVariable(name: "ctrl_info", arg: 2, scope: !1287, file: !1, line: 897, type: !784)
!1293 = !DILocation(line: 897, column: 64, scope: !1287)
!1294 = !DILocalVariable(name: "pThis", arg: 3, scope: !1287, file: !1, line: 897, type: !388)
!1295 = !DILocation(line: 897, column: 81, scope: !1287)
!1296 = !DILocalVariable(name: "hstm_iso_xfic_state_get", scope: !1287, file: !1, line: 898, type: !396)
!1297 = !DILocation(line: 898, column: 12, scope: !1287)
!1298 = !DILocation(line: 899, column: 22, scope: !1287)
!1299 = !DILocation(line: 899, column: 3, scope: !1287)
!1300 = !DILocation(line: 900, column: 10, scope: !1287)
!1301 = !DILocation(line: 900, column: 3, scope: !1287)
!1302 = distinct !DISubprogram(name: "hstm_sll_free", scope: !1, file: !1, line: 903, type: !1303, scopeLine: 903, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{null, !1305}
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SLL", file: !1, line: 437, size: 256, elements: !1307)
!1307 = !{!1308, !1315, !1316, !1317}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "Head", scope: !1306, file: !1, line: 438, baseType: !1309, size: 128)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SLL_NODE", file: !1, line: 432, size: 128, elements: !1310)
!1310 = !{!1311, !1313}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "pNext", scope: !1309, file: !1, line: 433, baseType: !1312, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "uiHandle", scope: !1309, file: !1, line: 434, baseType: !1314, size: 64, offset: 64)
!1314 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "Tail", scope: !1306, file: !1, line: 439, baseType: !1312, size: 64, offset: 128)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "uiCount", scope: !1306, file: !1, line: 440, baseType: !4, size: 32, offset: 192)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "wetdt_padding_0", scope: !1306, file: !1, line: 441, baseType: !1318, size: 32, offset: 224)
!1318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !503, size: 32, elements: !1319)
!1319 = !{!1320}
!1320 = !DISubrange(count: 4)
!1321 = !DILocalVariable(name: "head", arg: 1, scope: !1302, file: !1, line: 903, type: !1305)
!1322 = !DILocation(line: 903, column: 32, scope: !1302)
!1323 = !DILocation(line: 904, column: 3, scope: !1302)
!1324 = distinct !DISubprogram(name: "hstm_sll_node_add", scope: !1, file: !1, line: 907, type: !1325, scopeLine: 907, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!396, !1305, !784, !396}
!1327 = !DILocalVariable(name: "head", arg: 1, scope: !1324, file: !1, line: 907, type: !1305)
!1328 = !DILocation(line: 907, column: 40, scope: !1324)
!1329 = !DILocalVariable(name: "usr_data", arg: 2, scope: !1324, file: !1, line: 907, type: !784)
!1330 = !DILocation(line: 907, column: 58, scope: !1324)
!1331 = !DILocalVariable(name: "data_len", arg: 3, scope: !1324, file: !1, line: 907, type: !396)
!1332 = !DILocation(line: 907, column: 77, scope: !1324)
!1333 = !DILocalVariable(name: "hstm_sll_node_add", scope: !1324, file: !1, line: 908, type: !396)
!1334 = !DILocation(line: 908, column: 12, scope: !1324)
!1335 = !DILocation(line: 909, column: 22, scope: !1324)
!1336 = !DILocation(line: 909, column: 3, scope: !1324)
!1337 = !DILocation(line: 910, column: 10, scope: !1324)
!1338 = !DILocation(line: 910, column: 3, scope: !1324)
!1339 = distinct !DISubprogram(name: "hsu_ex_dfx_heart_status_report", scope: !1, file: !1, line: 913, type: !1340, scopeLine: 913, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!396, !396, !396, !388}
!1342 = !DILocalVariable(name: "almState", arg: 1, scope: !1339, file: !1, line: 913, type: !396)
!1343 = !DILocation(line: 913, column: 50, scope: !1339)
!1344 = !DILocalVariable(name: "lastState", arg: 2, scope: !1339, file: !1, line: 913, type: !396)
!1345 = !DILocation(line: 913, column: 69, scope: !1339)
!1346 = !DILocalVariable(name: "pThis", arg: 3, scope: !1339, file: !1, line: 913, type: !388)
!1347 = !DILocation(line: 913, column: 86, scope: !1339)
!1348 = !DILocalVariable(name: "hsu_ex_dfx_heart_status_report", scope: !1339, file: !1, line: 914, type: !396)
!1349 = !DILocation(line: 914, column: 12, scope: !1339)
!1350 = !DILocation(line: 915, column: 22, scope: !1339)
!1351 = !DILocation(line: 915, column: 3, scope: !1339)
!1352 = !DILocation(line: 916, column: 10, scope: !1339)
!1353 = !DILocation(line: 916, column: 3, scope: !1339)
!1354 = distinct !DISubprogram(name: "hsu_ex_flex_voq_cmd_probe_VR", scope: !1, file: !1, line: 919, type: !1119, scopeLine: 919, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1355 = !DILocalVariable(name: "p_key", arg: 1, scope: !1354, file: !1, line: 919, type: !388)
!1356 = !DILocation(line: 919, column: 45, scope: !1354)
!1357 = !DILocalVariable(name: "p_data", arg: 2, scope: !1354, file: !1, line: 919, type: !388)
!1358 = !DILocation(line: 919, column: 58, scope: !1354)
!1359 = !DILocalVariable(name: "hsu_ex_flex_voq_cmd_probe_VR", scope: !1354, file: !1, line: 920, type: !396)
!1360 = !DILocation(line: 920, column: 12, scope: !1354)
!1361 = !DILocation(line: 921, column: 22, scope: !1354)
!1362 = !DILocation(line: 921, column: 3, scope: !1354)
!1363 = !DILocation(line: 922, column: 10, scope: !1354)
!1364 = !DILocation(line: 922, column: 3, scope: !1354)
!1365 = distinct !DISubprogram(name: "hsu_ex_flex_voq_vsq_on_or_off", scope: !1, file: !1, line: 925, type: !653, scopeLine: 925, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1366 = !DILocalVariable(name: "chip_id", arg: 1, scope: !1365, file: !1, line: 925, type: !396)
!1367 = !DILocation(line: 925, column: 49, scope: !1365)
!1368 = !DILocalVariable(name: "vsq_id", arg: 2, scope: !1365, file: !1, line: 925, type: !396)
!1369 = !DILocation(line: 925, column: 67, scope: !1365)
!1370 = !DILocalVariable(name: "dst_g_fic_id", arg: 3, scope: !1365, file: !1, line: 925, type: !396)
!1371 = !DILocation(line: 925, column: 84, scope: !1365)
!1372 = !DILocalVariable(name: "tm_port", arg: 4, scope: !1365, file: !1, line: 925, type: !396)
!1373 = !DILocation(line: 925, column: 107, scope: !1365)
!1374 = !DILocalVariable(name: "valid_flag", arg: 5, scope: !1365, file: !1, line: 925, type: !396)
!1375 = !DILocation(line: 925, column: 125, scope: !1365)
!1376 = !DILocalVariable(name: "wred_no", arg: 6, scope: !1365, file: !1, line: 925, type: !396)
!1377 = !DILocation(line: 925, column: 146, scope: !1365)
!1378 = !DILocalVariable(name: "hsu_ex_flex_voq_vsq_on_or_off", scope: !1365, file: !1, line: 926, type: !396)
!1379 = !DILocation(line: 926, column: 12, scope: !1365)
!1380 = !DILocation(line: 927, column: 22, scope: !1365)
!1381 = !DILocation(line: 927, column: 3, scope: !1365)
!1382 = !DILocation(line: 928, column: 10, scope: !1365)
!1383 = !DILocation(line: 928, column: 3, scope: !1365)
!1384 = distinct !DISubprogram(name: "hsu_ex_hstm_dfx_alm_report", scope: !1, file: !1, line: 931, type: !1385, scopeLine: 931, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!396, !1387, !62}
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_typedef, name: "HSTM_DFX_ALARM_INFO", file: !1, line: 40, baseType: !1389)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 34, size: 320, elements: !1390)
!1390 = !{!1391, !1392, !1393, !1394, !1404}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "alm_id", scope: !1389, file: !1, line: 35, baseType: !396, size: 32)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "fault_chip", scope: !1389, file: !1, line: 36, baseType: !396, size: 32, offset: 32)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "fault_type", scope: !1389, file: !1, line: 37, baseType: !396, size: 32, offset: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "ext", scope: !1389, file: !1, line: 38, baseType: !1395, size: 192, offset: 96)
!1395 = !DIDerivedType(tag: DW_TAG_typedef, name: "HSTM_DFX_ALARM_INFO_EXT", file: !1, line: 32, baseType: !1396)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 25, size: 192, elements: !1397)
!1397 = !{!1398, !1399, !1400, !1401, !1402, !1403}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "tb_no", scope: !1396, file: !1, line: 26, baseType: !396, size: 32)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "cos_no", scope: !1396, file: !1, line: 27, baseType: !396, size: 32, offset: 32)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "slot_id", scope: !1396, file: !1, line: 28, baseType: !396, size: 32, offset: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "src_board", scope: !1396, file: !1, line: 29, baseType: !396, size: 32, offset: 96)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "dst_board", scope: !1396, file: !1, line: 30, baseType: !396, size: 32, offset: 128)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "almTypeExt", scope: !1396, file: !1, line: 31, baseType: !396, size: 32, offset: 160)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "is_fic", scope: !1389, file: !1, line: 39, baseType: !396, size: 32, offset: 288)
!1405 = !DILocalVariable(name: "almInfo", arg: 1, scope: !1384, file: !1, line: 931, type: !1387)
!1406 = !DILocation(line: 931, column: 58, scope: !1384)
!1407 = !DILocalVariable(name: "alarmState", arg: 2, scope: !1384, file: !1, line: 931, type: !62)
!1408 = !DILocation(line: 931, column: 90, scope: !1384)
!1409 = !DILocalVariable(name: "hsu_ex_hstm_dfx_alm_report", scope: !1384, file: !1, line: 932, type: !396)
!1410 = !DILocation(line: 932, column: 12, scope: !1384)
!1411 = !DILocation(line: 933, column: 22, scope: !1384)
!1412 = !DILocation(line: 933, column: 3, scope: !1384)
!1413 = !DILocation(line: 934, column: 10, scope: !1384)
!1414 = !DILocation(line: 934, column: 3, scope: !1384)
!1415 = distinct !DISubprogram(name: "hsu_ex_hstm_dfx_fe_check_id_get", scope: !1, file: !1, line: 937, type: !414, scopeLine: 937, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1416 = !DILocalVariable(name: "ffa_check_id", arg: 1, scope: !1415, file: !1, line: 937, type: !396)
!1417 = !DILocation(line: 937, column: 51, scope: !1415)
!1418 = !DILocalVariable(name: "hsu_ex_hstm_dfx_fe_check_id_get", scope: !1415, file: !1, line: 938, type: !396)
!1419 = !DILocation(line: 938, column: 12, scope: !1415)
!1420 = !DILocation(line: 939, column: 22, scope: !1415)
!1421 = !DILocation(line: 939, column: 3, scope: !1415)
!1422 = !DILocation(line: 940, column: 10, scope: !1415)
!1423 = !DILocation(line: 940, column: 3, scope: !1415)
!1424 = distinct !DISubprogram(name: "hsu_ex_hstm_dfx_fic_serdes_err_report", scope: !1, file: !1, line: 943, type: !1425, scopeLine: 943, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!396, !396, !396, !396, !388}
!1427 = !DILocalVariable(name: "chipId", arg: 1, scope: !1424, file: !1, line: 943, type: !396)
!1428 = !DILocation(line: 943, column: 57, scope: !1424)
!1429 = !DILocalVariable(name: "linkId", arg: 2, scope: !1424, file: !1, line: 943, type: !396)
!1430 = !DILocation(line: 943, column: 74, scope: !1424)
!1431 = !DILocalVariable(name: "linkErrType", arg: 3, scope: !1424, file: !1, line: 943, type: !396)
!1432 = !DILocation(line: 943, column: 91, scope: !1424)
!1433 = !DILocalVariable(name: "pThis", arg: 4, scope: !1424, file: !1, line: 943, type: !388)
!1434 = !DILocation(line: 943, column: 110, scope: !1424)
!1435 = !DILocalVariable(name: "hsu_ex_hstm_dfx_fic_serdes_err_report", scope: !1424, file: !1, line: 944, type: !396)
!1436 = !DILocation(line: 944, column: 12, scope: !1424)
!1437 = !DILocation(line: 945, column: 22, scope: !1424)
!1438 = !DILocation(line: 945, column: 3, scope: !1424)
!1439 = !DILocation(line: 946, column: 10, scope: !1424)
!1440 = !DILocation(line: 946, column: 3, scope: !1424)
!1441 = distinct !DISubprogram(name: "hsu_ex_hstm_sfu_start_flag", scope: !1, file: !1, line: 949, type: !414, scopeLine: 949, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1442 = !DILocalVariable(name: "sfu_slot", arg: 1, scope: !1441, file: !1, line: 949, type: !396)
!1443 = !DILocation(line: 949, column: 46, scope: !1441)
!1444 = !DILocalVariable(name: "hsu_ex_hstm_sfu_start_flag", scope: !1441, file: !1, line: 950, type: !396)
!1445 = !DILocation(line: 950, column: 12, scope: !1441)
!1446 = !DILocation(line: 951, column: 22, scope: !1441)
!1447 = !DILocation(line: 951, column: 3, scope: !1441)
!1448 = !DILocation(line: 952, column: 10, scope: !1441)
!1449 = !DILocation(line: 952, column: 3, scope: !1441)
!1450 = distinct !DISubprogram(name: "hsu_os_FEI_FLOWPROB_Init", scope: !1, file: !1, line: 955, type: !1451, scopeLine: 955, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!396, !388}
!1453 = !DILocalVariable(name: "pThis", arg: 1, scope: !1450, file: !1, line: 955, type: !388)
!1454 = !DILocation(line: 955, column: 41, scope: !1450)
!1455 = !DILocalVariable(name: "hsu_os_FEI_FLOWPROB_Init", scope: !1450, file: !1, line: 956, type: !396)
!1456 = !DILocation(line: 956, column: 12, scope: !1450)
!1457 = !DILocation(line: 957, column: 22, scope: !1450)
!1458 = !DILocation(line: 957, column: 3, scope: !1450)
!1459 = !DILocation(line: 958, column: 10, scope: !1450)
!1460 = !DILocation(line: 958, column: 3, scope: !1450)
!1461 = distinct !DISubprogram(name: "hsu_os_FLOWPROB_Start", scope: !1, file: !1, line: 961, type: !1462, scopeLine: 961, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!396, !396, !388, !438}
!1464 = !DILocalVariable(name: "cid", arg: 1, scope: !1461, file: !1, line: 961, type: !396)
!1465 = !DILocation(line: 961, column: 41, scope: !1461)
!1466 = !DILocalVariable(name: "probInfo", arg: 2, scope: !1461, file: !1, line: 961, type: !388)
!1467 = !DILocation(line: 961, column: 52, scope: !1461)
!1468 = !DILocalVariable(name: "probId", arg: 3, scope: !1461, file: !1, line: 961, type: !438)
!1469 = !DILocation(line: 961, column: 72, scope: !1461)
!1470 = !DILocalVariable(name: "hsu_os_FLOWPROB_Start", scope: !1461, file: !1, line: 962, type: !396)
!1471 = !DILocation(line: 962, column: 12, scope: !1461)
!1472 = !DILocation(line: 963, column: 22, scope: !1461)
!1473 = !DILocation(line: 963, column: 3, scope: !1461)
!1474 = !DILocation(line: 964, column: 10, scope: !1461)
!1475 = !DILocation(line: 964, column: 3, scope: !1461)
!1476 = distinct !DISubprogram(name: "iof_bootinfo_printf", scope: !1, file: !1, line: 967, type: !1477, scopeLine: 967, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{null, !890}
!1479 = !DILocalVariable(name: "fmt", arg: 1, scope: !1476, file: !1, line: 967, type: !890)
!1480 = !DILocation(line: 967, column: 32, scope: !1476)
!1481 = !DILocation(line: 968, column: 3, scope: !1476)
!1482 = distinct !DISubprogram(name: "memcpy_s", scope: !1, file: !1, line: 971, type: !1483, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{!514, !388, !1314, !784, !1314}
!1485 = !DILocalVariable(name: "dest", arg: 1, scope: !1482, file: !1, line: 971, type: !388)
!1486 = !DILocation(line: 971, column: 20, scope: !1482)
!1487 = !DILocalVariable(name: "destMax", arg: 2, scope: !1482, file: !1, line: 971, type: !1314)
!1488 = !DILocation(line: 971, column: 40, scope: !1482)
!1489 = !DILocalVariable(name: "src", arg: 3, scope: !1482, file: !1, line: 971, type: !784)
!1490 = !DILocation(line: 971, column: 61, scope: !1482)
!1491 = !DILocalVariable(name: "count", arg: 4, scope: !1482, file: !1, line: 971, type: !1314)
!1492 = !DILocation(line: 971, column: 80, scope: !1482)
!1493 = !DILocalVariable(name: "memcpy_s", scope: !1482, file: !1, line: 972, type: !514)
!1494 = !DILocation(line: 972, column: 7, scope: !1482)
!1495 = !DILocation(line: 973, column: 22, scope: !1482)
!1496 = !DILocation(line: 973, column: 3, scope: !1482)
!1497 = !DILocation(line: 974, column: 10, scope: !1482)
!1498 = !DILocation(line: 974, column: 3, scope: !1482)
!1499 = distinct !DISubprogram(name: "memset_s", scope: !1, file: !1, line: 977, type: !1500, scopeLine: 977, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!514, !388, !1314, !514, !1314}
!1502 = !DILocalVariable(name: "dest", arg: 1, scope: !1499, file: !1, line: 977, type: !388)
!1503 = !DILocation(line: 977, column: 20, scope: !1499)
!1504 = !DILocalVariable(name: "destMax", arg: 2, scope: !1499, file: !1, line: 977, type: !1314)
!1505 = !DILocation(line: 977, column: 40, scope: !1499)
!1506 = !DILocalVariable(name: "c", arg: 3, scope: !1499, file: !1, line: 977, type: !514)
!1507 = !DILocation(line: 977, column: 53, scope: !1499)
!1508 = !DILocalVariable(name: "count", arg: 4, scope: !1499, file: !1, line: 977, type: !1314)
!1509 = !DILocation(line: 977, column: 70, scope: !1499)
!1510 = !DILocalVariable(name: "memset_s", scope: !1499, file: !1, line: 978, type: !514)
!1511 = !DILocation(line: 978, column: 7, scope: !1499)
!1512 = !DILocation(line: 979, column: 22, scope: !1499)
!1513 = !DILocation(line: 979, column: 3, scope: !1499)
!1514 = !DILocation(line: 980, column: 10, scope: !1499)
!1515 = !DILocation(line: 980, column: 3, scope: !1499)
!1516 = distinct !DISubprogram(name: "snprintf_s", scope: !1, file: !1, line: 983, type: !1517, scopeLine: 983, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!514, !890, !1314, !1314, !949}
!1519 = !DILocalVariable(name: "strDest", arg: 1, scope: !1516, file: !1, line: 983, type: !890)
!1520 = !DILocation(line: 983, column: 22, scope: !1516)
!1521 = !DILocalVariable(name: "destMax", arg: 2, scope: !1516, file: !1, line: 983, type: !1314)
!1522 = !DILocation(line: 983, column: 45, scope: !1516)
!1523 = !DILocalVariable(name: "count", arg: 3, scope: !1516, file: !1, line: 983, type: !1314)
!1524 = !DILocation(line: 983, column: 68, scope: !1516)
!1525 = !DILocalVariable(name: "format", arg: 4, scope: !1516, file: !1, line: 983, type: !949)
!1526 = !DILocation(line: 983, column: 87, scope: !1516)
!1527 = !DILocalVariable(name: "snprintf_s", scope: !1516, file: !1, line: 984, type: !514)
!1528 = !DILocation(line: 984, column: 7, scope: !1516)
!1529 = !DILocation(line: 985, column: 22, scope: !1516)
!1530 = !DILocation(line: 985, column: 3, scope: !1516)
!1531 = !DILocation(line: 986, column: 10, scope: !1516)
!1532 = !DILocation(line: 986, column: 3, scope: !1516)
!1533 = distinct !DISubprogram(name: "snprintf_truncated_s", scope: !1, file: !1, line: 989, type: !1534, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!514, !890, !1314, !949}
!1536 = !DILocalVariable(name: "strDest", arg: 1, scope: !1533, file: !1, line: 989, type: !890)
!1537 = !DILocation(line: 989, column: 32, scope: !1533)
!1538 = !DILocalVariable(name: "destMax", arg: 2, scope: !1533, file: !1, line: 989, type: !1314)
!1539 = !DILocation(line: 989, column: 55, scope: !1533)
!1540 = !DILocalVariable(name: "format", arg: 3, scope: !1533, file: !1, line: 989, type: !949)
!1541 = !DILocation(line: 989, column: 76, scope: !1533)
!1542 = !DILocalVariable(name: "snprintf_truncated_s", scope: !1533, file: !1, line: 990, type: !514)
!1543 = !DILocation(line: 990, column: 7, scope: !1533)
!1544 = !DILocation(line: 991, column: 22, scope: !1533)
!1545 = !DILocation(line: 991, column: 3, scope: !1533)
!1546 = !DILocation(line: 992, column: 10, scope: !1533)
!1547 = !DILocation(line: 992, column: 3, scope: !1533)
!1548 = distinct !DISubprogram(name: "sprintf_s", scope: !1, file: !1, line: 995, type: !1534, scopeLine: 995, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1549 = !DILocalVariable(name: "strDest", arg: 1, scope: !1548, file: !1, line: 995, type: !890)
!1550 = !DILocation(line: 995, column: 21, scope: !1548)
!1551 = !DILocalVariable(name: "destMax", arg: 2, scope: !1548, file: !1, line: 995, type: !1314)
!1552 = !DILocation(line: 995, column: 44, scope: !1548)
!1553 = !DILocalVariable(name: "format", arg: 3, scope: !1548, file: !1, line: 995, type: !949)
!1554 = !DILocation(line: 995, column: 65, scope: !1548)
!1555 = !DILocalVariable(name: "sprintf_s", scope: !1548, file: !1, line: 996, type: !514)
!1556 = !DILocation(line: 996, column: 7, scope: !1548)
!1557 = !DILocation(line: 997, column: 22, scope: !1548)
!1558 = !DILocation(line: 997, column: 3, scope: !1548)
!1559 = !DILocation(line: 998, column: 10, scope: !1548)
!1560 = !DILocation(line: 998, column: 3, scope: !1548)
!1561 = distinct !DISubprogram(name: "strcpy_s", scope: !1, file: !1, line: 1001, type: !1534, scopeLine: 1001, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1562 = !DILocalVariable(name: "strDest", arg: 1, scope: !1561, file: !1, line: 1001, type: !890)
!1563 = !DILocation(line: 1001, column: 20, scope: !1561)
!1564 = !DILocalVariable(name: "destMax", arg: 2, scope: !1561, file: !1, line: 1001, type: !1314)
!1565 = !DILocation(line: 1001, column: 43, scope: !1561)
!1566 = !DILocalVariable(name: "strSrc", arg: 3, scope: !1561, file: !1, line: 1001, type: !949)
!1567 = !DILocation(line: 1001, column: 64, scope: !1561)
!1568 = !DILocalVariable(name: "strcpy_s", scope: !1561, file: !1, line: 1002, type: !514)
!1569 = !DILocation(line: 1002, column: 7, scope: !1561)
!1570 = !DILocation(line: 1003, column: 22, scope: !1561)
!1571 = !DILocation(line: 1003, column: 3, scope: !1561)
!1572 = !DILocation(line: 1004, column: 10, scope: !1561)
!1573 = !DILocation(line: 1004, column: 3, scope: !1561)
!1574 = distinct !DISubprogram(name: "strncpy_s", scope: !1, file: !1, line: 1007, type: !1575, scopeLine: 1007, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{!514, !890, !1314, !949, !1314}
!1577 = !DILocalVariable(name: "strDest", arg: 1, scope: !1574, file: !1, line: 1007, type: !890)
!1578 = !DILocation(line: 1007, column: 21, scope: !1574)
!1579 = !DILocalVariable(name: "destMax", arg: 2, scope: !1574, file: !1, line: 1007, type: !1314)
!1580 = !DILocation(line: 1007, column: 44, scope: !1574)
!1581 = !DILocalVariable(name: "strSrc", arg: 3, scope: !1574, file: !1, line: 1007, type: !949)
!1582 = !DILocation(line: 1007, column: 65, scope: !1574)
!1583 = !DILocalVariable(name: "count", arg: 4, scope: !1574, file: !1, line: 1007, type: !1314)
!1584 = !DILocation(line: 1007, column: 87, scope: !1574)
!1585 = !DILocalVariable(name: "strncpy_s", scope: !1574, file: !1, line: 1008, type: !514)
!1586 = !DILocation(line: 1008, column: 7, scope: !1574)
!1587 = !DILocation(line: 1009, column: 22, scope: !1574)
!1588 = !DILocation(line: 1009, column: 3, scope: !1574)
!1589 = !DILocation(line: 1010, column: 10, scope: !1574)
!1590 = !DILocation(line: 1010, column: 3, scope: !1574)
!1591 = distinct !DISubprogram(name: "vsnprintf_truncated_s", scope: !1, file: !1, line: 1013, type: !1592, scopeLine: 1013, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!514, !890, !1314, !949, !4}
!1594 = !DILocalVariable(name: "strDest", arg: 1, scope: !1591, file: !1, line: 1013, type: !890)
!1595 = !DILocation(line: 1013, column: 33, scope: !1591)
!1596 = !DILocalVariable(name: "destMax", arg: 2, scope: !1591, file: !1, line: 1013, type: !1314)
!1597 = !DILocation(line: 1013, column: 56, scope: !1591)
!1598 = !DILocalVariable(name: "format", arg: 3, scope: !1591, file: !1, line: 1013, type: !949)
!1599 = !DILocation(line: 1013, column: 77, scope: !1591)
!1600 = !DILocalVariable(name: "argList", arg: 4, scope: !1591, file: !1, line: 1013, type: !4)
!1601 = !DILocation(line: 1013, column: 98, scope: !1591)
!1602 = !DILocalVariable(name: "vsnprintf_truncated_s", scope: !1591, file: !1, line: 1014, type: !514)
!1603 = !DILocation(line: 1014, column: 7, scope: !1591)
!1604 = !DILocation(line: 1015, column: 22, scope: !1591)
!1605 = !DILocation(line: 1015, column: 3, scope: !1591)
!1606 = !DILocation(line: 1016, column: 10, scope: !1591)
!1607 = !DILocation(line: 1016, column: 3, scope: !1591)
!1608 = distinct !DISubprogram(name: "fei_hstm_check_ilk_get_tmid_and_ilkid", scope: !1, file: !1, line: 1019, type: !1609, scopeLine: 1020, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!396, !396, !396, !438, !438}
!1611 = !DILocalVariable(name: "fe_id", arg: 1, scope: !1608, file: !1, line: 1019, type: !396)
!1612 = !DILocation(line: 1019, column: 57, scope: !1608)
!1613 = !DILocalVariable(name: "fe_ilk_id", arg: 2, scope: !1608, file: !1, line: 1019, type: !396)
!1614 = !DILocation(line: 1019, column: 73, scope: !1608)
!1615 = !DILocalVariable(name: "tm_id", arg: 3, scope: !1608, file: !1, line: 1019, type: !438)
!1616 = !DILocation(line: 1019, column: 94, scope: !1608)
!1617 = !DILocalVariable(name: "tm_ilk_id", arg: 4, scope: !1608, file: !1, line: 1019, type: !438)
!1618 = !DILocation(line: 1019, column: 111, scope: !1608)
!1619 = !DILocation(line: 1021, column: 9, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1608, file: !1, line: 1021, column: 9)
!1621 = !DILocation(line: 1021, column: 15, scope: !1620)
!1622 = !DILocation(line: 1021, column: 9, scope: !1608)
!1623 = !DILocation(line: 1022, column: 7, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1620, file: !1, line: 1021, column: 21)
!1625 = !DILocation(line: 1023, column: 18, scope: !1624)
!1626 = !DILocation(line: 1023, column: 23, scope: !1624)
!1627 = !DILocation(line: 1023, column: 10, scope: !1624)
!1628 = !DILocation(line: 1023, column: 16, scope: !1624)
!1629 = !DILocation(line: 1024, column: 22, scope: !1624)
!1630 = !DILocation(line: 1024, column: 31, scope: !1624)
!1631 = !DILocation(line: 1024, column: 10, scope: !1624)
!1632 = !DILocation(line: 1024, column: 20, scope: !1624)
!1633 = !DILocation(line: 1025, column: 5, scope: !1624)
!1634 = !DILocation(line: 1025, column: 17, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1620, file: !1, line: 1025, column: 16)
!1636 = !DILocation(line: 1025, column: 23, scope: !1635)
!1637 = !DILocation(line: 1025, column: 34, scope: !1635)
!1638 = !DILocation(line: 1025, column: 40, scope: !1635)
!1639 = !DILocation(line: 1025, column: 30, scope: !1635)
!1640 = !DILocation(line: 1026, column: 7, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1635, file: !1, line: 1025, column: 46)
!1642 = !DILocation(line: 1027, column: 18, scope: !1641)
!1643 = !DILocation(line: 1027, column: 24, scope: !1641)
!1644 = !DILocation(line: 1027, column: 10, scope: !1641)
!1645 = !DILocation(line: 1027, column: 16, scope: !1641)
!1646 = !DILocation(line: 1028, column: 22, scope: !1641)
!1647 = !DILocation(line: 1028, column: 10, scope: !1641)
!1648 = !DILocation(line: 1028, column: 20, scope: !1641)
!1649 = !DILocation(line: 1029, column: 5, scope: !1641)
!1650 = !DILocation(line: 1030, column: 7, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1635, file: !1, line: 1029, column: 12)
!1652 = !DILocation(line: 1031, column: 18, scope: !1651)
!1653 = !DILocation(line: 1031, column: 10, scope: !1651)
!1654 = !DILocation(line: 1031, column: 16, scope: !1651)
!1655 = !DILocation(line: 1032, column: 22, scope: !1651)
!1656 = !DILocation(line: 1032, column: 32, scope: !1651)
!1657 = !DILocation(line: 1032, column: 10, scope: !1651)
!1658 = !DILocation(line: 1032, column: 20, scope: !1651)
!1659 = !DILocation(line: 1034, column: 5, scope: !1608)
!1660 = distinct !DISubprogram(name: "hstm_dfx_ilk_lane_isolate_health_info", scope: !1, file: !1, line: 1037, type: !1661, scopeLine: 1038, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{null, !1663, !4, !4}
!1663 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tagFEI_HSTM_INST_INFO", file: !1, line: 478, size: 32, elements: !1664)
!1664 = !{!1665, !1673}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "stInstBitInfo", scope: !1663, file: !1, line: 479, baseType: !1666, size: 32)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tagFEI_HSTM_INST_BIT_INFO", file: !1, line: 459, size: 32, elements: !1667)
!1667 = !{!1668, !1669, !1670, !1671, !1672}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "uiProcMode", scope: !1666, file: !1, line: 460, baseType: !396, size: 2, flags: DIFlagBitField, extraData: i64 0)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "uiDir", scope: !1666, file: !1, line: 461, baseType: !396, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "uiPortType", scope: !1666, file: !1, line: 462, baseType: !396, size: 3, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "uiChipId", scope: !1666, file: !1, line: 463, baseType: !396, size: 2, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "uiLaneBitMap", scope: !1666, file: !1, line: 464, baseType: !396, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "uiInstId", scope: !1663, file: !1, line: 480, baseType: !396, size: 32)
!1674 = !DILocalVariable(name: "bit_info", arg: 1, scope: !1660, file: !1, line: 1037, type: !1663)
!1675 = !DILocation(line: 1037, column: 72, scope: !1660)
!1676 = !DILocalVariable(name: "lane_id", arg: 2, scope: !1660, file: !1, line: 1037, type: !4)
!1677 = !DILocation(line: 1037, column: 95, scope: !1660)
!1678 = !DILocalVariable(name: "nof_lane", arg: 3, scope: !1660, file: !1, line: 1037, type: !4)
!1679 = !DILocation(line: 1037, column: 117, scope: !1660)
!1680 = !DILocalVariable(name: "tm_id", scope: !1660, file: !1, line: 1039, type: !4)
!1681 = !DILocation(line: 1039, column: 18, scope: !1660)
!1682 = !DILocalVariable(name: "core_id", scope: !1660, file: !1, line: 1040, type: !4)
!1683 = !DILocation(line: 1040, column: 18, scope: !1660)
!1684 = !DILocalVariable(name: "dir", scope: !1660, file: !1, line: 1041, type: !4)
!1685 = !DILocation(line: 1041, column: 18, scope: !1660)
!1686 = !DILocation(line: 1041, column: 33, scope: !1660)
!1687 = !DILocation(line: 1041, column: 47, scope: !1660)
!1688 = !DILocation(line: 1042, column: 7, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1660, file: !1, line: 1042, column: 6)
!1690 = !DILocation(line: 1042, column: 15, scope: !1689)
!1691 = !DILocation(line: 1042, column: 26, scope: !1689)
!1692 = !DILocation(line: 1042, column: 35, scope: !1689)
!1693 = !DILocation(line: 1042, column: 22, scope: !1689)
!1694 = !DILocation(line: 1043, column: 5, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1689, file: !1, line: 1042, column: 42)
!1696 = !DILocation(line: 1044, column: 12, scope: !1695)
!1697 = !DILocation(line: 1044, column: 9, scope: !1695)
!1698 = !DILocation(line: 1045, column: 14, scope: !1695)
!1699 = !DILocation(line: 1045, column: 11, scope: !1695)
!1700 = !DILocation(line: 1046, column: 60, scope: !1695)
!1701 = !DILocation(line: 1046, column: 74, scope: !1695)
!1702 = !DILocation(line: 1047, column: 18, scope: !1695)
!1703 = !DILocation(line: 1047, column: 32, scope: !1695)
!1704 = !DILocation(line: 1046, column: 13, scope: !1695)
!1705 = !DILocation(line: 1048, column: 2, scope: !1695)
!1706 = !DILocation(line: 1048, column: 13, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1689, file: !1, line: 1048, column: 13)
!1708 = !DILocation(line: 1048, column: 22, scope: !1707)
!1709 = !DILocation(line: 1048, column: 13, scope: !1689)
!1710 = !DILocation(line: 1049, column: 5, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1707, file: !1, line: 1048, column: 27)
!1712 = !DILocation(line: 1050, column: 11, scope: !1711)
!1713 = !DILocation(line: 1050, column: 18, scope: !1711)
!1714 = !DILocation(line: 1050, column: 9, scope: !1711)
!1715 = !DILocation(line: 1051, column: 13, scope: !1711)
!1716 = !DILocation(line: 1051, column: 23, scope: !1711)
!1717 = !DILocation(line: 1051, column: 21, scope: !1711)
!1718 = !DILocation(line: 1051, column: 11, scope: !1711)
!1719 = !DILocation(line: 1052, column: 60, scope: !1711)
!1720 = !DILocation(line: 1052, column: 74, scope: !1711)
!1721 = !DILocation(line: 1053, column: 18, scope: !1711)
!1722 = !DILocation(line: 1053, column: 32, scope: !1711)
!1723 = !DILocation(line: 1052, column: 13, scope: !1711)
!1724 = !DILocation(line: 1054, column: 2, scope: !1711)
!1725 = !DILocation(line: 1055, column: 5, scope: !1660)
!1726 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 1058, type: !1727, scopeLine: 1058, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !400)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{!514}
!1729 = !DILocalVariable(name: "bit_info", scope: !1726, file: !1, line: 1060, type: !1663)
!1730 = !DILocation(line: 1060, column: 31, scope: !1726)
!1731 = !DILocation(line: 1061, column: 22, scope: !1726)
!1732 = !DILocation(line: 1061, column: 3, scope: !1726)
!1733 = !DILocalVariable(name: "lane_id", scope: !1726, file: !1, line: 1065, type: !396)
!1734 = !DILocation(line: 1065, column: 12, scope: !1726)
!1735 = !DILocation(line: 1066, column: 22, scope: !1726)
!1736 = !DILocation(line: 1066, column: 3, scope: !1726)
!1737 = !DILocalVariable(name: "nof_lane", scope: !1726, file: !1, line: 1070, type: !396)
!1738 = !DILocation(line: 1070, column: 12, scope: !1726)
!1739 = !DILocation(line: 1071, column: 22, scope: !1726)
!1740 = !DILocation(line: 1071, column: 3, scope: !1726)
!1741 = !DILocation(line: 1074, column: 51, scope: !1726)
!1742 = !DILocation(line: 1074, column: 60, scope: !1726)
!1743 = !DILocation(line: 1074, column: 3, scope: !1726)
!1744 = !DILocation(line: 1075, column: 3, scope: !1726)
