.class Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$3;
.super Landroid/content/BroadcastReceiver;
.source "WifiTetherSwitchBarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$3;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xe

    const-string v2, "wifi_state"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$3;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-static {v2, v1}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->access$200(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;I)V

    goto :goto_0

    :cond_0
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$3;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-static {v1, p1}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->access$400(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;Landroid/content/Context;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->access$302(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;Z)Z

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$3;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-static {v1}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->access$100(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$3;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-static {p1}, Lcom/android/settings/wifi/tether/utils/TetherUtils;->isSimStatusChange(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->access$500(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;Z)V

    goto :goto_0

    :cond_1
    const-string v1, "android.intent.action.setupDataError_tether"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "WifiTetherSwitchBarController"

    const-string v2, "onReceive tether error braodcast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    const-string v2, "data_call_error"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "data_call_code"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x43

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$3;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->access$600(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;I)V

    :cond_2
    :goto_0
    return-void
.end method
