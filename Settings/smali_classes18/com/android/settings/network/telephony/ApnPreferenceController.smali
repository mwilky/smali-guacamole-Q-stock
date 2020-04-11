.class public Lcom/android/settings/network/telephony/ApnPreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;
.source "ApnPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/ApnPreferenceController$DpcApnEnforcedObserver;
    }
.end annotation


# instance fields
.field mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mDpcApnEnforcedObserver:Lcom/android/settings/network/telephony/ApnPreferenceController$DpcApnEnforcedObserver;

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/telephony/CarrierConfigManager;

    invoke-direct {v0, p1}, Landroid/telephony/CarrierConfigManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/ApnPreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    new-instance v0, Lcom/android/settings/network/telephony/ApnPreferenceController$DpcApnEnforcedObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/network/telephony/ApnPreferenceController$DpcApnEnforcedObserver;-><init>(Lcom/android/settings/network/telephony/ApnPreferenceController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/ApnPreferenceController;->mDpcApnEnforcedObserver:Lcom/android/settings/network/telephony/ApnPreferenceController$DpcApnEnforcedObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/telephony/ApnPreferenceController;)Landroidx/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/ApnPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object v0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/ApnPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/ApnPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 6

    iget-object v0, p0, Lcom/android/settings/network/telephony/ApnPreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/telephony/ApnPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isCdmaOptions(Landroid/content/Context;I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "show_apn_setting_cdma_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v4, p0, Lcom/android/settings/network/telephony/ApnPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isGsmOptions(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    const-string v4, "apn_expand_bool"

    invoke-virtual {v0, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    if-eqz v0, :cond_3

    const-string v5, "hide_carrier_network_settings_bool"

    invoke-virtual {v0, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    goto :goto_3

    :cond_3
    :goto_2
    nop

    :goto_3
    if-nez v2, :cond_5

    if-nez v1, :cond_4

    if-eqz v4, :cond_5

    :cond_4
    goto :goto_4

    :cond_5
    const/4 v3, 0x2

    :goto_4
    return v3
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/ApnPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APN_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    const-string v2, ":settings:show_fragment_as_subsetting"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget v2, p0, Lcom/android/settings/network/telephony/ApnPreferenceController;->mSubId:I

    const-string v3, "sub_id"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/network/telephony/ApnPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public init(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/network/telephony/ApnPreferenceController;->mSubId:I

    return-void
.end method

.method public onStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/telephony/ApnPreferenceController;->mDpcApnEnforcedObserver:Lcom/android/settings/network/telephony/ApnPreferenceController$DpcApnEnforcedObserver;

    iget-object v1, p0, Lcom/android/settings/network/telephony/ApnPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/ApnPreferenceController$DpcApnEnforcedObserver;->register(Landroid/content/Context;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/telephony/ApnPreferenceController;->mDpcApnEnforcedObserver:Lcom/android/settings/network/telephony/ApnPreferenceController$DpcApnEnforcedObserver;

    iget-object v1, p0, Lcom/android/settings/network/telephony/ApnPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/ApnPreferenceController$DpcApnEnforcedObserver;->unRegister(Landroid/content/Context;)V

    return-void
.end method

.method setPreference(Landroidx/preference/Preference;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/android/settings/network/telephony/ApnPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/ApnPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Lcom/android/settingslib/RestrictedPreference;

    iget-object v1, p0, Lcom/android/settings/network/telephony/ApnPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isDpcApnEnforced(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/network/telephony/ApnPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method
