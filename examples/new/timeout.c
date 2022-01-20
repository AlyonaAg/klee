//#include "klee/klee.h"
#define NULL ((void *)0)

typedef struct __attribute__((__packed__)) {
  unsigned char ucIntf;
  char wetdt_padding_0[3];
  unsigned int (*pfIntfFunc)(unsigned int, void *, void *);
} AIS_VRP_INTF_FUNC;

typedef struct {
  void *sendQueueMutex;
  void *hardZoneMutex;
} AIS_ZoneMMutex;

typedef struct {
  void *pThis;
  unsigned long memId;
} AisInterfaceDataMgrInfo;

typedef struct __attribute__((__packed__)) {
  unsigned int subIntf;
  unsigned int (*ctlFunc)(void *, void *);
} AisIntfCtlFunc;

typedef struct {
  unsigned short type;
  unsigned short reserved;
  unsigned int success;
  unsigned int failed;
} AisZoneMAutStats;

typedef struct {
  unsigned int minTxInterval;
  unsigned int minRxInterval;
  unsigned int detectMultiplier;
} AisZoneMBfdPara;

typedef struct {
  unsigned int errFd;
  unsigned int active;
  unsigned int inactive;
} AisZoneMDebugNum;

typedef struct {
  unsigned int hmacValid;
  unsigned int hmacLen;
  char hmactext[512];
} AisZoneMHmac;

typedef union {
  unsigned int addrIpv4;
  unsigned char addrIpv6[16];
} AisZoneMIp;

typedef struct {
  unsigned int eventReadCnt;
  unsigned int eventReadTimeoutCnt;
  unsigned int eventWriteCnt;
  unsigned int eventWriteFailCnt;
  unsigned int invalidEventCnt;
  unsigned int startEventCnt;
  unsigned int stopEventCnt;
  unsigned int connectOpenEventCnt;
  unsigned int connectOpenFailedCnt;
  unsigned int connectCloseCnt;
  unsigned int connectErrorCnt;
  unsigned int receiveOpenCnt;
  unsigned int receiveKeepAliveCnt;
  unsigned int receiveUpdateCnt;
  unsigned int receiveNotifyCnt;
} AisZoneMTaskStat;

typedef enum {
  VME_DB_CR_SMALLER = 1,
  VME_DB_CR_EQUAL = 2,
  VME_DB_CR_BIGGER = 3,
} VME_DB_CMP_RESULT_E;

typedef struct {
  unsigned int (*pfCmpKey)(void *, const void *, unsigned int, const void *, VME_DB_CMP_RESULT_E *);
  unsigned int (*pfGetKey)(void *, const void *, void *, unsigned int, unsigned int *);
  unsigned int (*pfProcBeforeRecDel)(void *, void *);
  void *pUserArg;
} VME_DB_CBFUNC_SET_S;

typedef struct {
  unsigned int (*pfCmpKey)(void *, const void *, unsigned int, const void *, VME_DB_CMP_RESULT_E *);
  unsigned int (*pfGetKey)(void *, const void *, void *, unsigned int, unsigned int *);
  void *pUserArg;
} VME_DB_CONTAINER_CBFUNC_SET_S;

typedef struct {
  void *pUserArg;
  unsigned int (*pfHash)(const void *, unsigned int, unsigned int *);
} VME_DB_HASH_PF_S;

typedef struct __attribute__((__packed__)) {
  unsigned int uiHashSize;
  VME_DB_HASH_PF_S stCbHash;
} VME_DB_EXTRA_INFO_HASH_S;

typedef struct {
  unsigned int (*pfCmpKey)(void *, const void *, unsigned int, const void *, VME_DB_CMP_RESULT_E *);
  unsigned int (*pfGetKey)(void *, const void *, void *, unsigned int, unsigned int *);
  void *pUserArg;
} VME_DB_INDEX_INFO_S;

typedef struct {
  VME_DB_INDEX_INFO_S stCreateInfo;
  struct tagVME_DB_CONTAINER_ENV *pstCtnr;
} VME_DB_INDEX_S;

typedef enum {
  VME_DB_TBL_TYPE_INVALID = 1,
  VME_DB_TBL_TYPE_HASH = 2,
  VME_DB_TBL_TYPE_RBTREE = 3,
  VME_DB_TBL_TYPE_MAX = 4,
} VME_DB_TBL_TYPE_E;

typedef struct {
  void *(*iterate)(unsigned char *, void *, unsigned int *, void *);
  unsigned short (*encode)(unsigned char *, unsigned short, void *, unsigned int, void *);
  void (*keySave)(unsigned char *, unsigned short, void *, unsigned int, void *);
} VmeHaBatchCallBack;

typedef struct {
  unsigned char resumeKey[512];
  VmeHaBatchCallBack callback;
} VmeHaBatBkupTimeShare;

typedef struct {
  AisZoneMIp ipAddress;
  unsigned char addressType;
} ZoneMIpAddress;

typedef struct {
  AisZoneMBfdPara bfdPara;
  ZoneMIpAddress refIp;
  char refFlag;
} AisZoneMBfdRefPara;

typedef struct {
  AisZoneMBfdPara localPara;
  AisZoneMBfdPara actualPara;
  AisZoneMBfdRefPara ref1;
  AisZoneMBfdRefPara ref2;
} AisZoneMBfdAllPara;

enum tagBIMStatusEnum {
  ENUM_BIM_STATUS_OPENDB_FAILD = 1,
  ENUM_BIM_STATUS_DB_FAULT = 2,
  ENUM_BIM_STATUS_DB_READY = 3,
  ENUM_BIM_STATUS_DB_READY_ONLYREAD = 4,
  ENUM_BIM_STATUS_CREATETABLE_SUCCESS = 5,
  ENUM_BIM_STATUS_DROPTABLE_SUCCESS = 6,
  ENUM_BIM_STATUS_TABLE_FULL = 7,
  ENUM_BIM_STATUS_CACHE_READY = 8,
  ENUM_BIM_STATUS_RSM_FULL = 9,
  ENUM_BIM_STATUS_INVALID = 10,
};

enum tagVME_HA_STATE {
  VME_HA_STATE_INIT = 1,
  VME_HA_STATE_BATCHBACKUP_BEGIN = 2,
  VME_HA_STATE_BATCHBACKUP = 3,
  VME_HA_STATE_BATCHBACKUP_END = 4,
  VME_HA_STATE_NOT_BACKUPREADY = 5,
  VME_HA_STATE_REALBACKUP = 6,
  VME_HA_STATE_HA_MAX = 7,
};

struct DLL_NODE {
  struct DLL_NODE *pNext;
  struct DLL_NODE *pPrev;
  unsigned long uiHandle;
};

struct DLL {
  struct DLL_NODE Head;
  unsigned int uiCount;
};

struct SLL_NODE {
  struct SLL_NODE *pNext;
  unsigned long uiHandle;
};

struct SLL {
  struct SLL_NODE Head;
  struct SLL_NODE *Tail;
  unsigned int uiCount;
};

struct avl3_node {
  struct avl3_node *pstParent;
  struct avl3_node *pstLeft;
  struct avl3_node *pstRight;
  short sLHeight;
  short sRHeight;
};

struct avl3_tree {
  struct avl3_node *pstRoot;
  struct avl3_node *pstFirst;
  struct avl3_node *pstLast;
};

struct avl3_tree_info {
  int (*pfCompare)(const void *, const void *);
  unsigned short usKeyOffset;
  unsigned short usNodeOffset;
};

struct avll_tree {
  struct avl3_tree stTree;
  struct avl3_tree_info stTreeInfo;
};

typedef struct {
  AisInterfaceDataMgrInfo mgrInfo;
  struct avll_tree ifNameTree;
  struct avll_tree ifIndexTree;
} AisInterfaceDataMgr;

struct tagCLASS_VME_VMEINNERDATA_S {
  unsigned int uiCid;
  char acModeName[48];
  char acInfotype[48];
  char acKey[48];
  char acData[3072];
};

struct tagDmsPipeDataPacket {
  unsigned int uiNum;
  void **apData;
};

struct tagHASH_CFL_TBL_HEAD {
  struct tagVME_DB_HASH_ENTRY *d_pstFirst;
  struct tagVME_DB_HASH_ENTRY **d_ppstLast;
};

typedef struct {
  struct tagHASH_CFL_TBL_HEAD stHead;
} VME_DB_HASH_CFL_TBL;

struct tagRBT_AQ_HEAD {
  struct tagRBT_AQ_NODE *pstNext;
};

struct tagRBT_AQ_NODE {
  struct tagRBT_AQ_NODE *pstNext;
  struct tagRBT_AQ_NODE **ppstPrev;
};

struct tagRBT_NODE {
  struct tagRBT_NODE *pstParent;
  struct tagRBT_NODE *pstRight;
  struct tagRBT_NODE *pstLeft;
  int lColor;
};

struct __attribute__((__packed__)) tagRBT_TREE {
  struct tagRBT_NODE *pstRoot;
  struct tagRBT_NODE stNilT;
  struct tagRBT_AQ_HEAD stWalkHead;
  unsigned int ulNodes;
};

struct __attribute__((__packed__)) tagVME_DB_CONTAINER_ENV {
  VME_DB_TBL_TYPE_E enType;
  VME_DB_CONTAINER_CBFUNC_SET_S stCbFuncSet;
  union {
    struct tagVME_DB_HASH_ENV *pstHash;
    struct tagVME_DB_RBT_ENV *pstRbTree;
  } unHandle;
  unsigned int uiRecSum;
};

struct tagVME_DB_HASH_ENTRY {
  struct {
    struct tagVME_DB_HASH_ENTRY *d_pstNext;
    struct tagVME_DB_HASH_ENTRY **d_ppstPrev;
  } stField;
  unsigned int uiHashPos;
};

struct __attribute__((__packed__)) tagVME_DB_HASH_ENV {
  VME_DB_EXTRA_INFO_HASH_S stHashExtraInfo;
  VME_DB_HASH_CFL_TBL astHashBucket[0];
};

struct tagVME_DB_RBT_ENV {
  struct tagRBT_TREE stTree;
};

struct __attribute__((__packed__)) tagVME_DB_TBL_ENV {
  unsigned long hMem;
  VME_DB_CBFUNC_SET_S stCbFuncSet;
  struct tagVME_DB_CONTAINER_ENV *pstMainCtnr;
  unsigned int uiIndexCount;
  VME_DB_INDEX_S *pstIndexArray;
};

struct __attribute__((__packed__)) tagVmeAckTimer {
  unsigned int uiSendTimes;
  void *pTimerHandle;
};

struct tagVmeCompAdp {
  void *pVmeLocal;
  unsigned short usIId;
  unsigned char ucIntf;
  unsigned char ucSubIntf;
  unsigned char ucSlaveWork;
  unsigned char aucResv[3];
  struct tagRBT_TREE stCompInstTbl;
};

struct tagVmeCompMng {
  struct tagVmeCompAdp *apstCompAdpTbl[14];
  void *pLocal;
  void *pScanParam;
};

struct tagVmeIfmSubInfoKey {
  unsigned short usKeyTag;
  unsigned char ucInfoNum;
  unsigned char ucReserve;
  unsigned int uiInstanceId;
  unsigned int uiAreaId;
  unsigned short ausInfoTag[10];
};

struct tagVmeInnerParam {
  char *pcItemName;
  char *apcKey[10];
  unsigned int uiKeyNum;
  unsigned int uiPosition;
};

struct __attribute__((__packed__)) tagVmeModeInnerData {
  char acModeName[49];
  char acReserve[3];
  void *pParam;
  unsigned int (*pfGetInnerData)(unsigned int *, void **, void *);
};

struct __attribute__((__packed__)) tagVmeMsgProc {
  unsigned int uiIID;
  void (*pfProc)(void *, void *);
  void *pParam;
  void (*pfFlush)(void *);
};

struct __attribute__((__packed__)) tagVmeSmpProcGrp {
  unsigned short usCBCurNum;
  unsigned short usCBMaxNum;
  struct tagVmeSmpProcInfo *pstCallBack;
};

struct tagVmeSmp {
  void *pVmeLocal;
  unsigned long hMemHandle;
  unsigned int uiRspNoRegCfg : 1;
  unsigned int uiCfgForceRes : 1;
  unsigned int uiCfgForceNoRsp : 1;
  unsigned int uiResv : 29;
  struct tagVmeSmpProcGrp stCfgProcGrp;
  struct tagVmeSmpProcGrp stQryProcGrp;
  struct tagVmeSmpProcGrp stActProcGrp;
  unsigned int uiLastDBSelectErr;
  unsigned int uiLastDBFetchErr;
  unsigned short ausErrStat[15];
};

struct tagVmeSmpProcInfo {
  unsigned int uiClassId;
  unsigned short usOpCode;
  unsigned short usRecLen;
  void *pfProc;
  void *pfProcEx;
  void *pParam;
};

struct tagVmeSspCallBack {
  unsigned int (*pfStartWork)(void *, void *);
  unsigned int (*pfStopWork)(void *, void *);
  unsigned int (*pfPromptPrimary)(void *, void *);
  unsigned int (*pfStopPrimary)(void *, void *);
  unsigned int (*pfNewBackup)(void *, void *);
  unsigned int (*pfBackupReady)(void *, void *);
  unsigned int (*pfBackupGone)(void *, void *);
  unsigned int (*pfPartnerStatus)(void *, void *);
  unsigned int (*pfOverload)(void *, void *);
};

struct tagVmeSyncManage {
  unsigned long hDumClltHld;
  unsigned long hDumJoinHld;
  struct avll_tree stSyncSTree;
  struct avll_tree stSyncRTree;
  unsigned int *pstBdEnv;
};

struct __attribute__((__packed__)) tagVmeTimeEvent {
  int iNowSec;
  int iNowMSec;
  unsigned int uiEvent;
  void *pValue;
};

struct tagVmeTimeStat {
  struct tagVmeTimeEvent *pstEvent;
  unsigned short usNum;
  unsigned short usPos;
  unsigned short usSize;
  unsigned short usResv;
};

struct __attribute__((__packed__)) tagVmeTmrCb {
  unsigned int hTmrHandle;
  void *pTimerLib;
  void *pTmrInst;
  void *pResndAlarmHandle;
  unsigned int uiRunning;
  unsigned int tmrHndInitBySelf : 1;
  unsigned int rsv : 31;
};

struct tagVmehaCallBack {
  void (*pfFlowCtrlBegin)(unsigned int, void *);
  void (*pfFlowCtrlEnd)(unsigned int, void *);
};

struct tagVosListHead {
  struct tagVosListHead *next;
  struct tagVosListHead *prev;
};

typedef struct __attribute__((__packed__)) {
  void *pThis;
  struct avll_tree stPartnerTbl;
  unsigned int uiPartnerNum;
  struct tagVosListHead stCallbackTbl;
  unsigned int auiRunStat[3];
  unsigned int auiErrStat[5];
} AisPartnerMng_S;

struct __attribute__((__packed__)) tagVmeBim {
  void *pVmeLocal;
  unsigned long hMemHandle;
  char acDbName[16];
  unsigned int uiDbID;
  unsigned char ucIsSupport;
  unsigned char ucIsPromptPrimary;
  unsigned char aucPad[2];
  unsigned int uiBimProtectTime;
  void *pstOpenDBTimer;
  void *pstResendTimer;
  enum tagBIMStatusEnum enDbStatus;
  enum tagBIMStatusEnum enLastDbStatus;
  unsigned int uiMultInstID;
  unsigned int uiBimTableNum;
  struct tagVosListHead stBimTableList;
  void (*pfSupportCallback)(unsigned char, void *);
  void (*pfDBWritableCallback)(void *);
  void (*pfLogger)(void *, unsigned char, const char *);
  unsigned short ausErrStat[16];
};

struct __attribute__((__packed__)) tagVmeHA_S {
  void *pVmeLocal;
  unsigned long hMemHandle;
  unsigned int hPeerCid;
  struct tagVmehaCallBack stCallBack;
  enum tagVME_HA_STATE enhaState;
  unsigned short usIsBatchDataReady : 1;
  unsigned short usIsSendMsgSelfPid : 1;
  unsigned short usLeftMemHndIfUninit : 1;
  unsigned short usMaxMsgLenK : 7;
  unsigned short usRezv : 6;
  unsigned short usHaiIID;
  unsigned int (*pfBatchBackup)(void *, void *);
  unsigned int (*pfBBEnd)(void *, void *);
  unsigned int (*pfSlvBBBegin)(void *, void *);
  struct tagVmeAckTimer stAckTimer;
  unsigned int uiTransNum;
  unsigned int uiSeqNum;
  struct tagVosListHead stBatchHdr;
  struct tagVosListHead stRealTypeHdr;
  void *pRealResendTimer;
  unsigned int auiMsgRecvStat[11];
  unsigned int auiMsgSendStat[11];
  unsigned short ausErrorStat[20];
  struct tagVmeTimeStat stTimeStat;
  struct tagVmeTimeStat stRealTimeStat;
  void *pVmeAlm;
  VmeHaBatBkupTimeShare *batBkupTimeShare;
};

struct tagVmeSspSubBuff {
  struct tagVosListHead stBuff;
  struct tagVosListHead stReSubBuff;
  void *pReSubTMr;
};

struct __attribute__((__packed__)) tagVmeSsp {
  void *pVmeLocal;
  unsigned long hMemHandle;
  struct tagVmeSspSubBuff stSubBuff;
  struct tagVmeSspCallBack stCallBack;
  unsigned short usWorkMode;
  unsigned short usNoRspHaStarWork : 1;
  unsigned short usNoRspHaPromptPrimary : 1;
  unsigned short usNoRspHaNewBackup : 1;
  unsigned short usNoRspHaStopPrimary : 1;
  unsigned short usNoRspHaBackupGone : 1;
  unsigned short usNoRspHaPartnerStatus : 1;
  unsigned short usNoRspHaStopWork : 1;
  unsigned short usResv : 9;
  struct tagVosListHead stCallBackList;
};

struct __attribute__((__packed__)) tagVmeLocal {
  void *pCompLocal;
  unsigned short usModuleId;
  unsigned short usFlag;
  unsigned int hMyPid;
  unsigned int hMyCid;
  unsigned long hMemHandle;
  unsigned int uiLrId;
  unsigned int uiTmrFlag;
  int iNowSec;
  int iNowMSec;
  struct tagVmeMsgProc astpProcer[64];
  struct tagVmeTmrCb stTmr;
  struct tagVmeCompMng stCompMng;
  struct tagVmeSmp stSmp;
  struct tagVmeSsp stSsp;
  struct tagVmeHA_S stHA;
  unsigned short ausErrStat[10];
  struct tagVmeModeInnerData astpGetInnerData[12];
  struct tagVmeBim stBim;
  struct tagVmeSyncManage stSyncMng;
  unsigned long hSyncMemHandle;
  unsigned int *pstHA2;
  void *pLog;
  void *apResv1;
  void *apResv2;
  void *apResv3;
  void *apResv4;
};

struct tagVosSystm {
  unsigned short usYear;
  unsigned char ucMonth;
  unsigned char ucDate;
  unsigned char ucHour;
  unsigned char ucMinute;
  unsigned char ucSecond;
  unsigned char ucWeek;
  unsigned int uiMillSec;
};

typedef struct {
  struct tagVosSystm time;
  unsigned int valid;
  unsigned int line;
  char func[64];
  char info[512];
} AisBlackBoxData;

typedef struct {
  unsigned int withFunc;
  unsigned int head;
  unsigned int tail;
  unsigned int isFull;
  AisBlackBoxData *datas;
  unsigned int size;
  unsigned long memHandle;
} AisBlackBox;

typedef struct {
  unsigned int sendPkt;
  unsigned int receivePkt;
  unsigned int sendErrPkt;
  unsigned int receiveErrPkt;
  struct tagVosSystm lastSendTime;
  struct tagVosSystm lastSendErrTime;
  struct tagVosSystm lastReceiveTime;
  struct tagVosSystm lastReceiveErrTime;
} AisHppInnerData;

typedef struct {
  unsigned int vrId;
  unsigned int sequence;
  AisZoneMDebugNum debugNum;
  AisBlackBox *blackBox;
  unsigned int zoneMMsgQueueId;
  AisZoneMTaskStat zoneMStat;
  unsigned int zoneMTaskStatu;
  unsigned int debugMode;
  void *thisLocal;
  void *socketMgr;
  void *noticeMgr;
  ZoneMIpAddress localIp;
  unsigned short portId;
  AisZoneMHmac hmac;
  unsigned char role;
  AIS_ZoneMMutex mutex;
  AisZoneMAutStats autStats[5];
  void *timerHnd[5];
  AisHppInnerData aisHppData;
  struct DLL tlvDll;
  void *bfdAgeTimer;
  void *bfdSessionTimer;
  unsigned int bfdBaseEnable;
  unsigned int bfdInofEnable;
  AisZoneMBfdAllPara bfdAllPara;
  unsigned int transNo;
  void *checkTimerHnd;
  void *hardZoneTimer;
  unsigned int hardZoneSeq;
  unsigned int hardZonePermitCnt;
  void *meshSendMgr;
  void *recoveryHandle;
} AisZoneMMgr;

typedef struct __attribute__((__packed__)) {
  unsigned int hMyPid;
  unsigned int hMyCid;
  unsigned int uiCompHaRole;
  unsigned int uiLrId;
  unsigned int vrId;
  unsigned long sendTime;
  unsigned int tail;
  unsigned int iLossLessTail;
  unsigned int zoneMTail;
  unsigned int procCount;
  char modelName[32];
  char modelVersion[16];
  struct tagVosSystm modelTime;
  unsigned long ahMemHandle[36];
  struct tagVME_DB_TBL_ENV *aisTblHandle[13];
  struct tagVmeLocal stVme;
  unsigned int *pstBdEnv;
  unsigned int *pstDiagLib;
  void *sendBuf;
  struct tagDmsPipeDataPacket recvBuf;
  void *appModelMgr;
  void *appEnv;
  AisZoneMMgr *zoneMMgr;
  AisInterfaceDataMgr *interfaceDataMgr;
  AisBlackBox *blackBox;
  void *pstSsp;
  AisPartnerMng_S *pstPartnerMng;
  void *aiServiceCfgMng;
  unsigned char pfcQueueBitMap;
  unsigned char tlmTaskFlag;
  unsigned char alarmFlag;
  char wetdt_padding_0[1];
  void *aiEcnMutex;
  void *lldp;
  void *timerLocal;
  AIS_VRP_INTF_FUNC vrpIntfFunc[255];
  AisIntfCtlFunc intfCtlFunc[1];
  struct SLL intfParam;
  char acReserveChar[128];
  void *apReserve[4];
  unsigned int auiReserve[4];
  struct tagVmeIfmSubInfoKey *ifmData;
  void *gfd;
  void *job;
} AisLocal;

typedef struct {
  void *__stack;
  void *__gr_top;
  void *__vr_top;
  int __gr_offs;
  int __vr_offs;
} va_list;

int memset_s(void *dest, unsigned long destMax, int c, unsigned long count) {
  int memset_s;
  klee_make_symbolic(&memset_s, sizeof(memset_s), "memset_s");
  return memset_s;
}

int strcpy_s(char *strDest, unsigned long destMax, const char *strSrc) {
  int strcpy_s;
  klee_make_symbolic(&strcpy_s, sizeof(strcpy_s), "strcpy_s");
  return strcpy_s;
}

int vsnprintf_truncated_s(char *strDest, unsigned long destMax, const char *format, va_list argList) {
  int vsnprintf_truncated_s;
  klee_make_symbolic(&vsnprintf_truncated_s, sizeof(vsnprintf_truncated_s), "vsnprintf_truncated_s");
  return vsnprintf_truncated_s;
}

#define AIS_LOCAL(thisLocal)                    ((AisLocal*)(thisLocal))
#define AIS_TAIL(d_pThis)                       (AIS_LOCAL(d_pThis)->tail)

unsigned int AIS_BlackBoxInfo(struct tagCLASS_VME_VMEINNERDATA_S *pstInnerData, struct tagVmeInnerParam *pstInnerInfo, void *thisLocal)
{
    int iPos = 0;
    unsigned int offset;
    char *pcOutput = pstInnerData->acData;
    AisBlackBox *blackBox = AIS_GET_BLACKBOX(thisLocal);
    AisBlackBoxData *data = NULL;

    if (!blackBox) {
        return 0;
    }
    if (!blackBox->datas) {
        return 0;
    }

    if (pstInnerInfo->uiPosition == 0) {
        iPos += VME_INNER_PRINTF(pcOutput, iPos,
                                 "AIS BlackBox Information: table size %u, head %u, tail %u, isFull %u.\r\n",
                                 blackBox->size,
                                 blackBox->head,
                                 blackBox->tail,
                                 blackBox->isFull);
        AIS_TAIL(thisLocal) = blackBox->tail;
    }

    offset = (AIS_TAIL(thisLocal) + pstInnerInfo->uiPosition) % blackBox->size;
    data = &(blackBox->datas[offset]);

    if ((pstInnerInfo->uiPosition < blackBox->head) && (pstInnerInfo->uiPosition < blackBox->size)) {
        pstInnerInfo->uiPosition++;
        if (data->valid == 0) {
            return 1;
        }
        iPos += VME_INNER_PRINTF(pcOutput, iPos, "Time : %u-%02u-%02u %02u:%02u:%02u.%03u, %s:%u, %s\r\n",
                                 data->time.usYear, data->time.ucMonth, data->time.ucDate,
                                 data->time.ucHour, data->time.ucMinute,
                                 data->time.ucSecond, data->time.uiMillSec,
                                 data->func,
                                 data->line, data->info);
        return 1;
    }

    return 0;
}
