.class public Lcom/android/settings/wifi/slice/ContextualWifiScanWorker;
.super Lcom/android/settings/wifi/slice/WifiScanWorker;
.source "ContextualWifiScanWorker.java"


# static fields
.field private static sActiveSession:J

.field private static sVisibleUiSessionToken:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/slice/WifiScanWorker;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public static newVisibleUiSession()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/wifi/slice/ContextualWifiScanWorker;->sVisibleUiSessionToken:J

    return-void
.end method

.method static saveSession()V
    .locals 2

    sget-wide v0, Lcom/android/settings/wifi/slice/ContextualWifiScanWorker;->sVisibleUiSessionToken:J

    sput-wide v0, Lcom/android/settings/wifi/slice/ContextualWifiScanWorker;->sActiveSession:J

    return-void
.end method


# virtual methods
.method protected clearClickedWifiOnSliceUnpinned()V
    .locals 0

    return-void
.end method

.method protected isSessionValid()Z
    .locals 4

    sget-wide v0, Lcom/android/settings/wifi/slice/ContextualWifiScanWorker;->sVisibleUiSessionToken:J

    sget-wide v2, Lcom/android/settings/wifi/slice/ContextualWifiScanWorker;->sActiveSession:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/wifi/slice/ContextualWifiScanWorker;->clearClickedWifi()V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
