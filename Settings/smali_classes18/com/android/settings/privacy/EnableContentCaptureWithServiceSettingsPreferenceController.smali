.class public final Lcom/android/settings/privacy/EnableContentCaptureWithServiceSettingsPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "EnableContentCaptureWithServiceSettingsPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/privacy/EnableContentCaptureWithServiceSettingsPreferenceController$ProfileSelectDialog;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ContentCaptureController"


# instance fields
.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privacy/EnableContentCaptureWithServiceSettingsPreferenceController;->mUserManager:Landroid/os/UserManager;

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

    if-eqz v0, :cond_0

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

    iget-object v0, p0, Lcom/android/settings/privacy/EnableContentCaptureWithServiceSettingsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/ContentCaptureUtils;->isEnabledForUser(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$updateState$0$EnableContentCaptureWithServiceSettingsPreferenceController(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/privacy/EnableContentCaptureWithServiceSettingsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/settings/privacy/EnableContentCaptureWithServiceSettingsPreferenceController$ProfileSelectDialog;->show(Landroid/content/Context;Landroidx/preference/Preference;)V

    const/4 v0, 0x1

    return v0
.end method

.method public setChecked(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/privacy/EnableContentCaptureWithServiceSettingsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/settings/utils/ContentCaptureUtils;->setEnabledForUser(Landroid/content/Context;Z)V

    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    invoke-static {}, Lcom/android/settings/utils/ContentCaptureUtils;->getServiceSettingsComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v1, "ContentCaptureController"

    const-string v2, "No component name for custom service settings"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    :goto_0
    new-instance v1, Lcom/android/settings/privacy/-$$Lambda$EnableContentCaptureWithServiceSettingsPreferenceController$wvbA3waPG91zIQ9YKuVJlMjUL8Q;

    invoke-direct {v1, p0}, Lcom/android/settings/privacy/-$$Lambda$EnableContentCaptureWithServiceSettingsPreferenceController$wvbA3waPG91zIQ9YKuVJlMjUL8Q;-><init>(Lcom/android/settings/privacy/EnableContentCaptureWithServiceSettingsPreferenceController;)V

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method
