.class Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->access$100(Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->access$100(Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method
