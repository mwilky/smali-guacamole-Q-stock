.class public Lcom/android/settings/AirplaneModeVoiceActivity;
.super Lcom/android/settings/utils/VoiceSettingsActivity;
.source "AirplaneModeVoiceActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AirplaneModeVoiceActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/utils/VoiceSettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onVoiceSettingInteraction(Landroid/content/Intent;)Z
    .locals 3

    const-string v0, "airplane_mode_enabled"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/settings/AirplaneModeVoiceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "AirplaneModeVoiceActivity"

    const-string v1, "Missing airplane mode extra"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x1

    return v0
.end method
