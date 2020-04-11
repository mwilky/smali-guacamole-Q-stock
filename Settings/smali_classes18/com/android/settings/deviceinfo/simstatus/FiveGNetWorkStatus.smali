.class public Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;
.super Ljava/lang/Object;
.source "FiveGNetWorkStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;
    }
.end annotation


# static fields
.field private static final DELAY_INCREMENT:I = 0x7d0

.field private static final DELAY_MILLISECOND:I = 0xbb8

.field private static final MAX_RETRY:I = 0x4

.field private static final MESSAGE_REBIND:I = 0x400

.field private static final MESSAGE_REINIT:I = 0x401

.field private static final TAG:Ljava/lang/String; = "FiveGNetWorkStatus"


# instance fields
.field private mBindRetryTimes:I

.field private mCallback:Lorg/codeaurora/internal/INetworkCallback;

.field private mClient:Lorg/codeaurora/internal/Client;

.field private mContext:Landroid/content/Context;

.field private final mCurrentServiceStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mInitRetryTimes:I

.field private final mLastServiceStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

.field private mPackageName:Ljava/lang/String;

.field private mPhoneCount:I

.field private final mRsrpThresholds:[I

.field private mServiceConnected:Z

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private final mSnrThresholds:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mCurrentServiceStates:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mLastServiceStates:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mBindRetryTimes:I

    iput v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mInitRetryTimes:I

    new-instance v0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$1;-><init>(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$2;-><init>(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mServiceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$3;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$3;-><init>(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mCallback:Lorg/codeaurora/internal/INetworkCallback;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mPackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    iput v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mPhoneCount:I

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mRsrpThresholds:[I

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mSnrThresholds:[I

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mServiceConnected:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mBindRetryTimes:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->update5GIcon(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->getRsrpLevel(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->binderService()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->initFiveGServiceState()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)Lorg/codeaurora/internal/IExtTelephony;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;Lorg/codeaurora/internal/IExtTelephony;)Lorg/codeaurora/internal/IExtTelephony;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)Lorg/codeaurora/internal/Client;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mClient:Lorg/codeaurora/internal/Client;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;Lorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Client;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mClient:Lorg/codeaurora/internal/Client;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)Lorg/codeaurora/internal/INetworkCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mCallback:Lorg/codeaurora/internal/INetworkCallback;

    return-object v0
.end method

.method private binderService()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {v0, v1}, Lorg/codeaurora/internal/ServiceUtil;->bindService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " bind service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FiveGNetWorkStatus"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    iget v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mBindRetryTimes:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mBindRetryTimes:I

    mul-int/lit16 v3, v3, 0x7d0

    add-int/lit16 v3, v3, 0xbb8

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mBindRetryTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mBindRetryTimes:I

    :cond_0
    return-void
.end method

.method private static getLevel(I[I)I
    .locals 3

    const/4 v0, 0x0

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget v1, p1, v1

    if-lt v1, p0, :cond_2

    const/4 v1, 0x0

    aget v1, p1, v1

    if-ge p0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_3

    aget v2, p1, v1

    if-ge v2, p0, :cond_1

    add-int/lit8 v2, v1, 0x1

    aget v2, p1, v2

    if-gt p0, v2, :cond_1

    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    return v0
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

.method private getRsrpLevel(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mRsrpThresholds:[I

    invoke-static {p1, v0}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->getLevel(I[I)I

    move-result v0

    return v0
.end method

.method private getSaIcon(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;)Z
    .locals 1

    invoke-static {p1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->access$400(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getServiceState(ILandroid/util/SparseArray;)Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;",
            ">;)",
            "Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;"
        }
    .end annotation

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;

    invoke-direct {v1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;-><init>()V

    move-object v0, v1

    invoke-virtual {p1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private getSnrLevel(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mSnrThresholds:[I

    invoke-static {p1, v0}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->getLevel(I[I)I

    move-result v0

    return v0
.end method

.method private initFiveGServiceState()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initFiveGServiceState mPhoneCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mPhoneCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FiveGNetWorkStatus"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mPhoneCount:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->initFiveGServiceState(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initFiveGServiceState(I)V
    .locals 7

    const-string v0, "initFiveGServiceState: Exception = "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNetworkService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mClient="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mClient:Lorg/codeaurora/internal/Client;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FiveGNetWorkStatus"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mClient:Lorg/codeaurora/internal/Client;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query 5G service state for phoneId "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x4

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mClient:Lorg/codeaurora/internal/Client;

    invoke-interface {v3, p1, v4}, Lorg/codeaurora/internal/IExtTelephony;->queryNrDcParam(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryNrDcParam result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mClient:Lorg/codeaurora/internal/Client;

    invoke-interface {v4, p1, v5}, Lorg/codeaurora/internal/IExtTelephony;->queryNrBearerAllocation(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object v4

    move-object v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryNrBearerAllocation result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mClient:Lorg/codeaurora/internal/Client;

    invoke-interface {v4, p1, v5}, Lorg/codeaurora/internal/IExtTelephony;->queryNrSignalStrength(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object v4

    move-object v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryNrSignalStrength result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mClient:Lorg/codeaurora/internal/Client;

    invoke-interface {v4, p1, v5}, Lorg/codeaurora/internal/IExtTelephony;->queryUpperLayerIndInfo(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object v4

    move-object v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryUpperLayerIndInfo result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mClient:Lorg/codeaurora/internal/Client;

    invoke-interface {v4, p1, v5}, Lorg/codeaurora/internal/IExtTelephony;->query5gConfigInfo(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object v4

    move-object v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query5gConfigInfo result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mClient:Lorg/codeaurora/internal/Client;

    invoke-interface {v4, p1, v5}, Lorg/codeaurora/internal/IExtTelephony;->queryNrIconType(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object v4

    move-object v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryNrIconType result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mInitRetryTimes:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x401

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mInitRetryTimes:I

    mul-int/lit16 v2, v2, 0x7d0

    add-int/lit16 v2, v2, 0xbb8

    int-to-long v4, v2

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mInitRetryTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mInitRetryTimes:I

    goto :goto_0

    :catch_1
    move-exception v3

    iget v4, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mBindRetryTimes:I

    if-ge v4, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x400

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mHandler:Landroid/os/Handler;

    iget v5, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mBindRetryTimes:I

    mul-int/lit16 v5, v5, 0x7d0

    add-int/lit16 v5, v5, 0xbb8

    int-to-long v5, v5

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mBindRetryTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mBindRetryTimes:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private update5GIcon(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)V
    .locals 2

    invoke-static {p1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->access$000(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->getSaIcon(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->access$102(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;Z)Z

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->getSaIcon(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->access$202(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;Z)Z

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->access$000(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->access$300(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->getNrIconGroup(II)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->access$102(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;Z)Z

    invoke-static {p1, v1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->access$202(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;Z)Z

    goto :goto_0

    :cond_1
    invoke-static {p1, v1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->access$102(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;Z)Z

    invoke-static {p1, v1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->access$202(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;Z)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public getCurrentServiceState(I)Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mCurrentServiceStates:Landroid/util/SparseArray;

    invoke-static {p1, v0}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->getServiceState(ILandroid/util/SparseArray;)Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;

    move-result-object v0

    return-object v0
.end method

.method public getLastServiceState(I)Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mLastServiceStates:Landroid/util/SparseArray;

    invoke-static {p1, v0}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->getServiceState(ILandroid/util/SparseArray;)Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;

    move-result-object v0

    return-object v0
.end method

.method public isServiceConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mServiceConnected:Z

    return v0
.end method

.method public registerListener(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerListener phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FiveGNetWorkStatus"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mBindRetryTimes:I

    iput v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mInitRetryTimes:I

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->isServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->binderService()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->initFiveGServiceState(I)V

    :goto_0
    return-void
.end method

.method public unregisterListener(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterListener phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FiveGNetWorkStatus"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mCurrentServiceStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mLastServiceStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method
