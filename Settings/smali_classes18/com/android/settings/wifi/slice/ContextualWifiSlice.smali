.class public Lcom/android/settings/wifi/slice/ContextualWifiSlice;
.super Lcom/android/settings/wifi/slice/WifiSlice;
.source "ContextualWifiSlice.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContextualWifiSlice"

.field static sActiveUiSession:J
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static sPreviouslyDisplayed:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, -0x3e8

    sput-wide v0, Lcom/android/settings/wifi/slice/ContextualWifiSlice;->sActiveUiSession:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/slice/WifiSlice;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private getActiveSSID()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/slice/ContextualWifiSlice;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string v0, "<unknown ssid>"

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/slice/ContextualWifiSlice;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hasInternetAccess()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/slice/ContextualWifiSlice;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/slice/ContextualWifiSlice;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private hasWorkingNetwork()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/wifi/slice/ContextualWifiSlice;->getActiveSSID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<unknown ssid>"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/slice/ContextualWifiSlice;->hasInternetAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/android/settings/wifi/slice/ContextualWifiScanWorker;

    return-object v0
.end method

.method public getSlice()Landroidx/slice/Slice;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/wifi/slice/ContextualWifiSlice;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSlicesFeatureProvider()Lcom/android/settings/slices/SlicesFeatureProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/slices/SlicesFeatureProvider;->getUiSessionToken()J

    move-result-wide v0

    sget-wide v2, Lcom/android/settings/wifi/slice/ContextualWifiSlice;->sActiveUiSession:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    sput-wide v0, Lcom/android/settings/wifi/slice/ContextualWifiSlice;->sActiveUiSession:J

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/settings/wifi/slice/ContextualWifiSlice;->sPreviouslyDisplayed:Z

    :cond_0
    sget-boolean v2, Lcom/android/settings/wifi/slice/ContextualWifiSlice;->sPreviouslyDisplayed:Z

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/settings/wifi/slice/ContextualWifiSlice;->hasWorkingNetwork()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ContextualWifiSlice"

    const-string v3, "Wifi is connected, no point showing any suggestion."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2

    :cond_1
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/settings/wifi/slice/ContextualWifiSlice;->sPreviouslyDisplayed:Z

    invoke-super {p0}, Lcom/android/settings/wifi/slice/WifiSlice;->getSlice()Landroidx/slice/Slice;

    move-result-object v2

    return-object v2
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/settings/slices/CustomSliceRegistry;->CONTEXTUAL_WIFI_SLICE_URI:Landroid/net/Uri;

    return-object v0
.end method
