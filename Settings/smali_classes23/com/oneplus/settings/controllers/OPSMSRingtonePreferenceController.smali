.class public Lcom/oneplus/settings/controllers/OPSMSRingtonePreferenceController;
.super Lcom/android/settings/notification/RingtonePreferenceControllerBase;
.source "OPSMSRingtonePreferenceController.java"


# static fields
.field private static final KEY_MESSAGE_RINGTONE:Ljava/lang/String; = "message_ringtone"

.field private static final TYPE_MMS_NOTIFICATION:I = 0x8


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/RingtonePreferenceControllerBase;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "message_ringtone"

    return-object v0
.end method

.method public getRingtoneType()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method
