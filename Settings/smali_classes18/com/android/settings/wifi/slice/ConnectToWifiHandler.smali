.class public Lcom/android/settings/wifi/slice/ConnectToWifiHandler;
.super Landroid/content/BroadcastReceiver;
.source "ConnectToWifiHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method connect(Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/android/settings/wifi/slice/ContextualWifiScanWorker;->saveSession()V

    invoke-static {p2}, Lcom/android/settings/wifi/slice/WifiScanWorker;->saveClickedWifi(Lcom/android/settingslib/wifi/AccessPoint;)V

    new-instance v0, Lcom/android/settings/wifi/WifiConnectListener;

    invoke-direct {v0, p1}, Lcom/android/settings/wifi/WifiConnectListener;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lcom/android/settings/wifi/WifiUtils;->getConnectingType(Lcom/android/settingslib/wifi/AccessPoint;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0}, Lcom/android/settingslib/wifi/AccessPoint;->startOsuProvisioning(Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->generateOpenNetworkConfig()V

    :cond_2
    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    :goto_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "android.net.extra.NETWORK"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    const-string v1, "access_point_state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings/wifi/slice/WifiScanWorker;->clearClickedWifi()V

    const-class v2, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->startCaptivePortalApp(Landroid/net/Network;)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    new-instance v2, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-direct {v2, p1, v1}, Lcom/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-virtual {p0, p1, v2}, Lcom/android/settings/wifi/slice/ConnectToWifiHandler;->connect(Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPoint;)V

    goto :goto_1

    :cond_2
    :goto_0
    nop

    :goto_1
    return-void

    :cond_3
    :goto_2
    return-void
.end method
