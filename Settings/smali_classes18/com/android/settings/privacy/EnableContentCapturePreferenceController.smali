.class public final Lcom/android/settings/privacy/EnableContentCapturePreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "EnableContentCapturePreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    invoke-static {}, Lcom/android/settings/utils/ContentCaptureUtils;->isFeatureAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/utils/ContentCaptureUtils;->getServiceSettingsComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    :goto_1
    return v1
.end method

.method public isChecked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/privacy/EnableContentCapturePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/ContentCaptureUtils;->isEnabledForUser(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/privacy/EnableContentCapturePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/settings/utils/ContentCaptureUtils;->setEnabledForUser(Landroid/content/Context;Z)V

    const/4 v0, 0x1

    return v0
.end method
