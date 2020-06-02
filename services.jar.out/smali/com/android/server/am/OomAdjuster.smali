.class public final Lcom/android/server/am/OomAdjuster;
.super Ljava/lang/Object;
.source "OomAdjuster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;
    }
.end annotation


# static fields
.field static final OOM_ADJ_REASON_ACTIVITY:Ljava/lang/String; = "updateOomAdj_activityChange"

.field static final OOM_ADJ_REASON_BIND_SERVICE:Ljava/lang/String; = "updateOomAdj_bindService"

.field static final OOM_ADJ_REASON_FINISH_RECEIVER:Ljava/lang/String; = "updateOomAdj_finishReceiver"

.field static final OOM_ADJ_REASON_GET_PROVIDER:Ljava/lang/String; = "updateOomAdj_getProvider"

.field static final OOM_ADJ_REASON_METHOD:Ljava/lang/String; = "updateOomAdj"

.field static final OOM_ADJ_REASON_NONE:Ljava/lang/String; = "updateOomAdj_meh"

.field static final OOM_ADJ_REASON_PROCESS_BEGIN:Ljava/lang/String; = "updateOomAdj_processBegin"

.field static final OOM_ADJ_REASON_PROCESS_END:Ljava/lang/String; = "updateOomAdj_processEnd"

.field static final OOM_ADJ_REASON_REMOVE_PROVIDER:Ljava/lang/String; = "updateOomAdj_removeProvider"

.field static final OOM_ADJ_REASON_START_RECEIVER:Ljava/lang/String; = "updateOomAdj_startReceiver"

.field static final OOM_ADJ_REASON_START_SERVICE:Ljava/lang/String; = "updateOomAdj_startService"

.field static final OOM_ADJ_REASON_UI_VISIBILITY:Ljava/lang/String; = "updateOomAdj_uiVisibility"

.field static final OOM_ADJ_REASON_UNBIND_SERVICE:Ljava/lang/String; = "updateOomAdj_unbindService"

.field static final OOM_ADJ_REASON_WHITELIST:Ljava/lang/String; = "updateOomAdj_whitelistChange"

.field private static final TAG:Ljava/lang/String; = "OomAdjuster"

.field public static mPerf:Landroid/util/BoostFramework;


# instance fields
.field mActiveUids:Lcom/android/server/am/ActiveUids;

.field mAdjSeq:I

.field mAppCompact:Lcom/android/server/am/AppCompactor;

.field mBServiceAppThreshold:I

.field mConstants:Lcom/android/server/am/ActivityManagerConstants;

.field mEnableBServicePropagation:Z

.field private mLastTopUid:I

.field mLocalPowerManager:Landroid/os/PowerManagerInternal;

.field mMinBServiceAgingTime:I

.field mNewNumAServiceProcs:I

.field mNewNumServiceProcs:I

.field mNumCachedHiddenProcs:I

.field mNumNonCachedProcs:I

.field mNumServiceProcs:I

.field private final mProcessGroupHandler:Landroid/os/Handler;

.field private final mProcessList:Lcom/android/server/am/ProcessList;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mTmpBroadcastQueue:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/BroadcastQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

.field final mTmpLong:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    sput-object v0, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpLong:[J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mTmpBroadcastQueue:Landroid/util/ArraySet;

    const/16 v1, 0x1388

    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mMinBServiceAgingTime:I

    const/4 v1, 0x5

    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mBServiceAppThreshold:I

    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mEnableBServicePropagation:Z

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mLastTopUid:I

    new-instance v2, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;-><init>(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/OomAdjuster$1;)V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    iput-object p1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    const-class v2, Landroid/os/PowerManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManagerInternal;

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    new-instance v2, Lcom/android/server/am/AppCompactor;

    iget-object v3, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v2, v3}, Lcom/android/server/am/AppCompactor;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mAppCompact:Lcom/android/server/am/AppCompactor;

    sget-object v2, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    if-eqz v2, :cond_0

    const-string/jumbo v3, "ro.vendor.qti.sys.fw.bservice_age"

    const-string v4, "5000"

    invoke-virtual {v2, v3, v4}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/server/am/OomAdjuster;->mMinBServiceAgingTime:I

    sget-object v2, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v3, "ro.vendor.qti.sys.fw.bservice_limit"

    const-string v4, "5"

    invoke-virtual {v2, v3, v4}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/server/am/OomAdjuster;->mBServiceAppThreshold:I

    sget-object v2, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v3, "ro.vendor.qti.sys.fw.bservice_enable"

    const-string v4, "false"

    invoke-virtual {v2, v3, v4}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/am/OomAdjuster;->mEnableBServicePropagation:Z

    :cond_0
    new-instance v2, Lcom/android/server/ServiceThread;

    const/16 v3, -0xa

    const-string v4, "OomAdjuster"

    invoke-direct {v2, v4, v3, v0}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    move-object v0, v2

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getThreadId()I

    move-result v2

    invoke-static {v2, v1}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/-$$Lambda$OomAdjuster$OVkqAAacT5-taN3pgDzyZj3Ymvk;->INSTANCE:Lcom/android/server/am/-$$Lambda$OomAdjuster$OVkqAAacT5-taN3pgDzyZj3Ymvk;

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mProcessGroupHandler:Landroid/os/Handler;

    return-void
.end method

.method private final applyOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZJJ)Z
    .locals 23
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    const/4 v3, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v0

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->setRawAdj:I

    if-eq v0, v4, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v0

    iput v0, v2, Lcom/android/server/am/ProcessRecord;->setRawAdj:I

    :cond_0
    const/4 v4, 0x0

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mAppCompact:Lcom/android/server/am/AppCompactor;

    invoke-virtual {v0}, Lcom/android/server/am/AppCompactor;->useCompaction()Z

    move-result v0

    const/16 v5, 0x384

    const/4 v13, 0x1

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-eqz v0, :cond_6

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-eq v0, v6, :cond_4

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v6, 0xc8

    if-gt v0, v6, :cond_2

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v6, 0x2bc

    if-eq v0, v6, :cond_1

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v6, 0x258

    if-ne v0, v6, :cond_2

    :cond_1
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mAppCompact:Lcom/android/server/am/AppCompactor;

    invoke-virtual {v0, v2}, Lcom/android/server/am/AppCompactor;->compactAppSome(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0

    :cond_2
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v6, 0x3e7

    if-lt v0, v5, :cond_3

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-le v0, v6, :cond_6

    :cond_3
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-lt v0, v5, :cond_6

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-gt v0, v6, :cond_6

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mAppCompact:Lcom/android/server/am/AppCompactor;

    invoke-virtual {v0, v2}, Lcom/android/server/am/AppCompactor;->compactAppFull(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0

    :cond_4
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mWakefulness:I

    if-eq v0, v13, :cond_5

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-gez v0, :cond_5

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mAppCompact:Lcom/android/server/am/AppCompactor;

    invoke-virtual {v0, v2, v9, v10}, Lcom/android/server/am/AppCompactor;->shouldCompactPersistent(Lcom/android/server/am/ProcessRecord;J)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mAppCompact:Lcom/android/server/am/AppCompactor;

    invoke-virtual {v0, v2}, Lcom/android/server/am/AppCompactor;->compactAppPersistent(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0

    :cond_5
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mWakefulness:I

    if-eq v0, v13, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    const/4 v6, 0x6

    if-ne v0, v6, :cond_6

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mAppCompact:Lcom/android/server/am/AppCompactor;

    invoke-virtual {v0, v2, v9, v10}, Lcom/android/server/am/AppCompactor;->shouldCompactBFGS(Lcom/android/server/am/ProcessRecord;J)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mAppCompact:Lcom/android/server/am/AppCompactor;

    invoke-virtual {v0, v2}, Lcom/android/server/am/AppCompactor;->compactAppBfgs(Lcom/android/server/am/ProcessRecord;)V

    :cond_6
    :goto_0
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const-string v14, " "

    const-string v15, ": "

    const-string v7, "ActivityManager"

    const/4 v8, 0x0

    if-eq v0, v6, :cond_c

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-static {v0, v6}, Lcom/android/server/am/OomAdjusterInjector;->adjustProcessAdj(Ljava/lang/String;I)I

    move-result v0

    iput v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    sget-boolean v0, Lcom/android/server/am/OomAdjusterInjector;->sEnableOptAdj:Z

    if-eqz v0, :cond_7

    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v2, v0}, Lcom/android/server/am/OomAdjusterInjector;->setOptimizationAdj(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityManagerService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    goto :goto_2

    :cond_7
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-eqz v0, :cond_8

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-lt v0, v5, :cond_8

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/am/OpRestartProcessManagerInjector;->doIsHighUsedPackages(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x320

    iput v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    :cond_8
    :goto_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceInjector;->getInstance()Lcom/android/server/am/ActivityManagerServiceInjector;

    move-result-object v0

    iget-object v5, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/ActivityManagerServiceInjector;->checkProcessExist(Lcom/android/server/am/ActivityManagerService;I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-static {v0, v5, v6}, Lcom/android/server/am/ProcessList;->setOomAdj(III)V

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-nez v0, :cond_9

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v5, :cond_a

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " adj "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iput v0, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v0, -0x2710

    iput v0, v2, Lcom/android/server/am/ProcessRecord;->verifiedAdj:I

    goto :goto_3

    :cond_b
    return v8

    :cond_c
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurrentSchedulingGroup()I

    move-result v6

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    const-string v8, " to "

    if-eq v0, v6, :cond_1f

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    iput v6, v2, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_d

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-nez v0, :cond_d

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget v13, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v0, v13, :cond_e

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Setting sched group of "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v2, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    if-nez v0, :cond_f

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    const/4 v13, 0x1

    invoke-virtual {v2, v0, v13}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    const/4 v3, 0x0

    move/from16 v19, v3

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v14

    const/4 v7, 0x0

    goto/16 :goto_9

    :cond_f
    const/4 v0, 0x3

    if-eqz v6, :cond_12

    const/4 v13, 0x1

    if-eq v6, v13, :cond_11

    const/4 v13, 0x4

    if-eq v6, v0, :cond_10

    if-eq v6, v13, :cond_10

    const/16 v17, -0x1

    move/from16 v13, v17

    goto :goto_4

    :cond_10
    const/16 v17, 0x5

    move/from16 v13, v17

    goto :goto_4

    :cond_11
    const/4 v13, 0x4

    const/16 v17, 0x7

    move/from16 v13, v17

    goto :goto_4

    :cond_12
    const/4 v13, 0x4

    const/16 v17, 0x0

    move/from16 v13, v17

    :goto_4
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {v0}, Lcom/oneplus/android/server/uididle/UidIdleWhitelistManagerInjector;->isInAudioWhiteList(Ljava/lang/String;)Z

    move-result v0

    move/from16 v19, v3

    const-string v3, "OomAdjuster"

    if-eqz v0, :cond_13

    if-gtz v13, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v7

    const-string v7, "IsInAudioWhiteList app.processName = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mProcessGroupHandler:Landroid/os/Handler;

    iget v7, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    move-object/from16 v21, v8

    move-object/from16 v22, v14

    const/4 v8, 0x3

    const/4 v14, 0x0

    invoke-virtual {v0, v14, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    :cond_13
    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v14

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mProcessGroupHandler:Landroid/os/Handler;

    iget v7, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v7, v13}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_5
    const/4 v0, 0x3

    if-ne v6, v0, :cond_1a

    if-eq v5, v0, :cond_19

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mUseFifoUiScheduling:Z

    if-eqz v0, :cond_17

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    iput v0, v2, Lcom/android/server/am/ProcessRecord;->savedPriority:I

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v7, 0x1

    invoke-static {v0, v7}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)Z

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const-string v7, "UI_FIFO"

    if-eqz v0, :cond_15

    :try_start_2
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    const/4 v8, 0x1

    invoke-static {v0, v8}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)Z

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v0, :cond_14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Set RenderThread (TID "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") to FIFO"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    goto/16 :goto_8

    :cond_14
    const/4 v7, 0x0

    goto/16 :goto_8

    :cond_15
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v0, :cond_16

    const-string v0, "Not setting RenderThread TID"

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    goto/16 :goto_8

    :cond_16
    const/4 v7, 0x0

    goto/16 :goto_8

    :cond_17
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    const/16 v7, -0xa

    invoke-static {v0, v7}, Landroid/os/Process;->setThreadPriority(II)V

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v0, :cond_18

    :try_start_3
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    invoke-static {v0, v7}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    :catch_1
    move-exception v0

    :goto_6
    const/4 v7, 0x0

    goto/16 :goto_8

    :cond_18
    const/4 v7, 0x0

    goto/16 :goto_8

    :catch_2
    move-exception v0

    const/4 v7, 0x0

    goto/16 :goto_7

    :cond_19
    const/4 v7, 0x0

    goto/16 :goto_8

    :cond_1a
    const/4 v0, 0x3

    if-ne v5, v0, :cond_1d

    if-eq v6, v0, :cond_1d

    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mUseFifoUiScheduling:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v0, :cond_1c

    :try_start_5
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    const/4 v7, 0x0

    :try_start_6
    invoke-static {v0, v7, v7}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :try_start_7
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v7, v2, Lcom/android/server/am/ProcessRecord;->savedPriority:I

    invoke-static {v0, v7}, Landroid/os/Process;->setThreadPriority(II)V

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    if-eqz v0, :cond_1b

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    const/4 v7, 0x0

    :try_start_8
    invoke-static {v0, v7, v7}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :try_start_9
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    const/4 v7, -0x4

    invoke-static {v0, v7}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    :cond_1b
    const/4 v7, 0x0

    goto :goto_8

    :catch_3
    move-exception v0

    :try_start_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to set scheduling policy, not allowed:\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    goto :goto_8

    :catch_4
    move-exception v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to set scheduling policy, thread does not exist:\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    goto :goto_8

    :cond_1c
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    const/4 v7, 0x0

    :try_start_b
    invoke-static {v0, v7}, Landroid/os/Process;->setThreadPriority(II)V

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    if-eqz v0, :cond_1e

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    invoke-static {v0, v7}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_8

    :catch_5
    move-exception v0

    :goto_7
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-eqz v8, :cond_20

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed setting thread priority of "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    :cond_1d
    const/4 v7, 0x0

    :cond_1e
    :goto_8
    goto :goto_9

    :cond_1f
    move/from16 v19, v3

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v14

    const/4 v7, 0x0

    :cond_20
    :goto_9
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->repForegroundActivities:Z

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasForegroundActivities()Z

    move-result v3

    if-eq v0, v3, :cond_21

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasForegroundActivities()Z

    move-result v0

    iput-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->repForegroundActivities:Z

    or-int/lit8 v4, v4, 0x1

    move v13, v4

    goto :goto_a

    :cond_21
    move v13, v4

    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getReportedProcState()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    if-eq v0, v3, :cond_22

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/server/am/ProcessRecord;->setReportedProcState(I)V

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_22

    :try_start_c
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getReportedProcState()I

    move-result v3

    invoke-interface {v0, v3}, Landroid/app/IApplicationThread;->setProcessState(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_b

    :catch_6
    move-exception v0

    :cond_22
    :goto_b
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v3, 0x15

    if-eq v0, v3, :cond_28

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-static {v0, v3}, Lcom/android/server/am/ProcessList;->procStatesDifferForMem(II)Z

    move-result v0

    if-eqz v0, :cond_23

    move/from16 v16, v6

    move/from16 v18, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v21

    goto/16 :goto_d

    :cond_23
    iget-wide v3, v2, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    cmp-long v0, v9, v3

    if-gtz v0, :cond_26

    iget-wide v3, v2, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    const-wide/32 v16, 0x36ee80

    add-long v3, v3, v16

    cmp-long v0, v9, v3

    if-lez v0, :cond_25

    iget-wide v3, v2, Lcom/android/server/am/ProcessRecord;->lastStateTime:J

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mTestPssMode:Z

    invoke-static {v0}, Lcom/android/server/am/ProcessList;->minTimeFromStateChange(Z)J

    move-result-wide v16

    add-long v3, v3, v16

    cmp-long v0, v9, v3

    if-lez v0, :cond_24

    goto :goto_c

    :cond_24
    move/from16 v16, v6

    move/from16 v18, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v21

    goto/16 :goto_e

    :cond_25
    move/from16 v16, v6

    move/from16 v18, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v21

    goto/16 :goto_e

    :cond_26
    :goto_c
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ActivityManagerService;->requestPssLocked(Lcom/android/server/am/ProcessRecord;I)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v0, Lcom/android/server/am/ActivityManagerService;->mTestPssMode:Z

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isSleeping()Z

    move-result v0

    const/4 v14, 0x4

    move/from16 v16, v6

    move v6, v0

    move/from16 v18, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v21

    move-wide/from16 v7, p3

    invoke-static/range {v3 .. v8}, Lcom/android/server/am/ProcessList;->computeNextPssTime(ILcom/android/server/am/ProcessList$ProcStateMemTracker;ZZJ)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    goto :goto_e

    :cond_27
    move/from16 v16, v6

    move/from16 v18, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v21

    goto :goto_e

    :cond_28
    move/from16 v16, v6

    move/from16 v18, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v21

    :goto_d
    iput-wide v9, v2, Lcom/android/server/am/ProcessRecord;->lastStateTime:J

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v0, Lcom/android/server/am/ActivityManagerService;->mTestPssMode:Z

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isSleeping()Z

    move-result v6

    move-wide/from16 v7, p3

    invoke-static/range {v3 .. v8}, Lcom/android/server/am/ProcessList;->computeNextPssTime(ILcom/android/server/am/ProcessList$ProcStateMemTracker;ZZJ)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v0, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Process state change from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-static {v3}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " next pss in "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v2, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    sub-long/2addr v3, v9

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    :goto_e
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    if-eq v0, v3, :cond_31

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_2a

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-nez v0, :cond_2a

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v0, v3, :cond_2b

    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proc state change of "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v13, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v3, 0xb

    if-ge v0, v3, :cond_2c

    const/4 v0, 0x1

    goto :goto_f

    :cond_2c
    const/4 v0, 0x0

    :goto_f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v4

    if-ge v4, v3, :cond_2d

    const/4 v3, 0x1

    goto :goto_10

    :cond_2d
    const/4 v3, 0x0

    :goto_10
    if-eqz v0, :cond_2e

    if-nez v3, :cond_2e

    invoke-virtual {v2, v9, v10}, Lcom/android/server/am/ProcessRecord;->setWhenUnimportant(J)V

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lcom/android/server/am/ProcessRecord;->lastCpuTime:J

    const/4 v4, 0x0

    :goto_11
    const/4 v5, 0x4

    if-ge v4, v5, :cond_2e

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->lastCpuTimeBgMonitor:[J

    iget-wide v7, v2, Lcom/android/server/am/ProcessRecord;->curCpuTimeBgMonitor:J

    aput-wide v7, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_2e
    invoke-direct {v1, v2, v11, v12}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLocked(Lcom/android/server/am/ProcessRecord;J)V

    invoke-direct {v1, v2, v9, v10}, Lcom/android/server/am/OomAdjuster;->maybeUpdateLastTopTime(Lcom/android/server/am/ProcessRecord;J)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v4

    iput v4, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v5, 0xf

    if-lt v4, v5, :cond_2f

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->notCachedSinceIdle:Z

    :cond_2f
    if-nez p2, :cond_30

    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v5

    invoke-virtual {v4, v2, v5, v9, v10}, Lcom/android/server/am/ActivityManagerService;->setProcessTrackerStateLocked(Lcom/android/server/am/ProcessRecord;IJ)V

    goto :goto_12

    :cond_30
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->procStateChanged:Z

    :goto_12
    goto :goto_13

    :cond_31
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->reportedInteraction:Z

    if-eqz v0, :cond_32

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getInteractionEventTime()J

    move-result-wide v3

    sub-long v3, v11, v3

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v5, v0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_32

    invoke-direct {v1, v2, v11, v12}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLocked(Lcom/android/server/am/ProcessRecord;J)V

    goto :goto_13

    :cond_32
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->reportedInteraction:Z

    if-nez v0, :cond_33

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getFgInteractionTime()J

    move-result-wide v3

    sub-long v3, v11, v3

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v5, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_33

    invoke-direct {v1, v2, v11, v12}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLocked(Lcom/android/server/am/ProcessRecord;J)V

    :cond_33
    :goto_13
    if-eqz v18, :cond_35

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    if-eqz v0, :cond_34

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Changes in "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :cond_34
    move/from16 v4, v18

    :goto_14
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v3, v5}, Lcom/android/server/am/ActivityManagerService;->enqueueProcessChangeItemLocked(II)Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    move-result-object v0

    iput v4, v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    iget-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->repForegroundActivities:Z

    iput-boolean v3, v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundActivities:Z

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    if-eqz v3, :cond_36

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Item "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v22

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": changes="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " foreground="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundActivities:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " type="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " source="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " target="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :cond_35
    move/from16 v4, v18

    :cond_36
    :goto_15
    return v19
.end method

.method private final computeOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZ)Z
    .locals 42

    move-object/from16 v8, p0

    move-object/from16 v7, p1

    move-object/from16 v5, p3

    move-wide/from16 v3, p5

    iget v0, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iget v1, v7, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    const/4 v6, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget v0, v7, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    iget v1, v7, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iput-boolean v6, v7, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    return v2

    :cond_1
    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_2

    iget v0, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iput v0, v7, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    const/16 v0, 0x14

    invoke-virtual {v7, v0}, Lcom/android/server/am/ProcessRecord;->setCurProcState(I)V

    const/16 v0, 0x3e7

    iput v0, v7, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v7, v0}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    iget v0, v7, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    iput v0, v7, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    return v2

    :cond_2
    iput v2, v7, Lcom/android/server/am/ProcessRecord;->adjTypeCode:I

    const/4 v0, 0x0

    iput-object v0, v7, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    iput-object v0, v7, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    iput-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->empty:Z

    iput-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->cached:Z

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v9, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v15, v9, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget v14, v7, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v13

    iget v9, v7, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    const/4 v10, 0x2

    const-string v12, "ActivityManager"

    if-gtz v9, :cond_c

    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v9, :cond_3

    if-ne v15, v0, :cond_4

    :cond_3
    iget-object v9, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Making fixed: "

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v12, v6}, Lcom/android/server/am/ActivityManagerService;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v6, "fixed"

    iput-object v6, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    iget v6, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iput v6, v7, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    iget v6, v7, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    invoke-virtual {v7, v6}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessRecord;->setHasForegroundActivities(Z)V

    invoke-virtual {v7, v10}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessRecord;->setCurProcState(I)V

    const/4 v6, 0x1

    iput-boolean v6, v7, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    if-ne v7, v5, :cond_5

    iput-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    const/4 v6, 0x3

    invoke-virtual {v7, v6}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    const-string/jumbo v6, "pers-top-activity"

    iput-object v6, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    goto :goto_0

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasTopUi()Z

    move-result v6

    if-eqz v6, :cond_6

    iput-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    const-string/jumbo v6, "pers-top-ui"

    iput-object v6, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    goto :goto_0

    :cond_6
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->hasVisibleActivities()Z

    move-result v6

    if-eqz v6, :cond_7

    iput-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    :cond_7
    :goto_0
    iget-boolean v6, v7, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    if-nez v6, :cond_9

    iget-object v6, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v6, v6, Lcom/android/server/am/ActivityManagerService;->mWakefulness:I

    const/4 v9, 0x1

    if-ne v6, v9, :cond_8

    invoke-virtual {v7, v9}, Lcom/android/server/am/ProcessRecord;->setCurProcState(I)V

    const/4 v6, 0x3

    invoke-virtual {v7, v6}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    goto :goto_1

    :cond_8
    const/4 v11, 0x6

    invoke-virtual {v7, v11}, Lcom/android/server/am/ProcessRecord;->setCurProcState(I)V

    invoke-virtual {v7, v9}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    :cond_9
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v6

    invoke-virtual {v7, v6}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    iget v6, v7, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    iput v6, v7, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iget v6, v7, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    iput v6, v7, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    iget v6, v7, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-lt v6, v14, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v6

    if-ge v6, v13, :cond_a

    goto :goto_2

    :cond_a
    move/from16 v18, v2

    goto :goto_3

    :cond_b
    :goto_2
    const/16 v18, 0x1

    :goto_3
    return v18

    :cond_c
    const/4 v6, 0x3

    const/4 v11, 0x6

    iput-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    iget-object v9, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopProcessState()I

    move-result v9

    const/16 v16, 0x0

    iget-object v6, v8, Lcom/android/server/am/OomAdjuster;->mTmpBroadcastQueue:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->clear()V

    if-ne v9, v10, :cond_f

    if-ne v7, v5, :cond_f

    const/4 v6, 0x0

    const/16 v19, 0x3

    const-string/jumbo v10, "top-activity"

    iput-object v10, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    const/4 v10, 0x1

    move/from16 v16, v9

    sget-boolean v20, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v20, :cond_d

    if-ne v15, v0, :cond_e

    :cond_d
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Making top: "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v12, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    move v2, v10

    move/from16 v5, v19

    move/from16 v19, v6

    move/from16 v6, v16

    goto/16 :goto_d

    :cond_f
    iget-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->runningRemoteAnimation:Z

    if-eqz v2, :cond_12

    const/16 v2, 0x64

    const/4 v6, 0x3

    const-string/jumbo v10, "running-remote-anim"

    iput-object v10, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    move v10, v9

    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v11, :cond_11

    if-ne v15, v0, :cond_10

    goto :goto_4

    :cond_10
    move/from16 v19, v2

    goto :goto_5

    :cond_11
    :goto_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v2

    const-string v2, "Making running remote anim: "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v12, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    move v5, v6

    move v6, v10

    move/from16 v2, v16

    goto/16 :goto_d

    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object v2

    if-eqz v2, :cond_15

    const/4 v2, 0x0

    const/4 v6, 0x2

    const-string v10, "instrumentation"

    iput-object v10, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    const/4 v10, 0x5

    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v11, :cond_14

    if-ne v15, v0, :cond_13

    goto :goto_6

    :cond_13
    move/from16 v19, v2

    goto :goto_5

    :cond_14
    :goto_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v2

    const-string v2, "Making instrumentation: "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v12, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_15
    iget-object v2, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v8, Lcom/android/server/am/OomAdjuster;->mTmpBroadcastQueue:Landroid/util/ArraySet;

    invoke-virtual {v2, v7, v6}, Lcom/android/server/am/ActivityManagerService;->isReceivingBroadcastLocked(Lcom/android/server/am/ProcessRecord;Landroid/util/ArraySet;)Z

    move-result v2

    if-eqz v2, :cond_19

    const/4 v2, 0x0

    iget-object v6, v8, Lcom/android/server/am/OomAdjuster;->mTmpBroadcastQueue:Landroid/util/ArraySet;

    iget-object v10, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mFgBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {v6, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    const/4 v6, 0x2

    goto :goto_7

    :cond_16
    const/4 v6, 0x0

    :goto_7
    const-string v10, "broadcast"

    iput-object v10, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    const/16 v10, 0xc

    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v11, :cond_18

    if-ne v15, v0, :cond_17

    goto :goto_8

    :cond_17
    move/from16 v19, v2

    goto :goto_5

    :cond_18
    :goto_8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v2

    const-string v2, "Making broadcast: "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v12, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_19
    iget-object v2, v7, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_1d

    const/4 v2, 0x0

    iget-boolean v6, v7, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    if-eqz v6, :cond_1a

    const/4 v6, 0x2

    goto :goto_9

    :cond_1a
    const/4 v6, 0x0

    :goto_9
    const-string v10, "exec-service"

    iput-object v10, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    const/16 v10, 0xb

    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v11, :cond_1c

    if-ne v15, v0, :cond_1b

    goto :goto_a

    :cond_1b
    move/from16 v19, v2

    goto/16 :goto_5

    :cond_1c
    :goto_a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v2

    const-string v2, "Making exec-service: "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v12, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_1d
    if-ne v7, v5, :cond_20

    const/4 v2, 0x0

    const/4 v6, 0x0

    const-string/jumbo v10, "top-sleeping"

    iput-object v10, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    const/4 v10, 0x1

    move v11, v9

    sget-boolean v16, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v16, :cond_1f

    if-ne v15, v0, :cond_1e

    goto :goto_b

    :cond_1e
    move/from16 v19, v2

    goto :goto_c

    :cond_1f
    :goto_b
    move/from16 v19, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Making top (sleeping): "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v12, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    move v5, v6

    move v2, v10

    move v6, v11

    goto :goto_d

    :cond_20
    const/4 v2, 0x0

    move/from16 v5, p2

    const/16 v6, 0x14

    const/4 v10, 0x1

    iput-boolean v10, v7, Lcom/android/server/am/ProcessRecord;->cached:Z

    iput-boolean v10, v7, Lcom/android/server/am/ProcessRecord;->empty:Z

    const-string v10, "cch-empty"

    iput-object v10, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v10, :cond_21

    if-ne v15, v0, :cond_22

    :cond_21
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Making empty: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v12, v10}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    move/from16 v19, v5

    move v5, v2

    move/from16 v2, v16

    :goto_d
    const/16 v11, 0x64

    if-nez v2, :cond_24

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->hasActivities()Z

    move-result v10

    if-eqz v10, :cond_24

    iget-object v10, v8, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    move/from16 v22, v9

    move-object v9, v10

    move-object/from16 v10, p1

    move v3, v11

    const/4 v4, 0x3

    const/16 v16, 0x6

    move/from16 v11, v19

    move-object v4, v12

    move v12, v2

    move/from16 v23, v13

    move v13, v6

    move/from16 v24, v14

    move v14, v5

    move/from16 v20, v15

    move v15, v0

    move/from16 v16, v20

    move/from16 v17, v22

    invoke-virtual/range {v9 .. v17}, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->initialize(Lcom/android/server/am/ProcessRecord;IZIIIII)V

    const/16 v9, 0x63

    iget-object v10, v8, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    invoke-virtual {v1, v9, v10}, Lcom/android/server/wm/WindowProcessController;->computeOomAdjFromActivities(ILcom/android/server/wm/WindowProcessController$ComputeOomAdjCallback;)I

    move-result v9

    iget-object v10, v8, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    iget v10, v10, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    iget-object v11, v8, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    iget-boolean v2, v11, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->foregroundActivities:Z

    iget-object v11, v8, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    iget v6, v11, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    iget-object v11, v8, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    iget v5, v11, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    if-ne v10, v3, :cond_23

    add-int v19, v10, v9

    move v9, v2

    move/from16 v10, v19

    goto :goto_e

    :cond_23
    move v9, v2

    goto :goto_e

    :cond_24
    move/from16 v22, v9

    move v3, v11

    move-object v4, v12

    move/from16 v23, v13

    move/from16 v24, v14

    move/from16 v20, v15

    move v9, v2

    move/from16 v10, v19

    :goto_e
    const/16 v2, 0x13

    if-le v6, v2, :cond_26

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasRecentTasks()Z

    move-result v2

    if-eqz v2, :cond_26

    const/16 v6, 0x13

    const-string v2, "cch-rec"

    iput-object v2, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_25

    move/from16 v11, v20

    if-ne v11, v0, :cond_27

    goto :goto_f

    :cond_25
    move/from16 v11, v20

    :goto_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Raise procstate to cached recent: "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v4, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :cond_26
    move/from16 v11, v20

    :cond_27
    :goto_10
    const-string v12, ": "

    const-string v13, "Raise to "

    const/16 v14, 0xc8

    if-gt v10, v14, :cond_28

    const/4 v15, 0x3

    if-le v6, v15, :cond_2d

    goto :goto_11

    :cond_28
    const/4 v15, 0x3

    :goto_11
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasForegroundServices()Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v10, 0xc8

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasLocationForegroundServices()Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v2, 0x3

    const-string v6, "fg-service-location"

    iput-object v6, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    move v6, v2

    goto :goto_12

    :cond_29
    const/4 v2, 0x5

    const-string v6, "fg-service"

    iput-object v6, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    move v6, v2

    :goto_12
    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->cached:Z

    const/4 v5, 0x2

    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_2a

    if-ne v11, v0, :cond_2d

    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v4, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_2b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasOverlayUi()Z

    move-result v2

    if-eqz v2, :cond_2d

    const/16 v10, 0xc8

    const/4 v6, 0x7

    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->cached:Z

    const-string v2, "has-overlay-ui"

    iput-object v2, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    const/4 v5, 0x2

    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_2c

    if-ne v11, v0, :cond_2d

    :cond_2c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise to overlay ui: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v4, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    :goto_13
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasForegroundServices()Z

    move-result v2

    if-eqz v2, :cond_30

    const/16 v2, 0x32

    if-le v10, v2, :cond_30

    iget-wide v2, v7, Lcom/android/server/am/ProcessRecord;->lastTopTime:J

    iget-object v15, v8, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v14, v15, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_FGS_GRACE_DURATION:J

    add-long/2addr v2, v14

    const/16 v14, 0x64

    cmp-long v2, v2, p5

    if-gtz v2, :cond_2e

    iget v2, v7, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v15, 0x2

    if-gt v2, v15, :cond_31

    goto :goto_14

    :cond_2e
    const/4 v15, 0x2

    :goto_14
    const/16 v10, 0x32

    const-string v2, "fg-service-act"

    iput-object v2, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_2f

    if-ne v11, v0, :cond_31

    :cond_2f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise to recent fg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v4, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :cond_30
    const/16 v14, 0x64

    const/4 v15, 0x2

    :cond_31
    :goto_15
    const/16 v3, 0x9

    const/16 v2, 0xc8

    if-gt v10, v2, :cond_32

    if-le v6, v3, :cond_34

    :cond_32
    iget-object v2, v7, Lcom/android/server/am/ProcessRecord;->forcingToImportant:Ljava/lang/Object;

    if-eqz v2, :cond_34

    const/16 v10, 0xc8

    const/16 v6, 0x9

    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->cached:Z

    const-string v2, "force-imp"

    iput-object v2, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    iget-object v2, v7, Lcom/android/server/am/ProcessRecord;->forcingToImportant:Ljava/lang/Object;

    iput-object v2, v7, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    const/4 v5, 0x2

    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_33

    if-ne v11, v0, :cond_34

    :cond_33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Raise to force imp: "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v4, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    iget-object v2, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isHeavyWeightProcess(Lcom/android/server/wm/WindowProcessController;)Z

    move-result v2

    if-eqz v2, :cond_38

    const/16 v2, 0x190

    if-le v10, v2, :cond_36

    const/16 v10, 0x190

    const/4 v5, 0x0

    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->cached:Z

    const-string v2, "heavy"

    iput-object v2, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_35

    if-ne v11, v0, :cond_36

    :cond_35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Raise adj to heavy: "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v4, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_36
    const/16 v2, 0xe

    if-le v6, v2, :cond_38

    const/16 v6, 0xe

    const-string v2, "heavy"

    iput-object v2, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_37

    if-ne v11, v0, :cond_38

    :cond_37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Raise procstate to heavy: "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v4, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->isHomeProcess()Z

    move-result v2

    if-eqz v2, :cond_3c

    const/16 v2, 0x258

    if-le v10, v2, :cond_3a

    const/16 v10, 0x258

    const/4 v5, 0x0

    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->cached:Z

    const-string v2, "home"

    iput-object v2, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_39

    if-ne v11, v0, :cond_3a

    :cond_39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Raise adj to home: "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v4, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    const/16 v2, 0xf

    if-le v6, v2, :cond_3c

    const/16 v6, 0xf

    const-string v2, "home"

    iput-object v2, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_3b

    if-ne v11, v0, :cond_3c

    :cond_3b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Raise procstate to home: "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v4, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->isPreviousProcess()Z

    move-result v2

    const/16 v14, 0x10

    if-eqz v2, :cond_40

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v2

    if-eqz v2, :cond_40

    const/16 v2, 0x2bc

    if-le v10, v2, :cond_3e

    const/16 v10, 0x2bc

    const/4 v5, 0x0

    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->cached:Z

    const-string/jumbo v2, "previous"

    iput-object v2, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_3d

    if-ne v11, v0, :cond_3e

    :cond_3d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Raise adj to prev: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v4, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3e
    if-le v6, v14, :cond_40

    const/16 v6, 0x10

    const-string/jumbo v2, "previous"

    iput-object v2, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_3f

    if-ne v11, v0, :cond_40

    :cond_3f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Raise procstate to prev: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v4, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_40
    if-nez p7, :cond_41

    move v2, v10

    goto :goto_16

    :cond_41
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v2

    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_16
    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    if-nez p7, :cond_42

    move v2, v6

    goto :goto_17

    :cond_42
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurRawProcState()I

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_17
    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    iget v2, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iput v2, v7, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    iget-object v2, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBackupTargets:Landroid/util/SparseArray;

    iget v15, v7, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v2, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/android/server/am/BackupRecord;

    if-eqz v15, :cond_49

    iget-object v2, v15, Lcom/android/server/am/BackupRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v7, v2, :cond_49

    const/16 v2, 0x12c

    if-le v10, v2, :cond_47

    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKUP:Z

    if-eqz v2, :cond_43

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "oom BACKUP_APP_ADJ for "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    const/16 v2, 0x12c

    if-le v6, v3, :cond_44

    const/16 v6, 0x9

    :cond_44
    const-string v10, "backup"

    iput-object v10, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v10, :cond_45

    if-ne v11, v0, :cond_46

    :cond_45
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Raise adj to backup: "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v4, v10}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_46
    const/4 v10, 0x0

    iput-boolean v10, v7, Lcom/android/server/am/ProcessRecord;->cached:Z

    move v10, v2

    :cond_47
    const/16 v2, 0xa

    if-le v6, v2, :cond_49

    const/16 v6, 0xa

    const-string v2, "backup"

    iput-object v2, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_48

    if-ne v11, v0, :cond_49

    :cond_48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Raise procstate to backup: "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v4, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_49
    iget-object v2, v7, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    const/4 v14, 0x1

    sub-int/2addr v2, v14

    move/from16 v39, v10

    move v10, v2

    move/from16 v2, v39

    :goto_18
    if-ltz v10, :cond_8a

    if-gtz v2, :cond_4b

    if-eqz v5, :cond_4b

    const/4 v3, 0x2

    if-le v6, v3, :cond_4a

    goto :goto_19

    :cond_4a
    move v14, v0

    move-object/from16 v27, v1

    move/from16 v26, v5

    move-object v10, v7

    move/from16 v32, v9

    move-object/from16 v28, v15

    move-object v7, v4

    move-wide/from16 v4, p5

    goto/16 :goto_34

    :cond_4b
    :goto_19
    iget-object v3, v7, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v3, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    iget-boolean v14, v3, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v14, :cond_56

    const/4 v14, 0x1

    iput-boolean v14, v7, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    const/16 v14, 0xb

    if-le v6, v14, :cond_4e

    const/16 v6, 0xb

    const-string/jumbo v14, "started-services"

    iput-object v14, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    sget-boolean v14, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v14, :cond_4d

    if-ne v11, v0, :cond_4c

    goto :goto_1a

    :cond_4c
    move/from16 v26, v5

    goto :goto_1b

    :cond_4d
    :goto_1a
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v26, v5

    const-string v5, "Raise procstate to started service: "

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :cond_4e
    move/from16 v26, v5

    :goto_1b
    iget-boolean v5, v7, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-eqz v5, :cond_50

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->isHomeProcess()Z

    move-result v5

    if-nez v5, :cond_50

    const/16 v5, 0x1f4

    if-le v2, v5, :cond_4f

    const-string v5, "cch-started-ui-services"

    iput-object v5, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    :cond_4f
    move-object/from16 v27, v1

    move-object/from16 v28, v15

    const/4 v5, 0x0

    goto :goto_1d

    :cond_50
    move v14, v6

    iget-wide v5, v3, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    move-object/from16 v27, v1

    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move/from16 v29, v14

    move-object/from16 v28, v15

    iget-wide v14, v1, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    add-long/2addr v5, v14

    cmp-long v1, p5, v5

    if-gez v1, :cond_54

    const/16 v1, 0x1f4

    if-le v2, v1, :cond_53

    const/16 v1, 0x1f4

    const-string/jumbo v2, "started-services"

    iput-object v2, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_51

    if-ne v11, v0, :cond_52

    :cond_51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Raise adj to started service: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v4, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_52
    const/4 v5, 0x0

    iput-boolean v5, v7, Lcom/android/server/am/ProcessRecord;->cached:Z

    move v2, v1

    goto :goto_1c

    :cond_53
    const/4 v5, 0x0

    goto :goto_1c

    :cond_54
    const/4 v5, 0x0

    :goto_1c
    const/16 v1, 0x1f4

    if-le v2, v1, :cond_55

    const-string v1, "cch-started-services"

    iput-object v1, v7, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    :cond_55
    move/from16 v6, v29

    goto :goto_1d

    :cond_56
    move-object/from16 v27, v1

    move/from16 v26, v5

    move-object/from16 v28, v15

    const/4 v5, 0x0

    :goto_1d
    invoke-virtual {v3}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v14

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v15, 0x1

    sub-int/2addr v1, v15

    move/from16 v39, v6

    move v6, v1

    move/from16 v1, v39

    :goto_1e
    if-ltz v6, :cond_89

    if-gtz v2, :cond_58

    if-eqz v26, :cond_58

    const/4 v5, 0x2

    if-le v1, v5, :cond_57

    goto :goto_1f

    :cond_57
    move-wide/from16 v5, p5

    move v14, v0

    move/from16 v32, v9

    move/from16 v33, v10

    move-object v10, v7

    move-object v7, v4

    goto/16 :goto_33

    :cond_58
    :goto_1f
    invoke-virtual {v14, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    const/16 v18, 0x0

    move v15, v1

    move v1, v2

    move/from16 v2, v18

    :goto_20
    move/from16 v25, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_88

    if-gtz v1, :cond_5a

    if-eqz v26, :cond_5a

    const/4 v0, 0x2

    if-le v15, v0, :cond_59

    goto :goto_21

    :cond_59
    move/from16 v17, v6

    move/from16 v32, v9

    move/from16 v33, v10

    move-object/from16 v31, v14

    move/from16 v14, v25

    move-object v10, v7

    move-object v7, v4

    move-object v4, v3

    move v3, v1

    move-wide/from16 v1, p5

    goto/16 :goto_32

    :cond_5a
    :goto_21
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    move/from16 v29, v1

    iget-object v1, v0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-ne v1, v7, :cond_5b

    move/from16 v21, v2

    move-object/from16 v34, v3

    move-object/from16 v35, v4

    move-object/from16 v18, v5

    move/from16 v17, v6

    move/from16 v32, v9

    move/from16 v33, v10

    move-object/from16 v31, v14

    move/from16 v14, v25

    move-object v10, v7

    goto :goto_22

    :cond_5b
    invoke-static {v0, v7}, Lcom/android/server/am/OpBGFrozenInjector;->updateImportantUids(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;)V

    const/16 v30, 0x0

    iget v1, v0, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_82

    iget-object v1, v0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    move/from16 v32, v9

    move-object/from16 v31, v14

    move/from16 v14, v25

    move-object v9, v0

    move-object/from16 v0, p0

    move-object/from16 v25, v1

    move/from16 v21, v2

    move/from16 v33, v10

    const/4 v10, 0x0

    move/from16 v2, p2

    move-object/from16 v34, v3

    move-object/from16 v3, p3

    move-object/from16 v35, v4

    move/from16 v4, p4

    move-object/from16 v18, v5

    move/from16 v17, v6

    move-wide/from16 v5, p5

    move-object v10, v7

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZ)Z

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move v3, v15

    move/from16 v4, v29

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;IIZ)Z

    move-result v0

    if-eqz v0, :cond_5c

    nop

    :goto_22
    move-wide/from16 v1, p5

    move/from16 v3, v29

    move-object/from16 v4, v34

    move-object/from16 v7, v35

    goto/16 :goto_31

    :cond_5c
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/ProcessRecord;->getCurRawProcState()I

    move-result v1

    const/16 v2, 0x11

    if-lt v1, v2, :cond_5d

    const/16 v1, 0x14

    :cond_5d
    const/4 v2, 0x0

    iget v3, v9, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/16 v4, 0x10

    and-int/2addr v3, v4

    if-eqz v3, :cond_61

    iget-boolean v3, v10, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-eqz v3, :cond_5f

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowProcessController;->isHomeProcess()Z

    move-result v3

    if-nez v3, :cond_5f

    move/from16 v3, v29

    if-le v3, v0, :cond_5e

    const-string v2, "cch-bound-ui-services"

    :cond_5e
    const/4 v4, 0x0

    iput-boolean v4, v10, Lcom/android/server/am/ProcessRecord;->cached:Z

    move v0, v3

    move v1, v15

    move v5, v1

    move-object/from16 v29, v2

    move-object/from16 v4, v34

    move-wide/from16 v1, p5

    goto :goto_23

    :cond_5f
    move/from16 v3, v29

    move-object/from16 v4, v34

    iget-wide v5, v4, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    iget-object v7, v8, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move/from16 v34, v1

    move-object/from16 v29, v2

    iget-wide v1, v7, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    add-long/2addr v5, v1

    move-wide/from16 v1, p5

    cmp-long v5, v1, v5

    if-ltz v5, :cond_62

    if-le v3, v0, :cond_60

    const-string v5, "cch-bound-services"

    move-object/from16 v29, v5

    :cond_60
    move v0, v3

    move/from16 v5, v34

    goto :goto_23

    :cond_61
    move/from16 v3, v29

    move-object/from16 v4, v34

    move/from16 v34, v1

    move-object/from16 v29, v2

    move-wide/from16 v1, p5

    :cond_62
    move/from16 v5, v34

    :goto_23
    if-le v3, v0, :cond_6e

    iget-boolean v6, v10, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-eqz v6, :cond_64

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowProcessController;->isHomeProcess()Z

    move-result v6

    if-nez v6, :cond_64

    const/16 v6, 0xc8

    if-le v0, v6, :cond_64

    const/16 v6, 0x384

    if-lt v3, v6, :cond_63

    const-string v29, "cch-bound-ui-services"

    move-object/from16 v7, v25

    move/from16 v25, v0

    move/from16 v0, v26

    goto/16 :goto_26

    :cond_63
    move-object/from16 v7, v25

    move/from16 v25, v0

    goto/16 :goto_25

    :cond_64
    iget v6, v9, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v6, v6, 0x48

    if-eqz v6, :cond_66

    const/16 v6, -0x2bc

    if-lt v0, v6, :cond_65

    move v6, v0

    const/16 v7, 0x64

    goto :goto_24

    :cond_65
    const/16 v6, -0x2bc

    const/16 v26, 0x2

    const/4 v15, 0x0

    iget v7, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v9, v15, v7, v1, v2}, Lcom/android/server/am/ConnectionRecord;->trackProcState(IIJ)V

    const/16 v30, 0x1

    const/16 v7, 0x64

    goto :goto_24

    :cond_66
    iget v6, v9, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit16 v6, v6, 0x100

    if-eqz v6, :cond_67

    const/16 v6, 0xc8

    if-ge v0, v6, :cond_67

    const/16 v6, 0xfa

    if-le v3, v6, :cond_67

    const/16 v6, 0xfa

    const/16 v7, 0x64

    goto :goto_24

    :cond_67
    iget v6, v9, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v7, 0x40000000    # 2.0f

    and-int/2addr v6, v7

    if-eqz v6, :cond_68

    const/16 v6, 0xc8

    if-ge v0, v6, :cond_69

    if-le v3, v6, :cond_69

    const/16 v7, 0xc8

    move v6, v7

    const/16 v7, 0x64

    goto :goto_24

    :cond_68
    const/16 v6, 0xc8

    :cond_69
    if-lt v0, v6, :cond_6a

    move v6, v0

    const/16 v7, 0x64

    goto :goto_24

    :cond_6a
    const/16 v7, 0x64

    if-le v3, v7, :cond_6b

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_24

    :cond_6b
    move v6, v3

    :goto_24
    move-object/from16 v7, v25

    move/from16 v25, v0

    iget-boolean v0, v7, Lcom/android/server/am/ProcessRecord;->cached:Z

    if-nez v0, :cond_6c

    const/4 v0, 0x0

    iput-boolean v0, v10, Lcom/android/server/am/ProcessRecord;->cached:Z

    :cond_6c
    if-le v3, v6, :cond_6d

    move v0, v6

    invoke-virtual {v10, v0}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    const-string/jumbo v29, "service"

    move v3, v0

    move/from16 v0, v26

    goto :goto_26

    :cond_6d
    move/from16 v0, v26

    goto :goto_26

    :cond_6e
    move-object/from16 v7, v25

    move/from16 v25, v0

    :goto_25
    move/from16 v0, v26

    :goto_26
    iget v6, v9, Lcom/android/server/am/ConnectionRecord;->flags:I

    const v26, 0x800004

    and-int v6, v6, v26

    if-nez v6, :cond_77

    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getCurrentSchedulingGroup()I

    move-result v6

    if-le v6, v0, :cond_70

    move/from16 v26, v0

    iget v0, v9, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6f

    move v0, v6

    goto :goto_27

    :cond_6f
    const/4 v0, 0x2

    goto :goto_27

    :cond_70
    move/from16 v26, v0

    :goto_27
    move/from16 v26, v0

    const/4 v0, 0x2

    if-ge v5, v0, :cond_74

    const/16 v0, 0x1000

    invoke-virtual {v9, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_71

    const/4 v0, 0x3

    goto :goto_28

    :cond_71
    const/4 v0, 0x6

    :goto_28
    nop

    move/from16 v36, v6

    iget v6, v9, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v34, 0x4000000

    and-int v6, v6, v34

    if-eqz v6, :cond_72

    move v5, v0

    move-object/from16 v37, v7

    const/4 v7, 0x1

    goto :goto_29

    :cond_72
    iget-object v6, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v6, v6, Lcom/android/server/am/ActivityManagerService;->mWakefulness:I

    move-object/from16 v37, v7

    const/4 v7, 0x1

    if-ne v6, v7, :cond_73

    iget v6, v9, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v34, 0x2000000

    and-int v6, v6, v34

    if-eqz v6, :cond_73

    move v5, v0

    goto :goto_29

    :cond_73
    const/4 v5, 0x7

    :goto_29
    goto :goto_2a

    :cond_74
    move/from16 v36, v6

    move-object/from16 v37, v7

    const/4 v7, 0x1

    const/4 v0, 0x2

    if-ne v5, v0, :cond_75

    const/16 v0, 0x1000

    invoke-virtual {v9, v0}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_76

    const/4 v0, 0x4

    move v5, v0

    goto :goto_2a

    :cond_75
    const/16 v0, 0x1000

    const/4 v6, 0x5

    if-gt v5, v6, :cond_76

    invoke-virtual {v9, v0}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_76

    const/4 v0, 0x5

    move v5, v0

    :cond_76
    :goto_2a
    move v6, v5

    move/from16 v5, v26

    const/16 v0, 0x9

    goto :goto_2b

    :cond_77
    move/from16 v26, v0

    move-object/from16 v37, v7

    const/4 v7, 0x1

    iget v0, v9, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v6, 0x800000

    and-int/2addr v0, v6

    if-nez v0, :cond_78

    const/16 v0, 0x9

    if-ge v5, v0, :cond_79

    const/16 v5, 0x9

    move v6, v5

    move/from16 v5, v26

    goto :goto_2b

    :cond_78
    const/16 v0, 0x9

    const/16 v6, 0x8

    if-ge v5, v6, :cond_79

    const/16 v5, 0x8

    move v6, v5

    move/from16 v5, v26

    goto :goto_2b

    :cond_79
    move v6, v5

    move/from16 v5, v26

    :goto_2b
    const/4 v7, 0x3

    if-ge v5, v7, :cond_7a

    iget v0, v9, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v26, 0x80000

    and-int v0, v0, v26

    if-eqz v0, :cond_7a

    const/4 v0, 0x3

    move/from16 v26, v0

    goto :goto_2c

    :cond_7a
    move/from16 v26, v5

    :goto_2c
    if-nez v30, :cond_7b

    iget v0, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v9, v6, v0, v1, v2}, Lcom/android/server/am/ConnectionRecord;->trackProcState(IIJ)V

    :cond_7b
    if-le v15, v6, :cond_7d

    move v15, v6

    invoke-virtual {v10, v15}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    if-nez v29, :cond_7c

    const-string/jumbo v29, "service"

    move-object/from16 v0, v29

    goto :goto_2d

    :cond_7c
    move-object/from16 v0, v29

    goto :goto_2d

    :cond_7d
    move-object/from16 v0, v29

    :goto_2d
    const/16 v5, 0x8

    if-ge v15, v5, :cond_7e

    iget v5, v9, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v29, 0x20000000

    and-int v5, v5, v29

    if-eqz v5, :cond_7e

    const/4 v5, 0x1

    invoke-virtual {v10, v5}, Lcom/android/server/am/ProcessRecord;->setPendingUiClean(Z)V

    :cond_7e
    if-eqz v0, :cond_81

    iput-object v0, v10, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    const/4 v5, 0x2

    iput v5, v10, Lcom/android/server/am/ProcessRecord;->adjTypeCode:I

    iget-object v5, v9, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iput-object v5, v10, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    iput v6, v10, Lcom/android/server/am/ProcessRecord;->adjSourceProcState:I

    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    iput-object v5, v10, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v5, :cond_80

    if-ne v11, v14, :cond_7f

    goto :goto_2e

    :cond_7f
    move-object/from16 v7, v35

    goto :goto_2f

    :cond_80
    :goto_2e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", due to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v9, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v7, v7, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " adj="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " procState="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v7, v35

    invoke-virtual {v8, v7, v5}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    :cond_81
    move-object/from16 v7, v35

    goto :goto_2f

    :cond_82
    move/from16 v21, v2

    move-object/from16 v18, v5

    move/from16 v17, v6

    move/from16 v32, v9

    move/from16 v33, v10

    move-object/from16 v31, v14

    move/from16 v14, v25

    move-wide/from16 v1, p5

    move-object v9, v0

    move-object v10, v7

    move-object v7, v4

    move-object v4, v3

    move/from16 v3, v29

    :goto_2f
    iget v0, v9, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v5, 0x8000000

    and-int/2addr v0, v5

    if-eqz v0, :cond_83

    const/4 v0, 0x1

    iput-boolean v0, v10, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    :cond_83
    iget-object v0, v9, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    iget v5, v9, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_87

    if-eqz v0, :cond_87

    if-lez v3, :cond_87

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->isActivityVisible()Z

    move-result v5

    if-eqz v5, :cond_87

    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    iget v5, v9, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_85

    iget v5, v9, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_84

    const/16 v26, 0x4

    goto :goto_30

    :cond_84
    const/16 v26, 0x2

    :cond_85
    :goto_30
    const/4 v5, 0x0

    iput-boolean v5, v10, Lcom/android/server/am/ProcessRecord;->cached:Z

    const-string/jumbo v5, "service"

    iput-object v5, v10, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    const/4 v5, 0x2

    iput v5, v10, Lcom/android/server/am/ProcessRecord;->adjTypeCode:I

    iput-object v0, v10, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    iput v15, v10, Lcom/android/server/am/ProcessRecord;->adjSourceProcState:I

    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    iput-object v5, v10, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v5, :cond_86

    if-ne v11, v14, :cond_87

    :cond_86
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Raise to service w/activity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v7, v5}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_87
    :goto_31
    add-int/lit8 v0, v21, 0x1

    move v2, v0

    move v1, v3

    move-object v3, v4

    move-object v4, v7

    move-object v7, v10

    move v0, v14

    move/from16 v6, v17

    move-object/from16 v5, v18

    move-object/from16 v14, v31

    move/from16 v9, v32

    move/from16 v10, v33

    goto/16 :goto_20

    :cond_88
    move/from16 v21, v2

    move-object/from16 v18, v5

    move/from16 v17, v6

    move/from16 v32, v9

    move/from16 v33, v10

    move-object/from16 v31, v14

    move/from16 v14, v25

    move-object v10, v7

    move-object v7, v4

    move-object v4, v3

    move v3, v1

    move-wide/from16 v1, p5

    :goto_32
    add-int/lit8 v6, v17, -0x1

    move v2, v3

    move-object v3, v4

    move-object v4, v7

    move-object v7, v10

    move v0, v14

    move v1, v15

    move-object/from16 v14, v31

    move/from16 v9, v32

    move/from16 v10, v33

    const/4 v5, 0x0

    const/4 v15, 0x1

    goto/16 :goto_1e

    :cond_89
    move/from16 v17, v6

    move/from16 v32, v9

    move/from16 v33, v10

    move-object/from16 v31, v14

    move-wide/from16 v5, p5

    move v14, v0

    move-object v10, v7

    move-object v7, v4

    move-object v4, v3

    :goto_33
    add-int/lit8 v0, v33, -0x1

    move v6, v1

    move-object v4, v7

    move-object v7, v10

    move/from16 v5, v26

    move-object/from16 v1, v27

    move-object/from16 v15, v28

    move/from16 v9, v32

    const/16 v3, 0x9

    move v10, v0

    move v0, v14

    goto/16 :goto_18

    :cond_8a
    move v14, v0

    move-object/from16 v27, v1

    move/from16 v26, v5

    move/from16 v32, v9

    move/from16 v33, v10

    move-object/from16 v28, v15

    move-object v10, v7

    move-object v7, v4

    move-wide/from16 v4, p5

    :goto_34
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v9, v0

    :goto_35
    if-ltz v9, :cond_a6

    if-gtz v2, :cond_8c

    if-eqz v26, :cond_8c

    const/4 v0, 0x2

    if-le v6, v0, :cond_8b

    goto :goto_36

    :cond_8b
    const/16 v16, 0x3

    move/from16 v39, v11

    move-object v11, v7

    move-wide/from16 v40, v4

    move/from16 v5, v39

    move v4, v14

    move-wide/from16 v14, v40

    goto/16 :goto_43

    :cond_8c
    :goto_36
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/server/am/ContentProviderRecord;

    iget-object v0, v15, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v16, 0x1

    add-int/lit8 v0, v0, -0x1

    move v3, v2

    move v1, v6

    move/from16 v2, v26

    move v6, v0

    :goto_37
    if-ltz v6, :cond_9e

    if-gtz v3, :cond_8e

    if-eqz v2, :cond_8e

    const/4 v0, 0x2

    if-le v1, v0, :cond_8d

    goto :goto_38

    :cond_8d
    move v6, v1

    move/from16 v17, v9

    move-object/from16 v18, v12

    move-object/from16 v29, v13

    const/16 v16, 0x3

    move v13, v2

    move/from16 v39, v11

    move-object v11, v7

    move-object v7, v15

    move-wide/from16 v40, v4

    move/from16 v5, v39

    move v4, v14

    move-wide/from16 v14, v40

    goto/16 :goto_41

    :cond_8e
    :goto_38
    iget-object v0, v15, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderConnection;

    move/from16 v17, v9

    iget-object v9, v0, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    if-ne v9, v10, :cond_8f

    move/from16 v21, v1

    move/from16 v26, v3

    move/from16 v33, v6

    move-object/from16 v38, v7

    move/from16 v34, v11

    move-object/from16 v18, v12

    move-object/from16 v29, v13

    move/from16 v30, v14

    move-object/from16 v31, v15

    move/from16 v11, v16

    const/16 v16, 0x3

    move v13, v2

    move-wide v14, v4

    goto :goto_39

    :cond_8f
    invoke-static {v9, v10}, Lcom/android/server/am/OpBGFrozenInjector;->updateImportantUids(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)V

    move-object/from16 v18, v12

    move-object v12, v0

    move-object/from16 v0, p0

    move/from16 v21, v1

    move-object v1, v9

    move-object/from16 v29, v13

    move v13, v2

    move/from16 v2, p2

    move/from16 v26, v3

    move-object/from16 v3, p3

    move/from16 v30, v14

    move-object/from16 v31, v15

    move-wide v14, v4

    move/from16 v4, p4

    move/from16 v33, v6

    move-wide/from16 v5, p5

    move-object/from16 v38, v7

    move/from16 v34, v11

    move/from16 v11, v16

    const/16 v16, 0x3

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZ)Z

    move-object/from16 v1, p1

    move-object v2, v9

    move/from16 v3, v21

    move/from16 v4, v26

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;IIZ)Z

    move-result v0

    if-eqz v0, :cond_90

    nop

    :goto_39
    move v2, v13

    move/from16 v1, v21

    move/from16 v3, v26

    move/from16 v4, v30

    move-object/from16 v7, v31

    move/from16 v5, v34

    move-object/from16 v11, v38

    goto/16 :goto_40

    :cond_90
    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v2

    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->getCurRawProcState()I

    move-result v0

    const/16 v1, 0x11

    if-lt v0, v1, :cond_91

    const/16 v0, 0x14

    :cond_91
    const/4 v1, 0x0

    move/from16 v3, v26

    if-le v3, v2, :cond_95

    iget-boolean v4, v10, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-eqz v4, :cond_92

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowProcessController;->isHomeProcess()Z

    move-result v4

    if-nez v4, :cond_92

    const/16 v4, 0xc8

    if-le v2, v4, :cond_93

    const-string v1, "cch-ui-provider"

    goto :goto_3b

    :cond_92
    const/16 v4, 0xc8

    :cond_93
    if-lez v2, :cond_94

    move v5, v2

    goto :goto_3a

    :cond_94
    const/4 v5, 0x0

    :goto_3a
    move v3, v5

    invoke-virtual {v10, v3}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    const-string/jumbo v1, "provider"

    :goto_3b
    iget-boolean v5, v10, Lcom/android/server/am/ProcessRecord;->cached:Z

    iget-boolean v6, v9, Lcom/android/server/am/ProcessRecord;->cached:Z

    and-int/2addr v5, v6

    iput-boolean v5, v10, Lcom/android/server/am/ProcessRecord;->cached:Z

    goto :goto_3c

    :cond_95
    const/16 v4, 0xc8

    :goto_3c
    const/4 v5, 0x5

    if-gt v0, v5, :cond_98

    if-nez v1, :cond_96

    const-string/jumbo v1, "provider"

    :cond_96
    const/4 v5, 0x2

    if-ne v0, v5, :cond_97

    const/4 v0, 0x4

    goto :goto_3d

    :cond_97
    const/4 v0, 0x6

    goto :goto_3d

    :cond_98
    const/4 v5, 0x2

    :goto_3d
    iget v6, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v12, v0, v6, v14, v15}, Lcom/android/server/am/ContentProviderConnection;->trackProcState(IIJ)V

    move/from16 v6, v21

    if-le v6, v0, :cond_99

    move v6, v0

    invoke-virtual {v10, v6}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    :cond_99
    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->getCurrentSchedulingGroup()I

    move-result v7

    if-le v7, v13, :cond_9a

    const/4 v7, 0x2

    move v13, v7

    :cond_9a
    if-eqz v1, :cond_9d

    iput-object v1, v10, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    iput v11, v10, Lcom/android/server/am/ProcessRecord;->adjTypeCode:I

    iput-object v9, v10, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    iput v0, v10, Lcom/android/server/am/ProcessRecord;->adjSourceProcState:I

    move-object/from16 v7, v31

    iget-object v4, v7, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    iput-object v4, v10, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v4, :cond_9c

    move/from16 v4, v30

    move/from16 v5, v34

    if-ne v5, v4, :cond_9b

    goto :goto_3e

    :cond_9b
    move-object/from16 v11, v38

    goto :goto_3f

    :cond_9c
    move/from16 v4, v30

    move/from16 v5, v34

    :goto_3e
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v0

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", due to "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " adj="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " procState="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v11, v38

    invoke-virtual {v8, v11, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f

    :cond_9d
    move/from16 v21, v0

    move/from16 v4, v30

    move-object/from16 v7, v31

    move/from16 v5, v34

    move-object/from16 v11, v38

    :goto_3f
    move v1, v6

    move v2, v13

    :goto_40
    add-int/lit8 v6, v33, -0x1

    move/from16 v9, v17

    move-object/from16 v12, v18

    move-object/from16 v13, v29

    const/16 v16, 0x1

    move-wide/from16 v39, v14

    move v14, v4

    move-object v15, v7

    move-object v7, v11

    move v11, v5

    move-wide/from16 v4, v39

    goto/16 :goto_37

    :cond_9e
    move/from16 v33, v6

    move/from16 v17, v9

    move-object/from16 v18, v12

    move-object/from16 v29, v13

    const/16 v16, 0x3

    move v6, v1

    move v13, v2

    move/from16 v39, v11

    move-object v11, v7

    move-object v7, v15

    move-wide/from16 v40, v4

    move/from16 v5, v39

    move v4, v14

    move-wide/from16 v14, v40

    :goto_41
    invoke-virtual {v7}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    move-result v0

    if-eqz v0, :cond_a5

    if-lez v3, :cond_a1

    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    const/4 v2, 0x2

    const/4 v0, 0x0

    iput-boolean v0, v10, Lcom/android/server/am/ProcessRecord;->cached:Z

    const-string v0, "ext-provider"

    iput-object v0, v10, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    iget-object v0, v7, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    iput-object v0, v10, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_9f

    if-ne v5, v4, :cond_a0

    :cond_9f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Raise adj to external provider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v11, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a0
    move v13, v2

    :cond_a1
    const/4 v0, 0x7

    if-le v6, v0, :cond_a4

    const/4 v0, 0x7

    invoke-virtual {v10, v0}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v1, :cond_a2

    if-ne v5, v4, :cond_a3

    :cond_a2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raise procstate to external provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v11, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a3
    move v6, v0

    move v2, v3

    move/from16 v26, v13

    goto :goto_42

    :cond_a4
    move v2, v3

    move/from16 v26, v13

    goto :goto_42

    :cond_a5
    move v2, v3

    move/from16 v26, v13

    :goto_42
    add-int/lit8 v9, v17, -0x1

    move-object v7, v11

    move-object/from16 v12, v18

    move-object/from16 v13, v29

    move v11, v5

    move-wide/from16 v39, v14

    move v14, v4

    move-wide/from16 v4, v39

    goto/16 :goto_35

    :cond_a6
    move/from16 v17, v9

    const/16 v16, 0x3

    move/from16 v39, v11

    move-object v11, v7

    move-wide/from16 v40, v4

    move/from16 v5, v39

    move v4, v14

    move-wide/from16 v14, v40

    :goto_43
    iget-wide v0, v10, Lcom/android/server/am/ProcessRecord;->lastProviderTime:J

    const-wide/16 v12, 0x0

    cmp-long v0, v0, v12

    if-lez v0, :cond_aa

    iget-wide v0, v10, Lcom/android/server/am/ProcessRecord;->lastProviderTime:J

    iget-object v3, v8, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v12, v3, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    add-long/2addr v0, v12

    cmp-long v0, v0, v14

    if-lez v0, :cond_aa

    const/16 v0, 0x2bc

    if-le v2, v0, :cond_a8

    const/16 v2, 0x2bc

    const/16 v26, 0x0

    const/4 v0, 0x0

    iput-boolean v0, v10, Lcom/android/server/am/ProcessRecord;->cached:Z

    const-string/jumbo v0, "recent-provider"

    iput-object v0, v10, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_a7

    if-ne v5, v4, :cond_a8

    :cond_a7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Raise adj to recent provider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v11, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a8
    const/16 v0, 0x10

    if-le v6, v0, :cond_aa

    const/16 v6, 0x10

    const-string/jumbo v0, "recent-provider"

    iput-object v0, v10, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_a9

    if-ne v5, v4, :cond_aa

    :cond_a9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Raise procstate to recent provider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v11, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_aa
    const/16 v0, 0x14

    if-lt v6, v0, :cond_ac

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasClientActivities()Z

    move-result v0

    if-eqz v0, :cond_ab

    const/16 v6, 0x12

    const-string v0, "cch-client-act"

    iput-object v0, v10, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    goto :goto_44

    :cond_ab
    iget-boolean v0, v10, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-eqz v0, :cond_ac

    const/16 v6, 0x11

    const-string v0, "cch-as-act"

    iput-object v0, v10, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    :cond_ac
    :goto_44
    const/16 v0, 0x1f4

    if-ne v2, v0, :cond_b2

    if-eqz p4, :cond_b1

    iget v0, v8, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    iget v1, v8, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    div-int/lit8 v1, v1, 0x3

    if-le v0, v1, :cond_ad

    const/4 v0, 0x1

    goto :goto_45

    :cond_ad
    const/4 v0, 0x0

    :goto_45
    iput-boolean v0, v10, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    iget v0, v8, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v8, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    iget-boolean v0, v10, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    if-nez v0, :cond_b0

    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mLastMemoryLevel:I

    if-lez v0, :cond_af

    iget-wide v0, v10, Lcom/android/server/am/ProcessRecord;->lastPss:J

    iget-object v3, v8, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessList;->getCachedRestoreThresholdKb()J

    move-result-wide v11

    cmp-long v0, v0, v11

    if-ltz v0, :cond_ae

    const/4 v0, 0x1

    iput-boolean v0, v10, Lcom/android/server/am/ProcessRecord;->serviceHighRam:Z

    iput-boolean v0, v10, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    const/4 v0, 0x0

    goto :goto_47

    :cond_ae
    const/4 v0, 0x1

    goto :goto_46

    :cond_af
    const/4 v0, 0x1

    :goto_46
    iget v1, v8, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    add-int/2addr v1, v0

    iput v1, v8, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    const/4 v0, 0x0

    goto :goto_47

    :cond_b0
    const/4 v0, 0x0

    iput-boolean v0, v10, Lcom/android/server/am/ProcessRecord;->serviceHighRam:Z

    goto :goto_47

    :cond_b1
    const/4 v0, 0x0

    :goto_47
    iget-boolean v1, v10, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    if-eqz v1, :cond_b3

    const/16 v2, 0x320

    goto :goto_48

    :cond_b2
    const/4 v0, 0x0

    :cond_b3
    :goto_48
    move-object/from16 v1, p3

    if-ne v10, v1, :cond_b4

    iget v3, v8, Lcom/android/server/am/OomAdjuster;->mLastTopUid:I

    iget v7, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v3, v7, :cond_b4

    invoke-direct {v8, v1}, Lcom/android/server/am/OomAdjuster;->updataKernelTopUid(Lcom/android/server/am/ProcessRecord;)V

    iget v3, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    iput v3, v8, Lcom/android/server/am/OomAdjuster;->mLastTopUid:I

    :cond_b4
    invoke-virtual {v10, v2}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    iget v3, v10, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    if-le v2, v3, :cond_b6

    iget v2, v10, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    iget v3, v10, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    const/16 v7, 0xfa

    if-gt v3, v7, :cond_b5

    const/16 v26, 0x2

    move v3, v2

    move/from16 v2, v26

    goto :goto_49

    :cond_b5
    move v3, v2

    move/from16 v2, v26

    goto :goto_49

    :cond_b6
    move v3, v2

    move/from16 v2, v26

    :goto_49
    const/4 v7, 0x6

    if-lt v6, v7, :cond_b7

    iget-object v7, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v7, v7, Lcom/android/server/am/ActivityManagerService;->mWakefulness:I

    const/4 v9, 0x1

    if-eq v7, v9, :cond_b8

    if-le v2, v9, :cond_b8

    const/4 v2, 0x1

    goto :goto_4a

    :cond_b7
    const/4 v9, 0x1

    :cond_b8
    :goto_4a
    invoke-virtual {v10, v3}, Lcom/android/server/am/ProcessRecord;->modifyRawOomAdj(I)I

    move-result v7

    iput v7, v10, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v10, v2}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    invoke-virtual {v10, v6}, Lcom/android/server/am/ProcessRecord;->setCurProcState(I)V

    invoke-virtual {v10, v6}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    move/from16 v7, v32

    invoke-virtual {v10, v7}, Lcom/android/server/am/ProcessRecord;->setHasForegroundActivities(Z)V

    iget v11, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iput v11, v10, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    invoke-static {v10, v1}, Lcom/android/server/am/OomAdjusterInjector;->setTunedAdj(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)V

    iget v11, v10, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v12, v24

    if-lt v11, v12, :cond_ba

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v11

    move/from16 v13, v23

    if-ge v11, v13, :cond_b9

    goto :goto_4b

    :cond_b9
    move v9, v0

    goto :goto_4b

    :cond_ba
    move/from16 v13, v23

    :goto_4b
    return v9
.end method

.method static synthetic lambda$new$0(Landroid/os/Message;)Z
    .locals 8

    const-wide/16 v0, 0x40

    const-string/jumbo v2, "setProcessGroup"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget v2, p0, Landroid/os/Message;->arg1:I

    iget v3, p0, Landroid/os/Message;->arg2:I

    :try_start_0
    invoke-static {v2, v3}, Landroid/os/Process;->setProcessGroup(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_1

    :catchall_0
    move-exception v4

    goto :goto_2

    :catch_0
    move-exception v4

    :try_start_1
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-eqz v5, :cond_0

    const-string v5, "OomAdjuster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed setting process group of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    const/4 v0, 0x1

    return v0

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v4
.end method

.method private maybeUpdateLastTopTime(Lcom/android/server/am/ProcessRecord;J)V
    .locals 2

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    if-le v0, v1, :cond_0

    iput-wide p2, p1, Lcom/android/server/am/ProcessRecord;->lastTopTime:J

    :cond_0
    return-void
.end method

.method private maybeUpdateUsageStatsLocked(Lcom/android/server/am/ProcessRecord;J)V
    .locals 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_USAGE_STATS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Checking proc ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] state changes: old = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", new = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OomAdjuster"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    if-le v0, v1, :cond_7

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    const/4 v1, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gt v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getFgInteractionTime()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ProcessRecord;->setFgInteractionTime(J)V

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getFgInteractionTime()J

    move-result-wide v0

    iget-object v6, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v6, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME:J

    add-long/2addr v0, v6

    cmp-long v0, p2, v0

    if-lez v0, :cond_4

    move v4, v5

    :cond_4
    move v0, v4

    goto :goto_1

    :cond_5
    nop

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    const/4 v1, 0x7

    if-gt v0, v1, :cond_6

    move v4, v5

    :cond_6
    move v0, v4

    invoke-virtual {p1, v2, v3}, Lcom/android/server/am/ProcessRecord;->setFgInteractionTime(J)V

    goto :goto_1

    :cond_7
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p1, v2, v3}, Lcom/android/server/am/ProcessRecord;->setFgInteractionTime(J)V

    :goto_1
    if-eqz v0, :cond_9

    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->reportedInteraction:Z

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getInteractionEventTime()J

    move-result-wide v4

    sub-long v4, p2, v4

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v1, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_9

    :cond_8
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ProcessRecord;->setInteractionEventTime(J)V

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    const/4 v4, 0x0

    :goto_2
    array-length v5, v1

    if-ge v4, v5, :cond_9

    iget-object v5, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    aget-object v6, v1, v4

    iget v7, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    const/4 v8, 0x6

    invoke-virtual {v5, v6, v7, v8}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->reportedInteraction:Z

    if-nez v0, :cond_a

    invoke-virtual {p1, v2, v3}, Lcom/android/server/am/ProcessRecord;->setInteractionEventTime(J)V

    :cond_a
    return-void
.end method

.method private shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;IIZ)Z
    .locals 3

    iget-boolean v0, p2, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    iget v1, p2, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    iget v2, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-ge v1, v2, :cond_1

    if-eqz p5, :cond_0

    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getCurRawProcState()I

    move-result v1

    if-lt v1, p3, :cond_1

    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v1

    if-lt v1, p4, :cond_1

    return v0

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private updataKernelTopUid(Lcom/android/server/am/ProcessRecord;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TOP_APP is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " uid is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Foreground_io"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/am/OomAdjuster$1;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/am/OomAdjuster$1;-><init>(Lcom/android/server/am/OomAdjuster;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjuster$1;->start()V

    return-void
.end method

.method private final updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJ)Z
    .locals 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZ)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move-wide v3, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/OomAdjuster;->applyOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZJJ)Z

    move-result v0

    return v0
.end method


# virtual methods
.method dumpAppCompactorSettings(Ljava/io/PrintWriter;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mAppCompact:Lcom/android/server/am/AppCompactor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppCompactor;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method dumpProcCountsLocked(Ljava/io/PrintWriter;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNumNonCachedProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruSizeLocked()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " total) mNumCachedHiddenProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mNumServiceProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mNewNumServiceProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method dumpProcessListVariablesLocked(Landroid/util/proto/ProtoOutputStream;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    iget v0, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    const-wide v1, 0x10500000031L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget v0, v0, Lcom/android/server/am/ProcessList;->mLruSeq:I

    const-wide v1, 0x10500000032L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v0, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    const-wide v1, 0x10500000033L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v0, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    const-wide v1, 0x10500000035L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v0, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    const-wide v1, 0x10500000036L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void
.end method

.method dumpSequenceNumbersLocked(Ljava/io/PrintWriter;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAdjSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLruSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget v1, v1, Lcom/android/server/am/ProcessList;->mLruSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method idleUidsLocked()V
    .locals 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x0

    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/os/PowerManagerInternal;->startUidChanges()V

    :cond_1
    add-int/lit8 v7, v0, -0x1

    :goto_0
    const-wide/16 v8, 0x0

    if-ltz v7, :cond_6

    iget-object v10, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v10, v7}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v10

    iget-wide v11, v10, Lcom/android/server/am/UidRecord;->lastBackgroundTime:J

    cmp-long v13, v11, v8

    if-lez v13, :cond_5

    iget-boolean v13, v10, Lcom/android/server/am/UidRecord;->idle:Z

    if-nez v13, :cond_5

    cmp-long v13, v11, v3

    if-gtz v13, :cond_3

    iget-object v8, v10, Lcom/android/server/am/UidRecord;->packageName:Ljava/lang/String;

    invoke-static {v8}, Lcom/oneplus/android/server/uididle/UidIdleWhitelistManagerInjector;->shoudSkipIdle(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "skip: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v10, Lcom/android/server/am/UidRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "OomAdjuster"

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget v8, v10, Lcom/android/server/am/UidRecord;->uid:I

    invoke-static {v8}, Lcom/android/server/am/EventLogTags;->writeAmUidIdle(I)V

    const/4 v8, 0x1

    iput-boolean v8, v10, Lcom/android/server/am/UidRecord;->idle:Z

    iput-boolean v8, v10, Lcom/android/server/am/UidRecord;->setIdle:Z

    iget-object v8, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v9, v10, Lcom/android/server/am/UidRecord;->uid:I

    invoke-virtual {v8, v9, v10}, Lcom/android/server/am/ActivityManagerService;->doStopUidLocked(ILcom/android/server/am/UidRecord;)V

    goto :goto_1

    :cond_3
    cmp-long v8, v5, v8

    if-eqz v8, :cond_4

    cmp-long v8, v5, v11

    if-lez v8, :cond_5

    :cond_4
    move-wide v5, v11

    :cond_5
    :goto_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    :cond_6
    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Landroid/os/PowerManagerInternal;->finishUidChanges()V

    :cond_7
    cmp-long v7, v5, v8

    if-lez v7, :cond_8

    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v9, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v9, v9, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    add-long/2addr v9, v5

    sub-long/2addr v9, v1

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_8
    return-void
.end method

.method initSettings()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mAppCompact:Lcom/android/server/am/AppCompactor;

    invoke-virtual {v0}, Lcom/android/server/am/AppCompactor;->init()V

    return-void
.end method

.method maybeUpdateUsageStats(Lcom/android/server/am/ProcessRecord;J)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLocked(Lcom/android/server/am/ProcessRecord;J)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjObserver:Lcom/android/server/am/ActivityManagerService$OomAdjObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x46

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method final setAppIdTempWhitelistStateLocked(IZ)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v1}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v2

    iget v3, v2, Lcom/android/server/am/UidRecord;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    if-ne v3, p1, :cond_0

    iget-boolean v3, v2, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    if-eq v3, p2, :cond_0

    iput-boolean p2, v2, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const-string/jumbo v1, "updateOomAdj_whitelistChange"

    invoke-virtual {p0, v1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method final setUidTempWhitelistStateLocked(IZ)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    if-eq v2, p2, :cond_0

    iput-boolean p2, v1, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    const-string/jumbo v2, "updateOomAdj_whitelistChange"

    invoke-virtual {p0, v2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method updateOomAdjLocked(Ljava/lang/String;)V
    .locals 60
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    move-object/from16 v8, p0

    const-wide/16 v9, 0x40

    move-object/from16 v11, p1

    invoke-static {v9, v10, v11}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjProfiler;->oomAdjStarted()V

    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopAppLocked()Lcom/android/server/am/ProcessRecord;

    move-result-object v12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/32 v15, 0x1b7740

    sub-long v17, v13, v15

    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getLruSizeLocked()I

    move-result v7

    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/UidRecord;->reset()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-eqz v0, :cond_1

    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->rankTaskLayersIfNeeded()V

    :cond_1
    iget v0, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    add-int/2addr v0, v4

    iput v0, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    const/4 v3, 0x0

    iput v3, v8, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    iput v3, v8, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    invoke-static {}, Lcom/android/server/am/OpBGFrozenInjector;->clearImportantUids()V

    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v2, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v0, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    sub-int v1, v0, v2

    const/16 v19, 0xa

    iget v0, v8, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    sub-int v0, v7, v0

    iget v9, v8, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    sub-int/2addr v0, v9

    if-le v0, v1, :cond_2

    move v0, v1

    move v9, v0

    goto :goto_1

    :cond_2
    move v9, v0

    :goto_1
    add-int/lit8 v0, v9, 0xa

    sub-int/2addr v0, v4

    const/16 v10, 0xa

    div-int/2addr v0, v10

    if-ge v0, v4, :cond_3

    const/4 v0, 0x1

    :cond_3
    iget v15, v8, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    if-lez v15, :cond_4

    add-int/2addr v15, v10

    sub-int/2addr v15, v4

    goto :goto_2

    :cond_4
    move v15, v4

    :goto_2
    div-int/2addr v15, v10

    if-ge v15, v4, :cond_5

    const/4 v15, 0x1

    :cond_5
    const/16 v16, -0x1

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    iput v3, v8, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    iput v3, v8, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    const/16 v29, 0x384

    add-int/lit8 v30, v29, 0xa

    const/16 v31, 0x0

    const/16 v32, 0x389

    add-int/lit8 v33, v32, 0xa

    const/16 v34, 0x0

    const-wide/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    add-int/lit8 v39, v7, -0x1

    move/from16 v10, v39

    :goto_3
    move/from16 v39, v2

    const/16 v4, 0x14

    if-ltz v10, :cond_6

    iget-object v2, v8, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    iput-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    invoke-virtual {v2, v4}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    const/16 v4, 0x3e9

    invoke-virtual {v2, v4}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    add-int/lit8 v10, v10, -0x1

    move/from16 v2, v39

    const/4 v4, 0x1

    goto :goto_3

    :cond_6
    const/16 v2, 0x3e9

    add-int/lit8 v10, v7, -0x1

    move/from16 v46, v26

    move/from16 v48, v27

    move/from16 v47, v28

    move/from16 v49, v29

    move/from16 v50, v30

    move/from16 v44, v32

    move/from16 v45, v33

    move-object/from16 v43, v34

    move/from16 v26, v16

    move/from16 v16, v7

    move/from16 v7, v37

    :goto_4
    move-wide/from16 v27, v5

    const-string v3, "app.processName = "

    const-string v4, " app.pid = "

    move/from16 v30, v9

    const-string v9, "OomAdjuster"

    if-ltz v10, :cond_1d

    iget-object v2, v8, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    iget-boolean v5, v8, Lcom/android/server/am/OomAdjuster;->mEnableBServicePropagation:Z

    if-eqz v5, :cond_d

    iget-boolean v5, v2, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    if-eqz v5, :cond_d

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v6, 0x320

    if-ne v5, v6, :cond_d

    add-int/lit8 v7, v7, 0x1

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    :goto_5
    if-ltz v5, :cond_c

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    sget-boolean v51, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v51, :cond_7

    move/from16 v51, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v52, v1

    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " serviceb = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v2, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " s = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sr.lastActivity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v53, v10

    iget-wide v10, v6, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " processName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_7
    move/from16 v51, v0

    move/from16 v52, v1

    move/from16 v53, v10

    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v10, v6, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    sub-long/2addr v0, v10

    iget v10, v8, Lcom/android/server/am/OomAdjuster;->mMinBServiceAgingTime:I

    int-to-long v10, v10

    cmp-long v0, v0, v10

    if-gez v0, :cond_9

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v0, :cond_8

    const-string v0, "Not aged enough!!!"

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v10, 0x0

    goto :goto_7

    :cond_8
    const-wide/16 v10, 0x0

    goto :goto_7

    :cond_9
    const-wide/16 v10, 0x0

    cmp-long v0, v35, v10

    if-nez v0, :cond_a

    iget-wide v0, v6, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    move-object/from16 v32, v2

    move-wide/from16 v35, v0

    move-object/from16 v43, v32

    goto :goto_7

    :cond_a
    iget-wide v0, v6, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    cmp-long v0, v0, v35

    if-gez v0, :cond_b

    iget-wide v0, v6, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    move-object/from16 v32, v2

    move-wide/from16 v35, v0

    move-object/from16 v43, v32

    :cond_b
    :goto_7
    add-int/lit8 v5, v5, -0x1

    move-object/from16 v11, p1

    move/from16 v0, v51

    move/from16 v1, v52

    move/from16 v10, v53

    const/4 v6, 0x1

    goto/16 :goto_5

    :cond_c
    move/from16 v51, v0

    move/from16 v52, v1

    move/from16 v53, v10

    move v11, v7

    move-object/from16 v10, v43

    goto :goto_8

    :cond_d
    move/from16 v51, v0

    move/from16 v52, v1

    move/from16 v53, v10

    move v11, v7

    move-object/from16 v10, v43

    :goto_8
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v0, :cond_e

    if-eqz v10, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Identified app.processName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v10, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v0, :cond_1c

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_1c

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->procStateChanged:Z

    const/16 v4, 0x3e9

    const/4 v5, 0x1

    const/4 v7, 0x0

    move/from16 v9, v51

    move-object/from16 v0, p0

    move/from16 v6, v52

    move-object v1, v2

    move-object/from16 v55, v2

    move/from16 v54, v39

    move v2, v4

    move v4, v3

    move-object v3, v12

    move/from16 v29, v4

    move v4, v5

    move/from16 v56, v6

    move-wide/from16 v32, v27

    move-wide v5, v13

    move-object/from16 v27, v10

    move/from16 v10, v16

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZ)Z

    move-object/from16 v0, v55

    iget-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    or-int v1, v38, v1

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v5, 0x3e9

    if-lt v2, v5, :cond_1b

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move/from16 v28, v11

    move/from16 v16, v46

    move/from16 v6, v47

    move/from16 v7, v48

    move/from16 v3, v49

    move/from16 v4, v50

    const/16 v11, 0x3e7

    move/from16 v5, v44

    move/from16 v2, v45

    if-eq v5, v2, :cond_1a

    add-int/lit8 v11, v21, 0x1

    if-lt v11, v9, :cond_19

    const/16 v21, 0x0

    move/from16 v44, v2

    add-int/lit8 v2, v2, 0xa

    const/16 v5, 0x3e7

    if-le v2, v5, :cond_18

    const/16 v45, 0x3e7

    move/from16 v5, v44

    move/from16 v2, v45

    goto/16 :goto_d

    :pswitch_0
    const/4 v2, 0x0

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    if-eqz v3, :cond_14

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v6, v47

    if-ne v6, v3, :cond_13

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    move/from16 v4, v46

    if-ne v4, v3, :cond_12

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    move/from16 v7, v48

    if-le v3, v7, :cond_11

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    move/from16 v16, v4

    move/from16 v7, v49

    move/from16 v4, v50

    if-ge v7, v4, :cond_f

    move/from16 v28, v11

    const/16 v11, 0x3e7

    if-ge v7, v11, :cond_10

    add-int/lit8 v31, v31, 0x1

    move/from16 v48, v3

    move v3, v7

    goto :goto_9

    :cond_f
    move/from16 v28, v11

    const/16 v11, 0x3e7

    :cond_10
    move/from16 v48, v3

    move v3, v7

    goto :goto_9

    :cond_11
    move/from16 v16, v4

    move/from16 v28, v11

    move/from16 v3, v49

    move/from16 v4, v50

    const/16 v11, 0x3e7

    move/from16 v48, v7

    :goto_9
    const/4 v2, 0x1

    move/from16 v7, v48

    goto :goto_b

    :cond_12
    move/from16 v16, v4

    move/from16 v28, v11

    move/from16 v7, v48

    move/from16 v3, v49

    move/from16 v4, v50

    const/16 v11, 0x3e7

    goto :goto_a

    :cond_13
    move/from16 v28, v11

    move/from16 v16, v46

    move/from16 v7, v48

    move/from16 v3, v49

    move/from16 v4, v50

    const/16 v11, 0x3e7

    :goto_a
    iget v6, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v5, v0, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    iget v7, v0, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    move/from16 v16, v5

    goto :goto_b

    :cond_14
    move/from16 v28, v11

    move/from16 v16, v46

    move/from16 v6, v47

    move/from16 v7, v48

    move/from16 v3, v49

    move/from16 v4, v50

    const/16 v11, 0x3e7

    :goto_b
    if-nez v2, :cond_17

    if-eq v3, v4, :cond_17

    add-int/lit8 v5, v26, 0x1

    const/16 v31, 0x0

    if-lt v5, v15, :cond_16

    const/16 v26, 0x0

    move/from16 v49, v4

    add-int/lit8 v3, v4, 0xa

    if-le v3, v11, :cond_15

    const/16 v50, 0x3e7

    move/from16 v3, v49

    move/from16 v4, v50

    goto :goto_c

    :cond_15
    move v4, v3

    move/from16 v3, v49

    goto :goto_c

    :cond_16
    move/from16 v26, v5

    :cond_17
    :goto_c
    add-int v5, v3, v31

    invoke-virtual {v0, v5}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    add-int v5, v3, v31

    invoke-virtual {v0, v5}, Lcom/android/server/am/ProcessRecord;->modifyRawOomAdj(I)I

    move-result v5

    iput v5, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    move/from16 v38, v1

    move/from16 v49, v3

    move/from16 v50, v4

    move/from16 v47, v6

    move/from16 v48, v7

    move/from16 v46, v16

    goto/16 :goto_e

    :cond_18
    move/from16 v5, v44

    goto :goto_d

    :cond_19
    move/from16 v21, v11

    :cond_1a
    :goto_d
    invoke-virtual {v0, v5}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    invoke-virtual {v0, v5}, Lcom/android/server/am/ProcessRecord;->modifyRawOomAdj(I)I

    move-result v11

    iput v11, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    move/from16 v38, v1

    move/from16 v45, v2

    move/from16 v49, v3

    move/from16 v50, v4

    move/from16 v44, v5

    move/from16 v47, v6

    move/from16 v48, v7

    move/from16 v46, v16

    goto :goto_e

    :cond_1b
    move/from16 v28, v11

    move/from16 v5, v44

    move/from16 v2, v45

    move/from16 v16, v46

    move/from16 v6, v47

    move/from16 v7, v48

    move/from16 v3, v49

    move/from16 v4, v50

    move/from16 v38, v1

    goto :goto_e

    :cond_1c
    move-object v0, v2

    move-wide/from16 v32, v27

    move/from16 v54, v39

    move/from16 v5, v44

    move/from16 v2, v45

    move/from16 v6, v47

    move/from16 v7, v48

    move/from16 v3, v49

    move/from16 v4, v50

    move/from16 v9, v51

    move/from16 v56, v52

    const/16 v29, 0x0

    move-object/from16 v27, v10

    move/from16 v28, v11

    move/from16 v10, v16

    move/from16 v16, v46

    move/from16 v45, v2

    move/from16 v49, v3

    move/from16 v50, v4

    move/from16 v44, v5

    move/from16 v47, v6

    move/from16 v48, v7

    move/from16 v46, v16

    :goto_e
    add-int/lit8 v0, v53, -0x1

    move-object/from16 v11, p1

    move/from16 v16, v10

    move-object/from16 v43, v27

    move/from16 v7, v28

    move/from16 v3, v29

    move-wide/from16 v5, v32

    move/from16 v39, v54

    move/from16 v1, v56

    const/16 v2, 0x3e9

    const/16 v4, 0x14

    move v10, v0

    move v0, v9

    move/from16 v9, v30

    goto/16 :goto_4

    :cond_1d
    move v11, v0

    move/from16 v56, v1

    move/from16 v53, v10

    move/from16 v10, v16

    move-wide/from16 v32, v27

    move/from16 v54, v39

    move/from16 v5, v44

    move/from16 v2, v45

    move/from16 v6, v47

    move/from16 v27, v48

    const/16 v29, 0x0

    const-wide/16 v41, 0x0

    move-object/from16 v16, v4

    move/from16 v4, v50

    const/4 v0, 0x0

    move v1, v0

    :goto_f
    if-eqz v38, :cond_24

    const/16 v0, 0xa

    if-ge v1, v0, :cond_24

    add-int/lit8 v28, v1, 0x1

    const/4 v1, 0x0

    const/16 v34, 0x0

    move/from16 v0, v34

    :goto_10
    if-ge v0, v10, :cond_20

    move/from16 v34, v1

    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    move/from16 v37, v2

    iget-boolean v2, v1, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v2, :cond_1e

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_1e

    iget-boolean v2, v1, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    move/from16 v39, v7

    const/4 v7, 0x1

    if-ne v2, v7, :cond_1f

    iget v2, v1, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    sub-int/2addr v2, v7

    iput v2, v1, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    iget v2, v1, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    sub-int/2addr v2, v7

    iput v2, v1, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    goto :goto_11

    :cond_1e
    move/from16 v39, v7

    const/4 v7, 0x1

    :cond_1f
    :goto_11
    add-int/lit8 v0, v0, 0x1

    move/from16 v1, v34

    move/from16 v2, v37

    move/from16 v7, v39

    goto :goto_10

    :cond_20
    move/from16 v34, v1

    move/from16 v37, v2

    move/from16 v39, v7

    const/4 v7, 0x1

    const/4 v0, 0x0

    move v2, v0

    move/from16 v38, v34

    :goto_12
    if-ge v2, v10, :cond_23

    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    iget-boolean v0, v1, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v0, :cond_21

    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_21

    iget-boolean v0, v1, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    if-ne v0, v7, :cond_21

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v34

    const/16 v44, 0x1

    const/16 v45, 0x1

    const/16 v40, 0xa

    move-object/from16 v0, p0

    move-object/from16 v47, v1

    move/from16 v48, v37

    move/from16 v37, v2

    move/from16 v2, v34

    move-object/from16 v57, v3

    move-object v3, v12

    move/from16 v50, v4

    move-object/from16 v58, v16

    move/from16 v4, v44

    move/from16 v44, v5

    move/from16 v16, v6

    move-wide v5, v13

    move/from16 v51, v11

    move-object/from16 v34, v12

    move/from16 v11, v39

    move v12, v7

    move/from16 v7, v45

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZ)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v38, 0x1

    goto :goto_13

    :cond_21
    move-object/from16 v47, v1

    move-object/from16 v57, v3

    move/from16 v50, v4

    move/from16 v44, v5

    move/from16 v51, v11

    move-object/from16 v34, v12

    move-object/from16 v58, v16

    move/from16 v48, v37

    move/from16 v11, v39

    const/16 v40, 0xa

    move/from16 v37, v2

    move/from16 v16, v6

    move v12, v7

    :cond_22
    :goto_13
    add-int/lit8 v2, v37, 0x1

    move/from16 v39, v11

    move v7, v12

    move/from16 v6, v16

    move-object/from16 v12, v34

    move/from16 v5, v44

    move/from16 v37, v48

    move/from16 v4, v50

    move/from16 v11, v51

    move-object/from16 v3, v57

    move-object/from16 v16, v58

    const-wide/16 v41, 0x0

    goto :goto_12

    :cond_23
    move-object/from16 v57, v3

    move/from16 v50, v4

    move/from16 v44, v5

    move/from16 v51, v11

    move-object/from16 v34, v12

    move-object/from16 v58, v16

    move/from16 v48, v37

    move/from16 v11, v39

    const/16 v40, 0xa

    move/from16 v37, v2

    move/from16 v16, v6

    move v12, v7

    move v7, v11

    move/from16 v1, v28

    move-object/from16 v12, v34

    move/from16 v2, v48

    move/from16 v11, v51

    move-object/from16 v16, v58

    const-wide/16 v41, 0x0

    goto/16 :goto_f

    :cond_24
    move/from16 v48, v2

    move-object/from16 v57, v3

    move/from16 v50, v4

    move/from16 v44, v5

    move/from16 v51, v11

    move-object/from16 v34, v12

    move-object/from16 v58, v16

    const/4 v12, 0x1

    move/from16 v16, v6

    move v11, v7

    move/from16 v0, v29

    move/from16 v2, v29

    add-int/lit8 v7, v10, -0x1

    move v4, v2

    move/from16 v5, v22

    move/from16 v6, v24

    move/from16 v3, v25

    move v2, v0

    :goto_14
    if-ltz v7, :cond_42

    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    iget-boolean v12, v0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v12, :cond_41

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v12, :cond_41

    const/4 v12, 0x1

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v28, v1

    move-object/from16 v1, v16

    move/from16 v22, v15

    move v15, v2

    move v2, v12

    move v12, v3

    move/from16 v59, v4

    move-wide v3, v13

    move-wide/from16 v24, v13

    move v13, v5

    move v14, v6

    move-wide/from16 v5, v32

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/OomAdjuster;->applyOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZJJ)Z

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_2b

    const/16 v2, 0x12

    if-eq v0, v2, :cond_2b

    const/16 v2, 0x14

    if-eq v0, v2, :cond_25

    iget v0, v8, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v8, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    move-object/from16 v0, v16

    move/from16 v2, v54

    goto/16 :goto_16

    :cond_25
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/am/OpRestartProcessManagerInjector;->doIsHighUsedPackages(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    add-int/lit8 v6, v14, 0x1

    move v14, v6

    move v5, v13

    move/from16 v13, v56

    goto/16 :goto_20

    :cond_26
    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v1, v1, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    if-le v14, v1, :cond_28

    iget-wide v3, v0, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    cmp-long v1, v3, v17

    if-gez v1, :cond_28

    invoke-static {v0}, Lcom/android/server/am/OomAdjusterInjector;->sustainEmpty(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-eqz v1, :cond_27

    move/from16 v2, v54

    goto :goto_16

    :cond_27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "empty for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v3, 0x1b7740

    add-long v5, v17, v3

    iget-wide v2, v0, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    sub-long/2addr v5, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v5, v2

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    move/from16 v2, v54

    goto :goto_16

    :cond_28
    add-int/lit8 v6, v14, 0x1

    move/from16 v2, v54

    if-le v6, v2, :cond_2a

    invoke-static {v0}, Lcom/android/server/am/OomAdjusterInjector;->sustainEmpty(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-eqz v1, :cond_29

    goto :goto_15

    :cond_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "empty #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    :cond_2a
    :goto_15
    move/from16 v54, v2

    move v14, v6

    move v5, v13

    move/from16 v13, v56

    goto/16 :goto_20

    :cond_2b
    move-object/from16 v0, v16

    move/from16 v2, v54

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/am/OpRestartProcessManagerInjector;->doIsHighUsedPackages(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    nop

    :goto_16
    move/from16 v54, v2

    move v5, v13

    move/from16 v13, v56

    goto/16 :goto_20

    :cond_2c
    iget v3, v8, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v8, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    add-int/lit8 v5, v13, 0x1

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    if-eqz v3, :cond_2f

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v15, v3, :cond_2d

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    move/from16 v4, v59

    if-ne v4, v3, :cond_2e

    add-int/lit8 v23, v23, 0x1

    move v3, v15

    goto :goto_17

    :cond_2d
    move/from16 v4, v59

    :cond_2e
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    goto :goto_17

    :cond_2f
    move/from16 v4, v59

    move/from16 v4, v29

    move/from16 v3, v29

    :goto_17
    sub-int v6, v5, v23

    move/from16 v13, v56

    if-le v6, v13, :cond_3c

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v6

    if-nez v6, :cond_31

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->hasClientActivities()Z

    move-result v6

    if-nez v6, :cond_31

    iget-boolean v6, v0, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-eqz v6, :cond_30

    goto :goto_18

    :cond_30
    move/from16 v6, v29

    goto :goto_19

    :cond_31
    :goto_18
    const/4 v6, 0x1

    :goto_19
    const/4 v15, 0x0

    if-eqz v6, :cond_3a

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v16

    if-nez v16, :cond_39

    iget-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-nez v1, :cond_39

    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget v1, v1, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    move/from16 v54, v2

    add-int/lit8 v2, v10, -0x1

    if-ge v1, v2, :cond_38

    move-object v1, v0

    move v2, v7

    :goto_1a
    if-ge v2, v10, :cond_37

    move-object/from16 v37, v1

    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_35

    move/from16 v39, v3

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v40, v1

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v3, v1, :cond_34

    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_33

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v41, v4

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, v4, :cond_32

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    const/16 v4, 0x11

    if-lt v3, v4, :cond_36

    move-object v3, v1

    goto :goto_1d

    :cond_32
    const/16 v4, 0x11

    goto :goto_1c

    :cond_33
    move/from16 v41, v4

    const/16 v4, 0x11

    goto :goto_1c

    :cond_34
    move/from16 v41, v4

    const/16 v4, 0x11

    goto :goto_1b

    :cond_35
    move-object/from16 v40, v1

    move/from16 v39, v3

    move/from16 v41, v4

    const/16 v4, 0x11

    :goto_1b
    move-object/from16 v1, v40

    :cond_36
    :goto_1c
    nop

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, v37

    move/from16 v3, v39

    move/from16 v4, v41

    goto :goto_1a

    :cond_37
    move-object/from16 v37, v1

    move/from16 v39, v3

    move/from16 v41, v4

    move-object/from16 v3, v37

    :goto_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cached op#"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    const/4 v15, 0x1

    goto :goto_1e

    :cond_38
    move/from16 v39, v3

    move/from16 v41, v4

    goto :goto_1e

    :cond_39
    move/from16 v54, v2

    move/from16 v39, v3

    move/from16 v41, v4

    goto :goto_1e

    :cond_3a
    move/from16 v54, v2

    move/from16 v39, v3

    move/from16 v41, v4

    :goto_1e
    if-nez v15, :cond_3b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cached #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    :cond_3b
    goto :goto_1f

    :cond_3c
    move/from16 v54, v2

    move/from16 v39, v3

    move/from16 v41, v4

    :goto_1f
    move/from16 v15, v39

    move/from16 v59, v41

    :goto_20
    iget-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v1, :cond_3d

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-gtz v1, :cond_3d

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->isolatedEntryPoint:Ljava/lang/String;

    if-nez v1, :cond_3d

    const-string/jumbo v1, "isolated not needed"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto :goto_21

    :cond_3d
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    if-eqz v1, :cond_3f

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/am/UidRecord;->ephemeral:Z

    invoke-virtual {v1}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    if-le v2, v3, :cond_3e

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/UidRecord;->setCurProcState(I)V

    :cond_3e
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->hasForegroundServices()Z

    move-result v2

    if-eqz v2, :cond_3f

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/am/UidRecord;->foregroundServices:Z

    :cond_3f
    :goto_21
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v1

    const/16 v2, 0xf

    if-lt v1, v2, :cond_40

    iget-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v1, :cond_40

    add-int/lit8 v3, v12, 0x1

    move v1, v13

    move v6, v14

    move v2, v15

    move/from16 v4, v59

    goto :goto_22

    :cond_40
    move v3, v12

    move v1, v13

    move v6, v14

    move v2, v15

    move/from16 v4, v59

    goto :goto_22

    :cond_41
    move/from16 v28, v1

    move v12, v3

    move-wide/from16 v24, v13

    move/from16 v22, v15

    move/from16 v1, v56

    move v15, v2

    move v13, v5

    move v14, v6

    move v3, v12

    move v5, v13

    move v6, v14

    move v2, v15

    :goto_22
    add-int/lit8 v7, v7, -0x1

    move/from16 v56, v1

    move/from16 v15, v22

    move-wide/from16 v13, v24

    move/from16 v1, v28

    const/4 v12, 0x1

    goto/16 :goto_14

    :cond_42
    move/from16 v28, v1

    move v12, v3

    move-wide/from16 v24, v13

    move/from16 v22, v15

    move/from16 v1, v56

    move v15, v2

    move v13, v5

    move v14, v6

    iget v0, v8, Lcom/android/server/am/OomAdjuster;->mBServiceAppThreshold:I

    if-le v11, v0, :cond_45

    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mAllowLowerMemLevel:Z

    const/4 v2, 0x1

    if-ne v2, v0, :cond_45

    move-object/from16 v0, v43

    if-eqz v0, :cond_46

    invoke-static {}, Lcom/android/server/am/OomAdjusterInjector;->getBServiceLimitWhiteList()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_43

    invoke-static {}, Lcom/android/server/am/OomAdjusterInjector;->getBServiceLimitWhiteList()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    iget v2, v8, Lcom/android/server/am/OomAdjuster;->mBServiceAppThreshold:I

    sub-int v7, v11, v2

    mul-int/lit8 v7, v7, 0x5

    rem-int/lit8 v7, v7, 0x31

    const/16 v2, 0x3e7

    rsub-int v5, v7, 0x3e7

    iput v5, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    :cond_43
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceInjector;->getInstance()Lcom/android/server/am/ActivityManagerServiceInjector;

    move-result-object v2

    iget-object v3, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v5, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v2, v3, v5}, Lcom/android/server/am/ActivityManagerServiceInjector;->checkProcessExist(Lcom/android/server/am/ActivityManagerService;I)Z

    move-result v2

    if-eqz v2, :cond_44

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v5, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-static {v2, v3, v5}, Lcom/android/server/am/ProcessList;->setOomAdj(III)V

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iput v2, v0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v2, :cond_46

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v57

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v58

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is moved to higher adj"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    :cond_44
    return-void

    :cond_45
    move-object/from16 v0, v43

    :cond_46
    :goto_23
    iget-object v2, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->incrementProcStateSeqAndNotifyAppsLocked()V

    iget v2, v8, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    iput v2, v8, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    iget-object v2, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v13, v14, v12}, Lcom/android/server/am/ActivityManagerService;->updateLowMemStateLocked(III)Z

    move-result v2

    iget-object v3, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mAlwaysFinishActivities:Z

    if-eqz v3, :cond_47

    iget-object v3, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-string v5, "always-finish"

    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->scheduleDestroyAllActivities(Ljava/lang/String;)V

    :cond_47
    if-eqz v2, :cond_48

    iget-object v3, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStatsService;->isMemFactorLowered()Z

    move-result v5

    move-wide/from16 v6, v24

    move/from16 v9, v29

    invoke-virtual {v3, v6, v7, v9, v5}, Lcom/android/server/am/ActivityManagerService;->requestPssAllProcsLocked(JZZ)V

    goto :goto_24

    :cond_48
    move-wide/from16 v6, v24

    move/from16 v9, v29

    :goto_24
    const/4 v3, 0x0

    iget-object v5, v8, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v5, :cond_49

    invoke-virtual {v5}, Landroid/os/PowerManagerInternal;->startUidChanges()V

    :cond_49
    iget-object v5, v8, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v5}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v5

    const/16 v16, 0x1

    add-int/lit8 v5, v5, -0x1

    :goto_25
    if-ltz v5, :cond_5b

    iget-object v9, v8, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v9, v5}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v9

    const/16 v16, 0x0

    move-object/from16 v20, v0

    invoke-virtual {v9}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v0

    move/from16 v52, v1

    const/16 v1, 0x15

    if-eq v0, v1, :cond_59

    iget v0, v9, Lcom/android/server/am/UidRecord;->setProcState:I

    invoke-virtual {v9}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v1

    if-ne v0, v1, :cond_4b

    iget-boolean v0, v9, Lcom/android/server/am/UidRecord;->setWhitelist:Z

    iget-boolean v1, v9, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    if-eq v0, v1, :cond_4a

    goto :goto_26

    :cond_4a
    move/from16 v24, v2

    move/from16 v25, v10

    move/from16 v39, v11

    goto/16 :goto_30

    :cond_4b
    :goto_26
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v0, :cond_4c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Changes in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": proc state from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v9, Lcom/android/server/am/UidRecord;->setProcState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", whitelist from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v9, Lcom/android/server/am/UidRecord;->setWhitelist:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v9, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    invoke-virtual {v9}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v0

    invoke-static {v0}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-boolean v0, v9, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    if-nez v0, :cond_52

    iget v0, v9, Lcom/android/server/am/UidRecord;->setProcState:I

    invoke-static {v0}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-boolean v0, v9, Lcom/android/server/am/UidRecord;->setWhitelist:Z

    if-eqz v0, :cond_4d

    goto :goto_27

    :cond_4d
    move/from16 v24, v2

    move/from16 v25, v10

    move/from16 v39, v11

    goto :goto_28

    :cond_4e
    :goto_27
    move-wide/from16 v0, v32

    iput-wide v0, v9, Lcom/android/server/am/UidRecord;->lastBackgroundTime:J

    nop

    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_4f

    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v1, 0x3a

    move/from16 v24, v2

    iget-object v2, v8, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move/from16 v25, v10

    move/from16 v39, v11

    iget-wide v10, v2, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    invoke-virtual {v0, v1, v10, v11}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_28

    :cond_4f
    move/from16 v24, v2

    move/from16 v25, v10

    move/from16 v39, v11

    :goto_28
    iget-boolean v0, v9, Lcom/android/server/am/UidRecord;->idle:Z

    if-eqz v0, :cond_51

    iget-boolean v0, v9, Lcom/android/server/am/UidRecord;->setIdle:Z

    if-nez v0, :cond_51

    const/16 v16, 0x2

    if-nez v3, :cond_50

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    :cond_50
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    goto :goto_2a

    :cond_51
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    goto :goto_2a

    :cond_52
    move/from16 v24, v2

    move/from16 v25, v10

    move/from16 v39, v11

    iget-boolean v0, v9, Lcom/android/server/am/UidRecord;->idle:Z

    if-eqz v0, :cond_53

    const/16 v16, 0x4

    iget v0, v9, Lcom/android/server/am/UidRecord;->uid:I

    invoke-static {v0}, Lcom/android/server/am/EventLogTags;->writeAmUidActive(I)V

    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/android/server/am/UidRecord;->idle:Z

    goto :goto_29

    :cond_53
    const/4 v0, 0x0

    :goto_29
    const-wide/16 v1, 0x0

    iput-wide v1, v9, Lcom/android/server/am/UidRecord;->lastBackgroundTime:J

    :goto_2a
    iget v10, v9, Lcom/android/server/am/UidRecord;->setProcState:I

    const/16 v11, 0xc

    if-le v10, v11, :cond_54

    const/4 v10, 0x1

    goto :goto_2b

    :cond_54
    move v10, v0

    :goto_2b
    invoke-virtual {v9}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v11

    const/16 v0, 0xc

    if-le v11, v0, :cond_55

    const/4 v0, 0x1

    goto :goto_2c

    :cond_55
    const/4 v0, 0x0

    :goto_2c
    if-ne v10, v0, :cond_57

    iget v11, v9, Lcom/android/server/am/UidRecord;->setProcState:I

    const/16 v1, 0x15

    if-ne v11, v1, :cond_56

    goto :goto_2d

    :cond_56
    move/from16 v1, v16

    goto :goto_2f

    :cond_57
    :goto_2d
    if-eqz v0, :cond_58

    const/16 v1, 0x8

    goto :goto_2e

    :cond_58
    const/16 v1, 0x10

    :goto_2e
    or-int v16, v16, v1

    move/from16 v1, v16

    :goto_2f
    invoke-virtual {v9}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v2

    iput v2, v9, Lcom/android/server/am/UidRecord;->setProcState:I

    iget-boolean v2, v9, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    iput-boolean v2, v9, Lcom/android/server/am/UidRecord;->setWhitelist:Z

    iget-boolean v2, v9, Lcom/android/server/am/UidRecord;->idle:Z

    iput-boolean v2, v9, Lcom/android/server/am/UidRecord;->setIdle:Z

    iget-object v2, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget v11, v9, Lcom/android/server/am/UidRecord;->uid:I

    move/from16 v16, v0

    iget v0, v9, Lcom/android/server/am/UidRecord;->setProcState:I

    invoke-virtual {v2, v11, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onUidProcStateChanged(II)V

    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, -0x1

    invoke-virtual {v0, v9, v2, v1}, Lcom/android/server/am/ActivityManagerService;->enqueueUidChangeLocked(Lcom/android/server/am/UidRecord;II)V

    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, v9, Lcom/android/server/am/UidRecord;->uid:I

    invoke-virtual {v9}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v11

    invoke-virtual {v0, v2, v11}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessState(II)V

    iget-boolean v0, v9, Lcom/android/server/am/UidRecord;->foregroundServices:Z

    if-eqz v0, :cond_5a

    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v0, v9}, Lcom/android/server/am/ActiveServices;->foregroundServiceProcStateChangedLocked(Lcom/android/server/am/UidRecord;)V

    goto :goto_30

    :cond_59
    move/from16 v24, v2

    move/from16 v25, v10

    move/from16 v39, v11

    :cond_5a
    :goto_30
    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, v20

    move/from16 v2, v24

    move/from16 v10, v25

    move/from16 v11, v39

    move/from16 v1, v52

    const/4 v9, 0x0

    goto/16 :goto_25

    :cond_5b
    move-object/from16 v20, v0

    move/from16 v52, v1

    move/from16 v24, v2

    move/from16 v25, v10

    move/from16 v39, v11

    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->finishUidChanges()V

    :cond_5c
    if-eqz v3, :cond_5d

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_31
    if-ltz v0, :cond_5d

    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UidRecord;

    iget v2, v2, Lcom/android/server/am/UidRecord;->uid:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActiveServices;->stopInBackgroundLocked(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_31

    :cond_5d
    invoke-static {}, Lcom/android/server/am/OpBGFrozenInjector;->updateLastImportantUidsIfNeeded()V

    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v0, v6, v7}, Lcom/android/server/am/ProcessStatsService;->shouldWriteNowLocked(J)Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/am/ActivityManagerService$ProcStatsRunnable;

    iget-object v2, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-direct {v1, v2, v5}, Lcom/android/server/am/ActivityManagerService$ProcStatsRunnable;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessStatsService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    :cond_5e
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget v1, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/server/am/ProcessStatsService;->updateTrackingAssociationsLocked(IJ)V

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v0, :cond_5f

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Did OOM ADJ in "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "ActivityManager"

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjProfiler;->oomAdjEnded()V

    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)Z
    .locals 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopAppLocked()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-boolean v8, p1, Lcom/android/server/am/ProcessRecord;->cached:Z

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v1

    const/16 v2, 0x384

    const/16 v9, 0x3e9

    if-lt v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v9

    :goto_0
    const/4 v5, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJ)Z

    move-result v1

    if-eqz p2, :cond_3

    iget-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->cached:Z

    if-ne v8, v2, :cond_2

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v2

    if-ne v2, v9, :cond_3

    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(Ljava/lang/String;)V

    :cond_3
    return v1
.end method
