; ModuleID = '/home/klee/examples/samples/complex_2.bc'
source_filename = "complex_2.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.P_Acchg__T_ = type { [7 x i64], i64, i64, i64, i64, i16, [7 x i16], i16, i16, i16, i8, i8 }
%struct.tag_DW_Acchg__T = type { %struct.DW_fault_confirm_Acchg_e_T, %struct.DW_fault_confirm_Acchg__T, %struct.DW_fault_confirm_Acchg_e_T, %struct.DW_data_lock_Acchg__T, %struct.DW_data_lock_Acchg__T, %struct.DW_fault_confirm_Acchg_a_T, %struct.DW_fault_confirm_Acchg__T, %struct.DW_fault_confirm_Acchg_a_T, %struct.DW_fault_confirm_Acchg_a_T, %struct.DW_fault_confirm_Acchg__T, %struct.DW_fault_confirm_Acchg__T, %struct.DW_floatingdivide_Acchg__T, %struct.DW_floatingdivide_Acchg__T, %struct.DW_fault_confirm_Acchg__T, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, [2 x i8], [3 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.DW_fault_confirm_Acchg_e_T = type { i64, i8 }
%struct.DW_data_lock_Acchg__T = type { i8, i8 }
%struct.DW_fault_confirm_Acchg_a_T = type { i16, i8 }
%struct.DW_floatingdivide_Acchg__T = type { float }
%struct.DW_fault_confirm_Acchg__T = type { i16, i8 }
%struct.tag_PrevZCX_Acchg__T = type { i8, i8 }
%struct.FaultCode = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@g_BMS_Acchg_P = dso_local global %struct.P_Acchg__T_ { [7 x i64] [i64 0, i64 6000, i64 6000, i64 51000, i64 52500, i64 65000, i64 0], i64 10000, i64 16000, i64 32000, i64 63000, i16 95, [7 x i16] [i16 79, i16 80, i16 100, i16 850, i16 851, i16 900, i16 901], i16 7282, i16 8190, i16 4335, i8 10, i8 -102 }, align 8
@g_BMS_Acchg_DW = common dso_local global %struct.tag_DW_Acchg__T zeroinitializer, align 8
@Rte_SWC_APP_SignalProcess_SigPro_PubSig_stPwrReq = common dso_local global i8 0, align 1
@g_BMS_Acchg_PrevZCX = common dso_local global %struct.tag_PrevZCX_Acchg__T zeroinitializer, align 1
@Rte_SWC_APP_SignalProcess_SigPro_PubSig_stChrgUnlckILimReq = common dso_local global i8 0, align 1
@Rte_SWC_APP_SignalProcess_SigPro_PubSig_stChrgIReqLimFac = common dso_local global i8 0, align 1
@Rte_SWC_APP_SignalProcess_SigPro_PubSig_iObcMaxChrgOutpIAvl = common dso_local global i16 0, align 2
@Rte_SWC_APP_AcChg_AcChg_SlwChg_iChrgnSysIAllwdMax = common dso_local global i16 0, align 2
@Rte_SWC_APP_SignalProcess_SigPro_PubSig_powExtHvPwrCnsAct = common dso_local global i16 0, align 2
@Rte_SWC_APP_ChgCurLimit_ChgiLimit_iLimit_iLimit = common dso_local global i64 0, align 8
@Rte_SWC_APP_AcChg_AcChg_SlwChg_iSetSlowCharge = common dso_local global i16 0, align 2
@Rte_SWC_APP_FunctionSafety_FunSafety_FunSafety_DfpTempLowSoft = common dso_local global i8 0, align 1
@Rte_SWC_APP_FunctionSafety_FunSafety_FunSafety_DfpTempHighSeriousSoft = common dso_local global i8 0, align 1
@Rte_SWC_APP_SignalProcess_SigPro_PubSig_flagOBC1Rx = common dso_local global i8 0, align 1
@Rte_SWC_APP_SignalProcess_SigPro_PubSig_vObcMaxChrgOutpUAvl = common dso_local global i16 0, align 2
@Rte_SWC_APP_AcChg_AcChg_SlwChg_vSetSlowCharge = common dso_local global i16 0, align 2
@Rte_SWC_APP_AcChg_AcChg_SlwChg_stChrgErrInfo = common dso_local global i8 0, align 1
@Rte_SWC_APP_AcChg_AcChg_SlwChg_stBcuChrgSts = common dso_local global i8 0, align 1
@Rte_SWC_APP_AcChg_AcChg_SlwChg_dfpOBCCurOver = common dso_local global i8 0, align 1
@Rte_SWC_APP_AcChg_AcChg_SlwChg_dfpOBCfault = common dso_local global i8 0, align 1
@Rte_SWC_APP_SignalProcess_SigPro_PubSig_stBcuChrgMod = common dso_local global i8 0, align 1
@Rte_SWC_APP_SignalProcess_SigPro_PubSig_dtyCP = common dso_local global i16 0, align 2
@Rte_SWC_APP_SignalProcess_SigPro_PubSig_stCPSts = common dso_local global i8 0, align 1
@Rte_SWC_APP_SignalProcess_SigPro_PubSig_vChgACInput = common dso_local global i16 0, align 2
@Rte_SWC_APP_SignalProcess_SigPro_CellVol_vTotal = common dso_local global i16 0, align 2
@Rte_SWC_APP_SignalProcess_SigPro_PubSig_stChrgAllwdFlg = common dso_local global i8 0, align 1
@Rte_SWC_APP_SignalProcess_SigPro_PubSig_stWorkOBC = common dso_local global i8 0, align 1
@Rte_SWC_APP_FunctionSafety_FunSafety_FunSafety_stBcuOperMod = common dso_local global i8 0, align 1
@Rte_SWC_APP_SignalProcess_SigPro_PubSig_iBattery = common dso_local global i64 0, align 8
@Rte_SWC_APP_SignalProcess_SigPro_CellVol_vMaxCell = common dso_local global i16 0, align 2
@Rte_SWC_APP_SOC_PacSOC_CurSOC_ratSOC = common dso_local global i16 0, align 2
@Rte_SWC_APP_SignalProcess_SigPro_PubSig_stObcS2Sts = common dso_local global i8 0, align 1
@Rte_SWC_APP_SignalProcess_SigPro_PubSig_stCCRaw = common dso_local global i8 0, align 1
@Rte_SWC_APP_AcChg_AcChg_SlwChg_stSlowCharge = common dso_local global i8 0, align 1
@Rte_SWC_APP_AcChg_AcChg_SlwChg_tiBMSChaTimeRemain = common dso_local global i16 0, align 2
@Rte_SWC_APP_AcChg_AcChg_SlwChg_stBMSCharging = common dso_local global i8 0, align 1
@Rte_SWC_APP_AcChg_AcChg_SlwChg_stEnOnVehicleCharge = common dso_local global i8 0, align 1
@Rte_SWC_APP_AcChg_AcChg_SlwChg_stSlowChargeS2 = common dso_local global i8 0, align 1
@Rte_SWC_APP_AcChg_AcChg_SlwChg_stChrgEndResn = common dso_local global i8 0, align 1
@Rte_SWC_APP_AcChg_AcChg_SlwChg_stObcOperModReq = common dso_local global i8 0, align 1
@__igv__FunSafety_FunSafety_stFaultCode = common dso_local global %struct.FaultCode zeroinitializer, align 1
@Rte_SWC_APP_FaultDebounce_FaultDeb_N000P0000_LeakRAlarm = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [56 x i8] c"Rte_SWC_APP_FaultDebounce_FaultDeb_N000P0000_LeakRAlarm\00", align 1
@Rte_SWC_APP_FaultDebounce_FaultDeb_N000P0000_LeakRErr = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Rte_SWC_APP_FaultDebounce_FaultDeb_N000P0000_LeakRErr\00", align 1
@Rte_SWC_APP_FunctionSafety_FunSafety_FunSafety_stPowerComplete = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"Rte_SWC_APP_FunctionSafety_FunSafety_FunSafety_stPowerComplete\00", align 1
@Rte_SWC_APP_SOE_PacSOE_MapSOE_stChgFinishTrg = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Rte_SWC_APP_SOE_PacSOE_MapSOE_stChgFinishTrg\00", align 1
@Rte_SWC_APP_SignalProcess_SigPro_PubSig_dfpBMSComm = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"Rte_SWC_APP_SignalProcess_SigPro_PubSig_dfpBMSComm\00", align 1
@Rte_SWC_APP_SignalProcess_SigPro_PubSig_flagAC1Rx = common dso_local global i8 0, align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"Rte_SWC_APP_SignalProcess_SigPro_PubSig_flagAC1Rx\00", align 1
@Rte_SWC_APP_SignalProcess_SigPro_PubSig_flagAC2Rx = common dso_local global i8 0, align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"Rte_SWC_APP_SignalProcess_SigPro_PubSig_flagAC2Rx\00", align 1
@Rte_SWC_APP_SignalProcess_SigPro_PubSig_flagDCDCRx = common dso_local global i8 0, align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"Rte_SWC_APP_SignalProcess_SigPro_PubSig_flagDCDCRx\00", align 1
@Rte_SWC_APP_SignalProcess_SigPro_PubSig_flagHMIRx = common dso_local global i8 0, align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"Rte_SWC_APP_SignalProcess_SigPro_PubSig_flagHMIRx\00", align 1
@Rte_SWC_APP_SignalProcess_SigPro_PubSig_flagOBC2Rx = common dso_local global i8 0, align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"Rte_SWC_APP_SignalProcess_SigPro_PubSig_flagOBC2Rx\00", align 1
@Rte_SWC_APP_SignalProcess_SigPro_PubSig_flagPTCRx = common dso_local global i8 0, align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"Rte_SWC_APP_SignalProcess_SigPro_PubSig_flagPTCRx\00", align 1
@Rte_SWC_APP_SignalProcess_SigPro_PubSig_iChgACInput = common dso_local global i16 0, align 2
@.str.11 = private unnamed_addr constant [52 x i8] c"Rte_SWC_APP_SignalProcess_SigPro_PubSig_iChgACInput\00", align 1
@Rte_SWC_APP_SignalProcess_SigPro_PubSig_iChgDCOutputOBC = common dso_local global i16 0, align 2
@.str.12 = private unnamed_addr constant [56 x i8] c"Rte_SWC_APP_SignalProcess_SigPro_PubSig_iChgDCOutputOBC\00", align 1
@Rte_SWC_APP_SignalProcess_SigPro_PubSig_iChrgMaxAC = common dso_local global i8 0, align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"Rte_SWC_APP_SignalProcess_SigPro_PubSig_iChrgMaxAC\00", align 1
@Rte_SWC_APP_SignalProcess_SigPro_PubSig_iOutputCurDCDC = common dso_local global i16 0, align 2
@.str.14 = private unnamed_addr constant [55 x i8] c"Rte_SWC_APP_SignalProcess_SigPro_PubSig_iOutputCurDCDC\00", align 1
@Rte_SWC_APP_SignalProcess_SigPro_PubSig_powObcMaxChrgOutpPwrAvl = common dso_local global i16 0, align 2
@.str.15 = private unnamed_addr constant [64 x i8] c"Rte_SWC_APP_SignalProcess_SigPro_PubSig_powObcMaxChrgOutpPwrAvl\00", align 1
@Rte_SWC_APP_SignalProcess_SigPro_PubSig_powPTC = common dso_local global i16 0, align 2
@.str.16 = private unnamed_addr constant [47 x i8] c"Rte_SWC_APP_SignalProcess_SigPro_PubSig_powPTC\00", align 1
@Rte_SWC_APP_SignalProcess_SigPro_PubSig_powTotalAC = common dso_local global i16 0, align 2
@.str.17 = private unnamed_addr constant [51 x i8] c"Rte_SWC_APP_SignalProcess_SigPro_PubSig_powTotalAC\00", align 1
@Rte_SWC_APP_SignalProcess_SigPro_PubSig_ratSOCTrg = common dso_local global i16 0, align 2
@.str.18 = private unnamed_addr constant [50 x i8] c"Rte_SWC_APP_SignalProcess_SigPro_PubSig_ratSOCTrg\00", align 1
@Rte_SWC_APP_SignalProcess_SigPro_PubSig_stACChgCtl = common dso_local global i8 0, align 1
@.str.19 = private unnamed_addr constant [51 x i8] c"Rte_SWC_APP_SignalProcess_SigPro_PubSig_stACChgCtl\00", align 1
@Rte_SWC_APP_SignalProcess_SigPro_PubSig_stChrgSuspReq = common dso_local global i8 0, align 1
@.str.20 = private unnamed_addr constant [54 x i8] c"Rte_SWC_APP_SignalProcess_SigPro_PubSig_stChrgSuspReq\00", align 1
@Rte_SWC_APP_SignalProcess_SigPro_PubSig_stRCC = common dso_local global i8 0, align 1
@.str.21 = private unnamed_addr constant [46 x i8] c"Rte_SWC_APP_SignalProcess_SigPro_PubSig_stRCC\00", align 1
@Rte_SWC_APP_SignalProcess_SigPro_PubSig_stRCC2 = common dso_local global i8 0, align 1
@.str.22 = private unnamed_addr constant [47 x i8] c"Rte_SWC_APP_SignalProcess_SigPro_PubSig_stRCC2\00", align 1
@Rte_SWC_APP_SignalProcess_SigPro_PubSig_stWakeup = common dso_local global i8 0, align 1
@.str.23 = private unnamed_addr constant [49 x i8] c"Rte_SWC_APP_SignalProcess_SigPro_PubSig_stWakeup\00", align 1
@Rte_SWC_APP_SignalProcess_SigPro_PubSig_stWakeupSQ = common dso_local global i8 0, align 1
@.str.24 = private unnamed_addr constant [51 x i8] c"Rte_SWC_APP_SignalProcess_SigPro_PubSig_stWakeupSQ\00", align 1
@Rte_SWC_APP_SignalProcess_SigPro_PubSig_vOutputDCDC = common dso_local global i16 0, align 2
@.str.25 = private unnamed_addr constant [52 x i8] c"Rte_SWC_APP_SignalProcess_SigPro_PubSig_vOutputDCDC\00", align 1
@Rte_SWC_APP_SignalProcess_SigPro_TempCpu_tMaxCellValid = common dso_local global i16 0, align 2
@.str.26 = private unnamed_addr constant [55 x i8] c"Rte_SWC_APP_SignalProcess_SigPro_TempCpu_tMaxCellValid\00", align 1
@Rte_SWC_APP_SignalProcess_SigPro_TempCpu_tMinCellValid = common dso_local global i16 0, align 2
@.str.27 = private unnamed_addr constant [55 x i8] c"Rte_SWC_APP_SignalProcess_SigPro_TempCpu_tMinCellValid\00", align 1
@Rte_SWC_APP_ThermalMgt_ThermMgt_ThermCtr_stChgHeat = common dso_local global i8 0, align 1
@.str.28 = private unnamed_addr constant [51 x i8] c"Rte_SWC_APP_ThermalMgt_ThermMgt_ThermCtr_stChgHeat\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"g_BMS_Acchg_DW.ChrgEndResn\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"g_BMS_Acchg_DW.Compare\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"g_BMS_Acchg_DW.Compare_f\00", align 1
@.str.32 = private unnamed_addr constant [30 x i8] c"g_BMS_Acchg_DW.Delay12_DSTATE\00", align 1
@.str.33 = private unnamed_addr constant [33 x i8] c"g_BMS_Acchg_DW.Delay13_DSTATE[0]\00", align 1
@.str.34 = private unnamed_addr constant [33 x i8] c"g_BMS_Acchg_DW.Delay13_DSTATE[1]\00", align 1
@.str.35 = private unnamed_addr constant [33 x i8] c"g_BMS_Acchg_DW.Delay13_DSTATE[2]\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"g_BMS_Acchg_DW.Delay1_DSTATE\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"g_BMS_Acchg_DW.Delay1_DSTATE_p[0]\00", align 1
@.str.38 = private unnamed_addr constant [34 x i8] c"g_BMS_Acchg_DW.Delay1_DSTATE_p[1]\00", align 1
@.str.39 = private unnamed_addr constant [28 x i8] c"g_BMS_Acchg_DW.Delay_DSTATE\00", align 1
@.str.40 = private unnamed_addr constant [30 x i8] c"g_BMS_Acchg_DW.Delay_DSTATE_e\00", align 1
@.str.41 = private unnamed_addr constant [30 x i8] c"g_BMS_Acchg_DW.Delay_DSTATE_n\00", align 1
@.str.42 = private unnamed_addr constant [30 x i8] c"g_BMS_Acchg_DW.Delay_DSTATE_o\00", align 1
@.str.43 = private unnamed_addr constant [38 x i8] c"g_BMS_Acchg_DW.EnabledSubsystem1_MODE\00", align 1
@.str.44 = private unnamed_addr constant [38 x i8] c"g_BMS_Acchg_DW.EnabledSubsystem4_MODE\00", align 1
@.str.45 = private unnamed_addr constant [37 x i8] c"g_BMS_Acchg_DW.Fault_Confirm.Switch2\00", align 1
@.str.46 = private unnamed_addr constant [46 x i8] c"g_BMS_Acchg_DW.Fault_Confirm.UnitDelay_DSTATE\00", align 1
@.str.47 = private unnamed_addr constant [38 x i8] c"g_BMS_Acchg_DW.Fault_Confirm1.Switch2\00", align 1
@.str.48 = private unnamed_addr constant [47 x i8] c"g_BMS_Acchg_DW.Fault_Confirm1.UnitDelay_DSTATE\00", align 1
@.str.49 = private unnamed_addr constant [40 x i8] c"g_BMS_Acchg_DW.Fault_Confirm1_d.Switch2\00", align 1
@.str.50 = private unnamed_addr constant [49 x i8] c"g_BMS_Acchg_DW.Fault_Confirm1_d.UnitDelay_DSTATE\00", align 1
@.str.51 = private unnamed_addr constant [40 x i8] c"g_BMS_Acchg_DW.Fault_Confirm1_e.Switch2\00", align 1
@.str.52 = private unnamed_addr constant [49 x i8] c"g_BMS_Acchg_DW.Fault_Confirm1_e.UnitDelay_DSTATE\00", align 1
@.str.53 = private unnamed_addr constant [40 x i8] c"g_BMS_Acchg_DW.Fault_Confirm1_o.Switch2\00", align 1
@.str.54 = private unnamed_addr constant [49 x i8] c"g_BMS_Acchg_DW.Fault_Confirm1_o.UnitDelay_DSTATE\00", align 1
@.str.55 = private unnamed_addr constant [38 x i8] c"g_BMS_Acchg_DW.Fault_Confirm2.Switch2\00", align 1
@.str.56 = private unnamed_addr constant [47 x i8] c"g_BMS_Acchg_DW.Fault_Confirm2.UnitDelay_DSTATE\00", align 1
@.str.57 = private unnamed_addr constant [40 x i8] c"g_BMS_Acchg_DW.Fault_Confirm2_j.Switch2\00", align 1
@.str.58 = private unnamed_addr constant [49 x i8] c"g_BMS_Acchg_DW.Fault_Confirm2_j.UnitDelay_DSTATE\00", align 1
@.str.59 = private unnamed_addr constant [40 x i8] c"g_BMS_Acchg_DW.Fault_Confirm2_m.Switch2\00", align 1
@.str.60 = private unnamed_addr constant [49 x i8] c"g_BMS_Acchg_DW.Fault_Confirm2_m.UnitDelay_DSTATE\00", align 1
@.str.61 = private unnamed_addr constant [38 x i8] c"g_BMS_Acchg_DW.Fault_Confirm3.Switch2\00", align 1
@.str.62 = private unnamed_addr constant [47 x i8] c"g_BMS_Acchg_DW.Fault_Confirm3.UnitDelay_DSTATE\00", align 1
@.str.63 = private unnamed_addr constant [39 x i8] c"g_BMS_Acchg_DW.Fault_Confirm_f.Switch2\00", align 1
@.str.64 = private unnamed_addr constant [48 x i8] c"g_BMS_Acchg_DW.Fault_Confirm_f.UnitDelay_DSTATE\00", align 1
@.str.65 = private unnamed_addr constant [37 x i8] c"g_BMS_Acchg_DW.FloatingDivide.Divide\00", align 1
@.str.66 = private unnamed_addr constant [38 x i8] c"g_BMS_Acchg_DW.FloatingDivide1.Divide\00", align 1
@.str.67 = private unnamed_addr constant [32 x i8] c"g_BMS_Acchg_DW.LogicalOperator1\00", align 1
@.str.68 = private unnamed_addr constant [33 x i8] c"g_BMS_Acchg_DW.LogicalOperator10\00", align 1
@.str.69 = private unnamed_addr constant [33 x i8] c"g_BMS_Acchg_DW.LogicalOperator25\00", align 1
@.str.70 = private unnamed_addr constant [32 x i8] c"g_BMS_Acchg_DW.LogicalOperator4\00", align 1
@.str.71 = private unnamed_addr constant [32 x i8] c"g_BMS_Acchg_DW.LogicalOperator5\00", align 1
@.str.72 = private unnamed_addr constant [32 x i8] c"g_BMS_Acchg_DW.LogicalOperator6\00", align 1
@.str.73 = private unnamed_addr constant [32 x i8] c"g_BMS_Acchg_DW.LogicalOperator8\00", align 1
@.str.74 = private unnamed_addr constant [33 x i8] c"g_BMS_Acchg_DW.Logical_Operator1\00", align 1
@.str.75 = private unnamed_addr constant [33 x i8] c"g_BMS_Acchg_DW.ObcInpAcUAbnormal\00", align 1
@.str.76 = private unnamed_addr constant [47 x i8] c"g_BMS_Acchg_DW.OutportBufferForAcChg_SlwChg_st\00", align 1
@.str.77 = private unnamed_addr constant [47 x i8] c"g_BMS_Acchg_DW.OutportBufferForVehSt_SlwChg__o\00", align 1
@.str.78 = private unnamed_addr constant [47 x i8] c"g_BMS_Acchg_DW.OutportBufferForVehSt_SlwChg_st\00", align 1
@.str.79 = private unnamed_addr constant [35 x i8] c"g_BMS_Acchg_DW.RelationalOperator5\00", align 1
@.str.80 = private unnamed_addr constant [47 x i8] c"g_BMS_Acchg_DW.TmpSignalConversionAtFunSafety_\00", align 1
@.str.81 = private unnamed_addr constant [47 x i8] c"g_BMS_Acchg_DW.TmpSignalConversionAtPacSOC_Cur\00", align 1
@.str.82 = private unnamed_addr constant [47 x i8] c"g_BMS_Acchg_DW.TmpSignalConversionAtSigPro_C_p\00", align 1
@.str.83 = private unnamed_addr constant [47 x i8] c"g_BMS_Acchg_DW.TmpSignalConversionAtSigPro_Cel\00", align 1
@.str.84 = private unnamed_addr constant [47 x i8] c"g_BMS_Acchg_DW.TmpSignalConversionAtSigPro_P_a\00", align 1
@.str.85 = private unnamed_addr constant [47 x i8] c"g_BMS_Acchg_DW.TmpSignalConversionAtSigPro_P_b\00", align 1
@.str.86 = private unnamed_addr constant [47 x i8] c"g_BMS_Acchg_DW.TmpSignalConversionAtSigPro_P_d\00", align 1
@.str.87 = private unnamed_addr constant [47 x i8] c"g_BMS_Acchg_DW.TmpSignalConversionAtSigPro_P_g\00", align 1
@.str.88 = private unnamed_addr constant [47 x i8] c"g_BMS_Acchg_DW.TmpSignalConversionAtSigPro_P_i\00", align 1
@.str.89 = private unnamed_addr constant [47 x i8] c"g_BMS_Acchg_DW.TmpSignalConversionAtSigPro_Pub\00", align 1
@.str.90 = private unnamed_addr constant [47 x i8] c"g_BMS_Acchg_DW.TmpSignalConversionAtSigPro__bh\00", align 1
@.str.91 = private unnamed_addr constant [47 x i8] c"g_BMS_Acchg_DW.TmpSignalConversionAtSigPro__d4\00", align 1
@.str.92 = private unnamed_addr constant [47 x i8] c"g_BMS_Acchg_DW.TmpSignalConversionAtSigPro__gx\00", align 1
@.str.93 = private unnamed_addr constant [33 x i8] c"g_BMS_Acchg_DW.UnitDelay4_DSTATE\00", align 1
@.str.94 = private unnamed_addr constant [33 x i8] c"g_BMS_Acchg_DW.UnitDelay5_DSTATE\00", align 1
@.str.95 = private unnamed_addr constant [32 x i8] c"g_BMS_Acchg_DW.UnitDelay_DSTATE\00", align 1
@.str.96 = private unnamed_addr constant [34 x i8] c"g_BMS_Acchg_DW.UnitDelay_DSTATE_a\00", align 1
@.str.97 = private unnamed_addr constant [34 x i8] c"g_BMS_Acchg_DW.UnitDelay_DSTATE_h\00", align 1
@.str.98 = private unnamed_addr constant [34 x i8] c"g_BMS_Acchg_DW.UnitDelay_DSTATE_i\00", align 1
@.str.99 = private unnamed_addr constant [35 x i8] c"g_BMS_Acchg_DW.UnitDelay_DSTATE_io\00", align 1
@.str.100 = private unnamed_addr constant [34 x i8] c"g_BMS_Acchg_DW.UnitDelay_DSTATE_p\00", align 1
@.str.101 = private unnamed_addr constant [37 x i8] c"g_BMS_Acchg_DW.WaitObcStandbyTimeOut\00", align 1
@.str.102 = private unnamed_addr constant [39 x i8] c"g_BMS_Acchg_DW.WaitVcuChrgAllowTimeOut\00", align 1
@.str.103 = private unnamed_addr constant [35 x i8] c"g_BMS_Acchg_DW.data_lock3.Switch12\00", align 1
@.str.104 = private unnamed_addr constant [43 x i8] c"g_BMS_Acchg_DW.data_lock3.UnitDelay_DSTATE\00", align 1
@.str.105 = private unnamed_addr constant [36 x i8] c"g_BMS_Acchg_DW.data_lock_g.Switch12\00", align 1
@.str.106 = private unnamed_addr constant [44 x i8] c"g_BMS_Acchg_DW.data_lock_g.UnitDelay_DSTATE\00", align 1
@.str.107 = private unnamed_addr constant [28 x i8] c"g_BMS_Acchg_DW.flagObcVolOK\00", align 1
@.str.108 = private unnamed_addr constant [24 x i8] c"g_BMS_Acchg_DW.flagS2On\00", align 1
@.str.109 = private unnamed_addr constant [22 x i8] c"g_BMS_Acchg_DW.icLoad\00", align 1
@.str.110 = private unnamed_addr constant [28 x i8] c"g_BMS_Acchg_DW.is_AcChrgMod\00", align 1
@.str.111 = private unnamed_addr constant [26 x i8] c"g_BMS_Acchg_DW.is_Prepare\00", align 1
@.str.112 = private unnamed_addr constant [42 x i8] c"g_BMS_Acchg_DW.is_active_c1_swc_app_acchg\00", align 1
@.str.113 = private unnamed_addr constant [42 x i8] c"g_BMS_Acchg_DW.is_active_c3_swc_app_acchg\00", align 1
@.str.114 = private unnamed_addr constant [42 x i8] c"g_BMS_Acchg_DW.is_active_c4_swc_app_acchg\00", align 1
@.str.115 = private unnamed_addr constant [42 x i8] c"g_BMS_Acchg_DW.is_active_c5_swc_app_acchg\00", align 1
@.str.116 = private unnamed_addr constant [42 x i8] c"g_BMS_Acchg_DW.is_active_c6_swc_app_acchg\00", align 1
@.str.117 = private unnamed_addr constant [35 x i8] c"g_BMS_Acchg_DW.is_c1_swc_app_acchg\00", align 1
@.str.118 = private unnamed_addr constant [35 x i8] c"g_BMS_Acchg_DW.is_c3_swc_app_acchg\00", align 1
@.str.119 = private unnamed_addr constant [35 x i8] c"g_BMS_Acchg_DW.is_c4_swc_app_acchg\00", align 1
@.str.120 = private unnamed_addr constant [35 x i8] c"g_BMS_Acchg_DW.is_c5_swc_app_acchg\00", align 1
@.str.121 = private unnamed_addr constant [35 x i8] c"g_BMS_Acchg_DW.is_c6_swc_app_acchg\00", align 1
@.str.122 = private unnamed_addr constant [29 x i8] c"g_BMS_Acchg_DW.is_uncharged2\00", align 1
@.str.123 = private unnamed_addr constant [31 x i8] c"g_BMS_Acchg_DW.is_uncharged2_p\00", align 1
@.str.124 = private unnamed_addr constant [24 x i8] c"g_BMS_Acchg_DW.stACChrg\00", align 1
@.str.125 = private unnamed_addr constant [29 x i8] c"g_BMS_Acchg_DW.stCCRawNormal\00", align 1
@.str.126 = private unnamed_addr constant [26 x i8] c"g_BMS_Acchg_DW.timer10min\00", align 1
@.str.127 = private unnamed_addr constant [28 x i8] c"g_BMS_Acchg_DW.timer10min_l\00", align 1
@.str.128 = private unnamed_addr constant [25 x i8] c"g_BMS_Acchg_DW.timer2min\00", align 1
@.str.129 = private unnamed_addr constant [25 x i8] c"g_BMS_Acchg_DW.timer30ms\00", align 1
@.str.130 = private unnamed_addr constant [25 x i8] c"g_BMS_Acchg_DW.timer50ms\00", align 1
@.str.131 = private unnamed_addr constant [36 x i8] c"g_BMS_Acchg_PrevZCX.Delay_Reset_ZCE\00", align 1
@.str.132 = private unnamed_addr constant [38 x i8] c"g_BMS_Acchg_PrevZCX.Delay_Reset_ZCE_n\00", align 1
@.str.133 = private unnamed_addr constant [48 x i8] c"Rte_SWC_APP_ChgCurLimit_ChgiLimit_iLimit_iLimit\00", align 1
@.str.134 = private unnamed_addr constant [70 x i8] c"Rte_SWC_APP_FunctionSafety_FunSafety_FunSafety_DfpTempHighSeriousSoft\00", align 1
@.str.135 = private unnamed_addr constant [62 x i8] c"Rte_SWC_APP_FunctionSafety_FunSafety_FunSafety_DfpTempLowSoft\00", align 1
@.str.136 = private unnamed_addr constant [60 x i8] c"Rte_SWC_APP_FunctionSafety_FunSafety_FunSafety_stBcuOperMod\00", align 1
@.str.137 = private unnamed_addr constant [37 x i8] c"Rte_SWC_APP_SOC_PacSOC_CurSOC_ratSOC\00", align 1
@.str.138 = private unnamed_addr constant [50 x i8] c"Rte_SWC_APP_SignalProcess_SigPro_CellVol_vMaxCell\00", align 1
@.str.139 = private unnamed_addr constant [48 x i8] c"Rte_SWC_APP_SignalProcess_SigPro_CellVol_vTotal\00", align 1
@.str.140 = private unnamed_addr constant [46 x i8] c"Rte_SWC_APP_SignalProcess_SigPro_PubSig_dtyCP\00", align 1
@.str.141 = private unnamed_addr constant [51 x i8] c"Rte_SWC_APP_SignalProcess_SigPro_PubSig_flagOBC1Rx\00", align 1
@.str.142 = private unnamed_addr constant [49 x i8] c"Rte_SWC_APP_SignalProcess_SigPro_PubSig_iBattery\00", align 1
@.str.143 = private unnamed_addr constant [60 x i8] c"Rte_SWC_APP_SignalProcess_SigPro_PubSig_iObcMaxChrgOutpIAvl\00", align 1
@.str.144 = private unnamed_addr constant [58 x i8] c"Rte_SWC_APP_SignalProcess_SigPro_PubSig_powExtHvPwrCnsAct\00", align 1
@.str.145 = private unnamed_addr constant [53 x i8] c"Rte_SWC_APP_SignalProcess_SigPro_PubSig_stBcuChrgMod\00", align 1
@.str.146 = private unnamed_addr constant [48 x i8] c"Rte_SWC_APP_SignalProcess_SigPro_PubSig_stCCRaw\00", align 1
@.str.147 = private unnamed_addr constant [48 x i8] c"Rte_SWC_APP_SignalProcess_SigPro_PubSig_stCPSts\00", align 1
@.str.148 = private unnamed_addr constant [55 x i8] c"Rte_SWC_APP_SignalProcess_SigPro_PubSig_stChrgAllwdFlg\00", align 1
@.str.149 = private unnamed_addr constant [57 x i8] c"Rte_SWC_APP_SignalProcess_SigPro_PubSig_stChrgIReqLimFac\00", align 1
@.str.150 = private unnamed_addr constant [59 x i8] c"Rte_SWC_APP_SignalProcess_SigPro_PubSig_stChrgUnlckILimReq\00", align 1
@.str.151 = private unnamed_addr constant [51 x i8] c"Rte_SWC_APP_SignalProcess_SigPro_PubSig_stObcS2Sts\00", align 1
@.str.152 = private unnamed_addr constant [49 x i8] c"Rte_SWC_APP_SignalProcess_SigPro_PubSig_stPwrReq\00", align 1
@.str.153 = private unnamed_addr constant [50 x i8] c"Rte_SWC_APP_SignalProcess_SigPro_PubSig_stWorkOBC\00", align 1
@.str.154 = private unnamed_addr constant [52 x i8] c"Rte_SWC_APP_SignalProcess_SigPro_PubSig_vChgACInput\00", align 1
@.str.155 = private unnamed_addr constant [60 x i8] c"Rte_SWC_APP_SignalProcess_SigPro_PubSig_vObcMaxChrgOutpUAvl\00", align 1
@.str.156 = private unnamed_addr constant [54 x i8] c"__igv__FunSafety_FunSafety_stFaultCode.ACChg_Prohibit\00", align 1
@.str.157 = private unnamed_addr constant [56 x i8] c"__igv__FunSafety_FunSafety_stFaultCode.Balance_Prohibit\00", align 1
@.str.158 = private unnamed_addr constant [56 x i8] c"__igv__FunSafety_FunSafety_stFaultCode.ChgSOP_LimitCTkw\00", align 1
@.str.159 = private unnamed_addr constant [55 x i8] c"__igv__FunSafety_FunSafety_stFaultCode.ChgSOP_Prohibit\00", align 1
@.str.160 = private unnamed_addr constant [54 x i8] c"__igv__FunSafety_FunSafety_stFaultCode.DCChg_Prohibit\00", align 1
@.str.161 = private unnamed_addr constant [59 x i8] c"__igv__FunSafety_FunSafety_stFaultCode.DisChgSOP_Limit30kw\00", align 1
@.str.162 = private unnamed_addr constant [59 x i8] c"__igv__FunSafety_FunSafety_stFaultCode.DisChgSOP_LimitCTkw\00", align 1
@.str.163 = private unnamed_addr constant [58 x i8] c"__igv__FunSafety_FunSafety_stFaultCode.DisChgSOP_Prohibit\00", align 1
@.str.164 = private unnamed_addr constant [60 x i8] c"__igv__FunSafety_FunSafety_stFaultCode.PowerOff_Immediately\00", align 1
@.str.165 = private unnamed_addr constant [52 x i8] c"__igv__FunSafety_FunSafety_stFaultCode.PowerOff_Req\00", align 1
@.str.166 = private unnamed_addr constant [23 x i8] c"__sys_TrueCount_2 == 1\00", align 1
@.str.167 = private unnamed_addr constant [12 x i8] c"complex_2.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1
@.str.168 = private unnamed_addr constant [54 x i8] c"/tmp/klee_src/runtime/Intrinsic/klee_div_zero_check.c\00", align 1
@.str.1.169 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str.2.170 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1
@.str.173 = private unnamed_addr constant [8 x i8] c"IGNORED\00", align 1
@.str.1.174 = private unnamed_addr constant [16 x i8] c"overshift error\00", align 1
@.str.2.175 = private unnamed_addr constant [14 x i8] c"overshift.err\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @klee_make_symbolic_range(i8* %addr, i64 %offset, i64 %nbytes, i8* %name) #0 {
entry:
  %addr.addr = alloca i8*, align 8
  %offset.addr = alloca i64, align 8
  %nbytes.addr = alloca i64, align 8
  %name.addr = alloca i8*, align 8
  %start = alloca i8*, align 8
  %symbolic_data = alloca i8*, align 8
  store i8* %addr, i8** %addr.addr, align 8
  store i64 %offset, i64* %offset.addr, align 8
  store i64 %nbytes, i64* %nbytes.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i64, i64* %nbytes.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %addr.addr, align 8
  %2 = load i64, i64* %offset.addr, align 8
  %add.ptr = getelementptr i8, i8* %1, i64 %2
  store i8* %add.ptr, i8** %start, align 8
  %3 = load i8*, i8** %start, align 8
  %4 = load i64, i64* %nbytes.addr, align 8
  call void @klee_check_memory_access(i8* %3, i64 %4)
  %5 = load i64, i64* %nbytes.addr, align 8
  %call = call i8* @malloc(i64 %5)
  store i8* %call, i8** %symbolic_data, align 8
  %6 = load i8*, i8** %symbolic_data, align 8
  %7 = load i64, i64* %nbytes.addr, align 8
  %8 = load i8*, i8** %name.addr, align 8
  call void @klee_make_symbolic(i8* %6, i64 %7, i8* %8)
  %9 = load i8*, i8** %start, align 8
  %10 = load i8*, i8** %symbolic_data, align 8
  %11 = load i64, i64* %nbytes.addr, align 8
  %12 = call i8* @memcpy(i8* %9, i8* %10, i64 %11)
  %13 = load i8*, i8** %symbolic_data, align 8
  %call1 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* %13)
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

declare dso_local void @klee_check_memory_access(i8*, i64) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @free(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @mul_wide_u32(i64 %in0, i64 %in1, i64* %ptrOutBitsHi, i64* %ptrOutBitsLo) #0 {
entry:
  %in0.addr = alloca i64, align 8
  %in1.addr = alloca i64, align 8
  %ptrOutBitsHi.addr = alloca i64*, align 8
  %ptrOutBitsLo.addr = alloca i64*, align 8
  %outBitsLo = alloca i64, align 8
  %in0Lo = alloca i64, align 8
  %in0Hi = alloca i64, align 8
  %in1Lo = alloca i64, align 8
  %in1Hi = alloca i64, align 8
  %productHiLo = alloca i64, align 8
  %productLoHi = alloca i64, align 8
  store i64 %in0, i64* %in0.addr, align 8
  store i64 %in1, i64* %in1.addr, align 8
  store i64* %ptrOutBitsHi, i64** %ptrOutBitsHi.addr, align 8
  store i64* %ptrOutBitsLo, i64** %ptrOutBitsLo.addr, align 8
  %0 = load i64, i64* %in0.addr, align 8
  %shr = lshr i64 %0, 16
  store i64 %shr, i64* %in0Hi, align 8
  %1 = load i64, i64* %in0.addr, align 8
  %and = and i64 %1, 65535
  store i64 %and, i64* %in0Lo, align 8
  %2 = load i64, i64* %in1.addr, align 8
  %shr1 = lshr i64 %2, 16
  store i64 %shr1, i64* %in1Hi, align 8
  %3 = load i64, i64* %in1.addr, align 8
  %and2 = and i64 %3, 65535
  store i64 %and2, i64* %in1Lo, align 8
  %4 = load i64, i64* %in0Hi, align 8
  %5 = load i64, i64* %in1Lo, align 8
  %mul = mul i64 %4, %5
  store i64 %mul, i64* %productHiLo, align 8
  %6 = load i64, i64* %in0Lo, align 8
  %7 = load i64, i64* %in1Hi, align 8
  %mul3 = mul i64 %6, %7
  store i64 %mul3, i64* %productLoHi, align 8
  %8 = load i64, i64* %in1Lo, align 8
  %9 = load i64, i64* %in0Lo, align 8
  %mul4 = mul i64 %9, %8
  store i64 %mul4, i64* %in0Lo, align 8
  store i64 0, i64* %in1Lo, align 8
  %10 = load i64, i64* %productLoHi, align 8
  %shl = shl i64 %10, 16
  %11 = load i64, i64* %in0Lo, align 8
  %add = add i64 %shl, %11
  store i64 %add, i64* %outBitsLo, align 8
  %12 = load i64, i64* %outBitsLo, align 8
  %13 = load i64, i64* %in0Lo, align 8
  %cmp = icmp ult i64 %12, %13
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 1, i64* %in1Lo, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load i64, i64* %outBitsLo, align 8
  store i64 %14, i64* %in0Lo, align 8
  %15 = load i64, i64* %productHiLo, align 8
  %shl5 = shl i64 %15, 16
  %16 = load i64, i64* %outBitsLo, align 8
  %add6 = add i64 %16, %shl5
  store i64 %add6, i64* %outBitsLo, align 8
  %17 = load i64, i64* %outBitsLo, align 8
  %18 = load i64, i64* %in0Lo, align 8
  %cmp7 = icmp ult i64 %17, %18
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  %19 = load i64, i64* %in1Lo, align 8
  %inc = add i64 %19, 1
  store i64 %inc, i64* %in1Lo, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end
  %20 = load i64, i64* %productLoHi, align 8
  %shr10 = lshr i64 %20, 16
  %21 = load i64, i64* %productHiLo, align 8
  %shr11 = lshr i64 %21, 16
  %add12 = add i64 %shr10, %shr11
  %22 = load i64, i64* %in0Hi, align 8
  %23 = load i64, i64* %in1Hi, align 8
  %mul13 = mul i64 %22, %23
  %add14 = add i64 %add12, %mul13
  %24 = load i64, i64* %in1Lo, align 8
  %add15 = add i64 %add14, %24
  %25 = load i64*, i64** %ptrOutBitsHi.addr, align 8
  store i64 %add15, i64* %25, align 8
  %26 = load i64, i64* %outBitsLo, align 8
  %27 = load i64*, i64** %ptrOutBitsLo.addr, align 8
  store i64 %26, i64* %27, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @mul_u32_loSR(i64 %a, i64 %b, i64 %aShift) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %aShift.addr = alloca i64, align 8
  %result = alloca i64, align 8
  %u32_chi = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  store i64 %aShift, i64* %aShift.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %1 = load i64, i64* %b.addr, align 8
  call void @mul_wide_u32(i64 %0, i64 %1, i64* %u32_chi, i64* %result)
  %2 = load i64, i64* %u32_chi, align 8
  %3 = load i64, i64* %aShift.addr, align 8
  %sub = sub i64 32, %3
  call void @klee_overshift_check(i64 64, i64 %sub)
  %shl = shl i64 %2, %sub, !klee.check.shift !12
  %4 = load i64, i64* %result, align 8
  %5 = load i64, i64* %aShift.addr, align 8
  call void @klee_overshift_check(i64 64, i64 %5)
  %shr = lshr i64 %4, %5, !klee.check.shift !12
  %or = or i64 %shl, %shr
  ret i64 %or
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @div_nzp_repeat_u32(i64 %numerator, i64 %denominator, i64 %nRepeatSub) #0 {
entry:
  %numerator.addr = alloca i64, align 8
  %denominator.addr = alloca i64, align 8
  %nRepeatSub.addr = alloca i64, align 8
  %quotient = alloca i64, align 8
  %iRepeatSub = alloca i64, align 8
  %numeratorExtraBit = alloca i8, align 1
  store i64 %numerator, i64* %numerator.addr, align 8
  store i64 %denominator, i64* %denominator.addr, align 8
  store i64 %nRepeatSub, i64* %nRepeatSub.addr, align 8
  %0 = load i64, i64* %numerator.addr, align 8
  %1 = load i64, i64* %denominator.addr, align 8
  call void @klee_div_zero_check(i64 %1)
  %div = udiv i64 %0, %1, !klee.check.div !12
  store i64 %div, i64* %quotient, align 8
  %2 = load i64, i64* %denominator.addr, align 8
  %3 = load i64, i64* %numerator.addr, align 8
  call void @klee_div_zero_check(i64 %2)
  %rem = urem i64 %3, %2, !klee.check.div !12
  store i64 %rem, i64* %numerator.addr, align 8
  store i64 0, i64* %iRepeatSub, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i64, i64* %iRepeatSub, align 8
  %5 = load i64, i64* %nRepeatSub.addr, align 8
  %cmp = icmp ult i64 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i64, i64* %numerator.addr, align 8
  %cmp1 = icmp uge i64 %6, 2147483648
  %conv = zext i1 %cmp1 to i32
  %conv2 = trunc i32 %conv to i8
  store i8 %conv2, i8* %numeratorExtraBit, align 1
  %7 = load i64, i64* %numerator.addr, align 8
  %shl = shl i64 %7, 1
  store i64 %shl, i64* %numerator.addr, align 8
  %8 = load i64, i64* %quotient, align 8
  %shl3 = shl i64 %8, 1
  store i64 %shl3, i64* %quotient, align 8
  %9 = load i8, i8* %numeratorExtraBit, align 1
  %conv4 = zext i8 %9 to i32
  %tobool = icmp ne i32 %conv4, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %10 = load i64, i64* %numerator.addr, align 8
  %11 = load i64, i64* %denominator.addr, align 8
  %cmp5 = icmp uge i64 %10, %11
  br i1 %cmp5, label %if.then, label %for.inc

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %12 = load i64, i64* %quotient, align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* %quotient, align 8
  %13 = load i64, i64* %denominator.addr, align 8
  %14 = load i64, i64* %numerator.addr, align 8
  %sub = sub i64 %14, %13
  store i64 %sub, i64* %numerator.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false, %if.then
  %15 = load i64, i64* %iRepeatSub, align 8
  %inc7 = add i64 %15, 1
  store i64 %inc7, i64* %iRepeatSub, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i64, i64* %quotient, align 8
  ret i64 %16
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Acchg_floatingdivide(float %rtu_dividend, float %rtu_divider, %struct.DW_floatingdivide_Acchg__T* %localDW, float %rtp_minValue) #0 {
entry:
  %rtu_dividend.addr = alloca float, align 4
  %rtu_divider.addr = alloca float, align 4
  %localDW.addr = alloca %struct.DW_floatingdivide_Acchg__T*, align 8
  %rtp_minValue.addr = alloca float, align 4
  %rtb_Switch2_m = alloca float, align 4
  store float %rtu_dividend, float* %rtu_dividend.addr, align 4
  store float %rtu_divider, float* %rtu_divider.addr, align 4
  store %struct.DW_floatingdivide_Acchg__T* %localDW, %struct.DW_floatingdivide_Acchg__T** %localDW.addr, align 8
  store float %rtp_minValue, float* %rtp_minValue.addr, align 4
  %0 = load float, float* %rtu_divider.addr, align 4
  %cmp = fcmp ole float 0.000000e+00, %0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load float, float* %rtu_divider.addr, align 4
  %2 = load float, float* %rtp_minValue.addr, align 4
  %cmp1 = fcmp ole float %1, %2
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %3 = load float, float* %rtp_minValue.addr, align 4
  store float %3, float* %rtb_Switch2_m, align 4
  br label %if.end9

if.else:                                          ; preds = %land.lhs.true, %entry
  %4 = load float, float* %rtu_divider.addr, align 4
  %sub = fsub float -0.000000e+00, %4
  %cmp2 = fcmp olt float 0.000000e+00, %sub
  br i1 %cmp2, label %land.lhs.true3, label %if.else8

land.lhs.true3:                                   ; preds = %if.else
  %5 = load float, float* %rtu_divider.addr, align 4
  %sub4 = fsub float -0.000000e+00, %5
  %6 = load float, float* %rtp_minValue.addr, align 4
  %cmp5 = fcmp ole float %sub4, %6
  br i1 %cmp5, label %if.then6, label %if.else8

if.then6:                                         ; preds = %land.lhs.true3
  %7 = load float, float* %rtp_minValue.addr, align 4
  %sub7 = fsub float -0.000000e+00, %7
  store float %sub7, float* %rtb_Switch2_m, align 4
  br label %if.end9

if.else8:                                         ; preds = %land.lhs.true3, %if.else
  %8 = load float, float* %rtu_divider.addr, align 4
  store float %8, float* %rtb_Switch2_m, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.else8, %if.then
  %9 = load float, float* %rtu_dividend.addr, align 4
  %10 = load float, float* %rtb_Switch2_m, align 4
  %div = fdiv float %9, %10
  %11 = load %struct.DW_floatingdivide_Acchg__T*, %struct.DW_floatingdivide_Acchg__T** %localDW.addr, align 8
  %Divide = getelementptr inbounds %struct.DW_floatingdivide_Acchg__T, %struct.DW_floatingdivide_Acchg__T* %11, i32 0, i32 0
  store float %div, float* %Divide, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @look1_iu16lu32n31ts32D_Jd1VG4uJ(i16 zeroext %u0, i16* %bp0, i64* %table, i64 %maxIndex) #0 {
entry:
  %u0.addr = alloca i16, align 2
  %bp0.addr = alloca i16*, align 8
  %table.addr = alloca i64*, align 8
  %maxIndex.addr = alloca i64, align 8
  %y = alloca i64, align 8
  %frac = alloca i64, align 8
  %yR_0d0 = alloca i64, align 8
  %iRght = alloca i64, align 8
  %iLeft = alloca i64, align 8
  store i16 %u0, i16* %u0.addr, align 2
  store i16* %bp0, i16** %bp0.addr, align 8
  store i64* %table, i64** %table.addr, align 8
  store i64 %maxIndex, i64* %maxIndex.addr, align 8
  %0 = load i16, i16* %u0.addr, align 2
  %conv = zext i16 %0 to i32
  %1 = load i16*, i16** %bp0.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 0
  %2 = load i16, i16* %arrayidx, align 2
  %conv1 = zext i16 %2 to i32
  %cmp = icmp sle i32 %conv, %conv1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 0, i64* %iLeft, align 8
  store i64 0, i64* %frac, align 8
  br label %if.end36

if.else:                                          ; preds = %entry
  %3 = load i16, i16* %u0.addr, align 2
  %conv3 = zext i16 %3 to i32
  %4 = load i16*, i16** %bp0.addr, align 8
  %5 = load i64, i64* %maxIndex.addr, align 8
  %arrayidx4 = getelementptr inbounds i16, i16* %4, i64 %5
  %6 = load i16, i16* %arrayidx4, align 2
  %conv5 = zext i16 %6 to i32
  %cmp6 = icmp slt i32 %conv3, %conv5
  %7 = load i64, i64* %maxIndex.addr, align 8
  br i1 %cmp6, label %if.then8, label %if.else33

if.then8:                                         ; preds = %if.else
  %shr = lshr i64 %7, 1
  store i64 %shr, i64* %frac, align 8
  store i64 0, i64* %iLeft, align 8
  %8 = load i64, i64* %maxIndex.addr, align 8
  store i64 %8, i64* %iRght, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then8
  %9 = load i64, i64* %iRght, align 8
  %10 = load i64, i64* %iLeft, align 8
  %sub = sub i64 %9, %10
  %cmp9 = icmp ugt i64 %sub, 1
  %11 = load i16, i16* %u0.addr, align 2
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %conv11 = zext i16 %11 to i32
  %12 = load i16*, i16** %bp0.addr, align 8
  %13 = load i64, i64* %frac, align 8
  %arrayidx12 = getelementptr inbounds i16, i16* %12, i64 %13
  %14 = load i16, i16* %arrayidx12, align 2
  %conv13 = zext i16 %14 to i32
  %cmp14 = icmp slt i32 %conv11, %conv13
  %15 = load i64, i64* %frac, align 8
  br i1 %cmp14, label %if.then16, label %if.else17

if.then16:                                        ; preds = %while.body
  store i64 %15, i64* %iRght, align 8
  br label %if.end

if.else17:                                        ; preds = %while.body
  store i64 %15, i64* %iLeft, align 8
  br label %if.end

if.end:                                           ; preds = %if.else17, %if.then16
  %16 = load i64, i64* %iRght, align 8
  %17 = load i64, i64* %iLeft, align 8
  %add = add i64 %16, %17
  %shr18 = lshr i64 %add, 1
  store i64 %shr18, i64* %frac, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %conv19 = zext i16 %11 to i64
  %18 = load i16*, i16** %bp0.addr, align 8
  %19 = load i64, i64* %iLeft, align 8
  %arrayidx20 = getelementptr inbounds i16, i16* %18, i64 %19
  %20 = load i16, i16* %arrayidx20, align 2
  %conv21 = zext i16 %20 to i64
  %sub22 = sub i64 %conv19, %conv21
  %conv23 = trunc i64 %sub22 to i16
  %conv24 = zext i16 %conv23 to i64
  %shl = shl i64 %conv24, 16
  %21 = load i16*, i16** %bp0.addr, align 8
  %22 = load i64, i64* %iLeft, align 8
  %add25 = add i64 %22, 1
  %arrayidx26 = getelementptr inbounds i16, i16* %21, i64 %add25
  %23 = load i16, i16* %arrayidx26, align 2
  %conv27 = zext i16 %23 to i64
  %24 = load i16*, i16** %bp0.addr, align 8
  %25 = load i64, i64* %iLeft, align 8
  %arrayidx28 = getelementptr inbounds i16, i16* %24, i64 %25
  %26 = load i16, i16* %arrayidx28, align 2
  %conv29 = zext i16 %26 to i64
  %sub30 = sub i64 %conv27, %conv29
  %conv31 = trunc i64 %sub30 to i16
  %conv32 = zext i16 %conv31 to i64
  %call = call i64 @div_nzp_repeat_u32(i64 %shl, i64 %conv32, i64 15)
  store i64 %call, i64* %frac, align 8
  br label %if.end36

if.else33:                                        ; preds = %if.else
  %sub34 = sub i64 %7, 1
  store i64 %sub34, i64* %iLeft, align 8
  store i64 2147483648, i64* %frac, align 8
  br label %if.end36

if.end36:                                         ; preds = %while.end, %if.else33, %if.then
  %27 = load i64*, i64** %table.addr, align 8
  %28 = load i64, i64* %iLeft, align 8
  %add37 = add i64 %28, 1
  %arrayidx38 = getelementptr inbounds i64, i64* %27, i64 %add37
  %29 = load i64, i64* %arrayidx38, align 8
  store i64 %29, i64* %yR_0d0, align 8
  %30 = load i64, i64* %yR_0d0, align 8
  %31 = load i64*, i64** %table.addr, align 8
  %32 = load i64, i64* %iLeft, align 8
  %arrayidx39 = getelementptr inbounds i64, i64* %31, i64 %32
  %33 = load i64, i64* %arrayidx39, align 8
  %cmp40 = icmp sge i64 %30, %33
  br i1 %cmp40, label %if.then42, label %if.else48

if.then42:                                        ; preds = %if.end36
  %34 = load i64, i64* %frac, align 8
  %35 = load i64, i64* %yR_0d0, align 8
  %36 = load i64*, i64** %table.addr, align 8
  %37 = load i64, i64* %iLeft, align 8
  %arrayidx43 = getelementptr inbounds i64, i64* %36, i64 %37
  %38 = load i64, i64* %arrayidx43, align 8
  %sub44 = sub i64 %35, %38
  %call45 = call i64 @mul_u32_loSR(i64 %34, i64 %sub44, i64 31)
  %39 = load i64*, i64** %table.addr, align 8
  %40 = load i64, i64* %iLeft, align 8
  %arrayidx46 = getelementptr inbounds i64, i64* %39, i64 %40
  %41 = load i64, i64* %arrayidx46, align 8
  %add47 = add nsw i64 %call45, %41
  store i64 %add47, i64* %y, align 8
  br label %if.end54

if.else48:                                        ; preds = %if.end36
  %42 = load i64*, i64** %table.addr, align 8
  %43 = load i64, i64* %iLeft, align 8
  %arrayidx49 = getelementptr inbounds i64, i64* %42, i64 %43
  %44 = load i64, i64* %arrayidx49, align 8
  %45 = load i64, i64* %frac, align 8
  %46 = load i64*, i64** %table.addr, align 8
  %47 = load i64, i64* %iLeft, align 8
  %arrayidx50 = getelementptr inbounds i64, i64* %46, i64 %47
  %48 = load i64, i64* %arrayidx50, align 8
  %49 = load i64, i64* %yR_0d0, align 8
  %sub51 = sub i64 %48, %49
  %call52 = call i64 @mul_u32_loSR(i64 %45, i64 %sub51, i64 31)
  %sub53 = sub nsw i64 %44, %call52
  store i64 %sub53, i64* %y, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.else48, %if.then42
  %50 = load i64, i64* %y, align 8
  ret i64 %50
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @SWC_AcChg_WaitVcuChrgAllowTimeOut() #0 {
entry:
  %tmp = alloca i64, align 8
  %timer50ms = alloca i8, align 1
  %timer10min = alloca i16, align 2
  %is_uncharged2 = alloca i8, align 1
  %is_c5_swc_app_acchg = alloca i8, align 1
  %is_active_c5_swc_app_acchg = alloca i8, align 1
  %UnitDelay_DSTATE_a = alloca i8, align 1
  %0 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 32), align 1
  store i8 %0, i8* %UnitDelay_DSTATE_a, align 1
  %1 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 37), align 2
  store i8 %1, i8* %is_active_c5_swc_app_acchg, align 1
  %2 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 38), align 1
  store i8 %2, i8* %is_c5_swc_app_acchg, align 1
  %3 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 39), align 4
  store i8 %3, i8* %is_uncharged2, align 1
  %4 = load i16, i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 21), align 4
  store i16 %4, i16* %timer10min, align 2
  %5 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 40), align 1
  store i8 %5, i8* %timer50ms, align 1
  %6 = load i8, i8* %is_active_c5_swc_app_acchg, align 1
  %conv = zext i8 %6 to i64
  %cmp = icmp eq i64 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8 1, i8* %is_active_c5_swc_app_acchg, align 1
  store i8 1, i8* %is_c5_swc_app_acchg, align 1
  store i8 0, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 66), align 1
  store i16 0, i16* %timer10min, align 2
  store i8 0, i8* %timer50ms, align 1
  br label %if.end75

if.else:                                          ; preds = %entry
  %7 = load i8, i8* %is_c5_swc_app_acchg, align 1
  %conv2 = zext i8 %7 to i64
  %cmp3 = icmp eq i64 %conv2, 1
  %8 = load i8, i8* %UnitDelay_DSTATE_a, align 1
  %conv6 = zext i8 %8 to i64
  br i1 %cmp3, label %if.then5, label %if.else13

if.then5:                                         ; preds = %if.else
  %cmp7 = icmp eq i64 %conv6, 1
  br i1 %cmp7, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then5
  %9 = load i8, i8* %UnitDelay_DSTATE_a, align 1
  %conv9 = zext i8 %9 to i64
  %cmp10 = icmp eq i64 %conv9, 7
  br i1 %cmp10, label %if.then12, label %if.end75

if.then12:                                        ; preds = %lor.lhs.false, %if.then5
  store i8 2, i8* %is_c5_swc_app_acchg, align 1
  store i8 0, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 66), align 1
  store i8 0, i8* %timer50ms, align 1
  store i8 3, i8* %is_uncharged2, align 1
  store i16 1, i16* %timer10min, align 2
  br label %if.end75

if.else13:                                        ; preds = %if.else
  %cmp15 = icmp ne i64 %conv6, 1
  br i1 %cmp15, label %land.lhs.true, label %if.else21

land.lhs.true:                                    ; preds = %if.else13
  %10 = load i8, i8* %UnitDelay_DSTATE_a, align 1
  %conv17 = zext i8 %10 to i64
  %cmp18 = icmp ne i64 %conv17, 7
  br i1 %cmp18, label %if.then20, label %if.else21

if.then20:                                        ; preds = %land.lhs.true
  store i8 0, i8* %is_uncharged2, align 1
  store i8 1, i8* %is_c5_swc_app_acchg, align 1
  store i8 0, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 66), align 1
  store i16 0, i16* %timer10min, align 2
  store i8 0, i8* %timer50ms, align 1
  br label %if.end75

if.else21:                                        ; preds = %land.lhs.true, %if.else13
  %11 = load i8, i8* %is_uncharged2, align 1
  %conv22 = zext i8 %11 to i32
  switch i32 %conv22, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %if.end75
  ]

sw.bb:                                            ; preds = %if.else21
  %12 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 54), align 1
  %tobool = icmp ne i8 %12, 0
  br i1 %tobool, label %if.end75, label %if.then23

if.then23:                                        ; preds = %sw.bb
  %13 = load i8, i8* %timer50ms, align 1
  %conv24 = zext i8 %13 to i64
  %cmp25 = icmp sge i64 %conv24, 5
  br i1 %cmp25, label %if.then27, label %if.else28

if.then27:                                        ; preds = %if.then23
  store i8 1, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 66), align 1
  br label %if.end75

if.else28:                                        ; preds = %if.then23
  %14 = load i8, i8* %timer50ms, align 1
  %conv29 = zext i8 %14 to i64
  %add = add nsw i64 %conv29, 1
  store i64 %add, i64* %tmp, align 8
  %15 = load i64, i64* %tmp, align 8
  %cmp30 = icmp sgt i64 %15, 255
  %spec.store.select = select i1 %cmp30, i64 255, i64 %add
  store i64 %spec.store.select, i64* %tmp, align 8
  %16 = load i64, i64* %tmp, align 8
  %conv34 = trunc i64 %16 to i8
  store i8 %conv34, i8* %timer50ms, align 1
  br label %if.end75

sw.default:                                       ; preds = %if.else21
  %17 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 54), align 1
  %tobool39 = icmp ne i8 %17, 0
  br i1 %tobool39, label %if.then40, label %if.else58

if.then40:                                        ; preds = %sw.default
  store i8 1, i8* %is_uncharged2, align 1
  %18 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 54), align 1
  %tobool41 = icmp ne i8 %18, 0
  br i1 %tobool41, label %if.end75, label %if.then42

if.then42:                                        ; preds = %if.then40
  %19 = load i8, i8* %timer50ms, align 1
  %conv43 = zext i8 %19 to i64
  %cmp44 = icmp sge i64 %conv43, 5
  br i1 %cmp44, label %if.then46, label %if.else47

if.then46:                                        ; preds = %if.then42
  store i8 1, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 66), align 1
  br label %if.end75

if.else47:                                        ; preds = %if.then42
  %20 = load i8, i8* %timer50ms, align 1
  %conv48 = zext i8 %20 to i64
  %add49 = add nsw i64 %conv48, 1
  store i64 %add49, i64* %tmp, align 8
  %21 = load i64, i64* %tmp, align 8
  %cmp50 = icmp sgt i64 %21, 255
  %spec.store.select1 = select i1 %cmp50, i64 255, i64 %add49
  store i64 %spec.store.select1, i64* %tmp, align 8
  %22 = load i64, i64* %tmp, align 8
  %conv54 = trunc i64 %22 to i8
  store i8 %conv54, i8* %timer50ms, align 1
  br label %if.end75

if.else58:                                        ; preds = %sw.default
  %23 = load i16, i16* %timer10min, align 2
  %conv59 = zext i16 %23 to i64
  %cmp60 = icmp sgt i64 %conv59, 60000
  br i1 %cmp60, label %if.then62, label %if.else63

if.then62:                                        ; preds = %if.else58
  store i8 2, i8* %is_uncharged2, align 1
  store i8 1, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 66), align 1
  br label %if.end75

if.else63:                                        ; preds = %if.else58
  %24 = load i16, i16* %timer10min, align 2
  %conv64 = zext i16 %24 to i64
  %add65 = add nsw i64 %conv64, 1
  store i64 %add65, i64* %tmp, align 8
  %25 = load i64, i64* %tmp, align 8
  %cmp66 = icmp sgt i64 %25, 65535
  %spec.store.select2 = select i1 %cmp66, i64 65535, i64 %add65
  store i64 %spec.store.select2, i64* %tmp, align 8
  %26 = load i64, i64* %tmp, align 8
  %conv70 = trunc i64 %26 to i16
  store i16 %conv70, i16* %timer10min, align 2
  br label %if.end75

if.end75:                                         ; preds = %if.then12, %lor.lhs.false, %sw.bb, %if.then27, %if.else28, %if.else21, %if.then62, %if.else63, %if.else47, %if.then46, %if.then40, %if.then20, %if.then
  %27 = load i8, i8* %timer50ms, align 1
  store i8 %27, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 40), align 1
  %28 = load i16, i16* %timer10min, align 2
  store i16 %28, i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 21), align 4
  %29 = load i8, i8* %is_uncharged2, align 1
  store i8 %29, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 39), align 4
  %30 = load i8, i8* %is_c5_swc_app_acchg, align 1
  store i8 %30, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 38), align 1
  %31 = load i8, i8* %is_active_c5_swc_app_acchg, align 1
  store i8 %31, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 37), align 2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @SWC_AcChg_ChrgEndVcuReqPwrdown() #0 {
entry:
  %tmpRead = alloca i8, align 1
  %rtb_LogicalOperator7_n = alloca i8, align 1
  %rtb_LogicalOperator20 = alloca i8, align 1
  %UnitDelay_DSTATE_a = alloca i8, align 1
  %Delay_DSTATE_n = alloca i8, align 1
  %UnitDelay4_DSTATE = alloca i8, align 1
  %Delay12_DSTATE = alloca i8, align 1
  %UnitDelay5_DSTATE = alloca i8, align 1
  %0 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 80), align 1
  store i8 %0, i8* %UnitDelay5_DSTATE, align 1
  %1 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 35), align 8
  store i8 %1, i8* %Delay12_DSTATE, align 1
  %2 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 78), align 1
  store i8 %2, i8* %UnitDelay4_DSTATE, align 1
  %3 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 79), align 4
  store i8 %3, i8* %Delay_DSTATE_n, align 1
  %4 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 32), align 1
  store i8 %4, i8* %UnitDelay_DSTATE_a, align 1
  %5 = load i8, i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_stPwrReq, align 1
  store i8 %5, i8* %tmpRead, align 1
  %6 = load i8, i8* %UnitDelay_DSTATE_a, align 1
  %conv = zext i8 %6 to i64
  %cmp = icmp eq i64 %conv, 1
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %7 = load i8, i8* %UnitDelay_DSTATE_a, align 1
  %conv2 = zext i8 %7 to i64
  %cmp3 = icmp eq i64 %conv2, 7
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %8 = phi i1 [ true, %entry ], [ %cmp3, %lor.rhs ]
  %lor.ext = zext i1 %8 to i32
  %conv5 = trunc i32 %lor.ext to i8
  store i8 %conv5, i8* %rtb_LogicalOperator7_n, align 1
  %9 = load i8, i8* %rtb_LogicalOperator7_n, align 1
  %conv6 = zext i8 %9 to i32
  %tobool = icmp ne i32 %conv6, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.end
  %10 = load i8, i8* %UnitDelay4_DSTATE, align 1
  %tobool7 = icmp ne i8 %10, 0
  %lnot = xor i1 %tobool7, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.end
  %11 = phi i1 [ false, %lor.end ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %11 to i32
  %conv8 = trunc i32 %land.ext to i8
  store i8 %conv8, i8* %rtb_LogicalOperator20, align 1
  %12 = load i8, i8* %rtb_LogicalOperator20, align 1
  %conv9 = zext i8 %12 to i32
  %tobool10 = icmp ne i32 %conv9, 0
  br i1 %tobool10, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %land.end
  %13 = load i8, i8* getelementptr inbounds (%struct.tag_PrevZCX_Acchg__T, %struct.tag_PrevZCX_Acchg__T* @g_BMS_Acchg_PrevZCX, i32 0, i32 0), align 1
  %conv11 = zext i8 %13 to i64
  %cmp12 = icmp ne i64 %conv11, 1
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i8 0, i8* %Delay_DSTATE_n, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %land.end
  %14 = load i8, i8* %rtb_LogicalOperator20, align 1
  %conv14 = zext i8 %14 to i32
  %tobool15 = icmp ne i32 %conv14, 0
  %15 = zext i1 %tobool15 to i64
  %cond = select i1 %tobool15, i32 1, i32 0
  %conv16 = trunc i32 %cond to i8
  store i8 %conv16, i8* getelementptr inbounds (%struct.tag_PrevZCX_Acchg__T, %struct.tag_PrevZCX_Acchg__T* @g_BMS_Acchg_PrevZCX, i32 0, i32 0), align 1
  %16 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 28), align 1
  %conv17 = zext i8 %16 to i64
  %cmp18 = icmp eq i64 %conv17, 3
  %conv19 = zext i1 %cmp18 to i32
  %conv20 = trunc i32 %conv19 to i8
  store i8 %conv20, i8* %rtb_LogicalOperator20, align 1
  %17 = load i8, i8* %tmpRead, align 1
  %conv21 = zext i8 %17 to i64
  %cmp22 = icmp eq i64 %conv21, 4
  br i1 %cmp22, label %land.lhs.true24, label %land.end36

land.lhs.true24:                                  ; preds = %if.end
  %18 = load i8, i8* %Delay12_DSTATE, align 1
  %conv25 = zext i8 %18 to i64
  %cmp26 = icmp eq i64 %conv25, 4
  br i1 %cmp26, label %land.lhs.true28, label %land.end36

land.lhs.true28:                                  ; preds = %land.lhs.true24
  %19 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 24, i64 0), align 2
  %conv29 = zext i8 %19 to i64
  %cmp30 = icmp eq i64 %conv29, 4
  br i1 %cmp30, label %land.rhs32, label %land.end36

land.rhs32:                                       ; preds = %land.lhs.true28
  %20 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 25, i64 0), align 4
  %conv33 = zext i8 %20 to i64
  %cmp34 = icmp eq i64 %conv33, 4
  br label %land.end36

land.end36:                                       ; preds = %land.rhs32, %land.lhs.true28, %land.lhs.true24, %if.end
  %21 = phi i1 [ false, %land.lhs.true28 ], [ false, %land.lhs.true24 ], [ false, %if.end ], [ %cmp34, %land.rhs32 ]
  %land.ext37 = zext i1 %21 to i32
  %conv38 = trunc i32 %land.ext37 to i8
  store i8 %conv38, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 67), align 8
  %22 = load i8, i8* %Delay_DSTATE_n, align 1
  %tobool39 = icmp ne i8 %22, 0
  br i1 %tobool39, label %if.then40, label %if.else

if.then40:                                        ; preds = %land.end36
  store i8 1, i8* %Delay_DSTATE_n, align 1
  br label %if.end54

if.else:                                          ; preds = %land.end36
  %23 = load i8, i8* %rtb_LogicalOperator7_n, align 1
  %conv41 = zext i8 %23 to i32
  %tobool42 = icmp ne i32 %conv41, 0
  br i1 %tobool42, label %land.lhs.true43, label %land.end51

land.lhs.true43:                                  ; preds = %if.else
  %24 = load i8, i8* %rtb_LogicalOperator20, align 1
  %conv44 = zext i8 %24 to i32
  %tobool45 = icmp ne i32 %conv44, 0
  br i1 %tobool45, label %land.rhs48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true43
  %25 = load i8, i8* %UnitDelay5_DSTATE, align 1
  %conv46 = zext i8 %25 to i32
  %tobool47 = icmp ne i32 %conv46, 0
  br i1 %tobool47, label %land.rhs48, label %land.end51

land.rhs48:                                       ; preds = %lor.lhs.false, %land.lhs.true43
  %26 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 67), align 8
  %conv49 = zext i8 %26 to i32
  %tobool50 = icmp ne i32 %conv49, 0
  br label %land.end51

land.end51:                                       ; preds = %land.rhs48, %lor.lhs.false, %if.else
  %27 = phi i1 [ false, %lor.lhs.false ], [ false, %if.else ], [ %tobool50, %land.rhs48 ]
  %land.ext52 = zext i1 %27 to i32
  %conv53 = trunc i32 %land.ext52 to i8
  store i8 %conv53, i8* %Delay_DSTATE_n, align 1
  br label %if.end54

if.end54:                                         ; preds = %land.end51, %if.then40
  %28 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 24, i64 1), align 1
  store i8 %28, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 24, i64 0), align 2
  %29 = load i8, i8* %tmpRead, align 1
  store i8 %29, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 24, i64 1), align 1
  %30 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 25, i64 1), align 1
  store i8 %30, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 25, i64 0), align 4
  %31 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 25, i64 2), align 2
  store i8 %31, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 25, i64 1), align 1
  %32 = load i8, i8* %tmpRead, align 1
  store i8 %32, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 25, i64 2), align 2
  %33 = load i8, i8* %rtb_LogicalOperator7_n, align 1
  store i8 %33, i8* %UnitDelay4_DSTATE, align 1
  %34 = load i8, i8* %tmpRead, align 1
  store i8 %34, i8* %Delay12_DSTATE, align 1
  %35 = load i8, i8* %rtb_LogicalOperator20, align 1
  store i8 %35, i8* %UnitDelay5_DSTATE, align 1
  %36 = load i8, i8* %Delay_DSTATE_n, align 1
  store i8 %36, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 79), align 4
  %37 = load i8, i8* %UnitDelay4_DSTATE, align 1
  store i8 %37, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 78), align 1
  %38 = load i8, i8* %Delay12_DSTATE, align 1
  store i8 %38, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 35), align 8
  %39 = load i8, i8* %UnitDelay5_DSTATE, align 1
  store i8 %39, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 80), align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @SWC_AcChg_ObcInpAcUAbnormal() #0 {
entry:
  %UnitDelay_DSTATE_a = alloca i8, align 1
  %is_active_c4_swc_app_acchg = alloca i8, align 1
  %is_c4_swc_app_acchg = alloca i8, align 1
  %0 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 42), align 1
  store i8 %0, i8* %is_c4_swc_app_acchg, align 1
  %1 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 41), align 2
  store i8 %1, i8* %is_active_c4_swc_app_acchg, align 1
  %2 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 32), align 1
  store i8 %2, i8* %UnitDelay_DSTATE_a, align 1
  %3 = load i8, i8* %is_active_c4_swc_app_acchg, align 1
  %conv = zext i8 %3 to i64
  %cmp = icmp eq i64 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8 1, i8* %is_active_c4_swc_app_acchg, align 1
  store i8 1, i8* %is_c4_swc_app_acchg, align 1
  store i8 0, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 84), align 1
  store i8 0, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 83), align 8
  store i16 0, i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 22), align 2
  store i8 0, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 68), align 1
  br label %if.end24

if.else:                                          ; preds = %entry
  %4 = load i8, i8* %is_c4_swc_app_acchg, align 1
  %conv2 = zext i8 %4 to i64
  %cmp3 = icmp eq i64 %conv2, 1
  %5 = load i8, i8* %UnitDelay_DSTATE_a, align 1
  %conv6 = zext i8 %5 to i64
  br i1 %cmp3, label %if.then5, label %if.else13

if.then5:                                         ; preds = %if.else
  %cmp7 = icmp eq i64 %conv6, 1
  br i1 %cmp7, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then5
  %6 = load i8, i8* %UnitDelay_DSTATE_a, align 1
  %conv9 = zext i8 %6 to i64
  %cmp10 = icmp eq i64 %conv9, 7
  br i1 %cmp10, label %if.then12, label %if.end24

if.then12:                                        ; preds = %lor.lhs.false, %if.then5
  store i8 2, i8* %is_c4_swc_app_acchg, align 1
  store i8 0, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 84), align 1
  store i8 0, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 83), align 8
  store i16 0, i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 22), align 2
  store i8 0, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 68), align 1
  call void @Acchg_inner_default_uncharged2()
  br label %if.end24

if.else13:                                        ; preds = %if.else
  %cmp15 = icmp ne i64 %conv6, 1
  br i1 %cmp15, label %land.lhs.true, label %if.else21

land.lhs.true:                                    ; preds = %if.else13
  %7 = load i8, i8* %UnitDelay_DSTATE_a, align 1
  %conv17 = zext i8 %7 to i64
  %cmp18 = icmp ne i64 %conv17, 7
  br i1 %cmp18, label %if.then20, label %if.else21

if.then20:                                        ; preds = %land.lhs.true
  store i8 1, i8* %is_c4_swc_app_acchg, align 1
  store i8 0, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 84), align 1
  store i8 0, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 83), align 8
  store i16 0, i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 22), align 2
  store i8 0, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 68), align 1
  br label %if.end24

if.else21:                                        ; preds = %land.lhs.true, %if.else13
  call void @Acchg_inner_default_uncharged2()
  br label %if.end24

if.end24:                                         ; preds = %if.then12, %lor.lhs.false, %if.else21, %if.then20, %if.then
  %8 = load i8, i8* %is_active_c4_swc_app_acchg, align 1
  store i8 %8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 41), align 2
  %9 = load i8, i8* %is_c4_swc_app_acchg, align 1
  store i8 %9, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 42), align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Acchg_inner_default_uncharged2() #0 {
entry:
  %tmp = alloca i64, align 8
  %timer10min_l = alloca i16, align 2
  %flagObcVolOK = alloca i8, align 1
  %flagS2On = alloca i8, align 1
  %0 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 84), align 1
  store i8 %0, i8* %flagS2On, align 1
  %1 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 83), align 8
  store i8 %1, i8* %flagObcVolOK, align 1
  %2 = load i16, i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 22), align 2
  store i16 %2, i16* %timer10min_l, align 2
  %3 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 55), align 4
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 1, i8* %flagS2On, align 1
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %4 = load i16, i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 15), align 8
  %conv = zext i16 %4 to i64
  %cmp = icmp sge i64 %conv, 90
  br i1 %cmp, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %5 = load i8, i8* %flagS2On, align 1
  %conv2 = zext i8 %5 to i32
  %tobool3 = icmp ne i32 %conv2, 0
  br i1 %tobool3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %land.lhs.true
  store i8 1, i8* %flagObcVolOK, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.end, %land.lhs.true, %if.then4
  %6 = load i8, i8* %flagS2On, align 1
  %conv7 = zext i8 %6 to i32
  %tobool8 = icmp ne i32 %conv7, 0
  br i1 %tobool8, label %land.lhs.true9, label %if.end27

land.lhs.true9:                                   ; preds = %if.end6
  %7 = load i16, i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 15), align 8
  %conv10 = zext i16 %7 to i64
  %cmp11 = icmp slt i64 %conv10, 90
  br i1 %cmp11, label %if.then13, label %if.end27

if.then13:                                        ; preds = %land.lhs.true9
  %8 = load i16, i16* %timer10min_l, align 2
  %conv14 = zext i16 %8 to i64
  %cmp15 = icmp sge i64 %conv14, 60000
  br i1 %cmp15, label %if.then17, label %if.else18

if.then17:                                        ; preds = %if.then13
  store i8 1, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 68), align 1
  store i16 0, i16* %timer10min_l, align 2
  br label %if.end27

if.else18:                                        ; preds = %if.then13
  %9 = load i16, i16* %timer10min_l, align 2
  %conv19 = zext i16 %9 to i64
  %add = add nsw i64 %conv19, 1
  store i64 %add, i64* %tmp, align 8
  %10 = load i64, i64* %tmp, align 8
  %cmp20 = icmp sgt i64 %10, 65535
  %spec.store.select = select i1 %cmp20, i64 65535, i64 %add
  store i64 %spec.store.select, i64* %tmp, align 8
  %11 = load i64, i64* %tmp, align 8
  %conv24 = trunc i64 %11 to i16
  store i16 %conv24, i16* %timer10min_l, align 2
  br label %if.end27

if.end27:                                         ; preds = %if.end6, %land.lhs.true9, %if.then17, %if.else18
  %12 = load i8, i8* %flagObcVolOK, align 1
  %tobool28 = icmp ne i8 %12, 0
  br i1 %tobool28, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end27
  store i8 0, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 68), align 1
  br label %if.end31

if.end31:                                         ; preds = %if.end27, %if.then29
  %13 = load i16, i16* %timer10min_l, align 2
  store i16 %13, i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 22), align 2
  %14 = load i8, i8* %flagObcVolOK, align 1
  store i8 %14, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 83), align 8
  %15 = load i8, i8* %flagS2On, align 1
  store i8 %15, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 84), align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @SWC_AcChg_ChrgCurrentCal() #0 {
entry:
  %tmpRead = alloca i16, align 2
  %tmpRead_0 = alloca i16, align 2
  %tmpRead_1 = alloca i8, align 1
  %tmpRead_2 = alloca i8, align 1
  %rtb_Multiport_Switch = alloca i64, align 8
  %rtb_MultiportSwitch = alloca float, align 4
  %rtb_A = alloca i64, align 8
  %rtb_Switch2 = alloca i64, align 8
  %rtb_Iac = alloca i16, align 2
  %rtb_CC_Battery_0 = alloca i16, align 2
  %tmp = alloca i8, align 1
  %u0 = alloca float, align 4
  %u0_tmp = alloca float, align 4
  %0 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 26), align 1
  %conv = zext i8 %0 to i64
  %cmp = icmp eq i64 %conv, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 26), align 1
  %conv2 = zext i8 %1 to i64
  %cmp3 = icmp eq i64 %conv2, 3
  br i1 %cmp3, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %2 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 26), align 1
  %conv6 = zext i8 %2 to i64
  %cmp7 = icmp eq i64 %conv6, 4
  br i1 %cmp7, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %3 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 26), align 1
  %conv10 = zext i8 %3 to i64
  %cmp11 = icmp eq i64 %conv10, 5
  br i1 %cmp11, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false9, %lor.lhs.false5, %lor.lhs.false, %entry
  %4 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 26), align 1
  store i8 %4, i8* %tmp, align 1
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false9
  store i8 1, i8* %tmp, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i8, i8* %tmp, align 1
  %conv13 = zext i8 %5 to i32
  switch i32 %conv13, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb14
    i32 2, label %sw.bb15
    i32 3, label %sw.bb16
    i32 4, label %sw.bb17
    i32 5, label %sw.bb18
  ]

sw.bb:                                            ; preds = %if.end
  store i64 0, i64* %rtb_Multiport_Switch, align 8
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end
  store i64 0, i64* %rtb_Multiport_Switch, align 8
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end
  %6 = load i64, i64* getelementptr inbounds (%struct.P_Acchg__T_, %struct.P_Acchg__T_* @g_BMS_Acchg_P, i32 0, i32 1), align 8
  store i64 %6, i64* %rtb_Multiport_Switch, align 8
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end
  %7 = load i64, i64* getelementptr inbounds (%struct.P_Acchg__T_, %struct.P_Acchg__T_* @g_BMS_Acchg_P, i32 0, i32 2), align 8
  store i64 %7, i64* %rtb_Multiport_Switch, align 8
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end
  %8 = load i64, i64* getelementptr inbounds (%struct.P_Acchg__T_, %struct.P_Acchg__T_* @g_BMS_Acchg_P, i32 0, i32 3), align 8
  store i64 %8, i64* %rtb_Multiport_Switch, align 8
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end
  %9 = load i64, i64* getelementptr inbounds (%struct.P_Acchg__T_, %struct.P_Acchg__T_* @g_BMS_Acchg_P, i32 0, i32 4), align 8
  store i64 %9, i64* %rtb_Multiport_Switch, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store i64 0, i64* %rtb_Multiport_Switch, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb
  %10 = load i64, i64* %rtb_Multiport_Switch, align 8
  %conv19 = sitofp i64 %10 to float
  %div = fdiv float %conv19, 1.000000e+03
  %mul = fmul float %div, 1.000000e+01
  store float %mul, float* %rtb_MultiportSwitch, align 4
  %11 = load float, float* %rtb_MultiportSwitch, align 4
  %cmp20 = fcmp olt float %11, 6.553600e+04
  br i1 %cmp20, label %if.then22, label %if.else29

if.then22:                                        ; preds = %sw.epilog
  %12 = load float, float* %rtb_MultiportSwitch, align 4
  %cmp23 = fcmp oge float %12, 0.000000e+00
  br i1 %cmp23, label %if.then25, label %if.else27

if.then25:                                        ; preds = %if.then22
  %13 = load float, float* %rtb_MultiportSwitch, align 4
  %conv26 = fptoui float %13 to i16
  store i16 %conv26, i16* %rtb_CC_Battery_0, align 2
  br label %if.end30

if.else27:                                        ; preds = %if.then22
  store i16 0, i16* %rtb_CC_Battery_0, align 2
  br label %if.end30

if.else29:                                        ; preds = %sw.epilog
  store i16 -1, i16* %rtb_CC_Battery_0, align 2
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %if.else27, %if.else29
  %14 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 53), align 2
  %tobool = icmp ne i8 %14, 0
  br i1 %tobool, label %if.then31, label %if.else57

if.then31:                                        ; preds = %if.end30
  %15 = load i16, i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 17), align 4
  %call = call i64 @look1_iu16lu32n31ts32D_Jd1VG4uJ(i16 zeroext %15, i16* getelementptr inbounds (%struct.P_Acchg__T_, %struct.P_Acchg__T_* @g_BMS_Acchg_P, i32 0, i32 6, i64 0), i64* getelementptr inbounds (%struct.P_Acchg__T_, %struct.P_Acchg__T_* @g_BMS_Acchg_P, i32 0, i32 0, i64 0), i64 6)
  store i64 %call, i64* %rtb_Multiport_Switch, align 8
  %16 = load i64, i64* %rtb_Multiport_Switch, align 8
  %17 = load i64, i64* getelementptr inbounds (%struct.P_Acchg__T_, %struct.P_Acchg__T_* @g_BMS_Acchg_P, i32 0, i32 4), align 8
  %cmp32 = icmp sgt i64 %16, %17
  br i1 %cmp32, label %if.then34, label %if.else35

if.then34:                                        ; preds = %if.then31
  %18 = load i64, i64* getelementptr inbounds (%struct.P_Acchg__T_, %struct.P_Acchg__T_* @g_BMS_Acchg_P, i32 0, i32 4), align 8
  store i64 %18, i64* %rtb_Multiport_Switch, align 8
  br label %if.end40

if.else35:                                        ; preds = %if.then31
  %19 = load i64, i64* %rtb_Multiport_Switch, align 8
  %cmp36 = icmp slt i64 %19, 0
  br i1 %cmp36, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.else35
  store i64 0, i64* %rtb_Multiport_Switch, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.else35, %if.then38, %if.then34
  %20 = load i64, i64* %rtb_Multiport_Switch, align 8
  %div41 = sdiv i64 %20, 125
  store i64 %div41, i64* %rtb_Multiport_Switch, align 8
  %21 = load i64, i64* %rtb_Multiport_Switch, align 8
  %cmp42 = icmp slt i64 %21, 0
  br i1 %cmp42, label %if.then44, label %if.else45

if.then44:                                        ; preds = %if.end40
  store i64 0, i64* %rtb_Multiport_Switch, align 8
  br label %if.end50

if.else45:                                        ; preds = %if.end40
  %22 = load i64, i64* %rtb_Multiport_Switch, align 8
  %cmp46 = icmp sgt i64 %22, 65535
  br i1 %cmp46, label %if.then48, label %if.end50

if.then48:                                        ; preds = %if.else45
  store i64 65535, i64* %rtb_Multiport_Switch, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.else45, %if.then48, %if.then44
  %23 = load i64, i64* %rtb_Multiport_Switch, align 8
  %mul51 = mul i64 %23, 5
  %shr = lshr i64 %mul51, 2
  store i64 %shr, i64* %rtb_A, align 8
  %24 = load i64, i64* %rtb_A, align 8
  %cmp52 = icmp ugt i64 %24, 65535
  %spec.store.select = select i1 %cmp52, i64 65535, i64 %shr
  store i64 %spec.store.select, i64* %rtb_A, align 8
  %25 = load i64, i64* %rtb_A, align 8
  %conv56 = trunc i64 %25 to i16
  store i16 %conv56, i16* %rtb_Iac, align 2
  br label %if.end58

if.else57:                                        ; preds = %if.end30
  store i16 0, i16* %rtb_Iac, align 2
  br label %if.end58

if.end58:                                         ; preds = %if.else57, %if.end50
  %26 = load i8, i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_stChrgUnlckILimReq, align 1
  store i8 %26, i8* %tmpRead_2, align 1
  %27 = load i8, i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_stChrgIReqLimFac, align 1
  store i8 %27, i8* %tmpRead_1, align 1
  %28 = load i8, i8* %tmpRead_1, align 1
  %conv59 = zext i8 %28 to i32
  switch i32 %conv59, label %sw.default63 [
    i32 0, label %sw.bb60
    i32 1, label %sw.bb61
    i32 2, label %sw.bb62
  ]

sw.bb60:                                          ; preds = %if.end58
  store float 1.000000e+00, float* %rtb_MultiportSwitch, align 4
  br label %sw.epilog64

sw.bb61:                                          ; preds = %if.end58
  store float 0x3FE6666660000000, float* %rtb_MultiportSwitch, align 4
  br label %sw.epilog64

sw.bb62:                                          ; preds = %if.end58
  store float 0x3FD3333340000000, float* %rtb_MultiportSwitch, align 4
  br label %sw.epilog64

sw.default63:                                     ; preds = %if.end58
  store float 0.000000e+00, float* %rtb_MultiportSwitch, align 4
  br label %sw.epilog64

sw.epilog64:                                      ; preds = %sw.default63, %sw.bb62, %sw.bb61, %sw.bb60
  %29 = load i16, i16* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_iObcMaxChrgOutpIAvl, align 2
  store i16 %29, i16* %tmpRead, align 2
  %30 = load i16, i16* %rtb_CC_Battery_0, align 2
  %conv65 = zext i16 %30 to i32
  %31 = load i16, i16* %rtb_Iac, align 2
  %conv66 = zext i16 %31 to i32
  %cmp67 = icmp sge i32 %conv65, %conv66
  br i1 %cmp67, label %if.then69, label %if.end70

if.then69:                                        ; preds = %sw.epilog64
  %32 = load i16, i16* %rtb_Iac, align 2
  store i16 %32, i16* %rtb_CC_Battery_0, align 2
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %sw.epilog64
  %33 = load i16, i16* %rtb_CC_Battery_0, align 2
  %conv71 = zext i16 %33 to i32
  %34 = load i16, i16* %rtb_Iac, align 2
  %conv72 = zext i16 %34 to i32
  %cmp73 = icmp slt i32 %conv71, %conv72
  br i1 %cmp73, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.end70
  %35 = load i16, i16* %rtb_CC_Battery_0, align 2
  store i16 %35, i16* %rtb_Iac, align 2
  br label %if.end76

if.end76:                                         ; preds = %if.then75, %if.end70
  %36 = load i8, i8* %tmpRead_2, align 1
  %conv77 = zext i8 %36 to i32
  %tobool78 = icmp ne i32 %conv77, 0
  br i1 %tobool78, label %land.lhs.true, label %if.end83

land.lhs.true:                                    ; preds = %if.end76
  %37 = load i16, i16* %rtb_Iac, align 2
  %conv79 = zext i16 %37 to i64
  %cmp80 = icmp slt i64 150, %conv79
  br i1 %cmp80, label %if.then82, label %if.end83

if.then82:                                        ; preds = %land.lhs.true
  store i16 150, i16* %rtb_Iac, align 2
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %land.lhs.true, %if.end76
  %38 = load i16, i16* %rtb_Iac, align 2
  %conv84 = uitofp i16 %38 to float
  %mul85 = fmul float %conv84, 0x3FB99999A0000000
  %39 = load i16, i16* getelementptr inbounds (%struct.P_Acchg__T_, %struct.P_Acchg__T_* @g_BMS_Acchg_P, i32 0, i32 5), align 8
  %conv86 = uitofp i16 %39 to float
  %mul87 = fmul float %conv86, 0x3F847AE140000000
  %mul88 = fmul float %mul85, %mul87
  %40 = load i16, i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 15), align 8
  %conv89 = uitofp i16 %40 to float
  %mul90 = fmul float %mul88, %conv89
  %41 = load i16, i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 18), align 2
  %conv91 = uitofp i16 %41 to float
  %mul92 = fmul float %conv91, 0x3FB99999A0000000
  call void @Acchg_floatingdivide(float %mul90, float %mul92, %struct.DW_floatingdivide_Acchg__T* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 11), float 0x3E7AD7F2A0000000)
  %42 = load i16, i16* %tmpRead, align 2
  %conv93 = uitofp i16 %42 to float
  %mul94 = fmul float %conv93, 0x3FB99999A0000000
  store float %mul94, float* %u0_tmp, align 4
  %43 = load float, float* %u0_tmp, align 4
  %44 = load float, float* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 11, i32 0), align 4
  %cmp95 = fcmp olt float %43, %44
  br i1 %cmp95, label %if.then97, label %if.else98

if.then97:                                        ; preds = %if.end83
  %45 = load float, float* %u0_tmp, align 4
  store float %45, float* %u0, align 4
  br label %if.end99

if.else98:                                        ; preds = %if.end83
  %46 = load float, float* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 11, i32 0), align 4
  store float %46, float* %u0, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.else98, %if.then97
  %47 = load float, float* %rtb_MultiportSwitch, align 4
  %48 = load float, float* %u0, align 4
  %mul100 = fmul float %47, %48
  %conv101 = fptoui float %mul100 to i16
  store i16 %conv101, i16* @Rte_SWC_APP_AcChg_AcChg_SlwChg_iChrgnSysIAllwdMax, align 2
  %49 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 30), align 1
  %conv102 = zext i8 %49 to i64
  %cmp103 = icmp eq i64 %conv102, 7
  br i1 %cmp103, label %land.lhs.true109, label %lor.lhs.false105

lor.lhs.false105:                                 ; preds = %if.end99
  %50 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 30), align 1
  %conv106 = zext i8 %50 to i64
  %cmp107 = icmp eq i64 %conv106, 8
  br i1 %cmp107, label %land.lhs.true109, label %if.else153

land.lhs.true109:                                 ; preds = %lor.lhs.false105, %if.end99
  %51 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 70), align 1
  %conv110 = zext i8 %51 to i32
  %tobool111 = icmp ne i32 %conv110, 0
  br i1 %tobool111, label %if.then112, label %if.else153

if.then112:                                       ; preds = %land.lhs.true109
  %52 = load i16, i16* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_powExtHvPwrCnsAct, align 2
  store i16 %52, i16* %tmpRead_0, align 2
  %53 = load i64, i64* @Rte_SWC_APP_ChgCurLimit_ChgiLimit_iLimit_iLimit, align 8
  store i64 %53, i64* %rtb_Switch2, align 8
  %54 = load i64, i64* %rtb_Switch2, align 8
  %div113 = udiv i64 %54, 1000
  store i64 %div113, i64* %rtb_A, align 8
  %55 = load i16, i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 16), align 2
  %conv114 = zext i16 %55 to i32
  %56 = load i16, i16* getelementptr inbounds (%struct.P_Acchg__T_, %struct.P_Acchg__T_* @g_BMS_Acchg_P, i32 0, i32 9), align 4
  %conv115 = zext i16 %56 to i64
  %sub = sub nsw i64 %conv115, 5
  %conv116 = trunc i64 %sub to i16
  %conv117 = zext i16 %conv116 to i32
  %cmp118 = icmp sge i32 %conv114, %conv117
  br i1 %cmp118, label %land.lhs.true120, label %if.else128

land.lhs.true120:                                 ; preds = %if.then112
  %57 = load i16, i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 16), align 2
  %conv121 = zext i16 %57 to i32
  %58 = load i16, i16* getelementptr inbounds (%struct.P_Acchg__T_, %struct.P_Acchg__T_* @g_BMS_Acchg_P, i32 0, i32 8), align 2
  %conv122 = zext i16 %58 to i32
  %cmp123 = icmp slt i32 %conv121, %conv122
  br i1 %cmp123, label %if.then125, label %if.else128

if.then125:                                       ; preds = %land.lhs.true120
  %59 = load i8, i8* getelementptr inbounds (%struct.P_Acchg__T_, %struct.P_Acchg__T_* @g_BMS_Acchg_P, i32 0, i32 11), align 1
  %conv126 = zext i8 %59 to i64
  %div127 = udiv i64 %conv126, 20
  store i64 %div127, i64* %rtb_Switch2, align 8
  br label %if.end129

if.else128:                                       ; preds = %land.lhs.true120, %if.then112
  %60 = load i64, i64* %rtb_A, align 8
  store i64 %60, i64* %rtb_Switch2, align 8
  br label %if.end129

if.end129:                                        ; preds = %if.else128, %if.then125
  %61 = load i16, i16* %tmpRead_0, align 2
  %conv130 = zext i16 %61 to i64
  %mul131 = mul i64 1000, %conv130
  %conv132 = trunc i64 %mul131 to i16
  %conv133 = uitofp i16 %conv132 to float
  %mul134 = fmul float %conv133, 0x3FB99999A0000000
  %62 = load i16, i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 18), align 2
  %conv135 = uitofp i16 %62 to float
  %mul136 = fmul float %conv135, 0x3FB99999A0000000
  call void @Acchg_floatingdivide(float %mul134, float %mul136, %struct.DW_floatingdivide_Acchg__T* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 12), float 0x3E7AD7F2A0000000)
  %63 = load i64, i64* %rtb_Switch2, align 8
  %64 = load i64, i64* %rtb_A, align 8
  %cmp137 = icmp ult i64 %63, %64
  br i1 %cmp137, label %if.then139, label %if.end140

if.then139:                                       ; preds = %if.end129
  %65 = load i64, i64* %rtb_Switch2, align 8
  store i64 %65, i64* %rtb_A, align 8
  br label %if.end140

if.end140:                                        ; preds = %if.then139, %if.end129
  %66 = load float, float* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 12, i32 0), align 8
  %67 = load i64, i64* %rtb_A, align 8
  %conv141 = uitofp i64 %67 to float
  %add = fadd float %66, %conv141
  store float %add, float* %u0, align 4
  %68 = load float, float* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 11, i32 0), align 4
  %69 = load float, float* %u0, align 4
  %cmp142 = fcmp olt float %68, %69
  br i1 %cmp142, label %if.then144, label %if.end145

if.then144:                                       ; preds = %if.end140
  %70 = load float, float* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 11, i32 0), align 4
  store float %70, float* %u0, align 4
  br label %if.end145

if.end145:                                        ; preds = %if.then144, %if.end140
  %71 = load float, float* %u0, align 4
  %72 = load float, float* %u0_tmp, align 4
  %cmp146 = fcmp olt float %71, %72
  br i1 %cmp146, label %if.then148, label %if.end149

if.then148:                                       ; preds = %if.end145
  %73 = load float, float* %u0, align 4
  store float %73, float* %u0_tmp, align 4
  br label %if.end149

if.end149:                                        ; preds = %if.then148, %if.end145
  %74 = load float, float* %u0_tmp, align 4
  %75 = load float, float* %rtb_MultiportSwitch, align 4
  %mul150 = fmul float %74, %75
  %mul151 = fmul float %mul150, 1.000000e+01
  %conv152 = fptoui float %mul151 to i16
  store i16 %conv152, i16* @Rte_SWC_APP_AcChg_AcChg_SlwChg_iSetSlowCharge, align 2
  br label %if.end154

if.else153:                                       ; preds = %land.lhs.true109, %lor.lhs.false105
  store i16 0, i16* @Rte_SWC_APP_AcChg_AcChg_SlwChg_iSetSlowCharge, align 2
  br label %if.end154

if.end154:                                        ; preds = %if.else153, %if.end149
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Acchg_Fault_Confirm(i8 zeroext %rtu_Fault_soft, i64 %rtu_Fault_times, %struct.DW_fault_confirm_Acchg_e_T* %localDW) #0 {
entry:
  %rtu_Fault_soft.addr = alloca i8, align 1
  %rtu_Fault_times.addr = alloca i64, align 8
  %localDW.addr = alloca %struct.DW_fault_confirm_Acchg_e_T*, align 8
  %rtb_Add1_j = alloca i64, align 8
  %UnitDelay_DSTATE = alloca i64, align 8
  store i8 %rtu_Fault_soft, i8* %rtu_Fault_soft.addr, align 1
  store i64 %rtu_Fault_times, i64* %rtu_Fault_times.addr, align 8
  store %struct.DW_fault_confirm_Acchg_e_T* %localDW, %struct.DW_fault_confirm_Acchg_e_T** %localDW.addr, align 8
  %0 = load %struct.DW_fault_confirm_Acchg_e_T*, %struct.DW_fault_confirm_Acchg_e_T** %localDW.addr, align 8
  %UnitDelay_DSTATE1 = getelementptr inbounds %struct.DW_fault_confirm_Acchg_e_T, %struct.DW_fault_confirm_Acchg_e_T* %0, i32 0, i32 0
  %1 = load i64, i64* %UnitDelay_DSTATE1, align 8
  store i64 %1, i64* %UnitDelay_DSTATE, align 8
  %2 = load i64, i64* %rtu_Fault_times.addr, align 8
  %add = add i64 1, %2
  store i64 %add, i64* %rtb_Add1_j, align 8
  %3 = load i8, i8* %rtu_Fault_soft.addr, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %UnitDelay_DSTATE, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %UnitDelay_DSTATE, align 8
  %5 = load i64, i64* %UnitDelay_DSTATE, align 8
  %6 = load i64, i64* %rtb_Add1_j, align 8
  %cmp = icmp uge i64 %5, %6
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.then
  %7 = load i64, i64* %rtb_Add1_j, align 8
  store i64 %7, i64* %UnitDelay_DSTATE, align 8
  br label %if.end3

if.else:                                          ; preds = %entry
  store i64 0, i64* %UnitDelay_DSTATE, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then, %if.then2, %if.else
  %8 = load i64, i64* %UnitDelay_DSTATE, align 8
  %9 = load i64, i64* %rtb_Add1_j, align 8
  %cmp4 = icmp uge i64 %8, %9
  %conv = zext i1 %cmp4 to i32
  %conv5 = trunc i32 %conv to i8
  %10 = load %struct.DW_fault_confirm_Acchg_e_T*, %struct.DW_fault_confirm_Acchg_e_T** %localDW.addr, align 8
  %Switch2 = getelementptr inbounds %struct.DW_fault_confirm_Acchg_e_T, %struct.DW_fault_confirm_Acchg_e_T* %10, i32 0, i32 1
  store i8 %conv5, i8* %Switch2, align 8
  %11 = load i64, i64* %UnitDelay_DSTATE, align 8
  %12 = load %struct.DW_fault_confirm_Acchg_e_T*, %struct.DW_fault_confirm_Acchg_e_T** %localDW.addr, align 8
  %UnitDelay_DSTATE6 = getelementptr inbounds %struct.DW_fault_confirm_Acchg_e_T, %struct.DW_fault_confirm_Acchg_e_T* %12, i32 0, i32 0
  store i64 %11, i64* %UnitDelay_DSTATE6, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Acchg_data_lock(i8 zeroext %rtu_0, i8 zeroext %rtu_1, %struct.DW_data_lock_Acchg__T* %localDW) #0 {
entry:
  %rtu_0.addr = alloca i8, align 1
  %rtu_1.addr = alloca i8, align 1
  %localDW.addr = alloca %struct.DW_data_lock_Acchg__T*, align 8
  %UnitDelay_DSTATE = alloca i8, align 1
  store i8 %rtu_0, i8* %rtu_0.addr, align 1
  store i8 %rtu_1, i8* %rtu_1.addr, align 1
  store %struct.DW_data_lock_Acchg__T* %localDW, %struct.DW_data_lock_Acchg__T** %localDW.addr, align 8
  %0 = load %struct.DW_data_lock_Acchg__T*, %struct.DW_data_lock_Acchg__T** %localDW.addr, align 8
  %UnitDelay_DSTATE1 = getelementptr inbounds %struct.DW_data_lock_Acchg__T, %struct.DW_data_lock_Acchg__T* %0, i32 0, i32 1
  %1 = load i8, i8* %UnitDelay_DSTATE1, align 1
  store i8 %1, i8* %UnitDelay_DSTATE, align 1
  %2 = load i8, i8* %UnitDelay_DSTATE, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8 1, i8* %UnitDelay_DSTATE, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i8, i8* %rtu_0.addr, align 1
  %conv = zext i8 %3 to i32
  %4 = load i8, i8* %rtu_1.addr, align 1
  %conv2 = zext i8 %4 to i32
  %cmp = icmp eq i32 %conv, %conv2
  %conv3 = zext i1 %cmp to i32
  %conv4 = trunc i32 %conv3 to i8
  store i8 %conv4, i8* %UnitDelay_DSTATE, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i8, i8* %UnitDelay_DSTATE, align 1
  %6 = load %struct.DW_data_lock_Acchg__T*, %struct.DW_data_lock_Acchg__T** %localDW.addr, align 8
  %Switch12 = getelementptr inbounds %struct.DW_data_lock_Acchg__T, %struct.DW_data_lock_Acchg__T* %6, i32 0, i32 0
  store i8 %5, i8* %Switch12, align 1
  %7 = load i8, i8* %UnitDelay_DSTATE, align 1
  %8 = load %struct.DW_data_lock_Acchg__T*, %struct.DW_data_lock_Acchg__T** %localDW.addr, align 8
  %UnitDelay_DSTATE5 = getelementptr inbounds %struct.DW_data_lock_Acchg__T, %struct.DW_data_lock_Acchg__T* %8, i32 0, i32 1
  store i8 %7, i8* %UnitDelay_DSTATE5, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Acchg_fault_confirm(i8 zeroext %rtu_Fault_soft, i16 zeroext %rtu_Fault_times, %struct.DW_fault_confirm_Acchg__T* %localDW) #0 {
entry:
  %rtu_Fault_soft.addr = alloca i8, align 1
  %rtu_Fault_times.addr = alloca i16, align 2
  %localDW.addr = alloca %struct.DW_fault_confirm_Acchg__T*, align 8
  %rtb_Add1_h = alloca i16, align 2
  %UnitDelay_DSTATE = alloca i16, align 2
  store i8 %rtu_Fault_soft, i8* %rtu_Fault_soft.addr, align 1
  store i16 %rtu_Fault_times, i16* %rtu_Fault_times.addr, align 2
  store %struct.DW_fault_confirm_Acchg__T* %localDW, %struct.DW_fault_confirm_Acchg__T** %localDW.addr, align 8
  %0 = load %struct.DW_fault_confirm_Acchg__T*, %struct.DW_fault_confirm_Acchg__T** %localDW.addr, align 8
  %UnitDelay_DSTATE1 = getelementptr inbounds %struct.DW_fault_confirm_Acchg__T, %struct.DW_fault_confirm_Acchg__T* %0, i32 0, i32 0
  %1 = load i16, i16* %UnitDelay_DSTATE1, align 2
  store i16 %1, i16* %UnitDelay_DSTATE, align 2
  %2 = load i16, i16* %rtu_Fault_times.addr, align 2
  %conv = zext i16 %2 to i64
  %add = add i64 1, %conv
  %conv2 = trunc i64 %add to i16
  store i16 %conv2, i16* %rtb_Add1_h, align 2
  %3 = load i8, i8* %rtu_Fault_soft.addr, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i16, i16* %UnitDelay_DSTATE, align 2
  %conv3 = zext i16 %4 to i64
  %add4 = add i64 %conv3, 1
  %conv5 = trunc i64 %add4 to i16
  store i16 %conv5, i16* %UnitDelay_DSTATE, align 2
  %5 = load i16, i16* %UnitDelay_DSTATE, align 2
  %conv6 = zext i16 %5 to i32
  %6 = load i16, i16* %rtb_Add1_h, align 2
  %conv7 = zext i16 %6 to i32
  %cmp = icmp sge i32 %conv6, %conv7
  br i1 %cmp, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then
  %7 = load i16, i16* %rtb_Add1_h, align 2
  store i16 %7, i16* %UnitDelay_DSTATE, align 2
  br label %if.end10

if.else:                                          ; preds = %entry
  store i16 0, i16* %UnitDelay_DSTATE, align 2
  br label %if.end10

if.end10:                                         ; preds = %if.then, %if.then9, %if.else
  %8 = load i16, i16* %UnitDelay_DSTATE, align 2
  %conv11 = zext i16 %8 to i32
  %9 = load i16, i16* %rtb_Add1_h, align 2
  %conv12 = zext i16 %9 to i32
  %cmp13 = icmp sge i32 %conv11, %conv12
  %conv14 = zext i1 %cmp13 to i32
  %conv15 = trunc i32 %conv14 to i8
  %10 = load %struct.DW_fault_confirm_Acchg__T*, %struct.DW_fault_confirm_Acchg__T** %localDW.addr, align 8
  %Switch2 = getelementptr inbounds %struct.DW_fault_confirm_Acchg__T, %struct.DW_fault_confirm_Acchg__T* %10, i32 0, i32 1
  store i8 %conv15, i8* %Switch2, align 2
  %11 = load i16, i16* %UnitDelay_DSTATE, align 2
  %12 = load %struct.DW_fault_confirm_Acchg__T*, %struct.DW_fault_confirm_Acchg__T** %localDW.addr, align 8
  %UnitDelay_DSTATE16 = getelementptr inbounds %struct.DW_fault_confirm_Acchg__T, %struct.DW_fault_confirm_Acchg__T* %12, i32 0, i32 0
  store i16 %11, i16* %UnitDelay_DSTATE16, align 2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Acchg_data_lock_Reset(%struct.DW_data_lock_Acchg__T* %localDW) #0 {
entry:
  %localDW.addr = alloca %struct.DW_data_lock_Acchg__T*, align 8
  store %struct.DW_data_lock_Acchg__T* %localDW, %struct.DW_data_lock_Acchg__T** %localDW.addr, align 8
  %0 = load %struct.DW_data_lock_Acchg__T*, %struct.DW_data_lock_Acchg__T** %localDW.addr, align 8
  %UnitDelay_DSTATE = getelementptr inbounds %struct.DW_data_lock_Acchg__T, %struct.DW_data_lock_Acchg__T* %0, i32 0, i32 1
  store i8 0, i8* %UnitDelay_DSTATE, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Acchg_fault_confirm_Reset(%struct.DW_fault_confirm_Acchg__T* %localDW) #0 {
entry:
  %localDW.addr = alloca %struct.DW_fault_confirm_Acchg__T*, align 8
  store %struct.DW_fault_confirm_Acchg__T* %localDW, %struct.DW_fault_confirm_Acchg__T** %localDW.addr, align 8
  %0 = load %struct.DW_fault_confirm_Acchg__T*, %struct.DW_fault_confirm_Acchg__T** %localDW.addr, align 8
  %UnitDelay_DSTATE = getelementptr inbounds %struct.DW_fault_confirm_Acchg__T, %struct.DW_fault_confirm_Acchg__T* %0, i32 0, i32 0
  store i16 0, i16* %UnitDelay_DSTATE, align 2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Acchg_Fault_Confirm3(i8 zeroext %rtu_Fault_soft, i8 zeroext %rtu_Fault_times, %struct.DW_fault_confirm_Acchg_a_T* %localDW) #0 {
entry:
  %rtu_Fault_soft.addr = alloca i8, align 1
  %rtu_Fault_times.addr = alloca i8, align 1
  %localDW.addr = alloca %struct.DW_fault_confirm_Acchg_a_T*, align 8
  %rtb_Add1_g = alloca i16, align 2
  %UnitDelay_DSTATE = alloca i16, align 2
  store i8 %rtu_Fault_soft, i8* %rtu_Fault_soft.addr, align 1
  store i8 %rtu_Fault_times, i8* %rtu_Fault_times.addr, align 1
  store %struct.DW_fault_confirm_Acchg_a_T* %localDW, %struct.DW_fault_confirm_Acchg_a_T** %localDW.addr, align 8
  %0 = load %struct.DW_fault_confirm_Acchg_a_T*, %struct.DW_fault_confirm_Acchg_a_T** %localDW.addr, align 8
  %UnitDelay_DSTATE1 = getelementptr inbounds %struct.DW_fault_confirm_Acchg_a_T, %struct.DW_fault_confirm_Acchg_a_T* %0, i32 0, i32 0
  %1 = load i16, i16* %UnitDelay_DSTATE1, align 2
  store i16 %1, i16* %UnitDelay_DSTATE, align 2
  %2 = load i8, i8* %rtu_Fault_times.addr, align 1
  %conv = zext i8 %2 to i64
  %add = add i64 1, %conv
  %conv2 = trunc i64 %add to i16
  store i16 %conv2, i16* %rtb_Add1_g, align 2
  %3 = load i8, i8* %rtu_Fault_soft.addr, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i16, i16* %UnitDelay_DSTATE, align 2
  %conv3 = zext i16 %4 to i64
  %add4 = add i64 %conv3, 1
  %conv5 = trunc i64 %add4 to i16
  store i16 %conv5, i16* %UnitDelay_DSTATE, align 2
  %5 = load i16, i16* %UnitDelay_DSTATE, align 2
  %conv6 = zext i16 %5 to i32
  %6 = load i16, i16* %rtb_Add1_g, align 2
  %conv7 = zext i16 %6 to i32
  %cmp = icmp sge i32 %conv6, %conv7
  br i1 %cmp, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then
  %7 = load i16, i16* %rtb_Add1_g, align 2
  store i16 %7, i16* %UnitDelay_DSTATE, align 2
  br label %if.end10

if.else:                                          ; preds = %entry
  store i16 0, i16* %UnitDelay_DSTATE, align 2
  br label %if.end10

if.end10:                                         ; preds = %if.then, %if.then9, %if.else
  %8 = load i16, i16* %UnitDelay_DSTATE, align 2
  %conv11 = zext i16 %8 to i32
  %9 = load i16, i16* %rtb_Add1_g, align 2
  %conv12 = zext i16 %9 to i32
  %cmp13 = icmp sge i32 %conv11, %conv12
  %conv14 = zext i1 %cmp13 to i32
  %conv15 = trunc i32 %conv14 to i8
  %10 = load %struct.DW_fault_confirm_Acchg_a_T*, %struct.DW_fault_confirm_Acchg_a_T** %localDW.addr, align 8
  %Switch2 = getelementptr inbounds %struct.DW_fault_confirm_Acchg_a_T, %struct.DW_fault_confirm_Acchg_a_T* %10, i32 0, i32 1
  store i8 %conv15, i8* %Switch2, align 2
  %11 = load i16, i16* %UnitDelay_DSTATE, align 2
  %12 = load %struct.DW_fault_confirm_Acchg_a_T*, %struct.DW_fault_confirm_Acchg_a_T** %localDW.addr, align 8
  %UnitDelay_DSTATE16 = getelementptr inbounds %struct.DW_fault_confirm_Acchg_a_T, %struct.DW_fault_confirm_Acchg_a_T* %12, i32 0, i32 0
  store i16 %11, i16* %UnitDelay_DSTATE16, align 2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Acchg_Fault_Confirm3_Reset(%struct.DW_fault_confirm_Acchg_a_T* %localDW) #0 {
entry:
  %localDW.addr = alloca %struct.DW_fault_confirm_Acchg_a_T*, align 8
  store %struct.DW_fault_confirm_Acchg_a_T* %localDW, %struct.DW_fault_confirm_Acchg_a_T** %localDW.addr, align 8
  %0 = load %struct.DW_fault_confirm_Acchg_a_T*, %struct.DW_fault_confirm_Acchg_a_T** %localDW.addr, align 8
  %UnitDelay_DSTATE = getelementptr inbounds %struct.DW_fault_confirm_Acchg_a_T, %struct.DW_fault_confirm_Acchg_a_T* %0, i32 0, i32 0
  store i16 0, i16* %UnitDelay_DSTATE, align 2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @SWC_AcChg_ChrgEndJudge() #0 {
entry:
  %tmpRead = alloca i8, align 1
  %tmpRead_0 = alloca %struct.FaultCode, align 1
  %tmpRead_1 = alloca i8, align 1
  %tmpRead_2 = alloca i8, align 1
  %rtb_RelationalOperator22 = alloca i8, align 1
  %tmp = alloca i64, align 8
  %timer2min = alloca i16, align 2
  %is_uncharged2_p = alloca i8, align 1
  %is_c3_swc_app_acchg = alloca i8, align 1
  %is_active_c3_swc_app_acchg = alloca i8, align 1
  %0 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 43), align 8
  store i8 %0, i8* %is_active_c3_swc_app_acchg, align 1
  %1 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 44), align 1
  store i8 %1, i8* %is_c3_swc_app_acchg, align 1
  %2 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 45), align 2
  store i8 %2, i8* %is_uncharged2_p, align 1
  %3 = load i16, i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 23), align 8
  store i16 %3, i16* %timer2min, align 2
  %4 = load i8, i8* %is_active_c3_swc_app_acchg, align 1
  %conv = zext i8 %4 to i64
  %cmp = icmp eq i64 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8 1, i8* %is_active_c3_swc_app_acchg, align 1
  store i8 1, i8* %is_c3_swc_app_acchg, align 1
  store i8 0, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 69), align 2
  store i16 0, i16* %timer2min, align 2
  br label %if.end44

if.else:                                          ; preds = %entry
  %5 = load i8, i8* %is_c3_swc_app_acchg, align 1
  %conv2 = zext i8 %5 to i64
  %cmp3 = icmp eq i64 %conv2, 1
  %6 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 32), align 1
  %conv6 = zext i8 %6 to i64
  br i1 %cmp3, label %if.then5, label %if.else13

if.then5:                                         ; preds = %if.else
  %cmp7 = icmp eq i64 %conv6, 1
  br i1 %cmp7, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then5
  %7 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 32), align 1
  %conv9 = zext i8 %7 to i64
  %cmp10 = icmp eq i64 %conv9, 7
  br i1 %cmp10, label %if.then12, label %if.end44

if.then12:                                        ; preds = %lor.lhs.false, %if.then5
  store i8 2, i8* %is_c3_swc_app_acchg, align 1
  store i8 0, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 69), align 2
  store i8 3, i8* %is_uncharged2_p, align 1
  store i16 1, i16* %timer2min, align 2
  br label %if.end44

if.else13:                                        ; preds = %if.else
  %cmp15 = icmp ne i64 %conv6, 1
  br i1 %cmp15, label %land.lhs.true, label %if.else21

land.lhs.true:                                    ; preds = %if.else13
  %8 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 32), align 1
  %conv17 = zext i8 %8 to i64
  %cmp18 = icmp ne i64 %conv17, 7
  br i1 %cmp18, label %if.then20, label %if.else21

if.then20:                                        ; preds = %land.lhs.true
  store i8 0, i8* %is_uncharged2_p, align 1
  store i8 1, i8* %is_c3_swc_app_acchg, align 1
  store i8 0, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 69), align 2
  store i16 0, i16* %timer2min, align 2
  br label %if.end44

if.else21:                                        ; preds = %land.lhs.true, %if.else13
  %9 = load i8, i8* %is_uncharged2_p, align 1
  %conv22 = zext i8 %9 to i32
  %conv22.off = add i32 %conv22, -1
  %switch = icmp ult i32 %conv22.off, 2
  br i1 %switch, label %if.end44, label %sw.default

sw.default:                                       ; preds = %if.else21
  %10 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 27), align 8
  %conv24 = zext i8 %10 to i64
  %cmp25 = icmp eq i64 %conv24, 1
  br i1 %cmp25, label %if.then27, label %if.else28

if.then27:                                        ; preds = %sw.default
  store i8 1, i8* %is_uncharged2_p, align 1
  br label %if.end44

if.else28:                                        ; preds = %sw.default
  %11 = load i16, i16* %timer2min, align 2
  %conv29 = zext i16 %11 to i64
  %cmp30 = icmp sgt i64 %conv29, 12000
  br i1 %cmp30, label %if.then32, label %if.else33

if.then32:                                        ; preds = %if.else28
  store i8 2, i8* %is_uncharged2_p, align 1
  store i8 1, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 69), align 2
  br label %if.end44

if.else33:                                        ; preds = %if.else28
  %12 = load i16, i16* %timer2min, align 2
  %conv34 = zext i16 %12 to i64
  %add = add nsw i64 %conv34, 1
  store i64 %add, i64* %tmp, align 8
  %13 = load i64, i64* %tmp, align 8
  %cmp35 = icmp sgt i64 %13, 65535
  %spec.store.select = select i1 %cmp35, i64 65535, i64 %add
  store i64 %spec.store.select, i64* %tmp, align 8
  %14 = load i64, i64* %tmp, align 8
  %conv39 = trunc i64 %14 to i16
  store i16 %conv39, i16* %timer2min, align 2
  br label %if.end44

if.end44:                                         ; preds = %if.else21, %if.then12, %lor.lhs.false, %if.then32, %if.else33, %if.then27, %if.then20, %if.then
  %15 = load i8, i8* @Rte_SWC_APP_FunctionSafety_FunSafety_FunSafety_DfpTempLowSoft, align 1
  store i8 %15, i8* %tmpRead_2, align 1
  %16 = load i8, i8* @Rte_SWC_APP_FunctionSafety_FunSafety_FunSafety_DfpTempHighSeriousSoft, align 1
  store i8 %16, i8* %tmpRead_1, align 1
  %call = call zeroext i8 @Rte_Read_swc_app_acchg_FunSafety_FunSafety_stFaultCode(%struct.FaultCode* %tmpRead_0)
  %17 = load i8, i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_flagOBC1Rx, align 1
  store i8 %17, i8* %tmpRead, align 1
  %18 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 26), align 1
  %conv45 = zext i8 %18 to i64
  %cmp46 = icmp eq i64 %conv45, 8
  %conv47 = zext i1 %cmp46 to i32
  %conv48 = trunc i32 %conv47 to i8
  store i8 %conv48, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 60), align 1
  %ACChg_Prohibit = getelementptr inbounds %struct.FaultCode, %struct.FaultCode* %tmpRead_0, i32 0, i32 8
  %19 = load i8, i8* %ACChg_Prohibit, align 1
  store i8 %19, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 61), align 2
  %20 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 32), align 1
  %conv49 = zext i8 %20 to i64
  %cmp50 = icmp eq i64 %conv49, 8
  br i1 %cmp50, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end44
  %21 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 53), align 2
  %tobool = icmp ne i8 %21, 0
  br i1 %tobool, label %lor.rhs, label %land.end

lor.rhs:                                          ; preds = %land.rhs
  %22 = load i16, i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 17), align 4
  %conv52 = zext i16 %22 to i64
  %cmp53 = icmp slt i64 %conv52, 80
  br i1 %cmp53, label %land.end, label %lor.rhs55

lor.rhs55:                                        ; preds = %lor.rhs
  %23 = load i16, i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 17), align 4
  %conv56 = zext i16 %23 to i64
  %cmp57 = icmp sgt i64 %conv56, 900
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs55, %lor.rhs, %if.end44
  %24 = phi i1 [ false, %if.end44 ], [ true, %land.rhs ], [ true, %lor.rhs ], [ %cmp57, %lor.rhs55 ]
  %land.ext = zext i1 %24 to i32
  %conv60 = trunc i32 %land.ext to i8
  %25 = load i8, i8* getelementptr inbounds (%struct.P_Acchg__T_, %struct.P_Acchg__T_* @g_BMS_Acchg_P, i32 0, i32 10), align 2
  %conv61 = zext i8 %25 to i64
  %cmp62 = icmp eq i64 %conv61, 0
  br i1 %cmp62, label %cond.end, label %cond.false

cond.false:                                       ; preds = %land.end
  %26 = load i8, i8* getelementptr inbounds (%struct.P_Acchg__T_, %struct.P_Acchg__T_* @g_BMS_Acchg_P, i32 0, i32 10), align 2
  %conv64 = zext i8 %26 to i64
  call void @klee_div_zero_check(i64 %conv64)
  %div = udiv i64 2000, %conv64, !klee.check.div !12
  br label %cond.end

cond.end:                                         ; preds = %land.end, %cond.false
  %cond = phi i64 [ %div, %cond.false ], [ 4294967295, %land.end ]
  %conv65 = trunc i64 %cond to i16
  call void @Acchg_fault_confirm(i8 zeroext %conv60, i16 zeroext %conv65, %struct.DW_fault_confirm_Acchg__T* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 10))
  %27 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 32), align 1
  %conv66 = zext i8 %27 to i64
  %cmp67 = icmp eq i64 %conv66, 5
  %conv68 = zext i1 %cmp67 to i32
  %conv69 = trunc i32 %conv68 to i8
  store i8 %conv69, i8* %rtb_RelationalOperator22, align 1
  %28 = load i8, i8* %rtb_RelationalOperator22, align 1
  %conv70 = zext i8 %28 to i32
  %tobool71 = icmp ne i32 %conv70, 0
  br i1 %tobool71, label %land.lhs.true72, label %land.end80

land.lhs.true72:                                  ; preds = %cond.end
  %29 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 27), align 8
  %conv73 = zext i8 %29 to i64
  %cmp74 = icmp ne i64 %conv73, 1
  br i1 %cmp74, label %land.rhs76, label %land.end80

land.rhs76:                                       ; preds = %land.lhs.true72
  %30 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 34), align 1
  %conv77 = zext i8 %30 to i64
  %cmp78 = icmp eq i64 %conv77, 0
  br label %land.end80

land.end80:                                       ; preds = %land.rhs76, %land.lhs.true72, %cond.end
  %31 = phi i1 [ false, %land.lhs.true72 ], [ false, %cond.end ], [ %cmp78, %land.rhs76 ]
  %land.ext81 = zext i1 %31 to i32
  %conv82 = trunc i32 %land.ext81 to i8
  %32 = load i8, i8* getelementptr inbounds (%struct.P_Acchg__T_, %struct.P_Acchg__T_* @g_BMS_Acchg_P, i32 0, i32 10), align 2
  %conv83 = zext i8 %32 to i64
  %cmp84 = icmp eq i64 %conv83, 0
  br i1 %cmp84, label %cond.end90, label %cond.false87

cond.false87:                                     ; preds = %land.end80
  %33 = load i8, i8* getelementptr inbounds (%struct.P_Acchg__T_, %struct.P_Acchg__T_* @g_BMS_Acchg_P, i32 0, i32 10), align 2
  %conv88 = zext i8 %33 to i64
  call void @klee_div_zero_check(i64 %conv88)
  %div89 = udiv i64 550, %conv88, !klee.check.div !12
  br label %cond.end90

cond.end90:                                       ; preds = %land.end80, %cond.false87
  %cond91 = phi i64 [ %div89, %cond.false87 ], [ 4294967295, %land.end80 ]
  %conv92 = trunc i64 %cond91 to i16
  call void @Acchg_fault_confirm(i8 zeroext %conv82, i16 zeroext %conv92, %struct.DW_fault_confirm_Acchg__T* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 9))
  %34 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 54), align 1
  %tobool93 = icmp ne i8 %34, 0
  %lnot = xor i1 %tobool93, true
  %lnot.ext = zext i1 %lnot to i32
  %conv94 = trunc i32 %lnot.ext to i8
  %35 = load i8, i8* getelementptr inbounds (%struct.P_Acchg__T_, %struct.P_Acchg__T_* @g_BMS_Acchg_P, i32 0, i32 10), align 2
  %conv95 = zext i8 %35 to i64
  %cmp96 = icmp eq i64 %conv95, 0
  br i1 %cmp96, label %cond.end102, label %cond.false99

cond.false99:                                     ; preds = %cond.end90
  %36 = load i8, i8* getelementptr inbounds (%struct.P_Acchg__T_, %struct.P_Acchg__T_* @g_BMS_Acchg_P, i32 0, i32 10), align 2
  %conv100 = zext i8 %36 to i64
  call void @klee_div_zero_check(i64 %conv100)
  %div101 = udiv i64 50, %conv100, !klee.check.div !12
  br label %cond.end102

cond.end102:                                      ; preds = %cond.end90, %cond.false99
  %cond103 = phi i64 [ %div101, %cond.false99 ], [ 4294967295, %cond.end90 ]
  %conv104 = trunc i64 %cond103 to i8
  call void @Acchg_Fault_Confirm3(i8 zeroext %conv94, i8 zeroext %conv104, %struct.DW_fault_confirm_Acchg_a_T* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 8))
  %37 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 9, i32 1), align 2
  %conv105 = zext i8 %37 to i32
  %tobool106 = icmp ne i32 %conv105, 0
  br i1 %tobool106, label %lor.end116, label %lor.rhs107

lor.rhs107:                                       ; preds = %cond.end102
  %38 = load i8, i8* %rtb_RelationalOperator22, align 1
  %conv108 = zext i8 %38 to i32
  %tobool109 = icmp ne i32 %conv108, 0
  br i1 %tobool109, label %land.rhs110, label %lor.end116

land.rhs110:                                      ; preds = %lor.rhs107
  %39 = load i8, i8* %tmpRead, align 1
  %conv111 = zext i8 %39 to i64
  %cmp112 = icmp eq i64 %conv111, 0
  br label %lor.end116

lor.end116:                                       ; preds = %lor.rhs107, %land.rhs110, %cond.end102
  %40 = phi i1 [ true, %cond.end102 ], [ false, %lor.rhs107 ], [ %cmp112, %land.rhs110 ]
  %lor.ext = zext i1 %40 to i32
  %conv117 = trunc i32 %lor.ext to i8
  store i8 %conv117, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 62), align 1
  %41 = load i8, i8* %tmpRead_1, align 1
  %conv118 = zext i8 %41 to i32
  %tobool119 = icmp ne i32 %conv118, 0
  br i1 %tobool119, label %lor.end123, label %lor.rhs120

lor.rhs120:                                       ; preds = %lor.end116
  %42 = load i8, i8* %tmpRead_2, align 1
  %conv121 = zext i8 %42 to i32
  %tobool122 = icmp ne i32 %conv121, 0
  br label %lor.end123

lor.end123:                                       ; preds = %lor.rhs120, %lor.end116
  %43 = phi i1 [ true, %lor.end116 ], [ %tobool122, %lor.rhs120 ]
  %lor.ext124 = zext i1 %43 to i32
  %conv125 = trunc i32 %lor.ext124 to i8
  store i8 %conv125, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 63), align 4
  %44 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 26), align 1
  %conv126 = zext i8 %44 to i64
  %cmp127 = icmp eq i64 %conv126, 7
  br i1 %cmp127, label %lor.end137, label %lor.lhs.false129

lor.lhs.false129:                                 ; preds = %lor.end123
  %45 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 26), align 1
  %conv130 = zext i8 %45 to i64
  %cmp131 = icmp eq i64 %conv130, 9
  br i1 %cmp131, label %lor.end137, label %lor.rhs133

lor.rhs133:                                       ; preds = %lor.lhs.false129
  %46 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 26), align 1
  %conv134 = zext i8 %46 to i64
  %cmp135 = icmp eq i64 %conv134, 10
  br label %lor.end137

lor.end137:                                       ; preds = %lor.rhs133, %lor.lhs.false129, %lor.end123
  %47 = phi i1 [ true, %lor.lhs.false129 ], [ true, %lor.end123 ], [ %cmp135, %lor.rhs133 ]
  %lor.ext138 = zext i1 %47 to i32
  %conv139 = trunc i32 %lor.ext138 to i8
  store i8 %conv139, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 64), align 1
  call void @SWC_AcChg_ObcInpAcUAbnormal()
  %48 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 26), align 1
  %conv140 = zext i8 %48 to i64
  %cmp141 = icmp eq i64 %conv140, 0
  %conv142 = zext i1 %cmp141 to i32
  %conv143 = trunc i32 %conv142 to i8
  store i8 %conv143, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 65), align 2
  call void @SWC_AcChg_ChrgEndVcuReqPwrdown()
  call void @SWC_AcChg_WaitVcuChrgAllowTimeOut()
  %49 = load i16, i16* %timer2min, align 2
  store i16 %49, i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 23), align 8
  %50 = load i8, i8* %is_uncharged2_p, align 1
  store i8 %50, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 45), align 2
  %51 = load i8, i8* %is_c3_swc_app_acchg, align 1
  store i8 %51, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 44), align 1
  %52 = load i8, i8* %is_active_c3_swc_app_acchg, align 1
  store i8 %52, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 43), align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @Rte_Read_swc_app_acchg_FunSafety_FunSafety_stFaultCode(%struct.FaultCode* %data) #0 {
entry:
  %retval = alloca i8, align 1
  %data.addr = alloca %struct.FaultCode*, align 8
  store %struct.FaultCode* %data, %struct.FaultCode** %data.addr, align 8
  %0 = load %struct.FaultCode*, %struct.FaultCode** %data.addr, align 8
  %1 = bitcast %struct.FaultCode* %0 to i8*
  %2 = call i8* @memcpy(i8* %1, i8* getelementptr inbounds (%struct.FaultCode, %struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode, i32 0, i32 0), i64 10)
  %3 = load i8, i8* %retval, align 1
  ret i8 %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @BMS_AcChg_ChrgReqCal() #0 {
entry:
  %tmpRead = alloca %struct.FaultCode, align 1
  %tmpRead_0 = alloca i16, align 2
  %rtb_LogicalOperator17 = alloca i8, align 1
  %rtb_LogicalOperator12 = alloca i8, align 1
  %rtb_Add1 = alloca i16, align 2
  %tmp = alloca i64, align 8
  %tmp_0 = alloca i8, align 1
  %is_c6_swc_app_acchg = alloca i8, align 1
  %Delay_DSTATE_e = alloca i8, align 1
  %UnitDelay_DSTATE_p = alloca i8, align 1
  %is_active_c6_swc_app_acchg = alloca i8, align 1
  %is_AcChrgMod = alloca i8, align 1
  %timer30ms = alloca i8, align 1
  %0 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 52), align 1
  store i8 %0, i8* %timer30ms, align 1
  %1 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 51), align 8
  store i8 %1, i8* %is_AcChrgMod, align 1
  %2 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 49), align 2
  store i8 %2, i8* %is_active_c6_swc_app_acchg, align 1
  %3 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 81), align 2
  store i8 %3, i8* %UnitDelay_DSTATE_p, align 1
  %4 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 82), align 1
  store i8 %4, i8* %Delay_DSTATE_e, align 1
  %5 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 50), align 1
  store i8 %5, i8* %is_c6_swc_app_acchg, align 1
  %6 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 26), align 1
  %conv = zext i8 %6 to i64
  %cmp = icmp eq i64 %conv, 2
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 26), align 1
  %conv2 = zext i8 %7 to i64
  %cmp3 = icmp eq i64 %conv2, 3
  br i1 %cmp3, label %lor.end, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %8 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 26), align 1
  %conv6 = zext i8 %8 to i64
  %cmp7 = icmp eq i64 %conv6, 4
  br i1 %cmp7, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false5
  %9 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 26), align 1
  %conv9 = zext i8 %9 to i64
  %cmp10 = icmp eq i64 %conv9, 5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false5, %lor.lhs.false, %entry
  %10 = phi i1 [ true, %lor.lhs.false5 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp10, %lor.rhs ]
  %lor.ext = zext i1 %10 to i32
  %conv12 = trunc i32 %lor.ext to i8
  store i8 %conv12, i8* %rtb_LogicalOperator17, align 1
  %11 = load i8, i8* %is_active_c6_swc_app_acchg, align 1
  %conv13 = zext i8 %11 to i64
  %cmp14 = icmp eq i64 %conv13, 0
  br i1 %cmp14, label %if.then, label %if.else

if.then:                                          ; preds = %lor.end
  store i8 1, i8* %is_active_c6_swc_app_acchg, align 1
  store i8 2, i8* %is_c6_swc_app_acchg, align 1
  store i8 0, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 70), align 1
  br label %if.end108

if.else:                                          ; preds = %lor.end
  %12 = load i8, i8* %is_c6_swc_app_acchg, align 1
  %conv16 = zext i8 %12 to i64
  %cmp17 = icmp eq i64 %conv16, 1
  %13 = load i8, i8* %rtb_LogicalOperator17, align 1
  %tobool = icmp ne i8 %13, 0
  br i1 %cmp17, label %if.then19, label %if.else103

if.then19:                                        ; preds = %if.else
  br i1 %tobool, label %if.else21, label %if.then20

if.then20:                                        ; preds = %if.then19
  store i8 0, i8* %is_AcChrgMod, align 1
  store i8 2, i8* %is_c6_swc_app_acchg, align 1
  store i8 0, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 70), align 1
  br label %if.end108

if.else21:                                        ; preds = %if.then19
  %14 = load i8, i8* %is_AcChrgMod, align 1
  %conv22 = zext i8 %14 to i32
  switch i32 %conv22, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb61
  ]

sw.bb:                                            ; preds = %if.else21
  %15 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 29), align 2
  %conv23 = zext i8 %15 to i64
  %cmp24 = icmp eq i64 %conv23, 9
  br i1 %cmp24, label %if.then26, label %if.else27

if.then26:                                        ; preds = %sw.bb
  store i8 2, i8* %is_AcChrgMod, align 1
  store i8 0, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 70), align 1
  br label %if.end108

if.else27:                                        ; preds = %sw.bb
  %16 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 29), align 2
  %conv28 = zext i8 %16 to i64
  %cmp29 = icmp ne i64 %conv28, 9
  br i1 %cmp29, label %land.lhs.true, label %if.else47

land.lhs.true:                                    ; preds = %if.else27
  %17 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 29), align 2
  %conv31 = zext i8 %17 to i64
  %cmp32 = icmp ne i64 %conv31, 2
  br i1 %cmp32, label %land.lhs.true34, label %if.else47

land.lhs.true34:                                  ; preds = %land.lhs.true
  %18 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 29), align 2
  %conv35 = zext i8 %18 to i64
  %cmp36 = icmp ne i64 %conv35, 3
  br i1 %cmp36, label %land.lhs.true38, label %if.else47

land.lhs.true38:                                  ; preds = %land.lhs.true34
  %19 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 29), align 2
  %conv39 = zext i8 %19 to i64
  %cmp40 = icmp ne i64 %conv39, 4
  br i1 %cmp40, label %land.lhs.true42, label %if.else47

land.lhs.true42:                                  ; preds = %land.lhs.true38
  %20 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 29), align 2
  %conv43 = zext i8 %20 to i64
  %cmp44 = icmp ne i64 %conv43, 5
  br i1 %cmp44, label %if.then46, label %if.else47

if.then46:                                        ; preds = %land.lhs.true42
  store i8 3, i8* %is_AcChrgMod, align 1
  br label %if.end108

if.else47:                                        ; preds = %land.lhs.true42, %land.lhs.true38, %land.lhs.true34, %land.lhs.true, %if.else27
  %21 = load i8, i8* %timer30ms, align 1
  %conv48 = zext i8 %21 to i64
  %cmp49 = icmp sge i64 %conv48, 3
  br i1 %cmp49, label %if.then51, label %if.else52

if.then51:                                        ; preds = %if.else47
  store i8 1, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 70), align 1
  br label %if.end108

if.else52:                                        ; preds = %if.else47
  %22 = load i8, i8* %timer30ms, align 1
  %conv53 = zext i8 %22 to i64
  %add = add nsw i64 %conv53, 1
  store i64 %add, i64* %tmp, align 8
  %23 = load i64, i64* %tmp, align 8
  %cmp54 = icmp sgt i64 %23, 255
  %spec.store.select = select i1 %cmp54, i64 255, i64 %add
  store i64 %spec.store.select, i64* %tmp, align 8
  %24 = load i64, i64* %tmp, align 8
  %conv57 = trunc i64 %24 to i8
  store i8 %conv57, i8* %timer30ms, align 1
  br label %if.end108

sw.bb61:                                          ; preds = %if.else21
  %25 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 29), align 2
  %conv62 = zext i8 %25 to i64
  %cmp63 = icmp eq i64 %conv62, 2
  br i1 %cmp63, label %if.then77, label %lor.lhs.false65

lor.lhs.false65:                                  ; preds = %sw.bb61
  %26 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 29), align 2
  %conv66 = zext i8 %26 to i64
  %cmp67 = icmp eq i64 %conv66, 3
  br i1 %cmp67, label %if.then77, label %lor.lhs.false69

lor.lhs.false69:                                  ; preds = %lor.lhs.false65
  %27 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 29), align 2
  %conv70 = zext i8 %27 to i64
  %cmp71 = icmp eq i64 %conv70, 4
  br i1 %cmp71, label %if.then77, label %lor.lhs.false73

lor.lhs.false73:                                  ; preds = %lor.lhs.false69
  %28 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 29), align 2
  %conv74 = zext i8 %28 to i64
  %cmp75 = icmp eq i64 %conv74, 5
  br i1 %cmp75, label %if.then77, label %if.end108

if.then77:                                        ; preds = %lor.lhs.false73, %lor.lhs.false69, %lor.lhs.false65, %sw.bb61
  store i8 1, i8* %is_AcChrgMod, align 1
  store i8 1, i8* %timer30ms, align 1
  br label %if.end108

sw.default:                                       ; preds = %if.else21
  %29 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 29), align 2
  %conv79 = zext i8 %29 to i64
  %cmp80 = icmp eq i64 %conv79, 9
  br i1 %cmp80, label %if.then82, label %if.else83

if.then82:                                        ; preds = %sw.default
  store i8 2, i8* %is_AcChrgMod, align 1
  store i8 0, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 70), align 1
  br label %if.end108

if.else83:                                        ; preds = %sw.default
  %30 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 29), align 2
  %conv84 = zext i8 %30 to i64
  %cmp85 = icmp eq i64 %conv84, 2
  br i1 %cmp85, label %if.then99, label %lor.lhs.false87

lor.lhs.false87:                                  ; preds = %if.else83
  %31 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 29), align 2
  %conv88 = zext i8 %31 to i64
  %cmp89 = icmp eq i64 %conv88, 3
  br i1 %cmp89, label %if.then99, label %lor.lhs.false91

lor.lhs.false91:                                  ; preds = %lor.lhs.false87
  %32 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 29), align 2
  %conv92 = zext i8 %32 to i64
  %cmp93 = icmp eq i64 %conv92, 4
  br i1 %cmp93, label %if.then99, label %lor.lhs.false95

lor.lhs.false95:                                  ; preds = %lor.lhs.false91
  %33 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 29), align 2
  %conv96 = zext i8 %33 to i64
  %cmp97 = icmp eq i64 %conv96, 5
  br i1 %cmp97, label %if.then99, label %if.end108

if.then99:                                        ; preds = %lor.lhs.false95, %lor.lhs.false91, %lor.lhs.false87, %if.else83
  store i8 1, i8* %is_AcChrgMod, align 1
  store i8 1, i8* %timer30ms, align 1
  br label %if.end108

if.else103:                                       ; preds = %if.else
  br i1 %tobool, label %if.then105, label %if.end108

if.then105:                                       ; preds = %if.else103
  store i8 1, i8* %is_c6_swc_app_acchg, align 1
  store i8 1, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 70), align 1
  store i8 1, i8* %is_AcChrgMod, align 1
  store i8 1, i8* %timer30ms, align 1
  br label %if.end108

if.end108:                                        ; preds = %if.then46, %if.else52, %if.then51, %if.then26, %if.then77, %lor.lhs.false73, %lor.lhs.false95, %if.then99, %if.then82, %if.then20, %if.then105, %if.else103, %if.then
  %call = call zeroext i8 @Rte_Read_swc_app_acchg_FunSafety_FunSafety_stFaultCode(%struct.FaultCode* %tmpRead)
  %34 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 30), align 1
  %conv109 = zext i8 %34 to i64
  %cmp110 = icmp eq i64 %conv109, 1
  br i1 %cmp110, label %lor.end116, label %lor.rhs112

lor.rhs112:                                       ; preds = %if.end108
  %35 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 30), align 1
  %conv113 = zext i8 %35 to i64
  %cmp114 = icmp eq i64 %conv113, 7
  br label %lor.end116

lor.end116:                                       ; preds = %lor.rhs112, %if.end108
  %36 = phi i1 [ true, %if.end108 ], [ %cmp114, %lor.rhs112 ]
  %lor.ext117 = zext i1 %36 to i32
  %conv118 = trunc i32 %lor.ext117 to i8
  store i8 %conv118, i8* %rtb_LogicalOperator17, align 1
  %37 = load i8, i8* %rtb_LogicalOperator17, align 1
  %conv119 = zext i8 %37 to i32
  %tobool120 = icmp ne i32 %conv119, 0
  br i1 %tobool120, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.end116
  %38 = load i8, i8* %UnitDelay_DSTATE_p, align 1
  %tobool121 = icmp ne i8 %38, 0
  %lnot = xor i1 %tobool121, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.end116
  %39 = phi i1 [ false, %lor.end116 ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %39 to i32
  %conv122 = trunc i32 %land.ext to i8
  store i8 %conv122, i8* %rtb_LogicalOperator12, align 1
  %40 = load i8, i8* %rtb_LogicalOperator12, align 1
  %conv123 = zext i8 %40 to i32
  %tobool124 = icmp ne i32 %conv123, 0
  br i1 %tobool124, label %land.lhs.true125, label %if.end130

land.lhs.true125:                                 ; preds = %land.end
  %41 = load i8, i8* getelementptr inbounds (%struct.tag_PrevZCX_Acchg__T, %struct.tag_PrevZCX_Acchg__T* @g_BMS_Acchg_PrevZCX, i32 0, i32 1), align 1
  %conv126 = zext i8 %41 to i64
  %cmp127 = icmp ne i64 %conv126, 1
  br i1 %cmp127, label %if.then129, label %if.end130

if.then129:                                       ; preds = %land.lhs.true125
  store i8 0, i8* %Delay_DSTATE_e, align 1
  br label %if.end130

if.end130:                                        ; preds = %if.then129, %land.lhs.true125, %land.end
  %42 = load i8, i8* %rtb_LogicalOperator12, align 1
  %conv131 = zext i8 %42 to i32
  %tobool132 = icmp ne i32 %conv131, 0
  %43 = zext i1 %tobool132 to i64
  %cond = select i1 %tobool132, i32 1, i32 0
  %conv133 = trunc i32 %cond to i8
  store i8 %conv133, i8* getelementptr inbounds (%struct.tag_PrevZCX_Acchg__T, %struct.tag_PrevZCX_Acchg__T* @g_BMS_Acchg_PrevZCX, i32 0, i32 1), align 1
  %44 = load i8, i8* %Delay_DSTATE_e, align 1
  %tobool134 = icmp ne i8 %44, 0
  br i1 %tobool134, label %if.then135, label %if.else136

if.then135:                                       ; preds = %if.end130
  store i8 1, i8* %Delay_DSTATE_e, align 1
  br label %if.end150

if.else136:                                       ; preds = %if.end130
  %45 = load i16, i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 15), align 8
  %conv137 = zext i16 %45 to i64
  %cmp138 = icmp sgt i64 %conv137, 90
  br i1 %cmp138, label %land.lhs.true140, label %land.end147

land.lhs.true140:                                 ; preds = %if.else136
  %46 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 55), align 4
  %conv141 = zext i8 %46 to i32
  %tobool142 = icmp ne i32 %conv141, 0
  br i1 %tobool142, label %land.rhs143, label %land.end147

land.rhs143:                                      ; preds = %land.lhs.true140
  %47 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 30), align 1
  %conv144 = zext i8 %47 to i64
  %cmp145 = icmp eq i64 %conv144, 1
  br label %land.end147

land.end147:                                      ; preds = %land.rhs143, %land.lhs.true140, %if.else136
  %48 = phi i1 [ false, %land.lhs.true140 ], [ false, %if.else136 ], [ %cmp145, %land.rhs143 ]
  %land.ext148 = zext i1 %48 to i32
  %conv149 = trunc i32 %land.ext148 to i8
  store i8 %conv149, i8* %Delay_DSTATE_e, align 1
  br label %if.end150

if.end150:                                        ; preds = %land.end147, %if.then135
  %49 = load i16, i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 15), align 8
  %conv151 = zext i16 %49 to i64
  %cmp152 = icmp sle i64 %conv151, 90
  br i1 %cmp152, label %land.lhs.true154, label %land.end164

land.lhs.true154:                                 ; preds = %if.end150
  %50 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 55), align 4
  %conv155 = zext i8 %50 to i32
  %tobool156 = icmp ne i32 %conv155, 0
  br i1 %tobool156, label %land.lhs.true157, label %land.end164

land.lhs.true157:                                 ; preds = %land.lhs.true154
  %51 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 30), align 1
  %conv158 = zext i8 %51 to i64
  %cmp159 = icmp eq i64 %conv158, 1
  br i1 %cmp159, label %land.rhs161, label %land.end164

land.rhs161:                                      ; preds = %land.lhs.true157
  %52 = load i8, i8* %Delay_DSTATE_e, align 1
  %tobool162 = icmp ne i8 %52, 0
  %lnot163 = xor i1 %tobool162, true
  br label %land.end164

land.end164:                                      ; preds = %land.rhs161, %land.lhs.true157, %land.lhs.true154, %if.end150
  %53 = phi i1 [ false, %land.lhs.true157 ], [ false, %land.lhs.true154 ], [ false, %if.end150 ], [ %lnot163, %land.rhs161 ]
  %land.ext165 = zext i1 %53 to i32
  %conv166 = trunc i32 %land.ext165 to i8
  %54 = load i8, i8* getelementptr inbounds (%struct.P_Acchg__T_, %struct.P_Acchg__T_* @g_BMS_Acchg_P, i32 0, i32 10), align 2
  %conv167 = zext i8 %54 to i64
  %cmp168 = icmp eq i64 %conv167, 0
  br i1 %cmp168, label %cond.end, label %cond.false

cond.false:                                       ; preds = %land.end164
  %55 = load i8, i8* getelementptr inbounds (%struct.P_Acchg__T_, %struct.P_Acchg__T_* @g_BMS_Acchg_P, i32 0, i32 10), align 2
  %conv170 = zext i8 %55 to i64
  call void @klee_div_zero_check(i64 %conv170)
  %div = udiv i64 10000, %conv170, !klee.check.div !12
  br label %cond.end

cond.end:                                         ; preds = %land.end164, %cond.false
  %cond171 = phi i64 [ %div, %cond.false ], [ 4294967295, %land.end164 ]
  %conv172 = trunc i64 %cond171 to i16
  call void @Acchg_fault_confirm(i8 zeroext %conv166, i16 zeroext %conv172, %struct.DW_fault_confirm_Acchg__T* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 13))
  %56 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 30), align 1
  %conv173 = zext i8 %56 to i64
  %cmp174 = icmp eq i64 %conv173, 7
  br i1 %cmp174, label %if.then180, label %lor.lhs.false176

lor.lhs.false176:                                 ; preds = %cond.end
  %57 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 30), align 1
  %conv177 = zext i8 %57 to i64
  %cmp178 = icmp eq i64 %conv177, 8
  br i1 %cmp178, label %if.then180, label %if.else198

if.then180:                                       ; preds = %lor.lhs.false176, %cond.end
  %58 = load i16, i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 18), align 2
  %conv181 = zext i16 %58 to i64
  %add182 = add i64 %conv181, 100
  %conv183 = trunc i64 %add182 to i16
  store i16 %conv183, i16* %rtb_Add1, align 2
  %59 = load i16, i16* %rtb_Add1, align 2
  %conv184 = zext i16 %59 to i32
  %60 = load i16, i16* getelementptr inbounds (%struct.P_Acchg__T_, %struct.P_Acchg__T_* @g_BMS_Acchg_P, i32 0, i32 7), align 8
  %conv185 = zext i16 %60 to i32
  %cmp186 = icmp sge i32 %conv184, %conv185
  br i1 %cmp186, label %if.then188, label %if.end189

if.then188:                                       ; preds = %if.then180
  %61 = load i16, i16* getelementptr inbounds (%struct.P_Acchg__T_, %struct.P_Acchg__T_* @g_BMS_Acchg_P, i32 0, i32 7), align 8
  store i16 %61, i16* %rtb_Add1, align 2
  br label %if.end189

if.end189:                                        ; preds = %if.then188, %if.then180
  %62 = load i16, i16* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_vObcMaxChrgOutpUAvl, align 2
  store i16 %62, i16* %tmpRead_0, align 2
  %63 = load i16, i16* %rtb_Add1, align 2
  %conv190 = zext i16 %63 to i32
  %64 = load i16, i16* %tmpRead_0, align 2
  %conv191 = zext i16 %64 to i32
  %cmp192 = icmp slt i32 %conv190, %conv191
  br i1 %cmp192, label %if.then194, label %if.end195

if.then194:                                       ; preds = %if.end189
  %65 = load i16, i16* %rtb_Add1, align 2
  store i16 %65, i16* %tmpRead_0, align 2
  br label %if.end195

if.end195:                                        ; preds = %if.then194, %if.end189
  %66 = load i16, i16* %tmpRead_0, align 2
  %conv196 = uitofp i16 %66 to float
  %mul = fmul float %conv196, 0x3FB99999A0000000
  %conv197 = fptoui float %mul to i16
  store i16 %conv197, i16* @Rte_SWC_APP_AcChg_AcChg_SlwChg_vSetSlowCharge, align 2
  br label %if.end199

if.else198:                                       ; preds = %lor.lhs.false176
  store i16 0, i16* @Rte_SWC_APP_AcChg_AcChg_SlwChg_vSetSlowCharge, align 2
  br label %if.end199

if.end199:                                        ; preds = %if.else198, %if.end195
  call void @SWC_AcChg_ChrgCurrentCal()
  %ACChg_Prohibit = getelementptr inbounds %struct.FaultCode, %struct.FaultCode* %tmpRead, i32 0, i32 8
  %67 = load i8, i8* %ACChg_Prohibit, align 1
  %tobool200 = icmp ne i8 %67, 0
  br i1 %tobool200, label %lor.lhs.false212, label %land.lhs.true201

land.lhs.true201:                                 ; preds = %if.end199
  %68 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 54), align 1
  %conv202 = zext i8 %68 to i32
  %tobool203 = icmp ne i32 %conv202, 0
  br i1 %tobool203, label %land.lhs.true204, label %lor.lhs.false212

land.lhs.true204:                                 ; preds = %land.lhs.true201
  %69 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 30), align 1
  %conv205 = zext i8 %69 to i64
  %cmp206 = icmp eq i64 %conv205, 1
  br i1 %cmp206, label %land.rhs216, label %lor.lhs.false208

lor.lhs.false208:                                 ; preds = %land.lhs.true204
  %70 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 30), align 1
  %conv209 = zext i8 %70 to i64
  %cmp210 = icmp eq i64 %conv209, 7
  br i1 %cmp210, label %land.rhs216, label %lor.lhs.false212

lor.lhs.false212:                                 ; preds = %lor.lhs.false208, %land.lhs.true201, %if.end199
  %71 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 30), align 1
  %conv213 = zext i8 %71 to i64
  %cmp214 = icmp eq i64 %conv213, 8
  br i1 %cmp214, label %land.rhs216, label %land.end219

land.rhs216:                                      ; preds = %lor.lhs.false212, %lor.lhs.false208, %land.lhs.true204
  %72 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 70), align 1
  %conv217 = zext i8 %72 to i32
  %tobool218 = icmp ne i32 %conv217, 0
  br label %land.end219

land.end219:                                      ; preds = %land.rhs216, %lor.lhs.false212
  %73 = phi i1 [ false, %lor.lhs.false212 ], [ %tobool218, %land.rhs216 ]
  %74 = zext i1 %73 to i64
  %cond221 = select i1 %73, i32 1, i32 0
  %conv222 = trunc i32 %cond221 to i8
  store i8 %conv222, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 34), align 1
  %75 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 13, i32 1), align 2
  %tobool223 = icmp ne i8 %75, 0
  br i1 %tobool223, label %if.then224, label %if.else225

if.then224:                                       ; preds = %land.end219
  store i8 9, i8* %tmp_0, align 1
  br label %if.end226

if.else225:                                       ; preds = %land.end219
  store i8 0, i8* %tmp_0, align 1
  br label %if.end226

if.end226:                                        ; preds = %if.else225, %if.then224
  %76 = load i8, i8* %tmp_0, align 1
  store i8 %76, i8* @Rte_SWC_APP_AcChg_AcChg_SlwChg_stChrgErrInfo, align 1
  %77 = load i8, i8* %rtb_LogicalOperator17, align 1
  store i8 %77, i8* %UnitDelay_DSTATE_p, align 1
  %78 = load i8, i8* %is_c6_swc_app_acchg, align 1
  store i8 %78, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 50), align 1
  %79 = load i8, i8* %Delay_DSTATE_e, align 1
  store i8 %79, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 82), align 1
  %80 = load i8, i8* %UnitDelay_DSTATE_p, align 1
  store i8 %80, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 81), align 2
  %81 = load i8, i8* %is_active_c6_swc_app_acchg, align 1
  store i8 %81, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 49), align 2
  %82 = load i8, i8* %is_AcChrgMod, align 1
  store i8 %82, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 51), align 8
  %83 = load i8, i8* %timer30ms, align 1
  store i8 %83, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 52), align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @BMS_AcChg_ChrgState() #0 {
entry:
  %is_c1_swc_app_acchg = alloca i8, align 1
  %is_active_c1_swc_app_acchg = alloca i8, align 1
  %is_Prepare = alloca i8, align 1
  %guard1 = alloca i8, align 1
  %guard2 = alloca i8, align 1
  store i8 0, i8* %guard1, align 1
  store i8 0, i8* %guard2, align 1
  %0 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 48), align 1
  store i8 %0, i8* %is_Prepare, align 1
  %1 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 46), align 1
  store i8 %1, i8* %is_active_c1_swc_app_acchg, align 1
  %2 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 47), align 4
  store i8 %2, i8* %is_c1_swc_app_acchg, align 1
  %3 = load i8, i8* %is_active_c1_swc_app_acchg, align 1
  %conv = zext i8 %3 to i64
  %cmp = icmp eq i64 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8 1, i8* %is_active_c1_swc_app_acchg, align 1
  store i8 4, i8* %is_c1_swc_app_acchg, align 1
  store i8 0, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 30), align 1
  store i8 0, i8* @Rte_SWC_APP_AcChg_AcChg_SlwChg_stBcuChrgSts, align 1
  store i8 0, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 31), align 4
  br label %if.end123

if.else:                                          ; preds = %entry
  store i8 0, i8* %guard1, align 1
  store i8 0, i8* %guard2, align 1
  %4 = load i8, i8* %is_c1_swc_app_acchg, align 1
  %conv2 = zext i8 %4 to i32
  switch i32 %conv2, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb8
    i32 3, label %sw.bb44
    i32 4, label %sw.bb54
  ]

sw.bb:                                            ; preds = %if.else
  store i8 3, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 30), align 1
  store i8 3, i8* @Rte_SWC_APP_AcChg_AcChg_SlwChg_stBcuChrgSts, align 1
  %5 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 58), align 1
  %tobool = icmp ne i8 %5, 0
  br i1 %tobool, label %if.then3, label %if.else4

if.then3:                                         ; preds = %sw.bb
  store i8 0, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 31), align 4
  store i8 5, i8* %is_c1_swc_app_acchg, align 1
  store i8 0, i8* @Rte_SWC_APP_AcChg_AcChg_SlwChg_stBcuChrgSts, align 1
  store i8 2, i8* %is_Prepare, align 1
  store i8 1, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 30), align 1
  br label %sw.epilog

if.else4:                                         ; preds = %sw.bb
  %6 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 57), align 2
  %tobool5 = icmp ne i8 %6, 0
  br i1 %tobool5, label %if.then6, label %sw.epilog

if.then6:                                         ; preds = %if.else4
  store i8 4, i8* %is_c1_swc_app_acchg, align 1
  store i8 0, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 30), align 1
  store i8 0, i8* @Rte_SWC_APP_AcChg_AcChg_SlwChg_stBcuChrgSts, align 1
  store i8 0, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 31), align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.else
  store i8 8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 30), align 1
  store i8 1, i8* @Rte_SWC_APP_AcChg_AcChg_SlwChg_stBcuChrgSts, align 1
  %7 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 63), align 4
  %tobool9 = icmp ne i8 %7, 0
  br i1 %tobool9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %sw.bb8
  store i8 21, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 31), align 4
  store i8 1, i8* %guard2, align 1
  br label %sw.epilog

if.else11:                                        ; preds = %sw.bb8
  %8 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 61), align 2
  %tobool12 = icmp ne i8 %8, 0
  br i1 %tobool12, label %if.then13, label %if.else14

if.then13:                                        ; preds = %if.else11
  store i8 16, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 31), align 4
  store i8 1, i8* %guard2, align 1
  br label %sw.epilog

if.else14:                                        ; preds = %if.else11
  %9 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 67), align 8
  %tobool15 = icmp ne i8 %9, 0
  br i1 %tobool15, label %if.then16, label %if.else17

if.then16:                                        ; preds = %if.else14
  store i8 9, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 31), align 4
  store i8 1, i8* %guard2, align 1
  br label %sw.epilog

if.else17:                                        ; preds = %if.else14
  %10 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 8, i32 1), align 2
  %tobool18 = icmp ne i8 %10, 0
  br i1 %tobool18, label %if.then19, label %if.else20

if.then19:                                        ; preds = %if.else17
  store i8 8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 31), align 4
  store i8 1, i8* %guard2, align 1
  br label %sw.epilog

if.else20:                                        ; preds = %if.else17
  %11 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 64), align 1
  %tobool21 = icmp ne i8 %11, 0
  br i1 %tobool21, label %if.then22, label %if.else23

if.then22:                                        ; preds = %if.else20
  store i8 7, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 31), align 4
  store i8 1, i8* %guard2, align 1
  br label %sw.epilog

if.else23:                                        ; preds = %if.else20
  %12 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 60), align 1
  %tobool24 = icmp ne i8 %12, 0
  br i1 %tobool24, label %if.then25, label %if.else26

if.then25:                                        ; preds = %if.else23
  store i8 5, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 31), align 4
  store i8 1, i8* %guard2, align 1
  br label %sw.epilog

if.else26:                                        ; preds = %if.else23
  %13 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 10, i32 1), align 2
  %tobool27 = icmp ne i8 %13, 0
  br i1 %tobool27, label %if.then28, label %if.else29

if.then28:                                        ; preds = %if.else26
  store i8 2, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 31), align 4
  store i8 1, i8* %guard2, align 1
  br label %sw.epilog

if.else29:                                        ; preds = %if.else26
  %14 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 65), align 2
  %tobool30 = icmp ne i8 %14, 0
  br i1 %tobool30, label %if.then31, label %if.else32

if.then31:                                        ; preds = %if.else29
  store i8 1, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 31), align 4
  store i8 1, i8* %guard2, align 1
  br label %sw.epilog

if.else32:                                        ; preds = %if.else29
  %15 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 56), align 1
  %tobool33 = icmp ne i8 %15, 0
  br i1 %tobool33, label %if.then34, label %sw.epilog

if.then34:                                        ; preds = %if.else32
  store i8 3, i8* %is_c1_swc_app_acchg, align 1
  store i8 5, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 30), align 1
  store i8 2, i8* @Rte_SWC_APP_AcChg_AcChg_SlwChg_stBcuChrgSts, align 1
  br label %sw.epilog

sw.bb44:                                          ; preds = %if.else
  store i8 5, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 30), align 1
  store i8 2, i8* @Rte_SWC_APP_AcChg_AcChg_SlwChg_stBcuChrgSts, align 1
  %16 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 62), align 1
  %tobool45 = icmp ne i8 %16, 0
  br i1 %tobool45, label %if.else49, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb44
  %17 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 72), align 1
  %conv46 = zext i8 %17 to i32
  %tobool47 = icmp ne i32 %conv46, 0
  br i1 %tobool47, label %if.then48, label %if.else49

if.then48:                                        ; preds = %land.lhs.true
  store i8 4, i8* %is_c1_swc_app_acchg, align 1
  store i8 0, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 30), align 1
  store i8 0, i8* @Rte_SWC_APP_AcChg_AcChg_SlwChg_stBcuChrgSts, align 1
  store i8 0, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 31), align 4
  br label %sw.epilog

if.else49:                                        ; preds = %land.lhs.true, %sw.bb44
  %18 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 62), align 1
  %tobool50 = icmp ne i8 %18, 0
  br i1 %tobool50, label %if.then51, label %sw.epilog

if.then51:                                        ; preds = %if.else49
  store i8 10, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 31), align 4
  store i8 1, i8* %is_c1_swc_app_acchg, align 1
  store i8 3, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 30), align 1
  store i8 3, i8* @Rte_SWC_APP_AcChg_AcChg_SlwChg_stBcuChrgSts, align 1
  br label %sw.epilog

sw.bb54:                                          ; preds = %if.else
  store i8 0, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 30), align 1
  store i8 0, i8* @Rte_SWC_APP_AcChg_AcChg_SlwChg_stBcuChrgSts, align 1
  %19 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 71), align 4
  %tobool55 = icmp ne i8 %19, 0
  br i1 %tobool55, label %if.then56, label %sw.epilog

if.then56:                                        ; preds = %sw.bb54
  store i8 5, i8* %is_c1_swc_app_acchg, align 1
  store i8 0, i8* @Rte_SWC_APP_AcChg_AcChg_SlwChg_stBcuChrgSts, align 1
  store i8 2, i8* %is_Prepare, align 1
  store i8 1, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 30), align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  store i8 0, i8* @Rte_SWC_APP_AcChg_AcChg_SlwChg_stBcuChrgSts, align 1
  %20 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 79), align 4
  %tobool58 = icmp ne i8 %20, 0
  br i1 %tobool58, label %if.then59, label %if.else60

if.then59:                                        ; preds = %sw.default
  store i8 50, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 31), align 4
  store i8 1, i8* %guard1, align 1
  br label %sw.epilog

if.else60:                                        ; preds = %sw.default
  %21 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 69), align 2
  %tobool61 = icmp ne i8 %21, 0
  br i1 %tobool61, label %if.then62, label %if.else63

if.then62:                                        ; preds = %if.else60
  store i8 49, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 31), align 4
  store i8 1, i8* %guard1, align 1
  br label %sw.epilog

if.else63:                                        ; preds = %if.else60
  %22 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 63), align 4
  %tobool64 = icmp ne i8 %22, 0
  br i1 %tobool64, label %if.then65, label %if.else66

if.then65:                                        ; preds = %if.else63
  store i8 21, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 31), align 4
  store i8 1, i8* %guard1, align 1
  br label %sw.epilog

if.else66:                                        ; preds = %if.else63
  %23 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 61), align 2
  %tobool67 = icmp ne i8 %23, 0
  br i1 %tobool67, label %if.then68, label %if.else69

if.then68:                                        ; preds = %if.else66
  store i8 16, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 31), align 4
  store i8 1, i8* %guard1, align 1
  br label %sw.epilog

if.else69:                                        ; preds = %if.else66
  %24 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 64), align 1
  %tobool70 = icmp ne i8 %24, 0
  br i1 %tobool70, label %if.then71, label %if.else72

if.then71:                                        ; preds = %if.else69
  store i8 11, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 31), align 4
  store i8 1, i8* %guard1, align 1
  br label %sw.epilog

if.else72:                                        ; preds = %if.else69
  %25 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 60), align 1
  %tobool73 = icmp ne i8 %25, 0
  br i1 %tobool73, label %if.then74, label %if.else75

if.then74:                                        ; preds = %if.else72
  store i8 5, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 31), align 4
  store i8 1, i8* %guard1, align 1
  br label %sw.epilog

if.else75:                                        ; preds = %if.else72
  %26 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 68), align 1
  %tobool76 = icmp ne i8 %26, 0
  br i1 %tobool76, label %if.then77, label %if.else78

if.then77:                                        ; preds = %if.else75
  store i8 4, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 31), align 4
  store i8 1, i8* %guard1, align 1
  br label %sw.epilog

if.else78:                                        ; preds = %if.else75
  %27 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 66), align 1
  %tobool79 = icmp ne i8 %27, 0
  br i1 %tobool79, label %if.then80, label %if.else81

if.then80:                                        ; preds = %if.else78
  store i8 3, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 31), align 4
  store i8 1, i8* %guard1, align 1
  br label %sw.epilog

if.else81:                                        ; preds = %if.else78
  %28 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 65), align 2
  %tobool82 = icmp ne i8 %28, 0
  br i1 %tobool82, label %if.then83, label %if.else84

if.then83:                                        ; preds = %if.else81
  store i8 1, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 31), align 4
  store i8 1, i8* %guard1, align 1
  br label %sw.epilog

if.else84:                                        ; preds = %if.else81
  %29 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 56), align 1
  %tobool85 = icmp ne i8 %29, 0
  br i1 %tobool85, label %if.then86, label %if.else87

if.then86:                                        ; preds = %if.else84
  store i8 0, i8* %is_Prepare, align 1
  store i8 3, i8* %is_c1_swc_app_acchg, align 1
  store i8 5, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 30), align 1
  store i8 2, i8* @Rte_SWC_APP_AcChg_AcChg_SlwChg_stBcuChrgSts, align 1
  br label %sw.epilog

if.else87:                                        ; preds = %if.else84
  %30 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 56), align 1
  %tobool88 = icmp ne i8 %30, 0
  br i1 %tobool88, label %if.else93, label %land.lhs.true89

land.lhs.true89:                                  ; preds = %if.else87
  %31 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 2, i32 1), align 8
  %conv90 = zext i8 %31 to i32
  %tobool91 = icmp ne i32 %conv90, 0
  br i1 %tobool91, label %if.then92, label %if.else93

if.then92:                                        ; preds = %land.lhs.true89
  store i8 0, i8* %is_Prepare, align 1
  store i8 2, i8* %is_c1_swc_app_acchg, align 1
  store i8 8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 30), align 1
  store i8 1, i8* @Rte_SWC_APP_AcChg_AcChg_SlwChg_stBcuChrgSts, align 1
  br label %sw.epilog

if.else93:                                        ; preds = %land.lhs.true89, %if.else87
  %32 = load i8, i8* %is_Prepare, align 1
  %conv94 = zext i8 %32 to i64
  %cmp95 = icmp eq i64 %conv94, 1
  br i1 %cmp95, label %if.then97, label %if.else101

if.then97:                                        ; preds = %if.else93
  store i8 7, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 30), align 1
  %33 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 73), align 2
  %tobool98 = icmp ne i8 %33, 0
  br i1 %tobool98, label %sw.epilog, label %if.then99

if.then99:                                        ; preds = %if.then97
  store i8 2, i8* %is_Prepare, align 1
  store i8 1, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 30), align 1
  br label %sw.epilog

if.else101:                                       ; preds = %if.else93
  store i8 1, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 30), align 1
  %34 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 73), align 2
  %tobool102 = icmp ne i8 %34, 0
  br i1 %tobool102, label %if.then103, label %sw.epilog

if.then103:                                       ; preds = %if.else101
  store i8 1, i8* %is_Prepare, align 1
  store i8 7, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 30), align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then59, %if.then65, %if.then71, %if.then77, %if.then83, %if.then92, %if.else101, %if.then103, %if.then97, %if.then99, %if.then86, %if.then80, %if.then74, %if.then68, %if.then62, %sw.bb54, %if.then56, %if.then48, %if.then51, %if.else49, %if.then10, %if.then16, %if.then22, %if.then28, %if.else32, %if.then34, %if.then31, %if.then25, %if.then19, %if.then13, %if.then3, %if.then6, %if.else4
  %35 = load i8, i8* %guard2, align 1
  %tobool117 = icmp ne i8 %35, 0
  br i1 %tobool117, label %if.then118, label %if.end119

if.then118:                                       ; preds = %sw.epilog
  store i8 1, i8* %is_c1_swc_app_acchg, align 1
  store i8 3, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 30), align 1
  store i8 3, i8* @Rte_SWC_APP_AcChg_AcChg_SlwChg_stBcuChrgSts, align 1
  br label %if.end119

if.end119:                                        ; preds = %if.then118, %sw.epilog
  %36 = load i8, i8* %guard1, align 1
  %tobool120 = icmp ne i8 %36, 0
  br i1 %tobool120, label %if.then121, label %if.end123

if.then121:                                       ; preds = %if.end119
  store i8 0, i8* %is_Prepare, align 1
  store i8 1, i8* %is_c1_swc_app_acchg, align 1
  store i8 3, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 30), align 1
  store i8 3, i8* @Rte_SWC_APP_AcChg_AcChg_SlwChg_stBcuChrgSts, align 1
  br label %if.end123

if.end123:                                        ; preds = %if.end119, %if.then121, %if.then
  %37 = load i8, i8* %is_c1_swc_app_acchg, align 1
  store i8 %37, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 47), align 4
  %38 = load i8, i8* %is_active_c1_swc_app_acchg, align 1
  store i8 %38, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 46), align 1
  %39 = load i8, i8* %is_Prepare, align 1
  store i8 %39, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 48), align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @BMS_AcChg_StTransitCondtion() #0 {
entry:
  %tmpRead = alloca %struct.FaultCode, align 1
  %rtb_Relational_Operator3_a = alloca i8, align 1
  %rtb_Logical_Operator2 = alloca i8, align 1
  %rtb_RelationalOperator_e = alloca i8, align 1
  %tmp = alloca i64, align 8
  %Delay_DSTATE = alloca i8, align 1
  %EnabledSubsystem1_MODE = alloca i8, align 1
  %EnabledSubsystem4_MODE = alloca i8, align 1
  %LogicalOperator1 = alloca i8, align 1
  %UnitDelay_DSTATE_io = alloca i8, align 1
  %UnitDelay_DSTATE = alloca i16, align 2
  %icLoad = alloca i8, align 1
  %Delay_DSTATE_o = alloca i8, align 1
  %UnitDelay_DSTATE_i = alloca i8, align 1
  %UnitDelay_DSTATE_h = alloca i8, align 1
  %0 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 74), align 1
  store i8 %0, i8* %UnitDelay_DSTATE_h, align 1
  %1 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 75), align 8
  store i8 %1, i8* %UnitDelay_DSTATE_i, align 1
  %2 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 76), align 1
  store i8 %2, i8* %Delay_DSTATE_o, align 1
  %3 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 36), align 1
  store i8 %3, i8* %icLoad, align 1
  %4 = load i16, i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 20), align 2
  store i16 %4, i16* %UnitDelay_DSTATE, align 2
  %5 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 77), align 2
  store i8 %5, i8* %UnitDelay_DSTATE_io, align 1
  %6 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 59), align 8
  store i8 %6, i8* %LogicalOperator1, align 1
  %7 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 85), align 2
  store i8 %7, i8* %EnabledSubsystem4_MODE, align 1
  %8 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 86), align 1
  store i8 %8, i8* %EnabledSubsystem1_MODE, align 1
  %9 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 33), align 2
  store i8 %9, i8* %Delay_DSTATE, align 1
  %call = call zeroext i8 @Rte_Read_swc_app_acchg_FunSafety_FunSafety_stFaultCode(%struct.FaultCode* %tmpRead)
  call void @SWC_AcChg_ChrgEndJudge()
  %10 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 32), align 1
  %conv = zext i8 %10 to i64
  %cmp = icmp eq i64 %conv, 5
  %11 = load i8, i8* %EnabledSubsystem1_MODE, align 1
  %tobool = icmp ne i8 %11, 0
  br i1 %cmp, label %if.then, label %if.else28

if.then:                                          ; preds = %entry
  br i1 %tobool, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  store i8 1, i8* %icLoad, align 1
  call void @Acchg_Fault_Confirm3_Reset(%struct.DW_fault_confirm_Acchg_a_T* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 7))
  store i8 0, i8* %UnitDelay_DSTATE_io, align 1
  store i8 1, i8* %EnabledSubsystem1_MODE, align 1
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %12 = load i8, i8* %icLoad, align 1
  %conv3 = zext i8 %12 to i64
  %cmp4 = icmp ne i64 %conv3, 0
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %13 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 54), align 1
  store i8 %13, i8* %Delay_DSTATE_o, align 1
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  %14 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 54), align 1
  %15 = load i8, i8* getelementptr inbounds (%struct.P_Acchg__T_, %struct.P_Acchg__T_* @g_BMS_Acchg_P, i32 0, i32 10), align 2
  %conv8 = zext i8 %15 to i64
  %cmp9 = icmp eq i64 %conv8, 0
  br i1 %cmp9, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.end7
  %16 = load i8, i8* getelementptr inbounds (%struct.P_Acchg__T_, %struct.P_Acchg__T_* @g_BMS_Acchg_P, i32 0, i32 10), align 2
  %conv11 = zext i8 %16 to i64
  call void @klee_div_zero_check(i64 %conv11)
  %div = udiv i64 50, %conv11, !klee.check.div !12
  br label %cond.end

cond.end:                                         ; preds = %if.end7, %cond.false
  %cond = phi i64 [ %div, %cond.false ], [ 4294967295, %if.end7 ]
  %conv12 = trunc i64 %cond to i8
  call void @Acchg_Fault_Confirm3(i8 zeroext %14, i8 zeroext %conv12, %struct.DW_fault_confirm_Acchg_a_T* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 7))
  %17 = load i8, i8* %UnitDelay_DSTATE_io, align 1
  %tobool13 = icmp ne i8 %17, 0
  br i1 %tobool13, label %if.then14, label %if.else

if.then14:                                        ; preds = %cond.end
  store i8 1, i8* %UnitDelay_DSTATE_io, align 1
  br label %if.end19

if.else:                                          ; preds = %cond.end
  %18 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 54), align 1
  %conv15 = zext i8 %18 to i32
  %tobool16 = icmp ne i32 %conv15, 0
  br i1 %tobool16, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.else
  %19 = load i8, i8* %Delay_DSTATE_o, align 1
  %tobool17 = icmp ne i8 %19, 0
  %lnot = xor i1 %tobool17, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else
  %20 = phi i1 [ false, %if.else ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %20 to i32
  %conv18 = trunc i32 %land.ext to i8
  store i8 %conv18, i8* %UnitDelay_DSTATE_io, align 1
  br label %if.end19

if.end19:                                         ; preds = %land.end, %if.then14
  %21 = load i8, i8* %UnitDelay_DSTATE_io, align 1
  %conv20 = zext i8 %21 to i32
  %tobool21 = icmp ne i32 %conv20, 0
  br i1 %tobool21, label %land.rhs22, label %land.end25

land.rhs22:                                       ; preds = %if.end19
  %22 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 7, i32 1), align 2
  %conv23 = zext i8 %22 to i32
  %tobool24 = icmp ne i32 %conv23, 0
  br label %land.end25

land.end25:                                       ; preds = %land.rhs22, %if.end19
  %23 = phi i1 [ false, %if.end19 ], [ %tobool24, %land.rhs22 ]
  %land.ext26 = zext i1 %23 to i32
  %conv27 = trunc i32 %land.ext26 to i8
  store i8 %conv27, i8* %LogicalOperator1, align 1
  store i8 0, i8* %icLoad, align 1
  %24 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 54), align 1
  store i8 %24, i8* %Delay_DSTATE_o, align 1
  br label %if.end32

if.else28:                                        ; preds = %entry
  br i1 %tobool, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.else28
  store i8 0, i8* %LogicalOperator1, align 1
  store i8 0, i8* %EnabledSubsystem1_MODE, align 1
  br label %if.end32

if.end32:                                         ; preds = %if.else28, %if.then30, %land.end25
  %25 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 32), align 1
  %conv33 = zext i8 %25 to i64
  %cmp34 = icmp eq i64 %conv33, 3
  %26 = load i8, i8* %EnabledSubsystem4_MODE, align 1
  %tobool37 = icmp ne i8 %26, 0
  br i1 %cmp34, label %if.then36, label %if.else179

if.then36:                                        ; preds = %if.end32
  br i1 %tobool37, label %if.end39, label %if.then38

if.then38:                                        ; preds = %if.then36
  store i16 0, i16* %UnitDelay_DSTATE, align 2
  call void @Acchg_fault_confirm_Reset(%struct.DW_fault_confirm_Acchg__T* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 6))
  call void @Acchg_Fault_Confirm3_Reset(%struct.DW_fault_confirm_Acchg_a_T* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 5))
  store i8 0, i8* %UnitDelay_DSTATE_i, align 1
  store i8 0, i8* %UnitDelay_DSTATE_h, align 1
  call void @Acchg_data_lock_Reset(%struct.DW_data_lock_Acchg__T* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 4))
  call void @Acchg_data_lock_Reset(%struct.DW_data_lock_Acchg__T* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 3))
  store i8 1, i8* %EnabledSubsystem4_MODE, align 1
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.then36
  %27 = load i16, i16* %UnitDelay_DSTATE, align 2
  %conv40 = zext i16 %27 to i64
  %add = add i64 1, %conv40
  %conv41 = trunc i64 %add to i16
  store i16 %conv41, i16* %UnitDelay_DSTATE, align 2
  %28 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 53), align 2
  %conv42 = zext i8 %28 to i32
  %tobool43 = icmp ne i32 %conv42, 0
  br i1 %tobool43, label %land.rhs44, label %land.end54

land.rhs44:                                       ; preds = %if.end39
  %29 = load i16, i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 17), align 4
  %conv45 = zext i16 %29 to i64
  %cmp46 = icmp sge i64 %conv45, 80
  br i1 %cmp46, label %land.rhs48, label %land.end54

land.rhs48:                                       ; preds = %land.rhs44
  %30 = load i16, i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 17), align 4
  %conv49 = zext i16 %30 to i64
  %cmp50 = icmp sle i64 %conv49, 900
  br label %land.end54

land.end54:                                       ; preds = %land.rhs44, %land.rhs48, %if.end39
  %31 = phi i1 [ false, %if.end39 ], [ false, %land.rhs44 ], [ %cmp50, %land.rhs48 ]
  %land.ext55 = zext i1 %31 to i32
  %conv56 = trunc i32 %land.ext55 to i8
  %32 = load i8, i8* getelementptr inbounds (%struct.P_Acchg__T_, %struct.P_Acchg__T_* @g_BMS_Acchg_P, i32 0, i32 10), align 2
  %conv57 = zext i8 %32 to i64
  %cmp58 = icmp eq i64 %conv57, 0
  br i1 %cmp58, label %cond.end64, label %cond.false61

cond.false61:                                     ; preds = %land.end54
  %33 = load i8, i8* getelementptr inbounds (%struct.P_Acchg__T_, %struct.P_Acchg__T_* @g_BMS_Acchg_P, i32 0, i32 10), align 2
  %conv62 = zext i8 %33 to i64
  call void @klee_div_zero_check(i64 %conv62)
  %div63 = udiv i64 300, %conv62, !klee.check.div !12
  br label %cond.end64

cond.end64:                                       ; preds = %land.end54, %cond.false61
  %cond65 = phi i64 [ %div63, %cond.false61 ], [ 4294967295, %land.end54 ]
  %conv66 = trunc i64 %cond65 to i16
  call void @Acchg_fault_confirm(i8 zeroext %conv56, i16 zeroext %conv66, %struct.DW_fault_confirm_Acchg__T* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 6))
  %34 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 54), align 1
  %35 = load i8, i8* getelementptr inbounds (%struct.P_Acchg__T_, %struct.P_Acchg__T_* @g_BMS_Acchg_P, i32 0, i32 10), align 2
  %conv67 = zext i8 %35 to i64
  %cmp68 = icmp eq i64 %conv67, 0
  br i1 %cmp68, label %cond.end74, label %cond.false71

cond.false71:                                     ; preds = %cond.end64
  %36 = load i8, i8* getelementptr inbounds (%struct.P_Acchg__T_, %struct.P_Acchg__T_* @g_BMS_Acchg_P, i32 0, i32 10), align 2
  %conv72 = zext i8 %36 to i64
  call void @klee_div_zero_check(i64 %conv72)
  %div73 = udiv i64 50, %conv72, !klee.check.div !12
  br label %cond.end74

cond.end74:                                       ; preds = %cond.end64, %cond.false71
  %cond75 = phi i64 [ %div73, %cond.false71 ], [ 4294967295, %cond.end64 ]
  %conv76 = trunc i64 %cond75 to i8
  call void @Acchg_Fault_Confirm3(i8 zeroext %34, i8 zeroext %conv76, %struct.DW_fault_confirm_Acchg_a_T* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 5))
  %37 = load i8, i8* %UnitDelay_DSTATE_i, align 1
  %tobool77 = icmp ne i8 %37, 0
  br i1 %tobool77, label %if.then78, label %if.else79

if.then78:                                        ; preds = %cond.end74
  store i8 1, i8* %UnitDelay_DSTATE_i, align 1
  br label %if.end89

if.else79:                                        ; preds = %cond.end74
  %38 = load i16, i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 17), align 4
  %conv80 = zext i16 %38 to i64
  %cmp81 = icmp slt i64 %conv80, 80
  br i1 %cmp81, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else79
  %39 = load i16, i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 17), align 4
  %conv83 = zext i16 %39 to i64
  %cmp84 = icmp sgt i64 %conv83, 900
  br i1 %cmp84, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %40 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 53), align 2
  %tobool86 = icmp ne i8 %40, 0
  %lnot87 = xor i1 %tobool86, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %if.else79
  %41 = phi i1 [ true, %lor.lhs.false ], [ true, %if.else79 ], [ %lnot87, %lor.rhs ]
  %lor.ext = zext i1 %41 to i32
  %conv88 = trunc i32 %lor.ext to i8
  store i8 %conv88, i8* %UnitDelay_DSTATE_i, align 1
  br label %if.end89

if.end89:                                         ; preds = %lor.end, %if.then78
  %42 = load i8, i8* %UnitDelay_DSTATE_h, align 1
  %tobool90 = icmp ne i8 %42, 0
  br i1 %tobool90, label %if.then91, label %if.else92

if.then91:                                        ; preds = %if.end89
  store i8 1, i8* %UnitDelay_DSTATE_h, align 1
  br label %if.end96

if.else92:                                        ; preds = %if.end89
  %43 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 54), align 1
  %tobool93 = icmp ne i8 %43, 0
  %lnot94 = xor i1 %tobool93, true
  %lnot.ext = zext i1 %lnot94 to i32
  %conv95 = trunc i32 %lnot.ext to i8
  store i8 %conv95, i8* %UnitDelay_DSTATE_h, align 1
  br label %if.end96

if.end96:                                         ; preds = %if.else92, %if.then91
  %44 = load i16, i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 19), align 8
  %conv97 = uitofp i16 %44 to float
  %mul = fmul float %conv97, 0x3FB99999A0000000
  %cmp98 = fcmp olt float %mul, 9.000000e+01
  %conv99 = zext i1 %cmp98 to i32
  %conv100 = trunc i32 %conv99 to i8
  store i8 %conv100, i8* %rtb_Relational_Operator3_a, align 1
  %45 = load i8, i8* %Delay_DSTATE, align 1
  %conv101 = zext i8 %45 to i64
  %cmp102 = icmp eq i64 %conv101, 2
  br i1 %cmp102, label %land.lhs.true, label %lor.lhs.false104

lor.lhs.false104:                                 ; preds = %if.end96
  %46 = load i8, i8* %UnitDelay_DSTATE_i, align 1
  %conv105 = zext i8 %46 to i32
  %tobool106 = icmp ne i32 %conv105, 0
  br i1 %tobool106, label %land.lhs.true, label %lor.lhs.false109

land.lhs.true:                                    ; preds = %lor.lhs.false104, %if.end96
  %47 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 6, i32 1), align 2
  %conv107 = zext i8 %47 to i32
  %tobool108 = icmp ne i32 %conv107, 0
  br i1 %tobool108, label %land.rhs119, label %lor.lhs.false109

lor.lhs.false109:                                 ; preds = %land.lhs.true, %lor.lhs.false104
  %48 = load i8, i8* %Delay_DSTATE, align 1
  %conv110 = zext i8 %48 to i64
  %cmp111 = icmp eq i64 %conv110, 3
  br i1 %cmp111, label %land.lhs.true116, label %lor.lhs.false113

lor.lhs.false113:                                 ; preds = %lor.lhs.false109
  %49 = load i8, i8* %UnitDelay_DSTATE_h, align 1
  %conv114 = zext i8 %49 to i32
  %tobool115 = icmp ne i32 %conv114, 0
  br i1 %tobool115, label %land.lhs.true116, label %land.end122

land.lhs.true116:                                 ; preds = %lor.lhs.false113, %lor.lhs.false109
  %50 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 5, i32 1), align 2
  %conv117 = zext i8 %50 to i32
  %tobool118 = icmp ne i32 %conv117, 0
  br i1 %tobool118, label %land.rhs119, label %land.end122

land.rhs119:                                      ; preds = %land.lhs.true116, %land.lhs.true
  %51 = load i8, i8* %rtb_Relational_Operator3_a, align 1
  %conv120 = zext i8 %51 to i32
  %tobool121 = icmp ne i32 %conv120, 0
  br label %land.end122

land.end122:                                      ; preds = %land.rhs119, %land.lhs.true116, %lor.lhs.false113
  %52 = phi i1 [ false, %land.lhs.true116 ], [ false, %lor.lhs.false113 ], [ %tobool121, %land.rhs119 ]
  %land.ext123 = zext i1 %52 to i32
  %conv124 = trunc i32 %land.ext123 to i8
  store i8 %conv124, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 57), align 2
  %53 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 29), align 2
  call void @Acchg_data_lock(i8 zeroext %53, i8 zeroext 9, %struct.DW_data_lock_Acchg__T* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 4))
  %54 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 29), align 2
  %conv125 = zext i8 %54 to i64
  %cmp126 = icmp eq i64 %conv125, 2
  br i1 %cmp126, label %lor.end140, label %lor.lhs.false128

lor.lhs.false128:                                 ; preds = %land.end122
  %55 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 29), align 2
  %conv129 = zext i8 %55 to i64
  %cmp130 = icmp eq i64 %conv129, 3
  br i1 %cmp130, label %lor.end140, label %lor.lhs.false132

lor.lhs.false132:                                 ; preds = %lor.lhs.false128
  %56 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 29), align 2
  %conv133 = zext i8 %56 to i64
  %cmp134 = icmp eq i64 %conv133, 4
  br i1 %cmp134, label %lor.end140, label %lor.rhs136

lor.rhs136:                                       ; preds = %lor.lhs.false132
  %57 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 29), align 2
  %conv137 = zext i8 %57 to i64
  %cmp138 = icmp eq i64 %conv137, 5
  br label %lor.end140

lor.end140:                                       ; preds = %lor.rhs136, %lor.lhs.false132, %lor.lhs.false128, %land.end122
  %58 = phi i1 [ true, %lor.lhs.false132 ], [ true, %lor.lhs.false128 ], [ true, %land.end122 ], [ %cmp138, %lor.rhs136 ]
  %lor.ext141 = zext i1 %58 to i32
  %conv142 = trunc i32 %lor.ext141 to i8
  store i8 %conv142, i8* %rtb_Logical_Operator2, align 1
  %59 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 29), align 2
  %conv143 = zext i8 %59 to i32
  %60 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 26), align 1
  %conv144 = zext i8 %60 to i32
  %cmp145 = icmp eq i32 %conv143, %conv144
  %conv146 = zext i1 %cmp145 to i32
  %conv147 = trunc i32 %conv146 to i8
  store i8 %conv147, i8* %rtb_RelationalOperator_e, align 1
  %61 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 29), align 2
  call void @Acchg_data_lock(i8 zeroext %61, i8 zeroext 8, %struct.DW_data_lock_Acchg__T* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 3))
  %62 = load i8, i8* %rtb_Relational_Operator3_a, align 1
  %conv148 = zext i8 %62 to i32
  %tobool149 = icmp ne i32 %conv148, 0
  br i1 %tobool149, label %land.rhs150, label %land.end176

land.rhs150:                                      ; preds = %lor.end140
  %63 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 4, i32 0), align 2
  %conv151 = zext i8 %63 to i32
  %tobool152 = icmp ne i32 %conv151, 0
  br i1 %tobool152, label %land.lhs.true153, label %lor.rhs159

land.lhs.true153:                                 ; preds = %land.rhs150
  %64 = load i8, i8* %rtb_Logical_Operator2, align 1
  %conv154 = zext i8 %64 to i32
  %tobool155 = icmp ne i32 %conv154, 0
  br i1 %tobool155, label %land.lhs.true156, label %lor.rhs159

land.lhs.true156:                                 ; preds = %land.lhs.true153
  %65 = load i8, i8* %rtb_RelationalOperator_e, align 1
  %conv157 = zext i8 %65 to i32
  %tobool158 = icmp ne i32 %conv157, 0
  br i1 %tobool158, label %land.end176, label %lor.rhs159

lor.rhs159:                                       ; preds = %land.lhs.true156, %land.lhs.true153, %land.rhs150
  %66 = load i8, i8* %rtb_Logical_Operator2, align 1
  %conv160 = zext i8 %66 to i32
  %tobool161 = icmp ne i32 %conv160, 0
  br i1 %tobool161, label %land.lhs.true162, label %land.end176

land.lhs.true162:                                 ; preds = %lor.rhs159
  %67 = load i8, i8* %rtb_RelationalOperator_e, align 1
  %conv163 = zext i8 %67 to i32
  %tobool164 = icmp ne i32 %conv163, 0
  br i1 %tobool164, label %land.lhs.true165, label %land.end176

land.lhs.true165:                                 ; preds = %land.lhs.true162
  %68 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 3, i32 0), align 8
  %conv166 = zext i8 %68 to i32
  %tobool167 = icmp ne i32 %conv166, 0
  br i1 %tobool167, label %land.rhs168, label %land.end176

land.rhs168:                                      ; preds = %land.lhs.true165
  %69 = load i16, i16* %UnitDelay_DSTATE, align 2
  %conv169 = zext i16 %69 to i64
  %cmp170 = icmp sle i64 %conv169, 600
  br label %land.end176

land.end176:                                      ; preds = %land.lhs.true156, %land.rhs168, %land.lhs.true165, %land.lhs.true162, %lor.rhs159, %lor.end140
  %70 = phi i1 [ false, %lor.end140 ], [ true, %land.lhs.true156 ], [ false, %land.lhs.true165 ], [ false, %land.lhs.true162 ], [ false, %lor.rhs159 ], [ %cmp170, %land.rhs168 ]
  %land.ext177 = zext i1 %70 to i32
  %conv178 = trunc i32 %land.ext177 to i8
  store i8 %conv178, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 58), align 1
  br label %if.end183

if.else179:                                       ; preds = %if.end32
  br i1 %tobool37, label %if.then181, label %if.end183

if.then181:                                       ; preds = %if.else179
  store i8 0, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 57), align 2
  store i8 0, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 58), align 1
  store i8 0, i8* %EnabledSubsystem4_MODE, align 1
  br label %if.end183

if.end183:                                        ; preds = %if.else179, %if.then181, %land.end176
  %71 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 32), align 1
  %conv184 = zext i8 %71 to i64
  %cmp185 = icmp eq i64 %conv184, 1
  br i1 %cmp185, label %land.rhs191, label %lor.lhs.false187

lor.lhs.false187:                                 ; preds = %if.end183
  %72 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 32), align 1
  %conv188 = zext i8 %72 to i64
  %cmp189 = icmp eq i64 %conv188, 7
  br i1 %cmp189, label %land.rhs191, label %land.end194

land.rhs191:                                      ; preds = %lor.lhs.false187, %if.end183
  %73 = load i64, i64* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 14), align 8
  %cmp192 = icmp slt i64 %73, -2000
  br label %land.end194

land.end194:                                      ; preds = %land.rhs191, %lor.lhs.false187
  %74 = phi i1 [ false, %lor.lhs.false187 ], [ %cmp192, %land.rhs191 ]
  %land.ext195 = zext i1 %74 to i32
  %conv196 = trunc i32 %land.ext195 to i8
  %75 = load i8, i8* getelementptr inbounds (%struct.P_Acchg__T_, %struct.P_Acchg__T_* @g_BMS_Acchg_P, i32 0, i32 10), align 2
  %conv197 = zext i8 %75 to i64
  %cmp198 = icmp eq i64 %conv197, 0
  br i1 %cmp198, label %cond.end204, label %cond.false201

cond.false201:                                    ; preds = %land.end194
  %76 = load i8, i8* getelementptr inbounds (%struct.P_Acchg__T_, %struct.P_Acchg__T_* @g_BMS_Acchg_P, i32 0, i32 10), align 2
  %conv202 = zext i8 %76 to i64
  call void @klee_div_zero_check(i64 %conv202)
  %div203 = udiv i64 1000, %conv202, !klee.check.div !12
  br label %cond.end204

cond.end204:                                      ; preds = %land.end194, %cond.false201
  %cond205 = phi i64 [ %div203, %cond.false201 ], [ 4294967295, %land.end194 ]
  call void @Acchg_Fault_Confirm(i8 zeroext %conv196, i64 %cond205, %struct.DW_fault_confirm_Acchg_e_T* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 2))
  %77 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 26), align 1
  %conv206 = zext i8 %77 to i64
  %cmp207 = icmp eq i64 %conv206, 2
  br i1 %cmp207, label %land.lhs.true221, label %lor.lhs.false209

lor.lhs.false209:                                 ; preds = %cond.end204
  %78 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 26), align 1
  %conv210 = zext i8 %78 to i64
  %cmp211 = icmp eq i64 %conv210, 3
  br i1 %cmp211, label %land.lhs.true221, label %lor.lhs.false213

lor.lhs.false213:                                 ; preds = %lor.lhs.false209
  %79 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 26), align 1
  %conv214 = zext i8 %79 to i64
  %cmp215 = icmp eq i64 %conv214, 4
  br i1 %cmp215, label %land.lhs.true221, label %lor.lhs.false217

lor.lhs.false217:                                 ; preds = %lor.lhs.false213
  %80 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 26), align 1
  %conv218 = zext i8 %80 to i64
  %cmp219 = icmp eq i64 %conv218, 5
  br i1 %cmp219, label %land.lhs.true221, label %land.end251

land.lhs.true221:                                 ; preds = %lor.lhs.false217, %lor.lhs.false213, %lor.lhs.false209, %cond.end204
  %81 = load i16, i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 17), align 4
  %conv222 = zext i16 %81 to i64
  %cmp223 = icmp sge i64 %conv222, 80
  br i1 %cmp223, label %land.lhs.true225, label %land.end251

land.lhs.true225:                                 ; preds = %land.lhs.true221
  %82 = load i16, i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 17), align 4
  %conv226 = zext i16 %82 to i64
  %cmp227 = icmp sle i64 %conv226, 900
  br i1 %cmp227, label %land.lhs.true229, label %land.end251

land.lhs.true229:                                 ; preds = %land.lhs.true225
  %83 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 53), align 2
  %conv230 = zext i8 %83 to i32
  %tobool231 = icmp ne i32 %conv230, 0
  br i1 %tobool231, label %land.lhs.true232, label %land.end251

land.lhs.true232:                                 ; preds = %land.lhs.true229
  %84 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 54), align 1
  %conv233 = zext i8 %84 to i32
  %tobool234 = icmp ne i32 %conv233, 0
  br i1 %tobool234, label %land.lhs.true235, label %land.end251

land.lhs.true235:                                 ; preds = %land.lhs.true232
  %85 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 27), align 8
  %conv236 = zext i8 %85 to i64
  %cmp237 = icmp eq i64 %conv236, 2
  br i1 %cmp237, label %land.lhs.true239, label %land.end251

land.lhs.true239:                                 ; preds = %land.lhs.true235
  %86 = load i16, i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 15), align 8
  %conv240 = zext i16 %86 to i64
  %cmp241 = icmp sgt i64 %conv240, 90
  br i1 %cmp241, label %land.lhs.true243, label %land.end251

land.lhs.true243:                                 ; preds = %land.lhs.true239
  %87 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 28), align 1
  %conv244 = zext i8 %87 to i64
  %cmp245 = icmp eq i64 %conv244, 3
  br i1 %cmp245, label %land.rhs247, label %land.end251

land.rhs247:                                      ; preds = %land.lhs.true243
  %ACChg_Prohibit = getelementptr inbounds %struct.FaultCode, %struct.FaultCode* %tmpRead, i32 0, i32 8
  %88 = load i8, i8* %ACChg_Prohibit, align 1
  %tobool248 = icmp ne i8 %88, 0
  %lnot249 = xor i1 %tobool248, true
  br label %land.end251

land.end251:                                      ; preds = %land.rhs247, %land.lhs.true243, %land.lhs.true239, %land.lhs.true235, %land.lhs.true232, %land.lhs.true229, %land.lhs.true225, %land.lhs.true221, %lor.lhs.false217
  %89 = phi i1 [ false, %land.lhs.true243 ], [ false, %land.lhs.true239 ], [ false, %land.lhs.true235 ], [ false, %land.lhs.true232 ], [ false, %land.lhs.true229 ], [ false, %land.lhs.true225 ], [ false, %land.lhs.true221 ], [ false, %lor.lhs.false217 ], [ %lnot249, %land.rhs247 ]
  %land.ext252 = zext i1 %89 to i32
  %conv253 = trunc i32 %land.ext252 to i8
  store i8 %conv253, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 73), align 2
  %90 = load i16, i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 19), align 8
  %conv254 = uitofp i16 %90 to double
  %mul255 = fmul double %conv254, 1.000000e-01
  %cmp256 = fcmp olt double %mul255, 9.000000e+01
  br i1 %cmp256, label %lor.end261, label %lor.rhs258

lor.rhs258:                                       ; preds = %land.end251
  %91 = load i8, i8* %LogicalOperator1, align 1
  %conv259 = zext i8 %91 to i32
  %tobool260 = icmp ne i32 %conv259, 0
  br label %lor.end261

lor.end261:                                       ; preds = %lor.rhs258, %land.end251
  %92 = phi i1 [ true, %land.end251 ], [ %tobool260, %lor.rhs258 ]
  %lor.ext262 = zext i1 %92 to i32
  %conv263 = trunc i32 %lor.ext262 to i8
  store i8 %conv263, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 72), align 1
  %93 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 32), align 1
  %conv264 = zext i8 %93 to i64
  %cmp265 = icmp eq i64 %conv264, 1
  br i1 %cmp265, label %lor.end275, label %lor.lhs.false267

lor.lhs.false267:                                 ; preds = %lor.end261
  %94 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 32), align 1
  %conv268 = zext i8 %94 to i64
  %cmp269 = icmp eq i64 %conv268, 7
  br i1 %cmp269, label %lor.end275, label %lor.rhs271

lor.rhs271:                                       ; preds = %lor.lhs.false267
  %95 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 32), align 1
  %conv272 = zext i8 %95 to i64
  %cmp273 = icmp eq i64 %conv272, 8
  br label %lor.end275

lor.end275:                                       ; preds = %lor.rhs271, %lor.lhs.false267, %lor.end261
  %96 = phi i1 [ true, %lor.lhs.false267 ], [ true, %lor.end261 ], [ %cmp273, %lor.rhs271 ]
  %lor.ext276 = zext i1 %96 to i32
  %conv277 = trunc i32 %lor.ext276 to i8
  store i8 %conv277, i8* %rtb_Relational_Operator3_a, align 1
  %97 = load i64, i64* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 14), align 8
  %cmp278 = icmp slt i64 %97, 0
  %98 = load i64, i64* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 14), align 8
  br i1 %cmp278, label %if.then280, label %if.else281

if.then280:                                       ; preds = %lor.end275
  %sub = sub nsw i64 0, %98
  store i64 %sub, i64* %tmp, align 8
  br label %if.end282

if.else281:                                       ; preds = %lor.end275
  store i64 %98, i64* %tmp, align 8
  br label %if.end282

if.end282:                                        ; preds = %if.else281, %if.then280
  %99 = load i64, i64* %tmp, align 8
  %cmp283 = icmp slt i64 %99, 0
  br i1 %cmp283, label %if.then285, label %if.end286

if.then285:                                       ; preds = %if.end282
  store i64 0, i64* %tmp, align 8
  br label %if.end286

if.end286:                                        ; preds = %if.then285, %if.end282
  %100 = load i64, i64* %tmp, align 8
  %101 = load i8, i8* getelementptr inbounds (%struct.P_Acchg__T_, %struct.P_Acchg__T_* @g_BMS_Acchg_P, i32 0, i32 11), align 1
  %conv287 = zext i8 %101 to i64
  %mul288 = mul i64 %conv287, 1000
  %div289 = udiv i64 %mul288, 20
  %cmp290 = icmp ult i64 %100, %div289
  %conv291 = zext i1 %cmp290 to i32
  %conv292 = trunc i32 %conv291 to i8
  store i8 %conv292, i8* %rtb_Logical_Operator2, align 1
  %102 = load i8, i8* %rtb_Relational_Operator3_a, align 1
  %conv293 = zext i8 %102 to i32
  %tobool294 = icmp ne i32 %conv293, 0
  br i1 %tobool294, label %land.lhs.true295, label %land.end308

land.lhs.true295:                                 ; preds = %if.end286
  %103 = load i16, i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 16), align 2
  %conv296 = zext i16 %103 to i32
  %104 = load i16, i16* getelementptr inbounds (%struct.P_Acchg__T_, %struct.P_Acchg__T_* @g_BMS_Acchg_P, i32 0, i32 9), align 4
  %conv297 = zext i16 %104 to i32
  %cmp298 = icmp sge i32 %conv296, %conv297
  br i1 %cmp298, label %land.lhs.true300, label %land.end308

land.lhs.true300:                                 ; preds = %land.lhs.true295
  %105 = load i16, i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 16), align 2
  %conv301 = zext i16 %105 to i32
  %106 = load i16, i16* getelementptr inbounds (%struct.P_Acchg__T_, %struct.P_Acchg__T_* @g_BMS_Acchg_P, i32 0, i32 8), align 2
  %conv302 = zext i16 %106 to i32
  %cmp303 = icmp slt i32 %conv301, %conv302
  br i1 %cmp303, label %land.rhs305, label %land.end308

land.rhs305:                                      ; preds = %land.lhs.true300
  %107 = load i8, i8* %rtb_Logical_Operator2, align 1
  %conv306 = zext i8 %107 to i32
  %tobool307 = icmp ne i32 %conv306, 0
  br label %land.end308

land.end308:                                      ; preds = %land.rhs305, %land.lhs.true300, %land.lhs.true295, %if.end286
  %108 = phi i1 [ false, %land.lhs.true300 ], [ false, %land.lhs.true295 ], [ false, %if.end286 ], [ %tobool307, %land.rhs305 ]
  %land.ext309 = zext i1 %108 to i32
  %conv310 = trunc i32 %land.ext309 to i8
  %109 = load i8, i8* getelementptr inbounds (%struct.P_Acchg__T_, %struct.P_Acchg__T_* @g_BMS_Acchg_P, i32 0, i32 10), align 2
  %conv311 = zext i8 %109 to i64
  %cmp312 = icmp eq i64 %conv311, 0
  br i1 %cmp312, label %cond.end318, label %cond.false315

cond.false315:                                    ; preds = %land.end308
  %110 = load i8, i8* getelementptr inbounds (%struct.P_Acchg__T_, %struct.P_Acchg__T_* @g_BMS_Acchg_P, i32 0, i32 10), align 2
  %conv316 = zext i8 %110 to i64
  call void @klee_div_zero_check(i64 %conv316)
  %div317 = udiv i64 500, %conv316, !klee.check.div !12
  br label %cond.end318

cond.end318:                                      ; preds = %land.end308, %cond.false315
  %cond319 = phi i64 [ %div317, %cond.false315 ], [ 4294967295, %land.end308 ]
  %conv320 = trunc i64 %cond319 to i16
  call void @Acchg_fault_confirm(i8 zeroext %conv310, i16 zeroext %conv320, %struct.DW_fault_confirm_Acchg__T* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 1))
  %111 = load i8, i8* %rtb_Logical_Operator2, align 1
  %conv321 = zext i8 %111 to i32
  %tobool322 = icmp ne i32 %conv321, 0
  br i1 %tobool322, label %land.lhs.true323, label %land.end341

land.lhs.true323:                                 ; preds = %cond.end318
  %112 = load i8, i8* %rtb_Relational_Operator3_a, align 1
  %conv324 = zext i8 %112 to i32
  %tobool325 = icmp ne i32 %conv324, 0
  br i1 %tobool325, label %land.rhs326, label %land.end341

land.rhs326:                                      ; preds = %land.lhs.true323
  %113 = load i16, i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 16), align 2
  %conv327 = zext i16 %113 to i32
  %114 = load i16, i16* getelementptr inbounds (%struct.P_Acchg__T_, %struct.P_Acchg__T_* @g_BMS_Acchg_P, i32 0, i32 9), align 4
  %conv328 = zext i16 %114 to i64
  %sub329 = sub nsw i64 %conv328, 5
  %conv330 = trunc i64 %sub329 to i16
  %conv331 = zext i16 %conv330 to i32
  %cmp332 = icmp sge i32 %conv327, %conv331
  br i1 %cmp332, label %land.rhs334, label %land.end341

land.rhs334:                                      ; preds = %land.rhs326
  %115 = load i16, i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 16), align 2
  %conv335 = zext i16 %115 to i32
  %116 = load i16, i16* getelementptr inbounds (%struct.P_Acchg__T_, %struct.P_Acchg__T_* @g_BMS_Acchg_P, i32 0, i32 8), align 2
  %conv336 = zext i16 %116 to i32
  %cmp337 = icmp slt i32 %conv335, %conv336
  br label %land.end341

land.end341:                                      ; preds = %land.rhs326, %land.rhs334, %land.lhs.true323, %cond.end318
  %117 = phi i1 [ false, %land.lhs.true323 ], [ false, %cond.end318 ], [ false, %land.rhs326 ], [ %cmp337, %land.rhs334 ]
  %land.ext342 = zext i1 %117 to i32
  %conv343 = trunc i32 %land.ext342 to i8
  %118 = load i8, i8* getelementptr inbounds (%struct.P_Acchg__T_, %struct.P_Acchg__T_* @g_BMS_Acchg_P, i32 0, i32 10), align 2
  %conv344 = zext i8 %118 to i64
  %cmp345 = icmp eq i64 %conv344, 0
  br i1 %cmp345, label %cond.end351, label %cond.false348

cond.false348:                                    ; preds = %land.end341
  %119 = load i8, i8* getelementptr inbounds (%struct.P_Acchg__T_, %struct.P_Acchg__T_* @g_BMS_Acchg_P, i32 0, i32 10), align 2
  %conv349 = zext i8 %119 to i64
  call void @klee_div_zero_check(i64 %conv349)
  %div350 = udiv i64 720000, %conv349, !klee.check.div !12
  br label %cond.end351

cond.end351:                                      ; preds = %land.end341, %cond.false348
  %cond352 = phi i64 [ %div350, %cond.false348 ], [ 4294967295, %land.end341 ]
  call void @Acchg_Fault_Confirm(i8 zeroext %conv343, i64 %cond352, %struct.DW_fault_confirm_Acchg_e_T* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 0))
  %120 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 1, i32 1), align 2
  %conv353 = zext i8 %120 to i32
  %tobool354 = icmp ne i32 %conv353, 0
  br i1 %tobool354, label %lor.end362, label %lor.lhs.false355

lor.lhs.false355:                                 ; preds = %cond.end351
  %121 = load i16, i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 19), align 8
  %conv356 = zext i16 %121 to i64
  %cmp357 = icmp sge i64 %conv356, 950
  br i1 %cmp357, label %lor.end362, label %lor.rhs359

lor.rhs359:                                       ; preds = %lor.lhs.false355
  %122 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 0, i32 1), align 8
  %conv360 = zext i8 %122 to i32
  %tobool361 = icmp ne i32 %conv360, 0
  br label %lor.end362

lor.end362:                                       ; preds = %lor.rhs359, %lor.lhs.false355, %cond.end351
  %123 = phi i1 [ true, %lor.lhs.false355 ], [ true, %cond.end351 ], [ %tobool361, %lor.rhs359 ]
  %lor.ext363 = zext i1 %123 to i32
  %conv364 = trunc i32 %lor.ext363 to i8
  store i8 %conv364, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 56), align 1
  %124 = load i8, i8* %EnabledSubsystem1_MODE, align 1
  store i8 %124, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 86), align 1
  %125 = load i8, i8* %EnabledSubsystem4_MODE, align 1
  store i8 %125, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 85), align 2
  %126 = load i8, i8* %LogicalOperator1, align 1
  store i8 %126, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 59), align 8
  %127 = load i8, i8* %UnitDelay_DSTATE_io, align 1
  store i8 %127, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 77), align 2
  %128 = load i16, i16* %UnitDelay_DSTATE, align 2
  store i16 %128, i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 20), align 2
  %129 = load i8, i8* %icLoad, align 1
  store i8 %129, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 36), align 1
  %130 = load i8, i8* %Delay_DSTATE_o, align 1
  store i8 %130, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 76), align 1
  %131 = load i8, i8* %UnitDelay_DSTATE_i, align 1
  store i8 %131, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 75), align 8
  %132 = load i8, i8* %UnitDelay_DSTATE_h, align 1
  store i8 %132, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 74), align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Runnable_AcChg() #0 {
entry:
  %tmp = alloca i8, align 1
  store i8 0, i8* @Rte_SWC_APP_AcChg_AcChg_SlwChg_dfpOBCCurOver, align 1
  store i8 0, i8* @Rte_SWC_APP_AcChg_AcChg_SlwChg_dfpOBCfault, align 1
  %0 = load i8, i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_stBcuChrgMod, align 1
  store i8 %0, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 26), align 1
  %1 = load i16, i16* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_dtyCP, align 2
  store i16 %1, i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 17), align 4
  %2 = load i8, i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_stCPSts, align 1
  store i8 %2, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 53), align 2
  %3 = load i16, i16* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_vChgACInput, align 2
  store i16 %3, i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 15), align 8
  %4 = load i16, i16* @Rte_SWC_APP_SignalProcess_SigPro_CellVol_vTotal, align 2
  store i16 %4, i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 18), align 2
  %5 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 26), align 1
  %conv = zext i8 %5 to i64
  %cmp = icmp eq i64 %conv, 2
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 26), align 1
  %conv2 = zext i8 %6 to i64
  %cmp3 = icmp eq i64 %conv2, 3
  br i1 %cmp3, label %lor.end, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %7 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 26), align 1
  %conv6 = zext i8 %7 to i64
  %cmp7 = icmp eq i64 %conv6, 4
  br i1 %cmp7, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false5
  %8 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 26), align 1
  %conv9 = zext i8 %8 to i64
  %cmp10 = icmp eq i64 %conv9, 5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false5, %lor.lhs.false, %entry
  %9 = phi i1 [ true, %lor.lhs.false5 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp10, %lor.rhs ]
  %lor.ext = zext i1 %9 to i32
  %conv12 = trunc i32 %lor.ext to i8
  store i8 %conv12, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 71), align 4
  %10 = load i8, i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_stChrgAllwdFlg, align 1
  store i8 %10, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 54), align 1
  %11 = load i8, i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_stWorkOBC, align 1
  store i8 %11, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 27), align 8
  %12 = load i8, i8* @Rte_SWC_APP_FunctionSafety_FunSafety_FunSafety_stBcuOperMod, align 1
  store i8 %12, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 28), align 1
  %13 = load i64, i64* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_iBattery, align 8
  store i64 %13, i64* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 14), align 8
  %14 = load i16, i16* @Rte_SWC_APP_SignalProcess_SigPro_CellVol_vMaxCell, align 2
  store i16 %14, i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 16), align 2
  %15 = load i16, i16* @Rte_SWC_APP_SOC_PacSOC_CurSOC_ratSOC, align 2
  store i16 %15, i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 19), align 8
  %16 = load i8, i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_stObcS2Sts, align 1
  store i8 %16, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 55), align 4
  %17 = load i8, i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_stCCRaw, align 1
  store i8 %17, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 29), align 2
  call void @BMS_AcChg_StTransitCondtion()
  call void @BMS_AcChg_ChrgState()
  call void @BMS_AcChg_ChrgReqCal()
  %18 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 30), align 1
  %conv13 = zext i8 %18 to i64
  %cmp14 = icmp eq i64 %conv13, 7
  br i1 %cmp14, label %if.then, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.end
  %19 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 30), align 1
  %conv17 = zext i8 %19 to i64
  %cmp18 = icmp eq i64 %conv17, 8
  br i1 %cmp18, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false16, %lor.end
  store i8 2, i8* %tmp, align 1
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false16
  %20 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 30), align 1
  store i8 %20, i8* %tmp, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %21 = load i8, i8* %tmp, align 1
  store i8 %21, i8* @Rte_SWC_APP_AcChg_AcChg_SlwChg_stSlowCharge, align 1
  store i8 0, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 71), align 4
  store i8 0, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 72), align 1
  store i8 0, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 73), align 2
  store i16 0, i16* @Rte_SWC_APP_AcChg_AcChg_SlwChg_tiBMSChaTimeRemain, align 2
  %22 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 30), align 1
  store i8 %22, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 32), align 1
  %23 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 31), align 4
  store i8 %23, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 33), align 2
  %24 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 71), align 4
  store i8 %24, i8* @Rte_SWC_APP_AcChg_AcChg_SlwChg_stBMSCharging, align 1
  %25 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 72), align 1
  store i8 %25, i8* @Rte_SWC_APP_AcChg_AcChg_SlwChg_stEnOnVehicleCharge, align 1
  %26 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 73), align 2
  store i8 %26, i8* @Rte_SWC_APP_AcChg_AcChg_SlwChg_stSlowChargeS2, align 1
  %27 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 31), align 4
  store i8 %27, i8* @Rte_SWC_APP_AcChg_AcChg_SlwChg_stChrgEndResn, align 1
  %28 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 34), align 1
  store i8 %28, i8* @Rte_SWC_APP_AcChg_AcChg_SlwChg_stObcOperModReq, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_AUX__trueCount_2(i8 zeroext %c_0, i8 zeroext %c_1) #0 {
entry:
  %c_0.addr = alloca i8, align 1
  %c_1.addr = alloca i8, align 1
  store i8 %c_0, i8* %c_0.addr, align 1
  store i8 %c_1, i8* %c_1.addr, align 1
  %0 = load i8, i8* %c_0.addr, align 1
  %conv = zext i8 %0 to i32
  %cmp = icmp ne i32 %conv, 0
  %conv1 = zext i1 %cmp to i32
  %1 = load i8, i8* %c_1.addr, align 1
  %conv2 = zext i8 %1 to i32
  %cmp3 = icmp ne i32 %conv2, 0
  %conv4 = zext i1 %cmp3 to i32
  %add = add nsw i32 %conv1, %conv4
  ret i32 %add
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @__AUX_CONVERT_SFIX16_EN2(i16 signext %si) #0 {
entry:
  %si.addr = alloca i16, align 2
  store i16 %si, i16* %si.addr, align 2
  %0 = load i16, i16* %si.addr, align 2
  %conv = sext i16 %0 to i32
  %cmp = icmp sgt i32 %conv, 32768
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i16, i16* %si.addr, align 2
  %conv2 = sext i16 %1 to i32
  %sub = sub nsw i32 %conv2, 65536
  %conv3 = trunc i32 %sub to i16
  store i16 %conv3, i16* %si.addr, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i16, i16* %si.addr, align 2
  %conv4 = sext i16 %2 to i32
  %conv5 = sitofp i32 %conv4 to double
  %mul = fmul double %conv5, 2.500000e-01
  %conv6 = fptrunc double %mul to float
  ret float %conv6
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @__AUX_CONVERT_SFIX16_SP1(i16 signext %si) #0 {
entry:
  %si.addr = alloca i16, align 2
  store i16 %si, i16* %si.addr, align 2
  %0 = load i16, i16* %si.addr, align 2
  %conv = sext i16 %0 to i32
  %conv1 = sitofp i32 %conv to double
  %mul = fmul double 1.000000e-01, %conv1
  %conv2 = fptrunc double %mul to float
  ret float %conv2
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @__AUX_CONVERT_UFIX16_SP01(i16 zeroext %si) #0 {
entry:
  %si.addr = alloca i16, align 2
  store i16 %si, i16* %si.addr, align 2
  %0 = load i16, i16* %si.addr, align 2
  %conv = zext i16 %0 to i32
  %conv1 = sitofp i32 %conv to double
  %mul = fmul double 1.000000e-02, %conv1
  %conv2 = fptrunc double %mul to float
  ret float %conv2
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @__AUX_CONVERT_UFIX16_SP1(i16 zeroext %si) #0 {
entry:
  %si.addr = alloca i16, align 2
  store i16 %si, i16* %si.addr, align 2
  %0 = load i16, i16* %si.addr, align 2
  %conv = zext i16 %0 to i32
  %conv1 = sitofp i32 %conv to double
  %mul = fmul double 1.000000e-01, %conv1
  %conv2 = fptrunc double %mul to float
  ret float %conv2
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @__AUX_CONVERT_UFIX32_SP01(i64 %si) #0 {
entry:
  %si.addr = alloca i64, align 8
  store i64 %si, i64* %si.addr, align 8
  %0 = load i64, i64* %si.addr, align 8
  %conv = uitofp i64 %0 to double
  %mul = fmul double 1.000000e-02, %conv
  %conv1 = fptrunc double %mul to float
  ret float %conv1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %__sys_TrueCount_2 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @klee_make_symbolic(i8* @Rte_SWC_APP_FaultDebounce_FaultDeb_N000P0000_LeakRAlarm, i64 1, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  call void @klee_make_symbolic(i8* @Rte_SWC_APP_FaultDebounce_FaultDeb_N000P0000_LeakRErr, i64 1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  call void @klee_make_symbolic(i8* @Rte_SWC_APP_FunctionSafety_FunSafety_FunSafety_stPowerComplete, i64 1, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  call void @klee_make_symbolic(i8* @Rte_SWC_APP_SOE_PacSOE_MapSOE_stChgFinishTrg, i64 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  call void @klee_make_symbolic(i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_dfpBMSComm, i64 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  call void @klee_make_symbolic(i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_flagAC1Rx, i64 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  call void @klee_make_symbolic(i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_flagAC2Rx, i64 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  call void @klee_make_symbolic(i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_flagDCDCRx, i64 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0))
  call void @klee_make_symbolic(i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_flagHMIRx, i64 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0))
  call void @klee_make_symbolic(i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_flagOBC2Rx, i64 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0))
  call void @klee_make_symbolic(i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_flagPTCRx, i64 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i64 0, i64 0))
  call void @klee_make_symbolic(i8* bitcast (i16* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_iChgACInput to i8*), i64 2, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i64 0, i64 0))
  call void @klee_make_symbolic(i8* bitcast (i16* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_iChgDCOutputOBC to i8*), i64 2, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i64 0, i64 0))
  call void @klee_make_symbolic(i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_iChrgMaxAC, i64 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i64 0, i64 0))
  call void @klee_make_symbolic(i8* bitcast (i16* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_iOutputCurDCDC to i8*), i64 2, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.14, i64 0, i64 0))
  call void @klee_make_symbolic(i8* bitcast (i16* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_powObcMaxChrgOutpPwrAvl to i8*), i64 2, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.15, i64 0, i64 0))
  call void @klee_make_symbolic(i8* bitcast (i16* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_powPTC to i8*), i64 2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.16, i64 0, i64 0))
  call void @klee_make_symbolic(i8* bitcast (i16* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_powTotalAC to i8*), i64 2, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.17, i64 0, i64 0))
  call void @klee_make_symbolic(i8* bitcast (i16* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_ratSOCTrg to i8*), i64 2, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.18, i64 0, i64 0))
  call void @klee_make_symbolic(i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_stACChgCtl, i64 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.19, i64 0, i64 0))
  call void @klee_make_symbolic(i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_stChrgSuspReq, i64 1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.20, i64 0, i64 0))
  call void @klee_make_symbolic(i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_stRCC, i64 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.21, i64 0, i64 0))
  call void @klee_make_symbolic(i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_stRCC2, i64 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.22, i64 0, i64 0))
  call void @klee_make_symbolic(i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_stWakeup, i64 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.23, i64 0, i64 0))
  call void @klee_make_symbolic(i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_stWakeupSQ, i64 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.24, i64 0, i64 0))
  call void @klee_make_symbolic(i8* bitcast (i16* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_vOutputDCDC to i8*), i64 2, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.25, i64 0, i64 0))
  call void @klee_make_symbolic(i8* bitcast (i16* @Rte_SWC_APP_SignalProcess_SigPro_TempCpu_tMaxCellValid to i8*), i64 2, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.26, i64 0, i64 0))
  call void @klee_make_symbolic(i8* bitcast (i16* @Rte_SWC_APP_SignalProcess_SigPro_TempCpu_tMinCellValid to i8*), i64 2, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.27, i64 0, i64 0))
  call void @klee_make_symbolic(i8* @Rte_SWC_APP_ThermalMgt_ThermMgt_ThermCtr_stChgHeat, i64 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.28, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 31) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 60) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 61) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.31, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 35) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.32, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 25, i64 0) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.33, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 25, i64 1) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.34, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 25, i64 2) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.35, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 34) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.36, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 24, i64 0) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.37, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 24, i64 1) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.38, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 33) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.39, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 82) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.40, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 79) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.41, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 76) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.42, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 86) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.43, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 85) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.44, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 13, i32 1) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.45, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 13, i32 0) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.46, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 1, i32 1) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.47, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 1, i32 0) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.48, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 6, i32 1) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.49, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 6, i32 0) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 2, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.50, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 10, i32 1) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.51, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 10, i32 0) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 2, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.52, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 7, i32 1) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.53, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 7, i32 0) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 2, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.54, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 0, i32 1) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.55, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 8, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.56, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 5, i32 1) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.57, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 5, i32 0) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 2, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.58, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 9, i32 1) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.59, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 9, i32 0) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 2, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.60, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 8, i32 1) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.61, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 8, i32 0) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.62, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 2, i32 1) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.63, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i64* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 2, i32 0) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 8, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.64, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (float* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 11, i32 0) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 4, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.65, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (float* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 12, i32 0) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 4, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.66, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 59) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.67, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 57) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.68, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 62) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.69, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 67) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.70, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 63) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.71, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 64) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.72, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 58) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.73, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 56) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.74, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 68) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.75, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 71) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.76, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 73) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.77, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 72) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.78, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 65) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.79, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 28) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.80, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 19) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.81, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 18) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.82, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 16) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.83, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 53) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.84, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 54) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.85, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 17) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.86, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 27) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.87, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 15) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.88, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i64* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 14) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 8, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.89, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 55) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.90, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 26) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.91, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 29) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.92, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 78) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.93, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 80) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.94, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 20) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.95, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 32) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.96, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 74) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.97, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 75) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.98, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 77) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.99, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 81) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.100, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 69) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.101, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 66) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.102, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 3, i32 0) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.103, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 3, i32 1) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.104, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 4, i32 0) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.105, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 4, i32 1) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.106, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 83) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.107, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 84) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.108, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 36) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.109, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 51) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.110, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 48) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.111, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 46) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.112, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 43) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.113, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 41) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.114, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 37) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.115, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 49) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.116, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 47) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.117, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 44) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.118, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 42) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.119, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 38) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.120, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 50) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.121, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 39) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.122, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 45) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.123, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 30) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.124, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 70) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.125, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 21) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.126, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 22) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.127, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i16* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 23) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.128, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 52) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.129, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* bitcast (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i8*), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 40) to i64), i64 ptrtoint (%struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW to i64)), i64 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.130, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* getelementptr inbounds (%struct.tag_PrevZCX_Acchg__T, %struct.tag_PrevZCX_Acchg__T* @g_BMS_Acchg_PrevZCX, i32 0, i32 0), i64 sub (i64 ptrtoint (%struct.tag_PrevZCX_Acchg__T* @g_BMS_Acchg_PrevZCX to i64), i64 ptrtoint (%struct.tag_PrevZCX_Acchg__T* @g_BMS_Acchg_PrevZCX to i64)), i64 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.131, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* getelementptr inbounds (%struct.tag_PrevZCX_Acchg__T, %struct.tag_PrevZCX_Acchg__T* @g_BMS_Acchg_PrevZCX, i32 0, i32 0), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.tag_PrevZCX_Acchg__T, %struct.tag_PrevZCX_Acchg__T* @g_BMS_Acchg_PrevZCX, i32 0, i32 1) to i64), i64 ptrtoint (%struct.tag_PrevZCX_Acchg__T* @g_BMS_Acchg_PrevZCX to i64)), i64 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.132, i64 0, i64 0))
  %0 = load i8, i8* @Rte_SWC_APP_FaultDebounce_FaultDeb_N000P0000_LeakRAlarm, align 1
  %conv = zext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 0
  %conv1 = zext i1 %cmp to i32
  %1 = load i8, i8* @Rte_SWC_APP_FaultDebounce_FaultDeb_N000P0000_LeakRAlarm, align 1
  %conv2 = zext i8 %1 to i32
  %cmp3 = icmp eq i32 %conv2, 1
  %conv4 = zext i1 %cmp3 to i32
  %or = or i32 %conv1, %conv4
  %2 = load i8, i8* @Rte_SWC_APP_FaultDebounce_FaultDeb_N000P0000_LeakRErr, align 1
  %conv5 = zext i8 %2 to i32
  %cmp6 = icmp eq i32 %conv5, 0
  %conv7 = zext i1 %cmp6 to i32
  %3 = load i8, i8* @Rte_SWC_APP_FaultDebounce_FaultDeb_N000P0000_LeakRErr, align 1
  %conv8 = zext i8 %3 to i32
  %cmp9 = icmp eq i32 %conv8, 1
  %conv10 = zext i1 %cmp9 to i32
  %or11 = or i32 %conv7, %conv10
  %and = and i32 %or, %or11
  %4 = load i8, i8* @Rte_SWC_APP_SOE_PacSOE_MapSOE_stChgFinishTrg, align 1
  %conv12 = zext i8 %4 to i32
  %cmp13 = icmp eq i32 %conv12, 0
  %conv14 = zext i1 %cmp13 to i32
  %5 = load i8, i8* @Rte_SWC_APP_SOE_PacSOE_MapSOE_stChgFinishTrg, align 1
  %conv15 = zext i8 %5 to i32
  %cmp16 = icmp eq i32 %conv15, 1
  %conv17 = zext i1 %cmp16 to i32
  %or18 = or i32 %conv14, %conv17
  %and19 = and i32 %and, %or18
  %6 = load i8, i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_dfpBMSComm, align 1
  %conv20 = zext i8 %6 to i32
  %cmp21 = icmp eq i32 %conv20, 0
  %conv22 = zext i1 %cmp21 to i32
  %7 = load i8, i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_dfpBMSComm, align 1
  %conv23 = zext i8 %7 to i32
  %cmp24 = icmp eq i32 %conv23, 1
  %conv25 = zext i1 %cmp24 to i32
  %or26 = or i32 %conv22, %conv25
  %and27 = and i32 %and19, %or26
  %8 = load i8, i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_stACChgCtl, align 1
  %conv28 = zext i8 %8 to i32
  %cmp29 = icmp eq i32 %conv28, 0
  %conv30 = zext i1 %cmp29 to i32
  %9 = load i8, i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_stACChgCtl, align 1
  %conv31 = zext i8 %9 to i32
  %cmp32 = icmp eq i32 %conv31, 1
  %conv33 = zext i1 %cmp32 to i32
  %or34 = or i32 %conv30, %conv33
  %and35 = and i32 %and27, %or34
  %10 = load i8, i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_stChrgSuspReq, align 1
  %conv36 = zext i8 %10 to i32
  %cmp37 = icmp eq i32 %conv36, 0
  %conv38 = zext i1 %cmp37 to i32
  %11 = load i8, i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_stChrgSuspReq, align 1
  %conv39 = zext i8 %11 to i32
  %cmp40 = icmp eq i32 %conv39, 1
  %conv41 = zext i1 %cmp40 to i32
  %or42 = or i32 %conv38, %conv41
  %and43 = and i32 %and35, %or42
  %12 = load i8, i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_stRCC2, align 1
  %conv44 = zext i8 %12 to i32
  %cmp45 = icmp eq i32 %conv44, 0
  %conv46 = zext i1 %cmp45 to i32
  %13 = load i8, i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_stRCC2, align 1
  %conv47 = zext i8 %13 to i32
  %cmp48 = icmp eq i32 %conv47, 1
  %conv49 = zext i1 %cmp48 to i32
  %or50 = or i32 %conv46, %conv49
  %and51 = and i32 %and43, %or50
  %14 = load i8, i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_stWakeup, align 1
  %conv52 = zext i8 %14 to i32
  %cmp53 = icmp eq i32 %conv52, 0
  %conv54 = zext i1 %cmp53 to i32
  %15 = load i8, i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_stWakeup, align 1
  %conv55 = zext i8 %15 to i32
  %cmp56 = icmp eq i32 %conv55, 1
  %conv57 = zext i1 %cmp56 to i32
  %or58 = or i32 %conv54, %conv57
  %and59 = and i32 %and51, %or58
  %16 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 31), align 4
  %conv60 = zext i8 %16 to i32
  %cmp61 = icmp sge i32 %conv60, 0
  %conv62 = zext i1 %cmp61 to i32
  %17 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 31), align 4
  %conv63 = zext i8 %17 to i32
  %cmp64 = icmp sle i32 %conv63, 53
  %conv65 = zext i1 %cmp64 to i32
  %and66 = and i32 %conv62, %conv65
  %and67 = and i32 %and59, %and66
  %18 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 60), align 1
  %conv68 = zext i8 %18 to i32
  %cmp69 = icmp eq i32 %conv68, 0
  %conv70 = zext i1 %cmp69 to i32
  %19 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 60), align 1
  %conv71 = zext i8 %19 to i32
  %cmp72 = icmp eq i32 %conv71, 1
  %conv73 = zext i1 %cmp72 to i32
  %or74 = or i32 %conv70, %conv73
  %and75 = and i32 %and67, %or74
  %20 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 61), align 2
  %conv76 = zext i8 %20 to i32
  %cmp77 = icmp eq i32 %conv76, 0
  %conv78 = zext i1 %cmp77 to i32
  %21 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 61), align 2
  %conv79 = zext i8 %21 to i32
  %cmp80 = icmp eq i32 %conv79, 1
  %conv81 = zext i1 %cmp80 to i32
  %or82 = or i32 %conv78, %conv81
  %and83 = and i32 %and75, %or82
  %22 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 82), align 1
  %conv84 = zext i8 %22 to i32
  %cmp85 = icmp eq i32 %conv84, 0
  %conv86 = zext i1 %cmp85 to i32
  %23 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 82), align 1
  %conv87 = zext i8 %23 to i32
  %cmp88 = icmp eq i32 %conv87, 1
  %conv89 = zext i1 %cmp88 to i32
  %or90 = or i32 %conv86, %conv89
  %and91 = and i32 %and83, %or90
  %24 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 79), align 4
  %conv92 = zext i8 %24 to i32
  %cmp93 = icmp eq i32 %conv92, 0
  %conv94 = zext i1 %cmp93 to i32
  %25 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 79), align 4
  %conv95 = zext i8 %25 to i32
  %cmp96 = icmp eq i32 %conv95, 1
  %conv97 = zext i1 %cmp96 to i32
  %or98 = or i32 %conv94, %conv97
  %and99 = and i32 %and91, %or98
  %26 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 76), align 1
  %conv100 = zext i8 %26 to i32
  %cmp101 = icmp eq i32 %conv100, 0
  %conv102 = zext i1 %cmp101 to i32
  %27 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 76), align 1
  %conv103 = zext i8 %27 to i32
  %cmp104 = icmp eq i32 %conv103, 1
  %conv105 = zext i1 %cmp104 to i32
  %or106 = or i32 %conv102, %conv105
  %and107 = and i32 %and99, %or106
  %28 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 86), align 1
  %conv108 = zext i8 %28 to i32
  %cmp109 = icmp eq i32 %conv108, 0
  %conv110 = zext i1 %cmp109 to i32
  %29 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 86), align 1
  %conv111 = zext i8 %29 to i32
  %cmp112 = icmp eq i32 %conv111, 1
  %conv113 = zext i1 %cmp112 to i32
  %or114 = or i32 %conv110, %conv113
  %and115 = and i32 %and107, %or114
  %30 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 85), align 2
  %conv116 = zext i8 %30 to i32
  %cmp117 = icmp eq i32 %conv116, 0
  %conv118 = zext i1 %cmp117 to i32
  %31 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 85), align 2
  %conv119 = zext i8 %31 to i32
  %cmp120 = icmp eq i32 %conv119, 1
  %conv121 = zext i1 %cmp120 to i32
  %or122 = or i32 %conv118, %conv121
  %and123 = and i32 %and115, %or122
  %32 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 13, i32 1), align 2
  %conv124 = zext i8 %32 to i32
  %cmp125 = icmp eq i32 %conv124, 0
  %conv126 = zext i1 %cmp125 to i32
  %33 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 13, i32 1), align 2
  %conv127 = zext i8 %33 to i32
  %cmp128 = icmp eq i32 %conv127, 1
  %conv129 = zext i1 %cmp128 to i32
  %or130 = or i32 %conv126, %conv129
  %and131 = and i32 %and123, %or130
  %34 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 1, i32 1), align 2
  %conv132 = zext i8 %34 to i32
  %cmp133 = icmp eq i32 %conv132, 0
  %conv134 = zext i1 %cmp133 to i32
  %35 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 1, i32 1), align 2
  %conv135 = zext i8 %35 to i32
  %cmp136 = icmp eq i32 %conv135, 1
  %conv137 = zext i1 %cmp136 to i32
  %or138 = or i32 %conv134, %conv137
  %and139 = and i32 %and131, %or138
  %36 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 6, i32 1), align 2
  %conv140 = zext i8 %36 to i32
  %cmp141 = icmp eq i32 %conv140, 0
  %conv142 = zext i1 %cmp141 to i32
  %37 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 6, i32 1), align 2
  %conv143 = zext i8 %37 to i32
  %cmp144 = icmp eq i32 %conv143, 1
  %conv145 = zext i1 %cmp144 to i32
  %or146 = or i32 %conv142, %conv145
  %and147 = and i32 %and139, %or146
  %38 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 10, i32 1), align 2
  %conv148 = zext i8 %38 to i32
  %cmp149 = icmp eq i32 %conv148, 0
  %conv150 = zext i1 %cmp149 to i32
  %39 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 10, i32 1), align 2
  %conv151 = zext i8 %39 to i32
  %cmp152 = icmp eq i32 %conv151, 1
  %conv153 = zext i1 %cmp152 to i32
  %or154 = or i32 %conv150, %conv153
  %and155 = and i32 %and147, %or154
  %40 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 7, i32 1), align 2
  %conv156 = zext i8 %40 to i32
  %cmp157 = icmp eq i32 %conv156, 0
  %conv158 = zext i1 %cmp157 to i32
  %41 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 7, i32 1), align 2
  %conv159 = zext i8 %41 to i32
  %cmp160 = icmp eq i32 %conv159, 1
  %conv161 = zext i1 %cmp160 to i32
  %or162 = or i32 %conv158, %conv161
  %and163 = and i32 %and155, %or162
  %42 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 0, i32 1), align 8
  %conv164 = zext i8 %42 to i32
  %cmp165 = icmp eq i32 %conv164, 0
  %conv166 = zext i1 %cmp165 to i32
  %43 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 0, i32 1), align 8
  %conv167 = zext i8 %43 to i32
  %cmp168 = icmp eq i32 %conv167, 1
  %conv169 = zext i1 %cmp168 to i32
  %or170 = or i32 %conv166, %conv169
  %and171 = and i32 %and163, %or170
  %44 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 5, i32 1), align 2
  %conv172 = zext i8 %44 to i32
  %cmp173 = icmp eq i32 %conv172, 0
  %conv174 = zext i1 %cmp173 to i32
  %45 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 5, i32 1), align 2
  %conv175 = zext i8 %45 to i32
  %cmp176 = icmp eq i32 %conv175, 1
  %conv177 = zext i1 %cmp176 to i32
  %or178 = or i32 %conv174, %conv177
  %and179 = and i32 %and171, %or178
  %46 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 9, i32 1), align 2
  %conv180 = zext i8 %46 to i32
  %cmp181 = icmp eq i32 %conv180, 0
  %conv182 = zext i1 %cmp181 to i32
  %47 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 9, i32 1), align 2
  %conv183 = zext i8 %47 to i32
  %cmp184 = icmp eq i32 %conv183, 1
  %conv185 = zext i1 %cmp184 to i32
  %or186 = or i32 %conv182, %conv185
  %and187 = and i32 %and179, %or186
  %48 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 8, i32 1), align 2
  %conv188 = zext i8 %48 to i32
  %cmp189 = icmp eq i32 %conv188, 0
  %conv190 = zext i1 %cmp189 to i32
  %49 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 8, i32 1), align 2
  %conv191 = zext i8 %49 to i32
  %cmp192 = icmp eq i32 %conv191, 1
  %conv193 = zext i1 %cmp192 to i32
  %or194 = or i32 %conv190, %conv193
  %and195 = and i32 %and187, %or194
  %50 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 2, i32 1), align 8
  %conv196 = zext i8 %50 to i32
  %cmp197 = icmp eq i32 %conv196, 0
  %conv198 = zext i1 %cmp197 to i32
  %51 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 2, i32 1), align 8
  %conv199 = zext i8 %51 to i32
  %cmp200 = icmp eq i32 %conv199, 1
  %conv201 = zext i1 %cmp200 to i32
  %or202 = or i32 %conv198, %conv201
  %and203 = and i32 %and195, %or202
  %52 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 59), align 8
  %conv204 = zext i8 %52 to i32
  %cmp205 = icmp eq i32 %conv204, 0
  %conv206 = zext i1 %cmp205 to i32
  %53 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 59), align 8
  %conv207 = zext i8 %53 to i32
  %cmp208 = icmp eq i32 %conv207, 1
  %conv209 = zext i1 %cmp208 to i32
  %or210 = or i32 %conv206, %conv209
  %and211 = and i32 %and203, %or210
  %54 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 57), align 2
  %conv212 = zext i8 %54 to i32
  %cmp213 = icmp eq i32 %conv212, 0
  %conv214 = zext i1 %cmp213 to i32
  %55 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 57), align 2
  %conv215 = zext i8 %55 to i32
  %cmp216 = icmp eq i32 %conv215, 1
  %conv217 = zext i1 %cmp216 to i32
  %or218 = or i32 %conv214, %conv217
  %and219 = and i32 %and211, %or218
  %56 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 62), align 1
  %conv220 = zext i8 %56 to i32
  %cmp221 = icmp eq i32 %conv220, 0
  %conv222 = zext i1 %cmp221 to i32
  %57 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 62), align 1
  %conv223 = zext i8 %57 to i32
  %cmp224 = icmp eq i32 %conv223, 1
  %conv225 = zext i1 %cmp224 to i32
  %or226 = or i32 %conv222, %conv225
  %and227 = and i32 %and219, %or226
  %58 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 67), align 8
  %conv228 = zext i8 %58 to i32
  %cmp229 = icmp eq i32 %conv228, 0
  %conv230 = zext i1 %cmp229 to i32
  %59 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 67), align 8
  %conv231 = zext i8 %59 to i32
  %cmp232 = icmp eq i32 %conv231, 1
  %conv233 = zext i1 %cmp232 to i32
  %or234 = or i32 %conv230, %conv233
  %and235 = and i32 %and227, %or234
  %60 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 63), align 4
  %conv236 = zext i8 %60 to i32
  %cmp237 = icmp eq i32 %conv236, 0
  %conv238 = zext i1 %cmp237 to i32
  %61 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 63), align 4
  %conv239 = zext i8 %61 to i32
  %cmp240 = icmp eq i32 %conv239, 1
  %conv241 = zext i1 %cmp240 to i32
  %or242 = or i32 %conv238, %conv241
  %and243 = and i32 %and235, %or242
  %62 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 64), align 1
  %conv244 = zext i8 %62 to i32
  %cmp245 = icmp eq i32 %conv244, 0
  %conv246 = zext i1 %cmp245 to i32
  %63 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 64), align 1
  %conv247 = zext i8 %63 to i32
  %cmp248 = icmp eq i32 %conv247, 1
  %conv249 = zext i1 %cmp248 to i32
  %or250 = or i32 %conv246, %conv249
  %and251 = and i32 %and243, %or250
  %64 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 58), align 1
  %conv252 = zext i8 %64 to i32
  %cmp253 = icmp eq i32 %conv252, 0
  %conv254 = zext i1 %cmp253 to i32
  %65 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 58), align 1
  %conv255 = zext i8 %65 to i32
  %cmp256 = icmp eq i32 %conv255, 1
  %conv257 = zext i1 %cmp256 to i32
  %or258 = or i32 %conv254, %conv257
  %and259 = and i32 %and251, %or258
  %66 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 56), align 1
  %conv260 = zext i8 %66 to i32
  %cmp261 = icmp eq i32 %conv260, 0
  %conv262 = zext i1 %cmp261 to i32
  %67 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 56), align 1
  %conv263 = zext i8 %67 to i32
  %cmp264 = icmp eq i32 %conv263, 1
  %conv265 = zext i1 %cmp264 to i32
  %or266 = or i32 %conv262, %conv265
  %and267 = and i32 %and259, %or266
  %68 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 68), align 1
  %conv268 = zext i8 %68 to i32
  %cmp269 = icmp eq i32 %conv268, 0
  %conv270 = zext i1 %cmp269 to i32
  %69 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 68), align 1
  %conv271 = zext i8 %69 to i32
  %cmp272 = icmp eq i32 %conv271, 1
  %conv273 = zext i1 %cmp272 to i32
  %or274 = or i32 %conv270, %conv273
  %and275 = and i32 %and267, %or274
  %70 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 71), align 4
  %conv276 = zext i8 %70 to i32
  %cmp277 = icmp eq i32 %conv276, 0
  %conv278 = zext i1 %cmp277 to i32
  %71 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 71), align 4
  %conv279 = zext i8 %71 to i32
  %cmp280 = icmp eq i32 %conv279, 1
  %conv281 = zext i1 %cmp280 to i32
  %or282 = or i32 %conv278, %conv281
  %and283 = and i32 %and275, %or282
  %72 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 73), align 2
  %conv284 = zext i8 %72 to i32
  %cmp285 = icmp eq i32 %conv284, 0
  %conv286 = zext i1 %cmp285 to i32
  %73 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 73), align 2
  %conv287 = zext i8 %73 to i32
  %cmp288 = icmp eq i32 %conv287, 1
  %conv289 = zext i1 %cmp288 to i32
  %or290 = or i32 %conv286, %conv289
  %and291 = and i32 %and283, %or290
  %74 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 72), align 1
  %conv292 = zext i8 %74 to i32
  %cmp293 = icmp eq i32 %conv292, 0
  %conv294 = zext i1 %cmp293 to i32
  %75 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 72), align 1
  %conv295 = zext i8 %75 to i32
  %cmp296 = icmp eq i32 %conv295, 1
  %conv297 = zext i1 %cmp296 to i32
  %or298 = or i32 %conv294, %conv297
  %and299 = and i32 %and291, %or298
  %76 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 65), align 2
  %conv300 = zext i8 %76 to i32
  %cmp301 = icmp eq i32 %conv300, 0
  %conv302 = zext i1 %cmp301 to i32
  %77 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 65), align 2
  %conv303 = zext i8 %77 to i32
  %cmp304 = icmp eq i32 %conv303, 1
  %conv305 = zext i1 %cmp304 to i32
  %or306 = or i32 %conv302, %conv305
  %and307 = and i32 %and299, %or306
  %78 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 53), align 2
  %conv308 = zext i8 %78 to i32
  %cmp309 = icmp eq i32 %conv308, 0
  %conv310 = zext i1 %cmp309 to i32
  %79 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 53), align 2
  %conv311 = zext i8 %79 to i32
  %cmp312 = icmp eq i32 %conv311, 1
  %conv313 = zext i1 %cmp312 to i32
  %or314 = or i32 %conv310, %conv313
  %and315 = and i32 %and307, %or314
  %80 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 54), align 1
  %conv316 = zext i8 %80 to i32
  %cmp317 = icmp eq i32 %conv316, 0
  %conv318 = zext i1 %cmp317 to i32
  %81 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 54), align 1
  %conv319 = zext i8 %81 to i32
  %cmp320 = icmp eq i32 %conv319, 1
  %conv321 = zext i1 %cmp320 to i32
  %or322 = or i32 %conv318, %conv321
  %and323 = and i32 %and315, %or322
  %82 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 55), align 4
  %conv324 = zext i8 %82 to i32
  %cmp325 = icmp eq i32 %conv324, 0
  %conv326 = zext i1 %cmp325 to i32
  %83 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 55), align 4
  %conv327 = zext i8 %83 to i32
  %cmp328 = icmp eq i32 %conv327, 1
  %conv329 = zext i1 %cmp328 to i32
  %or330 = or i32 %conv326, %conv329
  %and331 = and i32 %and323, %or330
  %84 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 78), align 1
  %conv332 = zext i8 %84 to i32
  %cmp333 = icmp eq i32 %conv332, 0
  %conv334 = zext i1 %cmp333 to i32
  %85 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 78), align 1
  %conv335 = zext i8 %85 to i32
  %cmp336 = icmp eq i32 %conv335, 1
  %conv337 = zext i1 %cmp336 to i32
  %or338 = or i32 %conv334, %conv337
  %and339 = and i32 %and331, %or338
  %86 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 80), align 1
  %conv340 = zext i8 %86 to i32
  %cmp341 = icmp eq i32 %conv340, 0
  %conv342 = zext i1 %cmp341 to i32
  %87 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 80), align 1
  %conv343 = zext i8 %87 to i32
  %cmp344 = icmp eq i32 %conv343, 1
  %conv345 = zext i1 %cmp344 to i32
  %or346 = or i32 %conv342, %conv345
  %and347 = and i32 %and339, %or346
  %88 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 74), align 1
  %conv348 = zext i8 %88 to i32
  %cmp349 = icmp eq i32 %conv348, 0
  %conv350 = zext i1 %cmp349 to i32
  %89 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 74), align 1
  %conv351 = zext i8 %89 to i32
  %cmp352 = icmp eq i32 %conv351, 1
  %conv353 = zext i1 %cmp352 to i32
  %or354 = or i32 %conv350, %conv353
  %and355 = and i32 %and347, %or354
  %90 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 75), align 8
  %conv356 = zext i8 %90 to i32
  %cmp357 = icmp eq i32 %conv356, 0
  %conv358 = zext i1 %cmp357 to i32
  %91 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 75), align 8
  %conv359 = zext i8 %91 to i32
  %cmp360 = icmp eq i32 %conv359, 1
  %conv361 = zext i1 %cmp360 to i32
  %or362 = or i32 %conv358, %conv361
  %and363 = and i32 %and355, %or362
  %92 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 77), align 2
  %conv364 = zext i8 %92 to i32
  %cmp365 = icmp eq i32 %conv364, 0
  %conv366 = zext i1 %cmp365 to i32
  %93 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 77), align 2
  %conv367 = zext i8 %93 to i32
  %cmp368 = icmp eq i32 %conv367, 1
  %conv369 = zext i1 %cmp368 to i32
  %or370 = or i32 %conv366, %conv369
  %and371 = and i32 %and363, %or370
  %94 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 81), align 2
  %conv372 = zext i8 %94 to i32
  %cmp373 = icmp eq i32 %conv372, 0
  %conv374 = zext i1 %cmp373 to i32
  %95 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 81), align 2
  %conv375 = zext i8 %95 to i32
  %cmp376 = icmp eq i32 %conv375, 1
  %conv377 = zext i1 %cmp376 to i32
  %or378 = or i32 %conv374, %conv377
  %and379 = and i32 %and371, %or378
  %96 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 69), align 2
  %conv380 = zext i8 %96 to i32
  %cmp381 = icmp eq i32 %conv380, 0
  %conv382 = zext i1 %cmp381 to i32
  %97 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 69), align 2
  %conv383 = zext i8 %97 to i32
  %cmp384 = icmp eq i32 %conv383, 1
  %conv385 = zext i1 %cmp384 to i32
  %or386 = or i32 %conv382, %conv385
  %and387 = and i32 %and379, %or386
  %98 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 66), align 1
  %conv388 = zext i8 %98 to i32
  %cmp389 = icmp eq i32 %conv388, 0
  %conv390 = zext i1 %cmp389 to i32
  %99 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 66), align 1
  %conv391 = zext i8 %99 to i32
  %cmp392 = icmp eq i32 %conv391, 1
  %conv393 = zext i1 %cmp392 to i32
  %or394 = or i32 %conv390, %conv393
  %and395 = and i32 %and387, %or394
  %100 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 3, i32 0), align 8
  %conv396 = zext i8 %100 to i32
  %cmp397 = icmp eq i32 %conv396, 0
  %conv398 = zext i1 %cmp397 to i32
  %101 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 3, i32 0), align 8
  %conv399 = zext i8 %101 to i32
  %cmp400 = icmp eq i32 %conv399, 1
  %conv401 = zext i1 %cmp400 to i32
  %or402 = or i32 %conv398, %conv401
  %and403 = and i32 %and395, %or402
  %102 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 3, i32 1), align 1
  %conv404 = zext i8 %102 to i32
  %cmp405 = icmp eq i32 %conv404, 0
  %conv406 = zext i1 %cmp405 to i32
  %103 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 3, i32 1), align 1
  %conv407 = zext i8 %103 to i32
  %cmp408 = icmp eq i32 %conv407, 1
  %conv409 = zext i1 %cmp408 to i32
  %or410 = or i32 %conv406, %conv409
  %and411 = and i32 %and403, %or410
  %104 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 4, i32 0), align 2
  %conv412 = zext i8 %104 to i32
  %cmp413 = icmp eq i32 %conv412, 0
  %conv414 = zext i1 %cmp413 to i32
  %105 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 4, i32 0), align 2
  %conv415 = zext i8 %105 to i32
  %cmp416 = icmp eq i32 %conv415, 1
  %conv417 = zext i1 %cmp416 to i32
  %or418 = or i32 %conv414, %conv417
  %and419 = and i32 %and411, %or418
  %106 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 4, i32 1), align 1
  %conv420 = zext i8 %106 to i32
  %cmp421 = icmp eq i32 %conv420, 0
  %conv422 = zext i1 %cmp421 to i32
  %107 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 4, i32 1), align 1
  %conv423 = zext i8 %107 to i32
  %cmp424 = icmp eq i32 %conv423, 1
  %conv425 = zext i1 %cmp424 to i32
  %or426 = or i32 %conv422, %conv425
  %and427 = and i32 %and419, %or426
  %108 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 83), align 8
  %conv428 = zext i8 %108 to i32
  %cmp429 = icmp eq i32 %conv428, 0
  %conv430 = zext i1 %cmp429 to i32
  %109 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 83), align 8
  %conv431 = zext i8 %109 to i32
  %cmp432 = icmp eq i32 %conv431, 1
  %conv433 = zext i1 %cmp432 to i32
  %or434 = or i32 %conv430, %conv433
  %and435 = and i32 %and427, %or434
  %110 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 84), align 1
  %conv436 = zext i8 %110 to i32
  %cmp437 = icmp eq i32 %conv436, 0
  %conv438 = zext i1 %cmp437 to i32
  %111 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 84), align 1
  %conv439 = zext i8 %111 to i32
  %cmp440 = icmp eq i32 %conv439, 1
  %conv441 = zext i1 %cmp440 to i32
  %or442 = or i32 %conv438, %conv441
  %and443 = and i32 %and435, %or442
  %112 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 70), align 1
  %conv444 = zext i8 %112 to i32
  %cmp445 = icmp eq i32 %conv444, 0
  %conv446 = zext i1 %cmp445 to i32
  %113 = load i8, i8* getelementptr inbounds (%struct.tag_DW_Acchg__T, %struct.tag_DW_Acchg__T* @g_BMS_Acchg_DW, i32 0, i32 70), align 1
  %conv447 = zext i8 %113 to i32
  %cmp448 = icmp eq i32 %conv447, 1
  %conv449 = zext i1 %cmp448 to i32
  %or450 = or i32 %conv446, %conv449
  %and451 = and i32 %and443, %or450
  %conv452 = sext i32 %and451 to i64
  call void @klee_assume(i64 %conv452)
  call void @klee_make_symbolic(i8* bitcast (i64* @Rte_SWC_APP_ChgCurLimit_ChgiLimit_iLimit_iLimit to i8*), i64 8, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.133, i64 0, i64 0))
  call void @klee_make_symbolic(i8* @Rte_SWC_APP_FunctionSafety_FunSafety_FunSafety_DfpTempHighSeriousSoft, i64 1, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.134, i64 0, i64 0))
  call void @klee_make_symbolic(i8* @Rte_SWC_APP_FunctionSafety_FunSafety_FunSafety_DfpTempLowSoft, i64 1, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.135, i64 0, i64 0))
  call void @klee_make_symbolic(i8* @Rte_SWC_APP_FunctionSafety_FunSafety_FunSafety_stBcuOperMod, i64 1, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.136, i64 0, i64 0))
  call void @klee_make_symbolic(i8* bitcast (i16* @Rte_SWC_APP_SOC_PacSOC_CurSOC_ratSOC to i8*), i64 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.137, i64 0, i64 0))
  call void @klee_make_symbolic(i8* bitcast (i16* @Rte_SWC_APP_SignalProcess_SigPro_CellVol_vMaxCell to i8*), i64 2, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.138, i64 0, i64 0))
  call void @klee_make_symbolic(i8* bitcast (i16* @Rte_SWC_APP_SignalProcess_SigPro_CellVol_vTotal to i8*), i64 2, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.139, i64 0, i64 0))
  call void @klee_make_symbolic(i8* bitcast (i16* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_dtyCP to i8*), i64 2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.140, i64 0, i64 0))
  call void @klee_make_symbolic(i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_flagOBC1Rx, i64 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.141, i64 0, i64 0))
  call void @klee_make_symbolic(i8* bitcast (i64* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_iBattery to i8*), i64 8, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.142, i64 0, i64 0))
  call void @klee_make_symbolic(i8* bitcast (i16* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_iObcMaxChrgOutpIAvl to i8*), i64 2, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.143, i64 0, i64 0))
  call void @klee_make_symbolic(i8* bitcast (i16* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_powExtHvPwrCnsAct to i8*), i64 2, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.144, i64 0, i64 0))
  call void @klee_make_symbolic(i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_stBcuChrgMod, i64 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.145, i64 0, i64 0))
  call void @klee_make_symbolic(i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_stCCRaw, i64 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.146, i64 0, i64 0))
  call void @klee_make_symbolic(i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_stCPSts, i64 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.147, i64 0, i64 0))
  call void @klee_make_symbolic(i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_stChrgAllwdFlg, i64 1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.148, i64 0, i64 0))
  call void @klee_make_symbolic(i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_stChrgIReqLimFac, i64 1, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.149, i64 0, i64 0))
  call void @klee_make_symbolic(i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_stChrgUnlckILimReq, i64 1, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.150, i64 0, i64 0))
  call void @klee_make_symbolic(i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_stObcS2Sts, i64 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.151, i64 0, i64 0))
  call void @klee_make_symbolic(i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_stPwrReq, i64 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.152, i64 0, i64 0))
  call void @klee_make_symbolic(i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_stWorkOBC, i64 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.153, i64 0, i64 0))
  call void @klee_make_symbolic(i8* bitcast (i16* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_vChgACInput to i8*), i64 2, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.154, i64 0, i64 0))
  call void @klee_make_symbolic(i8* bitcast (i16* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_vObcMaxChrgOutpUAvl to i8*), i64 2, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.155, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* getelementptr inbounds (%struct.FaultCode, %struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode, i32 0, i32 0), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.FaultCode, %struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode, i32 0, i32 8) to i64), i64 ptrtoint (%struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode to i64)), i64 1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.156, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* getelementptr inbounds (%struct.FaultCode, %struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode, i32 0, i32 0), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.FaultCode, %struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode, i32 0, i32 9) to i64), i64 ptrtoint (%struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode to i64)), i64 1, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.157, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* getelementptr inbounds (%struct.FaultCode, %struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode, i32 0, i32 0), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.FaultCode, %struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode, i32 0, i32 6) to i64), i64 ptrtoint (%struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode to i64)), i64 1, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.158, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* getelementptr inbounds (%struct.FaultCode, %struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode, i32 0, i32 0), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.FaultCode, %struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode, i32 0, i32 3) to i64), i64 ptrtoint (%struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode to i64)), i64 1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.159, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* getelementptr inbounds (%struct.FaultCode, %struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode, i32 0, i32 0), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.FaultCode, %struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode, i32 0, i32 7) to i64), i64 ptrtoint (%struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode to i64)), i64 1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.160, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* getelementptr inbounds (%struct.FaultCode, %struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode, i32 0, i32 0), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.FaultCode, %struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode, i32 0, i32 4) to i64), i64 ptrtoint (%struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode to i64)), i64 1, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.161, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* getelementptr inbounds (%struct.FaultCode, %struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode, i32 0, i32 0), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.FaultCode, %struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode, i32 0, i32 5) to i64), i64 ptrtoint (%struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode to i64)), i64 1, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.162, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* getelementptr inbounds (%struct.FaultCode, %struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode, i32 0, i32 0), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.FaultCode, %struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode, i32 0, i32 2) to i64), i64 ptrtoint (%struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode to i64)), i64 1, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.163, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* getelementptr inbounds (%struct.FaultCode, %struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode, i32 0, i32 0), i64 sub (i64 ptrtoint (i8* getelementptr inbounds (%struct.FaultCode, %struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode, i32 0, i32 1) to i64), i64 ptrtoint (%struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode to i64)), i64 1, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.164, i64 0, i64 0))
  call void @klee_make_symbolic_range(i8* getelementptr inbounds (%struct.FaultCode, %struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode, i32 0, i32 0), i64 sub (i64 ptrtoint (%struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode to i64), i64 ptrtoint (%struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode to i64)), i64 1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.165, i64 0, i64 0))
  %114 = load i64, i64* @Rte_SWC_APP_ChgCurLimit_ChgiLimit_iLimit_iLimit, align 8
  %cmp453 = icmp uge i64 %114, 0
  %conv454 = zext i1 %cmp453 to i32
  %115 = load i64, i64* @Rte_SWC_APP_ChgCurLimit_ChgiLimit_iLimit_iLimit, align 8
  %cmp455 = icmp ule i64 %115, 390000
  %conv456 = zext i1 %cmp455 to i32
  %and457 = and i32 %conv454, %conv456
  %116 = load i8, i8* @Rte_SWC_APP_FunctionSafety_FunSafety_FunSafety_DfpTempHighSeriousSoft, align 1
  %conv458 = zext i8 %116 to i32
  %cmp459 = icmp eq i32 %conv458, 0
  %conv460 = zext i1 %cmp459 to i32
  %117 = load i8, i8* @Rte_SWC_APP_FunctionSafety_FunSafety_FunSafety_DfpTempHighSeriousSoft, align 1
  %conv461 = zext i8 %117 to i32
  %cmp462 = icmp eq i32 %conv461, 1
  %conv463 = zext i1 %cmp462 to i32
  %or464 = or i32 %conv460, %conv463
  %and465 = and i32 %and457, %or464
  %118 = load i8, i8* @Rte_SWC_APP_FunctionSafety_FunSafety_FunSafety_DfpTempLowSoft, align 1
  %conv466 = zext i8 %118 to i32
  %cmp467 = icmp eq i32 %conv466, 0
  %conv468 = zext i1 %cmp467 to i32
  %119 = load i8, i8* @Rte_SWC_APP_FunctionSafety_FunSafety_FunSafety_DfpTempLowSoft, align 1
  %conv469 = zext i8 %119 to i32
  %cmp470 = icmp eq i32 %conv469, 1
  %conv471 = zext i1 %cmp470 to i32
  %or472 = or i32 %conv468, %conv471
  %and473 = and i32 %and465, %or472
  %120 = load i8, i8* @Rte_SWC_APP_FunctionSafety_FunSafety_FunSafety_stBcuOperMod, align 1
  %conv474 = zext i8 %120 to i32
  %cmp475 = icmp sge i32 %conv474, 0
  %conv476 = zext i1 %cmp475 to i32
  %121 = load i8, i8* @Rte_SWC_APP_FunctionSafety_FunSafety_FunSafety_stBcuOperMod, align 1
  %conv477 = zext i8 %121 to i32
  %cmp478 = icmp sle i32 %conv477, 7
  %conv479 = zext i1 %cmp478 to i32
  %and480 = and i32 %conv476, %conv479
  %and481 = and i32 %and473, %and480
  %122 = load i16, i16* @Rte_SWC_APP_SOC_PacSOC_CurSOC_ratSOC, align 2
  %conv482 = zext i16 %122 to i32
  %cmp483 = icmp sge i32 %conv482, 0
  %conv484 = zext i1 %cmp483 to i32
  %123 = load i16, i16* @Rte_SWC_APP_SOC_PacSOC_CurSOC_ratSOC, align 2
  %conv485 = zext i16 %123 to i32
  %cmp486 = icmp sle i32 %conv485, 1000
  %conv487 = zext i1 %cmp486 to i32
  %and488 = and i32 %conv484, %conv487
  %and489 = and i32 %and481, %and488
  %124 = load i16, i16* @Rte_SWC_APP_SignalProcess_SigPro_CellVol_vMaxCell, align 2
  %conv490 = zext i16 %124 to i32
  %cmp491 = icmp sge i32 %conv490, 0
  %conv492 = zext i1 %cmp491 to i32
  %125 = load i16, i16* @Rte_SWC_APP_SignalProcess_SigPro_CellVol_vMaxCell, align 2
  %conv493 = zext i16 %125 to i32
  %cmp494 = icmp sle i32 %conv493, 8191
  %conv495 = zext i1 %cmp494 to i32
  %and496 = and i32 %conv492, %conv495
  %and497 = and i32 %and489, %and496
  %126 = load i16, i16* @Rte_SWC_APP_SignalProcess_SigPro_CellVol_vTotal, align 2
  %conv498 = zext i16 %126 to i32
  %cmp499 = icmp sge i32 %conv498, 0
  %conv500 = zext i1 %cmp499 to i32
  %127 = load i16, i16* @Rte_SWC_APP_SignalProcess_SigPro_CellVol_vTotal, align 2
  %conv501 = zext i16 %127 to i32
  %cmp502 = icmp sle i32 %conv501, 8000
  %conv503 = zext i1 %cmp502 to i32
  %and504 = and i32 %conv500, %conv503
  %and505 = and i32 %and497, %and504
  %128 = load i16, i16* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_dtyCP, align 2
  %conv506 = zext i16 %128 to i32
  %cmp507 = icmp sge i32 %conv506, 0
  %conv508 = zext i1 %cmp507 to i32
  %129 = load i16, i16* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_dtyCP, align 2
  %conv509 = zext i16 %129 to i32
  %cmp510 = icmp sle i32 %conv509, 1000
  %conv511 = zext i1 %cmp510 to i32
  %and512 = and i32 %conv508, %conv511
  %and513 = and i32 %and505, %and512
  %130 = load i8, i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_flagOBC1Rx, align 1
  %conv514 = zext i8 %130 to i32
  %cmp515 = icmp eq i32 %conv514, 0
  %conv516 = zext i1 %cmp515 to i32
  %131 = load i8, i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_flagOBC1Rx, align 1
  %conv517 = zext i8 %131 to i32
  %cmp518 = icmp eq i32 %conv517, 1
  %conv519 = zext i1 %cmp518 to i32
  %or520 = or i32 %conv516, %conv519
  %and521 = and i32 %and513, %or520
  %132 = load i64, i64* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_iBattery, align 8
  %cmp522 = icmp sge i64 %132, -1500000
  %conv523 = zext i1 %cmp522 to i32
  %133 = load i64, i64* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_iBattery, align 8
  %cmp524 = icmp sle i64 %133, 1500000
  %conv525 = zext i1 %cmp524 to i32
  %and526 = and i32 %conv523, %conv525
  %and527 = and i32 %and521, %and526
  %134 = load i16, i16* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_iObcMaxChrgOutpIAvl, align 2
  %conv528 = zext i16 %134 to i32
  %cmp529 = icmp sge i32 %conv528, 0
  %conv530 = zext i1 %cmp529 to i32
  %135 = load i16, i16* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_iObcMaxChrgOutpIAvl, align 2
  %conv531 = zext i16 %135 to i32
  %cmp532 = icmp sle i32 %conv531, 1000
  %conv533 = zext i1 %cmp532 to i32
  %and534 = and i32 %conv530, %conv533
  %and535 = and i32 %and527, %and534
  %136 = load i16, i16* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_powExtHvPwrCnsAct, align 2
  %conv536 = zext i16 %136 to i32
  %cmp537 = icmp sge i32 %conv536, 0
  %conv538 = zext i1 %cmp537 to i32
  %137 = load i16, i16* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_powExtHvPwrCnsAct, align 2
  %conv539 = zext i16 %137 to i32
  %cmp540 = icmp sle i32 %conv539, 255
  %conv541 = zext i1 %cmp540 to i32
  %and542 = and i32 %conv538, %conv541
  %and543 = and i32 %and535, %and542
  %138 = load i8, i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_stBcuChrgMod, align 1
  %conv544 = zext i8 %138 to i32
  %cmp545 = icmp sge i32 %conv544, 0
  %conv546 = zext i1 %cmp545 to i32
  %139 = load i8, i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_stBcuChrgMod, align 1
  %conv547 = zext i8 %139 to i32
  %cmp548 = icmp sle i32 %conv547, 10
  %conv549 = zext i1 %cmp548 to i32
  %and550 = and i32 %conv546, %conv549
  %and551 = and i32 %and543, %and550
  %140 = load i8, i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_stCCRaw, align 1
  %conv552 = zext i8 %140 to i32
  %cmp553 = icmp sge i32 %conv552, 0
  %conv554 = zext i1 %cmp553 to i32
  %141 = load i8, i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_stCCRaw, align 1
  %conv555 = zext i8 %141 to i32
  %cmp556 = icmp sle i32 %conv555, 12
  %conv557 = zext i1 %cmp556 to i32
  %and558 = and i32 %conv554, %conv557
  %and559 = and i32 %and551, %and558
  %142 = load i8, i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_stCPSts, align 1
  %conv560 = zext i8 %142 to i32
  %cmp561 = icmp eq i32 %conv560, 0
  %conv562 = zext i1 %cmp561 to i32
  %143 = load i8, i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_stCPSts, align 1
  %conv563 = zext i8 %143 to i32
  %cmp564 = icmp eq i32 %conv563, 1
  %conv565 = zext i1 %cmp564 to i32
  %or566 = or i32 %conv562, %conv565
  %and567 = and i32 %and559, %or566
  %144 = load i8, i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_stChrgAllwdFlg, align 1
  %conv568 = zext i8 %144 to i32
  %cmp569 = icmp eq i32 %conv568, 0
  %conv570 = zext i1 %cmp569 to i32
  %145 = load i8, i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_stChrgAllwdFlg, align 1
  %conv571 = zext i8 %145 to i32
  %cmp572 = icmp eq i32 %conv571, 1
  %conv573 = zext i1 %cmp572 to i32
  %or574 = or i32 %conv570, %conv573
  %and575 = and i32 %and567, %or574
  %146 = load i8, i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_stChrgIReqLimFac, align 1
  %conv576 = zext i8 %146 to i32
  %cmp577 = icmp sge i32 %conv576, 0
  %conv578 = zext i1 %cmp577 to i32
  %147 = load i8, i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_stChrgIReqLimFac, align 1
  %conv579 = zext i8 %147 to i32
  %cmp580 = icmp sle i32 %conv579, 3
  %conv581 = zext i1 %cmp580 to i32
  %and582 = and i32 %conv578, %conv581
  %and583 = and i32 %and575, %and582
  %148 = load i8, i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_stChrgUnlckILimReq, align 1
  %conv584 = zext i8 %148 to i32
  %cmp585 = icmp eq i32 %conv584, 0
  %conv586 = zext i1 %cmp585 to i32
  %149 = load i8, i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_stChrgUnlckILimReq, align 1
  %conv587 = zext i8 %149 to i32
  %cmp588 = icmp eq i32 %conv587, 1
  %conv589 = zext i1 %cmp588 to i32
  %or590 = or i32 %conv586, %conv589
  %and591 = and i32 %and583, %or590
  %150 = load i8, i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_stObcS2Sts, align 1
  %conv592 = zext i8 %150 to i32
  %cmp593 = icmp eq i32 %conv592, 0
  %conv594 = zext i1 %cmp593 to i32
  %151 = load i8, i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_stObcS2Sts, align 1
  %conv595 = zext i8 %151 to i32
  %cmp596 = icmp eq i32 %conv595, 1
  %conv597 = zext i1 %cmp596 to i32
  %or598 = or i32 %conv594, %conv597
  %and599 = and i32 %and591, %or598
  %152 = load i8, i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_stPwrReq, align 1
  %conv600 = zext i8 %152 to i32
  %cmp601 = icmp sge i32 %conv600, 0
  %conv602 = zext i1 %cmp601 to i32
  %153 = load i8, i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_stPwrReq, align 1
  %conv603 = zext i8 %153 to i32
  %cmp604 = icmp sle i32 %conv603, 6
  %conv605 = zext i1 %cmp604 to i32
  %and606 = and i32 %conv602, %conv605
  %and607 = and i32 %and599, %and606
  %154 = load i8, i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_stWorkOBC, align 1
  %conv608 = zext i8 %154 to i32
  %cmp609 = icmp sge i32 %conv608, 0
  %conv610 = zext i1 %cmp609 to i32
  %155 = load i8, i8* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_stWorkOBC, align 1
  %conv611 = zext i8 %155 to i32
  %cmp612 = icmp sle i32 %conv611, 6
  %conv613 = zext i1 %cmp612 to i32
  %and614 = and i32 %conv610, %conv613
  %and615 = and i32 %and607, %and614
  %156 = load i16, i16* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_vChgACInput, align 2
  %conv616 = zext i16 %156 to i32
  %cmp617 = icmp sge i32 %conv616, 0
  %conv618 = zext i1 %cmp617 to i32
  %157 = load i16, i16* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_vChgACInput, align 2
  %conv619 = zext i16 %157 to i32
  %cmp620 = icmp sle i32 %conv619, 500
  %conv621 = zext i1 %cmp620 to i32
  %and622 = and i32 %conv618, %conv621
  %and623 = and i32 %and615, %and622
  %158 = load i16, i16* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_vObcMaxChrgOutpUAvl, align 2
  %conv624 = zext i16 %158 to i32
  %cmp625 = icmp sge i32 %conv624, 0
  %conv626 = zext i1 %cmp625 to i32
  %159 = load i16, i16* @Rte_SWC_APP_SignalProcess_SigPro_PubSig_vObcMaxChrgOutpUAvl, align 2
  %conv627 = zext i16 %159 to i32
  %cmp628 = icmp sle i32 %conv627, 10000
  %conv629 = zext i1 %cmp628 to i32
  %and630 = and i32 %conv626, %conv629
  %and631 = and i32 %and623, %and630
  %160 = load i8, i8* getelementptr inbounds (%struct.FaultCode, %struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode, i32 0, i32 8), align 1
  %conv632 = zext i8 %160 to i32
  %cmp633 = icmp eq i32 %conv632, 0
  %conv634 = zext i1 %cmp633 to i32
  %161 = load i8, i8* getelementptr inbounds (%struct.FaultCode, %struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode, i32 0, i32 8), align 1
  %conv635 = zext i8 %161 to i32
  %cmp636 = icmp eq i32 %conv635, 1
  %conv637 = zext i1 %cmp636 to i32
  %or638 = or i32 %conv634, %conv637
  %and639 = and i32 %and631, %or638
  %162 = load i8, i8* getelementptr inbounds (%struct.FaultCode, %struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode, i32 0, i32 9), align 1
  %conv640 = zext i8 %162 to i32
  %cmp641 = icmp eq i32 %conv640, 0
  %conv642 = zext i1 %cmp641 to i32
  %163 = load i8, i8* getelementptr inbounds (%struct.FaultCode, %struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode, i32 0, i32 9), align 1
  %conv643 = zext i8 %163 to i32
  %cmp644 = icmp eq i32 %conv643, 1
  %conv645 = zext i1 %cmp644 to i32
  %or646 = or i32 %conv642, %conv645
  %and647 = and i32 %and639, %or646
  %164 = load i8, i8* getelementptr inbounds (%struct.FaultCode, %struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode, i32 0, i32 6), align 1
  %conv648 = zext i8 %164 to i32
  %cmp649 = icmp eq i32 %conv648, 0
  %conv650 = zext i1 %cmp649 to i32
  %165 = load i8, i8* getelementptr inbounds (%struct.FaultCode, %struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode, i32 0, i32 6), align 1
  %conv651 = zext i8 %165 to i32
  %cmp652 = icmp eq i32 %conv651, 1
  %conv653 = zext i1 %cmp652 to i32
  %or654 = or i32 %conv650, %conv653
  %and655 = and i32 %and647, %or654
  %166 = load i8, i8* getelementptr inbounds (%struct.FaultCode, %struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode, i32 0, i32 3), align 1
  %conv656 = zext i8 %166 to i32
  %cmp657 = icmp eq i32 %conv656, 0
  %conv658 = zext i1 %cmp657 to i32
  %167 = load i8, i8* getelementptr inbounds (%struct.FaultCode, %struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode, i32 0, i32 3), align 1
  %conv659 = zext i8 %167 to i32
  %cmp660 = icmp eq i32 %conv659, 1
  %conv661 = zext i1 %cmp660 to i32
  %or662 = or i32 %conv658, %conv661
  %and663 = and i32 %and655, %or662
  %168 = load i8, i8* getelementptr inbounds (%struct.FaultCode, %struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode, i32 0, i32 7), align 1
  %conv664 = zext i8 %168 to i32
  %cmp665 = icmp eq i32 %conv664, 0
  %conv666 = zext i1 %cmp665 to i32
  %169 = load i8, i8* getelementptr inbounds (%struct.FaultCode, %struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode, i32 0, i32 7), align 1
  %conv667 = zext i8 %169 to i32
  %cmp668 = icmp eq i32 %conv667, 1
  %conv669 = zext i1 %cmp668 to i32
  %or670 = or i32 %conv666, %conv669
  %and671 = and i32 %and663, %or670
  %170 = load i8, i8* getelementptr inbounds (%struct.FaultCode, %struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode, i32 0, i32 4), align 1
  %conv672 = zext i8 %170 to i32
  %cmp673 = icmp eq i32 %conv672, 0
  %conv674 = zext i1 %cmp673 to i32
  %171 = load i8, i8* getelementptr inbounds (%struct.FaultCode, %struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode, i32 0, i32 4), align 1
  %conv675 = zext i8 %171 to i32
  %cmp676 = icmp eq i32 %conv675, 1
  %conv677 = zext i1 %cmp676 to i32
  %or678 = or i32 %conv674, %conv677
  %and679 = and i32 %and671, %or678
  %172 = load i8, i8* getelementptr inbounds (%struct.FaultCode, %struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode, i32 0, i32 5), align 1
  %conv680 = zext i8 %172 to i32
  %cmp681 = icmp eq i32 %conv680, 0
  %conv682 = zext i1 %cmp681 to i32
  %173 = load i8, i8* getelementptr inbounds (%struct.FaultCode, %struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode, i32 0, i32 5), align 1
  %conv683 = zext i8 %173 to i32
  %cmp684 = icmp eq i32 %conv683, 1
  %conv685 = zext i1 %cmp684 to i32
  %or686 = or i32 %conv682, %conv685
  %and687 = and i32 %and679, %or686
  %174 = load i8, i8* getelementptr inbounds (%struct.FaultCode, %struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode, i32 0, i32 2), align 1
  %conv688 = zext i8 %174 to i32
  %cmp689 = icmp eq i32 %conv688, 0
  %conv690 = zext i1 %cmp689 to i32
  %175 = load i8, i8* getelementptr inbounds (%struct.FaultCode, %struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode, i32 0, i32 2), align 1
  %conv691 = zext i8 %175 to i32
  %cmp692 = icmp eq i32 %conv691, 1
  %conv693 = zext i1 %cmp692 to i32
  %or694 = or i32 %conv690, %conv693
  %and695 = and i32 %and687, %or694
  %176 = load i8, i8* getelementptr inbounds (%struct.FaultCode, %struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode, i32 0, i32 1), align 1
  %conv696 = zext i8 %176 to i32
  %cmp697 = icmp eq i32 %conv696, 0
  %conv698 = zext i1 %cmp697 to i32
  %177 = load i8, i8* getelementptr inbounds (%struct.FaultCode, %struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode, i32 0, i32 1), align 1
  %conv699 = zext i8 %177 to i32
  %cmp700 = icmp eq i32 %conv699, 1
  %conv701 = zext i1 %cmp700 to i32
  %or702 = or i32 %conv698, %conv701
  %and703 = and i32 %and695, %or702
  %178 = load i8, i8* getelementptr inbounds (%struct.FaultCode, %struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode, i32 0, i32 0), align 1
  %conv704 = zext i8 %178 to i32
  %cmp705 = icmp eq i32 %conv704, 0
  %conv706 = zext i1 %cmp705 to i32
  %179 = load i8, i8* getelementptr inbounds (%struct.FaultCode, %struct.FaultCode* @__igv__FunSafety_FunSafety_stFaultCode, i32 0, i32 0), align 1
  %conv707 = zext i8 %179 to i32
  %cmp708 = icmp eq i32 %conv707, 1
  %conv709 = zext i1 %cmp708 to i32
  %or710 = or i32 %conv706, %conv709
  %and711 = and i32 %and703, %or710
  %conv712 = sext i32 %and711 to i64
  call void @klee_assume(i64 %conv712)
  call void @Runnable_AcChg()
  %180 = load i8, i8* @Rte_SWC_APP_AcChg_AcChg_SlwChg_dfpOBCCurOver, align 1
  %conv713 = zext i8 %180 to i32
  %cmp714 = icmp eq i32 %conv713, 0
  %conv715 = zext i1 %cmp714 to i32
  %conv716 = trunc i32 %conv715 to i8
  %181 = load i8, i8* @Rte_SWC_APP_AcChg_AcChg_SlwChg_dfpOBCCurOver, align 1
  %conv717 = zext i8 %181 to i32
  %cmp718 = icmp eq i32 %conv717, 1
  %conv719 = zext i1 %cmp718 to i32
  %conv720 = trunc i32 %conv719 to i8
  %call = call i32 @_AUX__trueCount_2(i8 zeroext %conv716, i8 zeroext %conv720)
  store i32 %call, i32* %__sys_TrueCount_2, align 4
  %182 = load i32, i32* %__sys_TrueCount_2, align 4
  %cmp721 = icmp eq i32 %182, 1
  br i1 %cmp721, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  %call723 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.166, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.167, i64 0, i64 0), i32 1743, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0))
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %183 = load i32, i32* %retval, align 4
  ret i32 %183
}

declare dso_local void @klee_assume(i64) #1

; Function Attrs: noreturn
declare dso_local i32 @__assert_fail(...) #3

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
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @klee_div_zero_check(i64) #0 !dbg !49 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !54, metadata !DIExpression()), !dbg !55
  %3 = load i64, i64* %2, align 8, !dbg !56
  %4 = icmp eq i64 %3, 0, !dbg !58
  br i1 %4, label %5, label %6, !dbg !59

5:                                                ; preds = %1
  call void @klee_report_error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.168, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.169, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.170, i64 0, i64 0)) #5, !dbg !60
  unreachable, !dbg !60

6:                                                ; preds = %1
  ret void, !dbg !61
}

; Function Attrs: noreturn
declare dso_local void @klee_report_error(i8*, i32, i8*, i8*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @klee_overshift_check(i64, i64) #0 !dbg !62 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !67, metadata !DIExpression()), !dbg !68
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !69, metadata !DIExpression()), !dbg !70
  %5 = load i64, i64* %4, align 8, !dbg !71
  %6 = load i64, i64* %3, align 8, !dbg !73
  %7 = icmp uge i64 %5, %6, !dbg !74
  br i1 %7, label %8, label %9, !dbg !75

8:                                                ; preds = %2
  call void @klee_report_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.173, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.174, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.175, i64 0, i64 0)) #5, !dbg !76
  unreachable, !dbg !76

9:                                                ; preds = %2
  ret void, !dbg !78
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
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
!8 = distinct !DICompileUnit(language: DW_LANG_C89, file: !9, producer: "clang version 9.0.0-2~ubuntu18.04.2 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !7, nameTableKind: None)
!9 = !DIFile(filename: "/tmp/klee_src/runtime/Intrinsic/klee_div_zero_check.c", directory: "/tmp/klee_build90stp_z3/runtime/Intrinsic")
!10 = distinct !DICompileUnit(language: DW_LANG_C89, file: !11, producer: "clang version 9.0.0-2~ubuntu18.04.2 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !7, nameTableKind: None)
!11 = !DIFile(filename: "/tmp/klee_src/runtime/Intrinsic/klee_overshift_check.c", directory: "/tmp/klee_build90stp_z3/runtime/Intrinsic")
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
!49 = distinct !DISubprogram(name: "klee_div_zero_check", scope: !50, file: !50, line: 12, type: !51, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !7)
!50 = !DIFile(filename: "klee_src/runtime/Intrinsic/klee_div_zero_check.c", directory: "/tmp")
!51 = !DISubroutineType(types: !52)
!52 = !{null, !53}
!53 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!54 = !DILocalVariable(name: "z", arg: 1, scope: !49, file: !50, line: 12, type: !53)
!55 = !DILocation(line: 12, column: 36, scope: !49)
!56 = !DILocation(line: 13, column: 7, scope: !57)
!57 = distinct !DILexicalBlock(scope: !49, file: !50, line: 13, column: 7)
!58 = !DILocation(line: 13, column: 9, scope: !57)
!59 = !DILocation(line: 13, column: 7, scope: !49)
!60 = !DILocation(line: 14, column: 5, scope: !57)
!61 = !DILocation(line: 15, column: 1, scope: !49)
!62 = distinct !DISubprogram(name: "klee_overshift_check", scope: !63, file: !63, line: 20, type: !64, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !7)
!63 = !DIFile(filename: "klee_src/runtime/Intrinsic/klee_overshift_check.c", directory: "/tmp")
!64 = !DISubroutineType(types: !65)
!65 = !{null, !66, !66}
!66 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!67 = !DILocalVariable(name: "bitWidth", arg: 1, scope: !62, file: !63, line: 20, type: !66)
!68 = !DILocation(line: 20, column: 46, scope: !62)
!69 = !DILocalVariable(name: "shift", arg: 2, scope: !62, file: !63, line: 20, type: !66)
!70 = !DILocation(line: 20, column: 75, scope: !62)
!71 = !DILocation(line: 21, column: 7, scope: !72)
!72 = distinct !DILexicalBlock(scope: !62, file: !63, line: 21, column: 7)
!73 = !DILocation(line: 21, column: 16, scope: !72)
!74 = !DILocation(line: 21, column: 13, scope: !72)
!75 = !DILocation(line: 21, column: 7, scope: !62)
!76 = !DILocation(line: 27, column: 5, scope: !77)
!77 = distinct !DILexicalBlock(scope: !72, file: !63, line: 21, column: 26)
!78 = !DILocation(line: 29, column: 1, scope: !62)
