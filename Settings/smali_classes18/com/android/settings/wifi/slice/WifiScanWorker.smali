.class public Lcom/android/settings/wifi/slice/WifiScanWorker;
.super Lcom/android/settings/slices/SliceBackgroundWorker;
.source "WifiScanWorker.java"

# interfaces
.implements Lcom/android/settingslib/wifi/WifiTracker$WifiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/slices/SliceBackgroundWorker<",
        "Lcom/android/settingslib/wifi/AccessPoint;",
        ">;",
        "Lcom/android/settingslib/wifi/WifiTracker$WifiListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiScanWorker"

.field private static sClickedWifiSsid:Ljava/lang/String;


# instance fields
.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field mNetworkCallback:Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/android/settings/slices/SliceBackgroundWorker;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iput-object p1, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mContext:Landroid/content/Context;

    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    new-instance v0, Lcom/android/settingslib/wifi/WifiTracker;

    iget-object v1, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p0, v2, v2}, Lcom/android/settingslib/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;ZZ)V

    iput-object v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/slice/WifiScanWorker;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiScanWorker;->notifySliceChange()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/slice/WifiScanWorker;)Lcom/android/settingslib/wifi/WifiTracker;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/slice/WifiScanWorker;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static clearClickedWifi()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/wifi/slice/WifiScanWorker;->sClickedWifiSsid:Ljava/lang/String;

    return-void
.end method

.method private clone(Lcom/android/settingslib/wifi/AccessPoint;)Lcom/android/settingslib/wifi/AccessPoint;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/settingslib/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    new-instance v1, Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v2, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    return-object v1
.end method

.method static isWifiClicked(Landroid/net/wifi/WifiInfo;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/settings/wifi/slice/WifiScanWorker;->sClickedWifiSsid:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static saveClickedWifi(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/slice/WifiScanWorker;->sClickedWifiSsid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected areListsTheSame(Ljava/util/List;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    if-eq v3, v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method protected clearClickedWifiOnSliceUnpinned()V
    .locals 0

    invoke-static {}, Lcom/android/settings/wifi/slice/WifiScanWorker;->clearClickedWifi()V

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->onDestroy()V

    return-void
.end method

.method protected isSessionValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onAccessPointsChanged()V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->getManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/slice/WifiScanWorker;->updateResults(Ljava/util/List;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/slice/WifiScanWorker;->clone(Lcom/android/settingslib/wifi/AccessPoint;)Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/slice/WifiScanWorker;->updateResults(Ljava/util/List;)V

    return-void
.end method

.method public onConnectedChanged()V
    .locals 0

    return-void
.end method

.method protected onSlicePinned()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->onStart()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiScanWorker;->onAccessPointsChanged()V

    return-void
.end method

.method protected onSliceUnpinned()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->onStop()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiScanWorker;->unregisterNetworkCallback()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiScanWorker;->clearClickedWifiOnSliceUnpinned()V

    return-void
.end method

.method public onWifiStateChanged(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiScanWorker;->notifySliceChange()V

    return-void
.end method

.method public registerNetworkCallback(Landroid/net/Network;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mNetworkCallback:Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;->isSameNetwork(Landroid/net/Network;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiScanWorker;->unregisterNetworkCallback()V

    new-instance v0, Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;-><init>(Lcom/android/settings/wifi/slice/WifiScanWorker;Landroid/net/Network;)V

    iput-object v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mNetworkCallback:Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;

    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mNetworkCallback:Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterNetworkCallback()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mNetworkCallback:Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WifiScanWorker"

    const-string v2, "Unregistering CaptivePortalNetworkCallback failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mNetworkCallback:Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;

    :cond_0
    return-void
.end method
