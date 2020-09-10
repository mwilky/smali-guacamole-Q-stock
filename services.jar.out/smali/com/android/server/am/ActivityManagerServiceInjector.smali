.class public Lcom/android/server/am/ActivityManagerServiceInjector;
.super Ljava/lang/Object;
.source "ActivityManagerServiceInjector.java"


# static fields
.field private static final DEBUG:Z

.field private static final DEBUG_PROCESS_ADJ_CONTROL:Z

.field private static final IS_HIDE_PCB_FEATURE:Z

.field public static final KILL_HIGH_CONSUMPT_TIMEOUT:J = 0x1d4c0L

.field private static final PROCESS_ADJ_CONTROL_ENABLED:Z

.field private static final TAG:Ljava/lang/String; = "ActivityManagerServiceInjector"

.field private static final TURN_OFF_DEVICE_CHECK_TIME:I = 0x2bf20

.field private static final TURN_OFF_DEVICE_TIMEOUT:I = 0x1b7740

.field public static final UPDATE_PROCESS_DURATION_MSG:I = 0x457

.field public static final UPDATE_PROCESS_LAUNCH_TIMES_MSG:I = 0x458

.field private static mAmsInjector:Lcom/android/server/am/ActivityManagerServiceInjector;

.field public static mHighConsumptionAppPid:I

.field public static mHighConsumptionTime:J

.field private static opProcessAdjControl:Lcom/android/server/am/IOpProcessAdjControl;

.field private static opSmartPowerControl:Lcom/android/server/IOpSmartPowerControl;

.field public static sRestartWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private class1:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private items:Ljava/lang/Object;

.field mAllowLaunchBackground:Z

.field private mAutoShutdownWakelock:Landroid/os/PowerManager$WakeLock;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHidePcbList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHidePcbWindow:Z

.field private mLastInputEvent:J

.field mLaunchPackageName:Ljava/lang/String;

.field private mPcbView:Landroid/view/View;

.field private mPointerEventListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

.field private mPointerEventListenerRegistered:Z

.field private mResetAllowLaunchBackground:Ljava/lang/Runnable;

.field private mTurnOffScreenIfSetupIdle:Ljava/lang/Runnable;

.field private mWmService:Lcom/android/server/wm/WindowManagerService;

.field private pcb:Ljava/lang/String;

.field qcHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector;->DEBUG:Z

    const-string v0, "ActivityManagerServiceInjector"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector;->DEBUG_PROCESS_ADJ_CONTROL:Z

    new-array v0, v1, [I

    const/16 v1, 0xc3

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector;->PROCESS_ADJ_CONTROL_ENABLED:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->opProcessAdjControl:Lcom/android/server/am/IOpProcessAdjControl;

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->opSmartPowerControl:Lcom/android/server/IOpSmartPowerControl;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->sRestartWhiteList:Ljava/util/ArrayList;

    nop

    const-string/jumbo v0, "ro.board.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "msmnile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector;->IS_HIDE_PCB_FEATURE:Z

    sput v2, Lcom/android/server/am/ActivityManagerServiceInjector;->mHighConsumptionAppPid:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mHighConsumptionTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mLastInputEvent:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mPointerEventListenerRegistered:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mAutoShutdownWakelock:Landroid/os/PowerManager$WakeLock;

    new-instance v2, Ljava/util/ArrayList;

    const-string v3, "com.oneplus.factorymode/.touchscreen.TPCalibrationActivity"

    const-string v4, "com.oneplus.factorymode/.LCDtest.LCDColorTest"

    const-string v5, "com.oneplus.factorymode/.autoaging.LCDTest"

    const-string v6, "com.oneplus.factorymode/.manualtest.modeltest.ModelLcdColorTest"

    const-string v7, "com.oem.autotest/.lcd.LcdColorTestActivity"

    const-string v8, "com.oneplus.factorymode/.manualtest.LCMFrequencySwitchTest"

    const-string v9, "com.fingerprints.fingerprintsensortest"

    const-string v10, "com.oneplus.gallery"

    const-string v11, "com.oneplus.factorymode/.touchscreen.AutoTouchScreenTest"

    const-string v12, "com.oneplus.factorymode/.manualtest.modeltest.ModelTouchScreeen"

    filled-new-array/range {v3 .. v12}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mHidePcbList:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mHidePcbWindow:Z

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mLaunchPackageName:Ljava/lang/String;

    new-instance v0, Lcom/android/server/am/ActivityManagerServiceInjector$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/ActivityManagerServiceInjector$1;-><init>(Lcom/android/server/am/ActivityManagerServiceInjector;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mPointerEventListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    new-instance v0, Lcom/android/server/am/ActivityManagerServiceInjector$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/ActivityManagerServiceInjector$2;-><init>(Lcom/android/server/am/ActivityManagerServiceInjector;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mTurnOffScreenIfSetupIdle:Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->items:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->class1:Ljava/lang/Class;

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->pcb:Ljava/lang/String;

    new-instance v0, Lcom/android/server/am/ActivityManagerServiceInjector$3;

    invoke-direct {v0, p0}, Lcom/android/server/am/ActivityManagerServiceInjector$3;-><init>(Lcom/android/server/am/ActivityManagerServiceInjector;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->qcHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/am/ActivityManagerServiceInjector$8;

    invoke-direct {v0, p0}, Lcom/android/server/am/ActivityManagerServiceInjector$8;-><init>(Lcom/android/server/am/ActivityManagerServiceInjector;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mResetAllowLaunchBackground:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ActivityManagerServiceInjector;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mPointerEventListenerRegistered:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/am/ActivityManagerServiceInjector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mPointerEventListenerRegistered:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/am/ActivityManagerServiceInjector;)Landroid/view/WindowManagerPolicyConstants$PointerEventListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mPointerEventListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/ActivityManagerServiceInjector;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->items:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/am/ActivityManagerServiceInjector;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerServiceInjector;->showPCBNo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/ActivityManagerServiceInjector;)Lcom/android/server/wm/WindowManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mWmService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/ActivityManagerServiceInjector;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mAutoShutdownWakelock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/ActivityManagerServiceInjector;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mTurnOffScreenIfSetupIdle:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/ActivityManagerServiceInjector;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/ActivityManagerServiceInjector;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/am/ActivityManagerServiceInjector;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mLastInputEvent:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/android/server/am/ActivityManagerServiceInjector;)Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->class1:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/am/ActivityManagerServiceInjector;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->pcb:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/am/ActivityManagerServiceInjector;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->pcb:Ljava/lang/String;

    return-object p1
.end method

.method public static addRestartWhitelist()V
    .locals 1

    const-string v0, "com.oppo.qetest"

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerServiceInjector;->addRestartWhitelist(Ljava/lang/String;)V

    const-string v0, "com.oppo.qemonitor"

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerServiceInjector;->addRestartWhitelist(Ljava/lang/String;)V

    return-void
.end method

.method private static addRestartWhitelist(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->sRestartWhiteList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/am/ActivityManagerServiceInjector;->sRestartWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/am/ActivityManagerServiceInjector;->sRestartWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static final checkRestart(Lcom/android/server/am/ProcessRecord;ZI)Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerServiceInjector;->isExcludedAPP(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    const/4 v1, 0x2

    if-lt p2, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/am/OpRestartProcessManagerInjector;->doIsHighUsedPackages(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AMS will block "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") autostart due to process is killed by lmk in low memory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManagerServiceInjector"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method public static cleanupProcessesByWatchdog(Lcom/android/server/am/ProcessList;JI)V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    invoke-static {v5, p1, p2, p3}, Lcom/android/server/am/ActivityManagerServiceInjector;->isProcShouldBeKilled(Lcom/android/server/am/ProcessRecord;JI)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "ActivityManagerServiceInjector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CleanupProcesses, killProcessQuiet!, timeout = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", app = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v6}, Landroid/os/Process;->killProcessQuiet(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public static getInstance()Lcom/android/server/am/ActivityManagerServiceInjector;
    .locals 1

    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mAmsInjector:Lcom/android/server/am/ActivityManagerServiceInjector;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/ActivityManagerServiceInjector;

    invoke-direct {v0}, Lcom/android/server/am/ActivityManagerServiceInjector;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mAmsInjector:Lcom/android/server/am/ActivityManagerServiceInjector;

    :cond_0
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mAmsInjector:Lcom/android/server/am/ActivityManagerServiceInjector;

    return-object v0
.end method

.method public static initProcessAdjControl(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector;->DEBUG_PROCESS_ADJ_CONTROL:Z

    const-string v1, "ActivityManagerServiceInjector"

    if-eqz v0, :cond_0

    const-string v0, "initProcessAdjControl()"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector;->PROCESS_ADJ_CONTROL_ENABLED:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->opProcessAdjControl:Lcom/android/server/am/IOpProcessAdjControl;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_process_adj_control:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpProcessAdjControl;

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->opProcessAdjControl:Lcom/android/server/am/IOpProcessAdjControl;

    :cond_1
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->opProcessAdjControl:Lcom/android/server/am/IOpProcessAdjControl;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpProcessAdjControl;->init(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "opProcessAdjControl is null !"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public static isDeepClean(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x5d

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->opSmartPowerControl:Lcom/android/server/IOpSmartPowerControl;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smart_power_control:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpSmartPowerControl;

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->opSmartPowerControl:Lcom/android/server/IOpSmartPowerControl;

    :cond_0
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->opSmartPowerControl:Lcom/android/server/IOpSmartPowerControl;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/android/server/IOpSmartPowerControl;->isDeepClean(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public static isDeviceProvisioned(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "device_provisioned"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string/jumbo v2, "user_setup_complete"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    nop

    :goto_0
    return v1
.end method

.method public static isExcludedAPP(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->sRestartWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Process package is in restart whitelist : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManagerServiceInjector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static isProcShouldBeKilled(Lcom/android/server/am/ProcessRecord;JI)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x1

    const-wide/16 v1, 0x7530

    cmp-long v1, p1, v1

    if-nez v1, :cond_3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v2, Lcom/android/server/am/ActivityManagerServiceInjector;->mHighConsumptionAppPid:I

    if-ne v1, v2, :cond_5

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v2, 0x2710

    if-lt v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x81

    if-nez v1, :cond_5

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/android/server/am/ActivityManagerServiceInjector;->mHighConsumptionTime:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x1d4c0

    cmp-long v1, v1, v3

    if-gez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v1, p3, :cond_4

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "keyguard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_0
    return v0
.end method

.method public static sendApplicationFocusGain(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/android/server/am/ActivityManagerServiceInjector$4;

    invoke-direct {v0, p1, p2}, Lcom/android/server/am/ActivityManagerServiceInjector$4;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static sendApplicationStart(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/android/server/am/ActivityManagerServiceInjector$5;

    invoke-direct {v0, p1, p2}, Lcom/android/server/am/ActivityManagerServiceInjector$5;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static sendApplicationStop(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lcom/android/server/am/ActivityManagerServiceInjector$6;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerServiceInjector$6;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static sendApplicationStopByForceStop(Landroid/os/Handler;Lcom/android/server/am/ProcessRecord;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/android/server/am/ActivityManagerServiceInjector$7;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerServiceInjector$7;-><init>(Lcom/android/server/am/ProcessRecord;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private shouldHidePCB(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mHidePcbList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mHidePcbList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mHidePcbList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final showPCBNo(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/high16 v1, 0x5090000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mPcbView:Landroid/view/View;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mPcbView:Landroid/view/View;

    const v2, 0x507003a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "PCB NO."

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v2, 0x7df

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, -0x1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const v2, 0x800053

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v2, 0x1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v2, 0x18

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mPcbView:Landroid/view/View;

    invoke-interface {v2, v3, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static final transact(ILandroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 6

    const-string v0, "com.opos.ads"

    const-string v1, "enforce ia"

    const-string v2, "android.app.IActivityManager"

    const-string v3, "! REGISTER_APP_SWITCH_OBSERVER : "

    const-string v4, "ActivityManagerServiceInjector"

    const v5, 0x86d8

    if-ne p0, v5, :cond_2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REGISTER_APP_SWITCH_OBSERVER : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/IOPAppSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/server/wm/IOPAppSwitchObserver;

    move-result-object v0

    sget-object v2, Lcom/color/app/ColorAppSwitchConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/app/ColorAppSwitchConfig;

    invoke-static {v1, v0, v2}, Lcom/android/server/OPAppSwitchManagerServiceInjector;->registerAppSwitchObserver(Ljava/lang/String;Lcom/android/server/wm/IOPAppSwitchObserver;Lcom/color/app/ColorAppSwitchConfig;)Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNREGISTER_APP_SWITCH_OBSERVER : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/color/app/ColorAppSwitchConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/app/ColorAppSwitchConfig;

    invoke-static {v1, v0}, Lcom/android/server/OPAppSwitchManagerServiceInjector;->unregisterAppSwitchObserver(Ljava/lang/String;Lcom/color/app/ColorAppSwitchConfig;)Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected checkProcessExist(Lcom/android/server/am/ActivityManagerService;I)Z
    .locals 4

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/oom_score_adj"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x45e

    iput v3, v2, Landroid/os/Message;->what:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v3

    :cond_0
    const/4 v2, 0x1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v2

    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

.method public final getPCBNumber(Landroid/content/Context;)V
    .locals 9

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mContext:Landroid/content/Context;

    :try_start_0
    const-string v0, "com.qualcomm.qcnvitems.QcNvItems"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->class1:Ljava/lang/Class;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mContext:Landroid/content/Context;

    aput-object v4, v2, v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->class1:Ljava/lang/Class;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5

    :try_start_2
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->items:Ljava/lang/Object;

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/os/Handler;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v0

    const-class v7, Ljava/lang/Object;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->qcHandler:Landroid/os/Handler;

    aput-object v7, v5, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v0

    const/4 v0, 0x0

    aput-object v0, v5, v8

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->class1:Ljava/lang/Class;

    const-string/jumbo v3, "registerOnServiceConnected"

    invoke-virtual {v0, v3, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->items:Ljava/lang/Object;

    invoke-virtual {v0, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_5

    nop

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_5

    :goto_0
    nop

    :goto_1
    goto :goto_2

    :catch_4
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_5

    :goto_2
    goto :goto_3

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_3
    return-void
.end method

.method protected handleUntrackedProcessLocked(Lcom/android/server/am/ActivityManagerService;I)V
    .locals 3

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handle untracked process die start : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManagerServiceInjector"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;)V

    const-string v1, "Handle untracked process die end"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public initAutoShutdown(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Landroid/os/Handler;)V
    .locals 6

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mContext:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mPointerEventListenerRegistered:Z

    const-string v1, "ActivityManagerServiceInjector"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mPointerEventListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    invoke-virtual {v0, v3, v2}, Lcom/android/server/wm/WindowManagerService;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V

    iput-boolean v2, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mPointerEventListenerRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in pointer handler. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mAutoShutdownWakelock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    nop

    const-string v4, "auto_shutdown"

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mAutoShutdownWakelock:Landroid/os/PowerManager$WakeLock;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mAutoShutdownWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mAutoShutdownWakelock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v4, 0x1b8ac8

    invoke-virtual {v0, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mLastInputEvent:J

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mPointerEventListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    invoke-virtual {v0, v4, v2}, Lcom/android/server/wm/WindowManagerService;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V

    iput-boolean v3, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mPointerEventListenerRegistered:Z

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mTurnOffScreenIfSetupIdle:Ljava/lang/Runnable;

    const-wide/32 v3, 0x2bf20

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "AutoShutdown: init called"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isAllowLaunchBackground(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mLaunchPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mAllowLaunchBackground:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$setPCBVisibility$0$ActivityManagerServiceInjector(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerServiceInjector;->shouldHidePCB(Ljava/lang/String;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mHidePcbWindow:Z

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mHidePcbWindow:Z

    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mHidePcbWindow:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mPcbView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mPcbView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setAllowLaunchBackground(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mAllowLaunchBackground:Z

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mLaunchPackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mResetAllowLaunchBackground:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mResetAllowLaunchBackground:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setPCBVisibility(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector;->IS_HIDE_PCB_FEATURE:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mPcbView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->qcHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/-$$Lambda$ActivityManagerServiceInjector$33ZOH_tWFDFZtwS02gRRRCurytM;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/-$$Lambda$ActivityManagerServiceInjector$33ZOH_tWFDFZtwS02gRRRCurytM;-><init>(Lcom/android/server/am/ActivityManagerServiceInjector;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method
