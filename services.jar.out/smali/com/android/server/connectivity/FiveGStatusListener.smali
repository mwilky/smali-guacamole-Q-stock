.class public Lcom/android/server/connectivity/FiveGStatusListener;
.super Ljava/lang/Object;
.source "FiveGStatusListener.java"


# static fields
.field private static final DELAY_INCREMENT:I = 0x7d0

.field private static final DELAY_MILLISECOND:I = 0xbb8

.field private static final MAX_RETRY:I = 0x4

.field private static final MESSAGE_REBIND:I = 0x400

.field private static final MESSAGE_REINIT:I = 0x401

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBindRetryTimes:I

.field protected mCallback:Lorg/codeaurora/internal/INetworkCallback;

.field private mClient:Lorg/codeaurora/internal/Client;

.field private mContext:Landroid/content/Context;

.field private final mCurrentServiceStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/connectivity/FiveGServiceState;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mInitRetryTimes:I

.field private mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

.field private mPackageName:Ljava/lang/String;

.field private mPhoneCount:I

.field private mServiceConnected:Z

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/connectivity/FiveGStatusListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/FiveGStatusListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mServiceConnected:Z

    iput v0, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mBindRetryTimes:I

    iput v0, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mInitRetryTimes:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mCurrentServiceStates:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/server/connectivity/FiveGStatusListener$1;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/FiveGStatusListener$1;-><init>(Lcom/android/server/connectivity/FiveGStatusListener;)V

    iput-object v0, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/connectivity/FiveGStatusListener$2;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/FiveGStatusListener$2;-><init>(Lcom/android/server/connectivity/FiveGStatusListener;)V

    iput-object v0, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mServiceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/server/connectivity/FiveGStatusListener$3;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/FiveGStatusListener$3;-><init>(Lcom/android/server/connectivity/FiveGStatusListener;)V

    iput-object v0, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mCallback:Lorg/codeaurora/internal/INetworkCallback;

    iput-object p1, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mPackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mPhoneCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/FiveGStatusListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/connectivity/FiveGStatusListener;->binderService()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/FiveGStatusListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/connectivity/FiveGStatusListener;->initFiveGServiceState()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/connectivity/FiveGStatusListener;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/FiveGStatusListener;)Lorg/codeaurora/internal/IExtTelephony;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/connectivity/FiveGStatusListener;Lorg/codeaurora/internal/IExtTelephony;)Lorg/codeaurora/internal/IExtTelephony;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/FiveGStatusListener;)Lorg/codeaurora/internal/Client;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mClient:Lorg/codeaurora/internal/Client;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/connectivity/FiveGStatusListener;Lorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Client;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mClient:Lorg/codeaurora/internal/Client;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/FiveGStatusListener;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/connectivity/FiveGStatusListener;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mServiceConnected:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/FiveGStatusListener;)I
    .locals 1

    iget v0, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mBindRetryTimes:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/FiveGStatusListener;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/FiveGStatusListener;Lcom/android/server/connectivity/FiveGServiceState;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/FiveGStatusListener;->update5GIcon(Lcom/android/server/connectivity/FiveGServiceState;I)V

    return-void
.end method

.method private binderService()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {v0, v1}, Lorg/codeaurora/internal/ServiceUtil;->bindService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    move-result v0

    sget-object v1, Lcom/android/server/connectivity/FiveGStatusListener;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " bind service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    iget v1, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mBindRetryTimes:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mBindRetryTimes:I

    mul-int/lit16 v3, v3, 0x7d0

    add-int/lit16 v3, v3, 0xbb8

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget v1, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mBindRetryTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mBindRetryTimes:I

    :cond_0
    return-void
.end method

.method private getNrIconGroup(II)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    nop

    :goto_0
    return v0
.end method

.method private getSaIcon(Lcom/android/server/connectivity/FiveGServiceState;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/connectivity/FiveGServiceState;->getBearerAllocationStatus()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private initFiveGServiceState()V
    .locals 3

    sget-object v0, Lcom/android/server/connectivity/FiveGStatusListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initFiveGServiceState mPhoneCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mPhoneCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mPhoneCount:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/FiveGStatusListener;->initFiveGServiceState(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initFiveGServiceState(I)V
    .locals 5

    const-string v0, "initFiveGServiceState: Exception = "

    sget-object v1, Lcom/android/server/connectivity/FiveGStatusListener;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mNetworkService = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mClient = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mClient:Lorg/codeaurora/internal/Client;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mClient:Lorg/codeaurora/internal/Client;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/connectivity/FiveGStatusListener;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "query 5G service state for phoneId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    iget-object v2, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mClient:Lorg/codeaurora/internal/Client;

    invoke-interface {v1, p1, v2}, Lorg/codeaurora/internal/IExtTelephony;->queryNrDcParam(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object v1

    sget-object v2, Lcom/android/server/connectivity/FiveGStatusListener;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryNrDcParam result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    iget-object v3, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mClient:Lorg/codeaurora/internal/Client;

    invoke-interface {v2, p1, v3}, Lorg/codeaurora/internal/IExtTelephony;->queryNrBearerAllocation(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object v2

    move-object v1, v2

    sget-object v2, Lcom/android/server/connectivity/FiveGStatusListener;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryNrBearerAllocation result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    iget-object v3, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mClient:Lorg/codeaurora/internal/Client;

    invoke-interface {v2, p1, v3}, Lorg/codeaurora/internal/IExtTelephony;->queryNrSignalStrength(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object v2

    move-object v1, v2

    sget-object v2, Lcom/android/server/connectivity/FiveGStatusListener;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryNrSignalStrength result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    iget-object v3, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mClient:Lorg/codeaurora/internal/Client;

    invoke-interface {v2, p1, v3}, Lorg/codeaurora/internal/IExtTelephony;->queryUpperLayerIndInfo(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object v2

    move-object v1, v2

    sget-object v2, Lcom/android/server/connectivity/FiveGStatusListener;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryUpperLayerIndInfo result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    iget-object v3, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mClient:Lorg/codeaurora/internal/Client;

    invoke-interface {v2, p1, v3}, Lorg/codeaurora/internal/IExtTelephony;->query5gConfigInfo(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object v2

    move-object v1, v2

    sget-object v2, Lcom/android/server/connectivity/FiveGStatusListener;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "query5gConfigInfo result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    iget-object v3, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mClient:Lorg/codeaurora/internal/Client;

    invoke-interface {v2, p1, v3}, Lorg/codeaurora/internal/IExtTelephony;->queryNrIconType(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object v2

    move-object v1, v2

    sget-object v2, Lcom/android/server/connectivity/FiveGStatusListener;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryNrIconType result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/connectivity/FiveGStatusListener;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/connectivity/FiveGStatusListener;->tryReinitFiveGServiceState()V

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v2, Lcom/android/server/connectivity/FiveGStatusListener;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/connectivity/FiveGStatusListener;->tryRebindService()V

    :cond_0
    :goto_0
    return-void
.end method

.method private isServiceConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mServiceConnected:Z

    return v0
.end method

.method private tryRebindService()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    sget-object v2, Lcom/android/server/connectivity/FiveGStatusListener;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tryRebindService: mBindRetryTimes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mBindRetryTimes:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isTaskOngoing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mBindRetryTimes:I

    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mHandler:Landroid/os/Handler;

    mul-int/lit16 v2, v2, 0x7d0

    add-int/lit16 v2, v2, 0xbb8

    int-to-long v4, v2

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget v1, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mBindRetryTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mBindRetryTimes:I

    :cond_0
    return-void
.end method

.method private tryReinitFiveGServiceState()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x401

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    sget-object v2, Lcom/android/server/connectivity/FiveGStatusListener;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tryRebindService: mInitRetryTimes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mInitRetryTimes:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isTaskOngoing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mInitRetryTimes:I

    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mHandler:Landroid/os/Handler;

    mul-int/lit16 v2, v2, 0x7d0

    add-int/lit16 v2, v2, 0xbb8

    int-to-long v4, v2

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget v1, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mInitRetryTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mInitRetryTimes:I

    :cond_0
    return-void
.end method

.method private update5GIcon(Lcom/android/server/connectivity/FiveGServiceState;I)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/connectivity/FiveGServiceState;->getNrConfigType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/FiveGStatusListener;->getSaIcon(Lcom/android/server/connectivity/FiveGServiceState;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/connectivity/FiveGServiceState;->setShowFiveGService(Z)V

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/FiveGStatusListener;->getSaIcon(Lcom/android/server/connectivity/FiveGServiceState;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/connectivity/FiveGServiceState;->setCampOnFiveGService(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/connectivity/FiveGServiceState;->getNrConfigType()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/connectivity/FiveGServiceState;->getNrIconType()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/connectivity/FiveGStatusListener;->getNrIconGroup(II)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/connectivity/FiveGServiceState;->setShowFiveGService(Z)V

    invoke-virtual {p1, v1}, Lcom/android/server/connectivity/FiveGServiceState;->setCampOnFiveGService(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Lcom/android/server/connectivity/FiveGServiceState;->setShowFiveGService(Z)V

    invoke-virtual {p1, v1}, Lcom/android/server/connectivity/FiveGServiceState;->setCampOnFiveGService(Z)V

    :goto_0
    invoke-virtual {p1}, Lcom/android/server/connectivity/FiveGServiceState;->getShowFiveGService()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/connectivity/FiveGServiceState;->getCampOnFiveGService()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/FiveGStatusListener;->on5GStatusChanged(ZZ)V

    return-void
.end method


# virtual methods
.method public getCurrentServiceState(I)Lcom/android/server/connectivity/FiveGServiceState;
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mCurrentServiceStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/FiveGServiceState;

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/server/connectivity/FiveGServiceState;

    invoke-direct {v1}, Lcom/android/server/connectivity/FiveGServiceState;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mCurrentServiceStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public on5GStatusChanged(ZZ)V
    .locals 0

    return-void
.end method

.method public startListen()V
    .locals 2

    sget-object v0, Lcom/android/server/connectivity/FiveGStatusListener;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startListen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/connectivity/FiveGStatusListener;->isServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/connectivity/FiveGStatusListener;->binderService()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/connectivity/FiveGStatusListener;->initFiveGServiceState()V

    :goto_0
    return-void
.end method

.method public stopListen()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/FiveGStatusListener;->mCurrentServiceStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method
