.class Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$3;
.super Landroid/database/ContentObserver;
.source "OPRingtonePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$3;->this$0:Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$3;->this$0:Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;

    invoke-virtual {v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "vibrate_when_ringing"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    move v0, v1

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$3;->this$0:Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;

    invoke-static {v1}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->access$200(Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;)Landroid/preference/SwitchPreference;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$3;->this$0:Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;

    invoke-static {v1}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->access$200(Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    return-void
.end method
