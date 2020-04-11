.class public Lcom/android/settings/network/telephony/VideoCallingPreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;
.source "VideoCallingPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController$On4gLteUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/VideoCallingPreferenceController$DataContentObserver;,
        Lcom/android/settings/network/telephony/VideoCallingPreferenceController$PhoneCallStateListener;
    }
.end annotation


# instance fields
.field private mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private mDataContentObserver:Lcom/android/settings/network/telephony/VideoCallingPreferenceController$DataContentObserver;

.field mImsManager:Lcom/android/ims/ImsManager;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mPhoneStateListener:Lcom/android/settings/network/telephony/VideoCallingPreferenceController$PhoneCallStateListener;

.field private mPreference:Landroidx/preference/Preference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-class v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iput-object v0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    new-instance v0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$DataContentObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$DataContentObserver;-><init>(Lcom/android/settings/network/telephony/VideoCallingPreferenceController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mDataContentObserver:Lcom/android/settings/network/telephony/VideoCallingPreferenceController$DataContentObserver;

    new-instance v0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$PhoneCallStateListener;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$PhoneCallStateListener;-><init>(Lcom/android/settings/network/telephony/VideoCallingPreferenceController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mPhoneStateListener:Lcom/android/settings/network/telephony/VideoCallingPreferenceController$PhoneCallStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/telephony/VideoCallingPreferenceController;)Landroidx/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/network/telephony/VideoCallingPreferenceController;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private isVideoCallEnabled(I)Z
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    nop

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->isVideoCallEnabled(ILcom/android/ims/ImsManager;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isWifiCallingEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->isVideoCallEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public init(I)Lcom/android/settings/network/telephony/VideoCallingPreferenceController;
    .locals 2

    iput p1, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mSubId:I

    iget-object v0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mSubId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mSubId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mImsManager:Lcom/android/ims/ImsManager;

    :cond_0
    return-object p0
.end method

.method public isChecked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isVtEnabledByUser()Z

    move-result v0

    return v0
.end method

.method isVideoCallEnabled(ILcom/android/ims/ImsManager;)Z
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/ims/ImsManager;->isVtEnabledByPlatform()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/android/ims/ImsManager;->isVtProvisionedOnDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p2}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isImsServiceStateReady(Lcom/android/ims/ImsManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ignore_data_enabled_changed_for_video_calls"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public on4gLteUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mPhoneStateListener:Lcom/android/settings/network/telephony/VideoCallingPreferenceController$PhoneCallStateListener;

    iget v1, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$PhoneCallStateListener;->register(I)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mDataContentObserver:Lcom/android/settings/network/telephony/VideoCallingPreferenceController$DataContentObserver;

    iget-object v1, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mSubId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$DataContentObserver;->register(Landroid/content/Context;I)V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mPhoneStateListener:Lcom/android/settings/network/telephony/VideoCallingPreferenceController$PhoneCallStateListener;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$PhoneCallStateListener;->unregister()V

    iget-object v0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mDataContentObserver:Lcom/android/settings/network/telephony/VideoCallingPreferenceController$DataContentObserver;

    iget-object v1, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$DataContentObserver;->unRegister(Landroid/content/Context;)V

    return-void
.end method

.method public setChecked(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsManager;->setVtSetting(Z)V

    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    move-object v0, p1

    check-cast v0, Landroidx/preference/SwitchPreference;

    iget v1, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mSubId:I

    iget-object v2, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->isVideoCallEnabled(ILcom/android/ims/ImsManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setVisible(Z)V

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v2}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v2}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-eqz v2, :cond_1

    iget-object v5, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v6, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mSubId:I

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v5

    if-nez v5, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v5}, Lcom/android/ims/ImsManager;->isVtEnabledByUser()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    invoke-virtual {v0, v3}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    :cond_3
    return-void
.end method
