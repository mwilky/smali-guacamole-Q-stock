.class public Lcom/android/settings/display/DisplayWhiteBalancePreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "DisplayWhiteBalancePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field private mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

.field mContentObserver:Landroid/database/ContentObserver;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/display/DisplayWhiteBalancePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/DisplayWhiteBalancePreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/display/DisplayWhiteBalancePreferenceController;->getColorDisplayManager()Landroid/hardware/display/ColorDisplayManager;

    iget-object v0, p0, Lcom/android/settings/display/DisplayWhiteBalancePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/display/ColorDisplayManager;->isDisplayWhiteBalanceAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    return v0
.end method

.method getColorDisplayManager()Landroid/hardware/display/ColorDisplayManager;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/display/DisplayWhiteBalancePreferenceController;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/display/DisplayWhiteBalancePreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/ColorDisplayManager;

    iput-object v0, p0, Lcom/android/settings/display/DisplayWhiteBalancePreferenceController;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/DisplayWhiteBalancePreferenceController;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/display/DisplayWhiteBalancePreferenceController;->getColorDisplayManager()Landroid/hardware/display/ColorDisplayManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager;->isDisplayWhiteBalanceEnabled()Z

    move-result v0

    return v0
.end method

.method public onStart()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/display/DisplayWhiteBalancePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/DisplayWhiteBalancePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Lcom/android/settings/display/DisplayWhiteBalancePreferenceController$1;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/android/settings/display/DisplayWhiteBalancePreferenceController$1;-><init>(Lcom/android/settings/display/DisplayWhiteBalancePreferenceController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/display/DisplayWhiteBalancePreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    nop

    const-string v1, "accessibility_display_inversion_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/display/DisplayWhiteBalancePreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    nop

    const-string v1, "accessibility_display_daltonizer_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/display/DisplayWhiteBalancePreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    nop

    const-string v1, "display_color_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/display/DisplayWhiteBalancePreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Lcom/android/settings/display/DisplayWhiteBalancePreferenceController;->updateVisibility()V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/display/DisplayWhiteBalancePreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/display/DisplayWhiteBalancePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/DisplayWhiteBalancePreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/display/DisplayWhiteBalancePreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method

.method public setChecked(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/display/DisplayWhiteBalancePreferenceController;->getColorDisplayManager()Landroid/hardware/display/ColorDisplayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/ColorDisplayManager;->setDisplayWhiteBalanceEnabled(Z)Z

    move-result v0

    return v0
.end method

.method updateVisibility()V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/display/DisplayWhiteBalancePreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/display/DisplayWhiteBalancePreferenceController;->getColorDisplayManager()Landroid/hardware/display/ColorDisplayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/DisplayWhiteBalancePreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager;->getColorMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/settings/display/DisplayWhiteBalancePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/hardware/display/ColorDisplayManager;->areAccessibilityTransformsEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    return-void
.end method
