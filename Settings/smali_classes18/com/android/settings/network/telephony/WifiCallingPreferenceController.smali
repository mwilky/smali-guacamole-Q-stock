.class public Lcom/android/settings/network/telephony/WifiCallingPreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;
.source "WifiCallingPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/WifiCallingPreferenceController$PhoneCallStateListener;
    }
.end annotation


# static fields
.field static final KEY_PREFERENCE_CATEGORY:Ljava/lang/String; = "calling_category"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mEditableWfcRoamingMode:Z

.field mImsManager:Lcom/android/ims/ImsManager;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mPhoneStateListener:Lcom/android/settings/network/telephony/WifiCallingPreferenceController$PhoneCallStateListener;

.field private mPreference:Landroidx/preference/Preference;

.field mSimCallManager:Landroid/telecom/PhoneAccountHandle;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUseWfcHomeModeForRoaming:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-class v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iput-object v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$PhoneCallStateListener;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$PhoneCallStateListener;-><init>(Lcom/android/settings/network/telephony/WifiCallingPreferenceController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mPhoneStateListener:Lcom/android/settings/network/telephony/WifiCallingPreferenceController$PhoneCallStateListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mEditableWfcRoamingMode:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mUseWfcHomeModeForRoaming:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/telephony/WifiCallingPreferenceController;)Landroidx/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/network/telephony/WifiCallingPreferenceController;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mSubId:I

    const-string v2, "android.provider.extra.SUB_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "calling_category"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isWifiCallingEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    return v0
.end method

.method public init(I)V
    .locals 2

    iput p1, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mSubId:I

    iget-object v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mSubId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telecom/TelecomManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    iget v1, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->getSimCallManagerForSubscription(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mSimCallManager:Landroid/telecom/PhoneAccountHandle;

    iget-object v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "editable_wfc_roaming_mode_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mEditableWfcRoamingMode:Z

    const-string v1, "use_wfc_home_network_mode_in_roaming_network_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mUseWfcHomeModeForRoaming:Z

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mPhoneStateListener:Lcom/android/settings/network/telephony/WifiCallingPreferenceController$PhoneCallStateListener;

    iget v1, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$PhoneCallStateListener;->register(I)V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mPhoneStateListener:Lcom/android/settings/network/telephony/WifiCallingPreferenceController$PhoneCallStateListener;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$PhoneCallStateListener;->unregister()V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mSimCallManager:Landroid/telecom/PhoneAccountHandle;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mSimCallManager:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v0, v3}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->buildPhoneAccountConfigureIntent(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v5, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mSubId:I

    invoke-static {v0, v3}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f12179a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const v3, 0x1040792

    iget-object v4, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v4}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mEditableWfcRoamingMode:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mUseWfcHomeModeForRoaming:Z

    if-nez v4, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_0
    iget-object v5, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v5

    iget-object v6, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    move v7, v1

    goto :goto_1

    :cond_3
    move v7, v2

    :goto_1
    invoke-virtual {v6, v7}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v6

    if-eqz v6, :cond_6

    if-eq v6, v1, :cond_5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_4

    goto :goto_2

    :cond_4
    const v3, 0x104076c

    goto :goto_2

    :cond_5
    const v3, 0x104076a

    goto :goto_2

    :cond_6
    const v3, 0x104076b

    :cond_7
    :goto_2
    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_3
    iget-object v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v3, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->mSubId:I

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v0

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    move v1, v2

    :goto_4
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
