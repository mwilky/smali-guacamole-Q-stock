.class public Lcom/android/systemui/statusbar/policy/FiveGServiceClient;
.super Ljava/lang/Object;
.source "FiveGServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/FiveGServiceClient$IFiveGStateListener;,
        Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static sInstance:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;


# instance fields
.field private mBindRetryTimes:I

.field protected mCallback:Lorg/codeaurora/internal/INetworkCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mClient:Lorg/codeaurora/internal/Client;

.field private mContext:Landroid/content/Context;

.field private final mCurrentServiceStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;",
            ">;"
        }
    .end annotation
.end field

.field private final mFivebarRsrpThresholds:[I

.field private mHandler:Landroid/os/Handler;

.field private mInitRetryTimes:I

.field private final mKeyguardUpdateMonitorCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/keyguard/KeyguardUpdateMonitorCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLastServiceStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

.field private mPackageName:Ljava/lang/String;

.field private final mRsrpThresholds:[I

.field private mServiceConnected:Z

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private final mSnrThresholds:[I

.field final mStatesListeners:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/policy/FiveGServiceClient$IFiveGStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "FiveGServiceClient"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mKeyguardUpdateMonitorCallbacks:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mStatesListeners:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mCurrentServiceStates:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mLastServiceStates:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mBindRetryTimes:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mInitRetryTimes:I

    new-instance v0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$1;-><init>(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$2;-><init>(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mServiceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;-><init>(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mCallback:Lorg/codeaurora/internal/INetworkCallback;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mPackageName:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$array;->config_5g_signal_rsrp_thresholds:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mRsrpThresholds:[I

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$array;->config_5g_signal_snr_thresholds:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mSnrThresholds:[I

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$array;->config_5_bar_5g_signal_rsrp_thresholds:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mFivebarRsrpThresholds:[I

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mServiceConnected:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mBindRetryTimes:I

    return p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1400()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->notifyListenersIfNecessary(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getRsrpLevel(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->binderService()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->initFiveGServiceState()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->notifyMonitorCallback()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)Lorg/codeaurora/internal/IExtTelephony;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;Lorg/codeaurora/internal/IExtTelephony;)Lorg/codeaurora/internal/IExtTelephony;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)Lorg/codeaurora/internal/Client;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mClient:Lorg/codeaurora/internal/Client;

    return-object p0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;Lorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Client;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mClient:Lorg/codeaurora/internal/Client;

    return-object p1
.end method

.method private binderService()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {v0, v1}, Lorg/codeaurora/internal/ServiceUtil;->bindService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " bind service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FiveGServiceClient"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mBindRetryTimes:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mBindRetryTimes:I

    mul-int/lit16 v2, v2, 0x7d0

    add-int/lit16 v2, v2, 0xbb8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mBindRetryTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mBindRetryTimes:I

    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/FiveGServiceClient;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->sInstance:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->sInstance:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    :cond_0
    sget-object p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->sInstance:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    return-object p0
.end method

.method private getLastServiceState(I)Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mLastServiceStates:Landroid/util/SparseArray;

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getServiceState(ILandroid/util/SparseArray;)Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    move-result-object p0

    return-object p0
.end method

.method private getLevel(I[I)I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getLevel(I[IZ)I

    move-result p0

    return p0
.end method

.method private getLevel(I[IZ)I
    .locals 3

    array-length p0, p2

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    aget p0, p2, p0

    const/4 v1, 0x0

    if-lt p0, p1, :cond_3

    aget p0, p2, v1

    if-ge p1, p0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    array-length p0, p2

    sub-int/2addr p0, v0

    if-ge v1, p0, :cond_2

    aget p0, p2, v1

    if-ge p0, p1, :cond_1

    add-int/lit8 p0, v1, 0x1

    aget v2, p2, p0

    if-gt p1, v2, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move p0, v0

    goto :goto_2

    :cond_3
    :goto_1
    move p0, v1

    :goto_2
    if-eqz p3, :cond_4

    add-int/lit8 p0, p0, 0x1

    :cond_4
    sget-boolean p2, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->DEBUG:Z

    if-eqz p2, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "value="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " level="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FiveGServiceClient"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return p0
.end method

.method private getNrIconGroup(II)Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 0

    sget-object p0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FIVE_G_UWB:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FIVE_G_BASIC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    :goto_0
    return-object p0
.end method

.method public static getNumLevels(Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$integer;->config_5g_num_signal_strength_bins:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method private getRsrpLevel(I)I
    .locals 2

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportFiveBar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mFivebarRsrpThresholds:[I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getLevel(I[IZ)I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mRsrpThresholds:[I

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getLevel(I[I)I

    move-result p0

    return p0
.end method

.method private getSaIcon(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;)Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 0

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->access$400(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;)I

    move-result p0

    if-lez p0, :cond_0

    sget-object p0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FIVE_G_SA:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    return-object p0
.end method

.method private static getServiceState(ILandroid/util/SparseArray;)Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;",
            ">;)",
            "Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;"
        }
    .end annotation

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;-><init>()V

    invoke-virtual {p1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private initFiveGServiceState()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initFiveGServiceState size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mStatesListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FiveGServiceClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mStatesListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mStatesListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->initFiveGServiceState(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initFiveGServiceState(I)V
    .locals 5

    const-string v0, "initFiveGServiceState: Exception = "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNetworkService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mClient="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mClient:Lorg/codeaurora/internal/Client;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FiveGServiceClient"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mClient:Lorg/codeaurora/internal/Client;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query 5G service state for phoneId "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mClient:Lorg/codeaurora/internal/Client;

    invoke-interface {v1, p1, v3}, Lorg/codeaurora/internal/IExtTelephony;->queryNrDcParam(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryNrDcParam result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mClient:Lorg/codeaurora/internal/Client;

    invoke-interface {v1, p1, v3}, Lorg/codeaurora/internal/IExtTelephony;->queryNrBearerAllocation(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryNrBearerAllocation result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mClient:Lorg/codeaurora/internal/Client;

    invoke-interface {v1, p1, v3}, Lorg/codeaurora/internal/IExtTelephony;->queryNrSignalStrength(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryNrSignalStrength result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mClient:Lorg/codeaurora/internal/Client;

    invoke-interface {v1, p1, v3}, Lorg/codeaurora/internal/IExtTelephony;->queryUpperLayerIndInfo(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryUpperLayerIndInfo result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mClient:Lorg/codeaurora/internal/Client;

    invoke-interface {v1, p1, v3}, Lorg/codeaurora/internal/IExtTelephony;->query5gConfigInfo(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query5gConfigInfo result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mClient:Lorg/codeaurora/internal/Client;

    invoke-interface {v1, p1, v3}, Lorg/codeaurora/internal/IExtTelephony;->queryNrIconType(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryNrIconType result:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mInitRetryTimes:I

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x401

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mInitRetryTimes:I

    mul-int/lit16 v1, v1, 0x7d0

    add-int/lit16 v1, v1, 0xbb8

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mInitRetryTimes:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mInitRetryTimes:I

    goto :goto_0

    :catch_1
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "try to re-binder service"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mInitRetryTimes:I

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mServiceConnected:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mClient:Lorg/codeaurora/internal/Client;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->binderService()V

    :cond_0
    :goto_0
    return-void
.end method

.method private notifyListenersIfNecessary(I)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getCurrentServiceState(I)Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getLastServiceState(I)Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->equals(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phoneId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") Change in state from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " \n\tto "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FiveGServiceClient"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->copyFrom(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mStatesListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$IFiveGStateListener;

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$IFiveGStateListener;->onStateChanged(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x402

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method

.method private notifyMonitorCallback()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mKeyguardUpdateMonitorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mKeyguardUpdateMonitorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private showFake5GIcon(I)Z
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getCurrentServiceState(I)Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mRsrpThresholds:[I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showFake5GIcon:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->access$300(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "mRsrpThresholds[mRsrpThresholds.length-1]:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mRsrpThresholds:[I

    array-length v4, v3

    sub-int/2addr v4, v2

    aget v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mRsrpThresholds[0]:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mRsrpThresholds:[I

    aget v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FiveGServiceClient"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mRsrpThresholds:[I

    array-length v3, v1

    sub-int/2addr v3, v2

    aget v1, v1, v3

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->access$300(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;)I

    move-result v3

    if-lt v1, v3, :cond_2

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->access$300(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;)I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mRsrpThresholds:[I

    aget p0, p0, v0

    if-lt p1, p0, :cond_2

    move v0, v2

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public getCurrentServiceState(I)Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mCurrentServiceStates:Landroid/util/SparseArray;

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getServiceState(ILandroid/util/SparseArray;)Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    move-result-object p0

    return-object p0
.end method

.method public isServiceConnected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mServiceConnected:Z

    return p0
.end method

.method public registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mKeyguardUpdateMonitorCallbacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerListener(ILcom/android/systemui/statusbar/policy/FiveGServiceClient$IFiveGStateListener;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerListener phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FiveGServiceClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mStatesListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->isServiceConnected()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->binderService()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->initFiveGServiceState(I)V

    :goto_0
    return-void
.end method

.method public unregisterListener(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterListener phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FiveGServiceClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mStatesListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mCurrentServiceStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mLastServiceStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method update5GIcon(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;I)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->access$000(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getSaIcon(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;)Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->access$102(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;)Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->access$000(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;)I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->showFake5GIcon(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->access$202(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;I)I

    :cond_1
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->access$200(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getNrIconGroup(II)Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->access$102(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;)Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->access$102(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;)Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    :goto_0
    return-void
.end method
