.class public Lcom/oneplus/settings/controllers/OPWiFiCallingPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPWiFiCallingPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# static fields
.field private static final KEY_WIFI_CALLING:Ljava/lang/String; = "wifi_calling"


# instance fields
.field private mImsMgr:Lcom/android/ims/ImsManager;

.field private mPreference:Landroidx/preference/Preference;

.field private mUstWfcStatusTracker:Lcom/oneplus/settings/controllers/UstWfcStatusTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "wifi_calling"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUstMode()Z

    move-result v0

    if-eqz v0, :cond_0

    nop

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/controllers/OPWiFiCallingPreferenceController;->mImsMgr:Lcom/android/ims/ImsManager;

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/controllers/OPWiFiCallingPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/controllers/OPWiFiCallingPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUstMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/settings/controllers/OPWiFiCallingPreferenceController;->mImsMgr:Lcom/android/ims/ImsManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_0
    const/4 v0, 0x4

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "wifi_calling"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUstMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifi_calling"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.wificalling.setting.action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "slot"

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/oneplus/settings/controllers/OPWiFiCallingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUstMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/controllers/OPWiFiCallingPreferenceController;->mUstWfcStatusTracker:Lcom/oneplus/settings/controllers/UstWfcStatusTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->stopObserve()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUstMode()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;

    iget-object v1, p0, Lcom/oneplus/settings/controllers/OPWiFiCallingPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/settings/controllers/OPWiFiCallingPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-direct {v0, v1, v2}, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;-><init>(Landroid/content/Context;Landroidx/preference/Preference;)V

    iput-object v0, p0, Lcom/oneplus/settings/controllers/OPWiFiCallingPreferenceController;->mUstWfcStatusTracker:Lcom/oneplus/settings/controllers/UstWfcStatusTracker;

    iget-object v0, p0, Lcom/oneplus/settings/controllers/OPWiFiCallingPreferenceController;->mUstWfcStatusTracker:Lcom/oneplus/settings/controllers/UstWfcStatusTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->startObserve()V

    :cond_0
    return-void
.end method
