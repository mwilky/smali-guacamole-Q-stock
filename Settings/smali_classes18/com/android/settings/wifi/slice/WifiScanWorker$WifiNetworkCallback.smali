.class Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "WifiScanWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/slice/WifiScanWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiNetworkCallback"
.end annotation


# instance fields
.field private mHasPartialConnectivity:Z

.field private mIsCaptivePortal:Z

.field private mIsValidated:Z

.field private final mNetwork:Landroid/net/Network;

.field final synthetic this$0:Lcom/android/settings/wifi/slice/WifiScanWorker;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/slice/WifiScanWorker;Landroid/net/Network;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;->this$0:Lcom/android/settings/wifi/slice/WifiScanWorker;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    iput-object v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;->mNetwork:Landroid/net/Network;

    return-void
.end method


# virtual methods
.method public isSameNetwork(Landroid/net/Network;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, p1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;->isSameNetwork(Landroid/net/Network;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;->mIsCaptivePortal:Z

    iget-boolean v1, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;->mHasPartialConnectivity:Z

    iget-boolean v2, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;->mIsValidated:Z

    const/16 v3, 0x11

    invoke-virtual {p2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;->mIsCaptivePortal:Z

    const/16 v3, 0x18

    invoke-virtual {p2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;->mHasPartialConnectivity:Z

    const/16 v3, 0x10

    invoke-virtual {p2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;->mIsValidated:Z

    iget-boolean v3, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;->mIsCaptivePortal:Z

    if-ne v0, v3, :cond_1

    iget-boolean v3, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;->mHasPartialConnectivity:Z

    if-ne v1, v3, :cond_1

    iget-boolean v3, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;->mIsValidated:Z

    if-ne v2, v3, :cond_1

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;->this$0:Lcom/android/settings/wifi/slice/WifiScanWorker;

    invoke-static {v3}, Lcom/android/settings/wifi/slice/WifiScanWorker;->access$000(Lcom/android/settings/wifi/slice/WifiScanWorker;)V

    if-nez v0, :cond_2

    iget-boolean v3, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;->mIsCaptivePortal:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;->this$0:Lcom/android/settings/wifi/slice/WifiScanWorker;

    invoke-static {v3}, Lcom/android/settings/wifi/slice/WifiScanWorker;->access$100(Lcom/android/settings/wifi/slice/WifiScanWorker;)Lcom/android/settingslib/wifi/WifiTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/WifiTracker;->getManager()Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/wifi/slice/WifiScanWorker;->isWifiClicked(Landroid/net/wifi/WifiInfo;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;->this$0:Lcom/android/settings/wifi/slice/WifiScanWorker;

    invoke-virtual {v3}, Lcom/android/settings/wifi/slice/WifiScanWorker;->isSessionValid()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;->this$0:Lcom/android/settings/wifi/slice/WifiScanWorker;

    invoke-static {v4}, Lcom/android/settings/wifi/slice/WifiScanWorker;->access$200(Lcom/android/settings/wifi/slice/WifiScanWorker;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/android/settings/wifi/slice/ConnectToWifiHandler;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "android.net.extra.NETWORK"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;->this$0:Lcom/android/settings/wifi/slice/WifiScanWorker;

    invoke-static {v4}, Lcom/android/settings/wifi/slice/WifiScanWorker;->access$200(Lcom/android/settings/wifi/slice/WifiScanWorker;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_2
    return-void
.end method
