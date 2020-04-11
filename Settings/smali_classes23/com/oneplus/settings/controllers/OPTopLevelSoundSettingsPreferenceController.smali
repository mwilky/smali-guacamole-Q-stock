.class public Lcom/oneplus/settings/controllers/OPTopLevelSoundSettingsPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPTopLevelSoundSettingsPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/controllers/OPTopLevelSoundSettingsPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120fb6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
