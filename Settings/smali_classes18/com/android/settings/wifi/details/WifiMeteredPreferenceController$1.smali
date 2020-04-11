.class Lcom/android/settings/wifi/details/WifiMeteredPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiMeteredPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController$1;->this$0:Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x60e99352

    if-eq v1, v2, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    nop

    const-string v0, "wifiConfiguration"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController$1;->this$0:Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;

    invoke-static {v1}, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->access$000(Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/DropDownPreference;

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController$1;->this$0:Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    invoke-static {v2, v1, v3}, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->access$100(Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;Landroidx/preference/DropDownPreference;I)V

    :goto_2
    return-void
.end method
