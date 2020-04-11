.class public abstract Lcom/android/server/biometrics/BiometricServiceBase;
.super Lcom/android/server/SystemService;
.source "BiometricServiceBase.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/BiometricServiceBase$UserTemplate;,
        Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;,
        Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;,
        Lcom/android/server/biometrics/BiometricServiceBase$BiometricTaskStackListener;,
        Lcom/android/server/biometrics/BiometricServiceBase$H;,
        Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;,
        Lcom/android/server/biometrics/BiometricServiceBase$BiometricServiceListener;,
        Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;,
        Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;,
        Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;,
        Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;,
        Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;,
        Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    }
.end annotation


# static fields
.field private static final CANCEL_TIMEOUT_LIMIT:J = 0xbb8L

.field private static final CLEANUP_UNKNOWN_TEMPLATES:Z = true

.field protected static final DEBUG:Z = true

.field private static final KEY_LOCKOUT_RESET_USER:Ljava/lang/String; = "lockout_reset_user"

.field private static final MSG_USER_SWITCHING:I = 0xa


# instance fields
.field protected final DOUBLE_ACCOUNT_UID:I

.field private final mActivityTaskManager:Landroid/app/IActivityTaskManager;

.field protected final mAppOps:Landroid/app/AppOpsManager;

.field protected final mAuthenticatorIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mBiometricService:Landroid/hardware/biometrics/IBiometricService;

.field private final mContext:Landroid/content/Context;

.field protected mCryptoPerformanceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

.field protected mCurrentUserId:I

.field protected mHALDeathCount:I

.field protected mHalDeviceId:J

.field protected final mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

.field protected mIsCrypto:Z

.field private final mKeyguardPackage:Ljava/lang/String;

.field private final mLockoutMonitors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

.field protected mPerformanceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;",
            ">;"
        }
    .end annotation
.end field

.field private mPerformanceStats:Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mResetClientState:Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;

.field protected final mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mTaskStackListener:Lcom/android/server/biometrics/BiometricServiceBase$BiometricTaskStackListener;

.field private final mToken:Landroid/os/IBinder;

.field private final mUnknownHALTemplates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/biometrics/BiometricServiceBase$UserTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/biometrics/BiometricServiceBase$BiometricTaskStackListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$BiometricTaskStackListener;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Lcom/android/server/biometrics/BiometricServiceBase$1;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mTaskStackListener:Lcom/android/server/biometrics/BiometricServiceBase$BiometricTaskStackListener;

    new-instance v0, Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Lcom/android/server/biometrics/BiometricServiceBase$1;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mResetClientState:Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mLockoutMonitors:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mAuthenticatorIds:Ljava/util/Map;

    new-instance v0, Lcom/android/server/biometrics/BiometricServiceBase$H;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/BiometricServiceBase$H;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mToken:Landroid/os/IBinder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mUnknownHALTemplates:Ljava/util/ArrayList;

    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentUserId:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPerformanceMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCryptoPerformanceMap:Ljava/util/HashMap;

    const/16 v0, 0x3e7

    iput v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->DOUBLE_ACCOUNT_UID:I

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mContext:Landroid/content/Context;

    nop

    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104018e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mKeyguardPackage:Ljava/lang/String;

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mAppOps:Landroid/app/AppOpsManager;

    const-string v0, "activity_task"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityTaskManager;

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPowerManager:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mUserManager:Landroid/os/UserManager;

    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/biometrics/BiometricServiceBase;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/biometrics/BiometricServiceBase;Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->removeLockoutResetCallback(Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/biometrics/BiometricServiceBase;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/biometrics/BiometricServiceBase;)Lcom/android/server/biometrics/BiometricServiceBase$BiometricTaskStackListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mTaskStackListener:Lcom/android/server/biometrics/BiometricServiceBase$BiometricTaskStackListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/biometrics/BiometricServiceBase;)Landroid/app/IActivityTaskManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/biometrics/BiometricServiceBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->userActivity()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/biometrics/BiometricServiceBase;)Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPerformanceStats:Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/biometrics/BiometricServiceBase;)Lcom/android/server/biometrics/ClientMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/biometrics/BiometricServiceBase;Lcom/android/server/biometrics/ClientMonitor;)Lcom/android/server/biometrics/ClientMonitor;
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/biometrics/BiometricServiceBase;)Lcom/android/server/biometrics/ClientMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/biometrics/BiometricServiceBase;Lcom/android/server/biometrics/ClientMonitor;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->startClient(Lcom/android/server/biometrics/ClientMonitor;Z)V

    return-void
.end method

.method private clearEnumerateState()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clearEnumerateState()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mUnknownHALTemplates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private enumerateUser(I)V
    .locals 18

    move-object/from16 v14, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enumerating user("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getManageBiometricPermission()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v10, v0, 0x1

    nop

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/biometrics/BiometricServiceBase;->getEnrolledTemplates(I)Ljava/util/List;

    move-result-object v16

    new-instance v17, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v3

    iget-wide v4, v14, Lcom/android/server/biometrics/BiometricServiceBase;->mHalDeviceId:J

    iget-object v6, v14, Lcom/android/server/biometrics/BiometricServiceBase;->mToken:Landroid/os/IBinder;

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v13

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v8, p1

    move/from16 v9, p1

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v13}, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIZLjava/lang/String;Ljava/util/List;Lcom/android/server/biometrics/BiometricUtils;)V

    invoke-virtual {v14, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->enumerateInternal(Lcom/android/server/biometrics/EnumerateClient;)V

    return-void
.end method

.method private getEffectiveUserId(I)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to acquire UserManager"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return p1
.end method

.method private isCurrentClient(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isForegroundActivity(II)Z
    .locals 6

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, p2, :cond_0

    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v4, p1, :cond_0

    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v5, 0x7d

    if-gt v4, v5, :cond_0

    const/4 v4, 0x1

    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "am.getRunningAppProcesses() failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private isKeyguard(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mKeyguardPackage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isWorkProfile(I)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private listenForUserSwitches()V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/BiometricServiceBase$1;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/BiometricServiceBase$1;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to listen for user switching event"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private removeLockoutResetCallback(Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private startAuthentication(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startAuthentication("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getLockoutMode()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In lockout mode("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") ; disallowing authentication"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v1, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :cond_0
    const/16 v1, 0x9

    :goto_0
    nop

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getHalDeviceId()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v1, v4}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->onError(JII)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Cannot send permanent lockout message to client"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/android/server/biometrics/BiometricServiceBase;->startClient(Lcom/android/server/biometrics/ClientMonitor;Z)V

    return-void
.end method

.method private startCleanupUnknownHALTemplates()V
    .locals 15

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mUnknownHALTemplates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mUnknownHALTemplates:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/BiometricServiceBase$UserTemplate;

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mUnknownHALTemplates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getManageBiometricPermission()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/BiometricServiceBase;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v13, v1, 0x1

    new-instance v1, Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHalDeviceId:J

    iget-object v8, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mToken:Landroid/os/IBinder;

    const/4 v9, 0x0

    iget-object v2, v0, Lcom/android/server/biometrics/BiometricServiceBase$UserTemplate;->mIdentifier:Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    invoke-virtual {v2}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v10

    const/4 v11, 0x0

    iget v12, v0, Lcom/android/server/biometrics/BiometricServiceBase$UserTemplate;->mUserId:I

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v14}, Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIIZLjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/BiometricServiceBase;->removeInternal(Lcom/android/server/biometrics/RemovalClient;)V

    const/16 v2, 0x94

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->statsModality()I

    move-result v3

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Landroid/util/StatsLog;->write(III)I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->clearEnumerateState()V

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Enumerate finished, starting pending client"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    invoke-direct {p0, v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase;->startClient(Lcom/android/server/biometrics/ClientMonitor;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    :cond_1
    :goto_0
    return-void
.end method

.method private startClient(Lcom/android/server/biometrics/ClientMonitor;Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "request stop current client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v1, v0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/biometrics/ClientMonitor;->stop(Z)I

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mResetClientState:Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;

    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/BiometricServiceBase$H;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mResetClientState:Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/biometrics/BiometricServiceBase$H;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internal cleanup in progress but trying to start client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), initiatedByClient = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    goto/16 :goto_3

    :cond_3
    if-eqz p1, :cond_6

    instance-of v1, p1, Lcom/android/server/biometrics/AuthenticationClient;

    if-eqz v1, :cond_5

    move-object v1, p1

    check-cast v1, Lcom/android/server/biometrics/AuthenticationClient;

    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthenticationClient;->isBiometricPrompt()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Returning cookie: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthenticationClient;->getCookie()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    if-nez v2, :cond_4

    nop

    const-string v2, "biometric"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/biometrics/IBiometricService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    :cond_4
    :try_start_0
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthenticationClient;->getCookie()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthenticationClient;->getRequireConfirmation()Z

    move-result v4

    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthenticationClient;->getTargetUserId()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Landroid/hardware/biometrics/IBiometricService;->onReadyForAuthentication(IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Remote exception"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void

    :cond_5
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    invoke-virtual {v1}, Lcom/android/server/biometrics/ClientMonitor;->getCookie()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/BiometricServiceBase;->startCurrentClient(I)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->opStartClient(Lcom/android/server/biometrics/ClientMonitor;Z)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getPendingClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getPendingClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getPendingClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove pending client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getPendingClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    :cond_6
    :goto_3
    return-void
.end method

.method private userActivity()V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    return-void
.end method


# virtual methods
.method protected addLockoutResetCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    new-instance v1, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$XAcKFVHrxFAE_DeiO9UcSMHwbi4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$XAcKFVHrxFAE_DeiO9UcSMHwbi4;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected authenticateInternal(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;)V
    .locals 11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, v8

    move v6, v9

    move v7, v10

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/biometrics/BiometricServiceBase;->authenticateInternal(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;III)V

    return-void
.end method

.method protected authenticateInternal(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;III)V
    .locals 14

    const/16 v0, 0x3e7

    move/from16 v7, p7

    if-ne v7, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "authenticateInternal double"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v3, 0x1

    move-object v1, p0

    move-object/from16 v2, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/biometrics/BiometricServiceBase;->canUseBiometric(Ljava/lang/String;ZIII)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "authenticate(): reject "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    move-object/from16 v3, p4

    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    new-instance v4, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$HtA60PD2POS70xjo2Wkv9Ds3iIM;

    move-object v8, v4

    move-object v9, p0

    move-wide/from16 v10, p2

    move-object v12, p1

    move-object/from16 v13, p4

    invoke-direct/range {v8 .. v13}, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$HtA60PD2POS70xjo2Wkv9Ds3iIM;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;JLcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected canUseBiometric(Ljava/lang/String;ZIII)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->checkUseBiometricPermission()V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p5}, Lcom/android/server/biometrics/BiometricServiceBase;->isCurrentUserOrProfile(I)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "Rejecting "

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; not a current user or profile"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    invoke-virtual {p0, p3, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->checkAppOps(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; permission denied"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    if-eqz p2, :cond_6

    invoke-direct {p0, p3, p4}, Lcom/android/server/biometrics/BiometricServiceBase;->isForegroundActivity(II)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->isCurrentClient(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "com.eg.android.AlipayGphone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "com.tencent.mm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; not in foreground"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5
    :goto_0
    return v1

    :cond_6
    return v1
.end method

.method protected cancelAuthenticationInternal(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, v7

    move v4, v8

    move v5, v9

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/biometrics/BiometricServiceBase;->cancelAuthenticationInternal(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V

    return-void
.end method

.method protected cancelAuthenticationInternal(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V
    .locals 6

    if-eqz p6, :cond_0

    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/BiometricServiceBase;->canUseBiometric(Ljava/lang/String;ZIII)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelAuthentication(): reject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    new-instance v1, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$aivpKkOumO0Y5eW-DasbcdjcN4o;

    invoke-direct {v1, p0, p1, p6}, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$aivpKkOumO0Y5eW-DasbcdjcN4o;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/os/IBinder;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected cancelEnrollmentInternal(Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    new-instance v1, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$9h-u9AqPquTEJ3xQKI_ONPZaSfE;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$9h-u9AqPquTEJ3xQKI_ONPZaSfE;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected abstract checkAppOps(ILjava/lang/String;)Z
.end method

.method protected checkPermission(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " permission."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected abstract checkUseBiometricPermission()V
.end method

.method protected doTemplateCleanupForUser(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->enumerateUser(I)V

    return-void
.end method

.method protected enrollInternal(Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;I)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->hasReachedEnrollmentLimit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->isCurrentUserOrProfile(I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    new-instance v1, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$fmXvpYbcyw65Q8mBLfnQvCCMoK4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$fmXvpYbcyw65Q8mBLfnQvCCMoK4;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected enumerateInternal(Lcom/android/server/biometrics/EnumerateClient;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    new-instance v1, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$YYfr_b-4RQIPNHGbIvwrGKgGEsY;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$YYfr_b-4RQIPNHGbIvwrGKgGEsY;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Lcom/android/server/biometrics/EnumerateClient;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected getAuthenticatorId(Ljava/lang/String;)J
    .locals 5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mAuthenticatorIds:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1
.end method

.method protected abstract getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;
.end method

.method protected abstract getConstants()Lcom/android/server/biometrics/Constants;
.end method

.method protected getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    return-object v0
.end method

.method protected abstract getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
.end method

.method protected abstract getEnrolledTemplates(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "+",
            "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getHalDeviceId()J
.end method

.method protected abstract getLockoutBroadcastPermission()Ljava/lang/String;
.end method

.method protected abstract getLockoutMode()I
.end method

.method protected abstract getLockoutResetIntent()Ljava/lang/String;
.end method

.method protected abstract getManageBiometricPermission()Ljava/lang/String;
.end method

.method protected getPendingClient()Lcom/android/server/biometrics/ClientMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    return-object v0
.end method

.method protected abstract getTag()Ljava/lang/String;
.end method

.method protected getUserOrWorkProfileId(Ljava/lang/String;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->isWorkProfile(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->getEffectiveUserId(I)I

    move-result v0

    return v0
.end method

.method protected handleAcquired(JII)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3, p4}, Lcom/android/server/biometrics/ClientMonitor;->onAcquired(II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->removeClient(Lcom/android/server/biometrics/ClientMonitor;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPerformanceStats:Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getLockoutMode()I

    move-result v1

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/android/server/biometrics/AuthenticationClient;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPerformanceStats:Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    iget v2, v1, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->acquire:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->acquire:I

    :cond_1
    return-void
.end method

.method protected handleAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleAuthenticated: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/biometrics/ClientMonitor;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->removeClient(Lcom/android/server/biometrics/ClientMonitor;)V

    :cond_1
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPerformanceStats:Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    iget v4, v3, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->accept:I

    add-int/2addr v4, v2

    iput v4, v3, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->accept:I

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPerformanceStats:Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    iget v4, v3, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->reject:I

    add-int/2addr v4, v2

    iput v4, v3, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->reject:I

    :goto_1
    return-void
.end method

.method protected handleEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/ClientMonitor;->onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->removeClient(Lcom/android/server/biometrics/ClientMonitor;)V

    instance-of v1, p1, Landroid/hardware/fingerprint/Fingerprint;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/BiometricServiceBase;->updateActiveGroup(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentUserId:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/BiometricServiceBase;->updateActiveGroup(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected handleEnumerate(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/ClientMonitor;->onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z

    if-nez p2, :cond_4

    instance-of v1, v0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;

    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->getUnknownHALTemplates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " templates for deletion"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mUnknownHALTemplates:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/server/biometrics/BiometricServiceBase$UserTemplate;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getTargetUserId()I

    move-result v6

    invoke-direct {v4, p0, v5, v6}, Lcom/android/server/biometrics/BiometricServiceBase$UserTemplate;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->removeClient(Lcom/android/server/biometrics/ClientMonitor;)V

    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->startCleanupUnknownHALTemplates()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->removeClient(Lcom/android/server/biometrics/ClientMonitor;)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected handleError(JII)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleError(client="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "null"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v1, v0, Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;

    if-eqz v1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->clearEnumerateState()V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/biometrics/ClientMonitor;->onError(JII)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->removeClient(Lcom/android/server/biometrics/ClientMonitor;)V

    :cond_3
    const/4 v1, 0x5

    if-ne p3, v1, :cond_4

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mResetClientState:Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;

    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/BiometricServiceBase$H;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start pending client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    invoke-virtual {v3}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/biometrics/BiometricServiceBase;->startClient(Lcom/android/server/biometrics/ClientMonitor;Z)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    :cond_4
    return-void
.end method

.method protected handleRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed: fid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dev="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getDeviceId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", rem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/ClientMonitor;->onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->removeClient(Lcom/android/server/biometrics/ClientMonitor;)V

    iget v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentUserId:I

    instance-of v2, p1, Landroid/hardware/fingerprint/Fingerprint;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/BiometricServiceBase;->hasEnrolledBiometrics(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/BiometricServiceBase;->updateActiveGroup(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "force reset aod clock type as default due to no remained fingerprint"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "aod_clock_style"

    invoke-static {v2, v4, v3, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_1
    instance-of v1, v0, Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mUnknownHALTemplates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->startCleanupUnknownHALTemplates()V

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->clearEnumerateState()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected handleUserSwitching(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    instance-of v0, v0, Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    instance-of v0, v0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User switched while performing cleanup"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->updateActiveGroup(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->doTemplateCleanupForUser(I)V

    return-void
.end method

.method protected abstract hasEnrolledBiometrics(I)Z
.end method

.method protected hasPermission(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract hasReachedEnrollmentLimit(I)Z
.end method

.method protected isCurrentUserOrProfile(I)Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to acquire UserManager"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v4

    array-length v5, v4

    move v6, v1

    :goto_0
    if-ge v6, v5, :cond_2

    aget v7, v4, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v7, p1, :cond_1

    nop

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v1, 0x1

    return v1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v1

    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method protected isRestricted()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getManageBiometricPermission()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public synthetic lambda$addLockoutResetCallback$6$BiometricServiceBase(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V
    .locals 2

    new-instance v0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;

    invoke-direct {v0, p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public synthetic lambda$authenticateInternal$2$BiometricServiceBase(JLcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getConstants()Lcom/android/server/biometrics/Constants;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/biometrics/Constants;->tagAuthToken()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    invoke-virtual {v0, v1, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPerformanceMap:Ljava/util/HashMap;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCryptoPerformanceMap:Ljava/util/HashMap;

    :goto_1
    iget v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    if-nez v1, :cond_2

    new-instance v4, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    invoke-direct {v4, p0}, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;)V

    move-object v1, v4

    iget v4, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentUserId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iput-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPerformanceStats:Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    cmp-long v2, p1, v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v5, v6

    :goto_2
    iput-boolean v5, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mIsCrypto:Z

    invoke-direct {p0, p3, p4}, Lcom/android/server/biometrics/BiometricServiceBase;->startAuthentication(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$cancelAuthenticationInternal$3$BiometricServiceBase(Landroid/os/IBinder;Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    instance-of v1, v0, Lcom/android/server/biometrics/AuthenticationClient;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v1

    if-eq v1, p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t stop client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " since tokens don\'t match. fromClient: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", fromClient: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/ClientMonitor;->stop(Z)I

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t cancel non-authenticating client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-void
.end method

.method public synthetic lambda$cancelEnrollmentInternal$1$BiometricServiceBase(Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    instance-of v1, v0, Lcom/android/server/biometrics/EnrollClient;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cancelling enrollment"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/ClientMonitor;->stop(Z)I

    :cond_1
    return-void
.end method

.method public synthetic lambda$enrollInternal$0$BiometricServiceBase(Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->startClient(Lcom/android/server/biometrics/ClientMonitor;Z)V

    return-void
.end method

.method public synthetic lambda$enumerateInternal$5$BiometricServiceBase(Lcom/android/server/biometrics/EnumerateClient;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->startClient(Lcom/android/server/biometrics/ClientMonitor;Z)V

    return-void
.end method

.method public synthetic lambda$removeInternal$4$BiometricServiceBase(Lcom/android/server/biometrics/RemovalClient;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->startClient(Lcom/android/server/biometrics/ClientMonitor;Z)V

    return-void
.end method

.method protected loadAuthenticatorIds()V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mAuthenticatorIds:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v4}, Lcom/android/server/biometrics/BiometricServiceBase;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result v4

    iget-object v6, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mAuthenticatorIds:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/biometrics/BiometricServiceBase;->updateActiveGroup(ILjava/lang/String;)V

    :cond_0
    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x3e8

    cmp-long v0, v2, v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "loadAuthenticatorIds() taking too long: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method protected notifyClientActiveCallbacks(Z)V
    .locals 0

    return-void
.end method

.method protected notifyLockoutResetMonitors()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;

    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->sendLockoutReset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->listenForUserSwitches()V

    return-void
.end method

.method protected opStartClient(Lcom/android/server/biometrics/ClientMonitor;Z)V
    .locals 0

    return-void
.end method

.method protected removeClient(Lcom/android/server/biometrics/ClientMonitor;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/biometrics/ClientMonitor;->destroy()V

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    if-eq p1, v0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    invoke-virtual {v2}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Done with client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->notifyClientActiveCallbacks(Z)V

    :cond_2
    return-void
.end method

.method protected removeInternal(Lcom/android/server/biometrics/RemovalClient;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    new-instance v1, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$Ryp20xWMQfJ1Uis2FSiepWAsEHg;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$Ryp20xWMQfJ1Uis2FSiepWAsEHg;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Lcom/android/server/biometrics/RemovalClient;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public serviceDied(J)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HAL died"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getConstants()Lcom/android/server/biometrics/Constants;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/biometrics/Constants;->tagHalDied()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    iget v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHALDeathCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHALDeathCount:I

    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentUserId:I

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getHalDeviceId()J

    move-result-wide v0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/biometrics/BiometricServiceBase;->handleError(JII)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->statsModality()I

    move-result v0

    const/16 v1, 0x94

    invoke-static {v1, v0, v2}, Landroid/util/StatsLog;->write(III)I

    return-void
.end method

.method protected setActiveUserInternal(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->updateActiveGroup(ILjava/lang/String;)V

    return-void
.end method

.method protected startCurrentClient(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Trying to start null client!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "starting client "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    invoke-virtual {v2}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") cookie: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    invoke-virtual {v2}, Lcom/android/server/biometrics/ClientMonitor;->getCookie()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getCookie()I

    move-result v0

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mismatched cookie"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->notifyClientActiveCallbacks(Z)V

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->start()I

    return-void
.end method

.method protected abstract statsModality()I
.end method

.method protected abstract updateActiveGroup(ILjava/lang/String;)V
.end method
