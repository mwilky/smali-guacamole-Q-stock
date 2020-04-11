.class public Lcom/android/server/sis/sis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/wifi/IOpSlaManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "OpSlaManager"

.field private static final jN:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field private static final kN:Ljava/lang/String; = "android.net.network.CONNECTION_CHANGE"


# instance fields
.field private iN:Lcom/android/server/sis/vdb;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private Lo()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/sis/sis;->mCm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/sis/sis;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/sis/sis;->mCm:Landroid/net/ConnectivityManager;

    :cond_0
    return-void
.end method

.method private Mo()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.network.CONNECTION_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/sis/you;

    invoke-direct {v1, p0}, Lcom/android/server/sis/you;-><init>(Lcom/android/server/sis/sis;)V

    iput-object v1, p0, Lcom/android/server/sis/sis;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/server/sis/sis;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/sis/sis;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic sis(Lcom/android/server/sis/sis;)Lcom/android/server/sis/vdb;
    .locals 0

    iget-object p0, p0, Lcom/android/server/sis/sis;->iN:Lcom/android/server/sis/vdb;

    return-object p0
.end method

.method static synthetic you(Lcom/android/server/sis/sis;)Landroid/net/ConnectivityManager;
    .locals 0

    iget-object p0, p0, Lcom/android/server/sis/sis;->mCm:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static synthetic zta(Lcom/android/server/sis/sis;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/sis/sis;->Lo()V

    return-void
.end method


# virtual methods
.method public enableVerboseLogging(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/sis/sis;->iN:Lcom/android/server/sis/vdb;

    invoke-virtual {p0, p1}, Lcom/android/server/sis/vdb;->enableVerboseLogging(I)V

    return-void
.end method

.method public initInstance(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/sis/sis;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/android/server/sis/sis;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/server/sis/sis;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance p1, Lcom/android/server/sis/vdb;

    iget-object v0, p0, Lcom/android/server/sis/sis;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/sis/zta;

    invoke-direct {v1, p0}, Lcom/android/server/sis/zta;-><init>(Lcom/android/server/sis/sis;)V

    invoke-direct {p1, v0, v1}, Lcom/android/server/sis/vdb;-><init>(Landroid/content/Context;Lcom/android/server/sis/vdb$sis;)V

    iput-object p1, p0, Lcom/android/server/sis/sis;->iN:Lcom/android/server/sis/vdb;

    invoke-direct {p0}, Lcom/android/server/sis/sis;->Mo()V

    return-void
.end method

.method public sendWifiScoreToKernel(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/sis/sis;->iN:Lcom/android/server/sis/vdb;

    invoke-virtual {p0, p1}, Lcom/android/server/sis/vdb;->sendWifiScoreToKernel(I)V

    return-void
.end method
