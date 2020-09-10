.class public Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;
.source "Enhanced4gLtePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController$On4gLteUpdateListener;,
        Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController$PhoneCallStateListener;
    }
.end annotation


# instance fields
.field private final VARIANT_TITLE_4G_CALLING:I

.field private final VARIANT_TITLE_ADVANCED_CALL:I

.field private final VARIANT_TITLE_VOLTE:I

.field private final m4gLteListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController$On4gLteUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCarrierConfig:Landroid/os/PersistableBundle;

.field private mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field mImsManager:Lcom/android/ims/ImsManager;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mPhoneStateListener:Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController$PhoneCallStateListener;

.field private mPreference:Landroidx/preference/Preference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mVariantSumaries:[Ljava/lang/CharSequence;

.field private final mVariantTitles:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->VARIANT_TITLE_VOLTE:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->VARIANT_TITLE_ADVANCED_CALL:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->VARIANT_TITLE_4G_CALLING:I

    const-class v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iput-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->m4gLteListeners:Ljava/util/List;

    new-instance v0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController$PhoneCallStateListener;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController$PhoneCallStateListener;-><init>(Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mPhoneStateListener:Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController$PhoneCallStateListener;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mVariantTitles:[Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03007a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mVariantSumaries:[Ljava/lang/CharSequence;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;)Landroidx/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private is4gLtePrefEnabled()Z
    .locals 2

    iget v0, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mSubId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v1, "editable_enhanced_4g_lte_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public addListener(Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController$On4gLteUpdateListener;)Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->m4gLteListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 5

    iget-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v3}, Lcom/android/ims/ImsManager;->isVolteProvisionedOnDevice()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-static {v3}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isImsServiceStateReady(Lcom/android/ims/ImsManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "hide_enhanced_4g_lte_bool"

    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->is4gLtePrefEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    :cond_2
    :goto_1
    return v1
.end method

.method public init(I)Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;
    .locals 2

    iput p1, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mSubId:I

    iget-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    iget v1, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mCarrierConfig:Landroid/os/PersistableBundle;

    iget v0, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mSubId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mSubId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mImsManager:Lcom/android/ims/ImsManager;

    :cond_0
    return-object p0
.end method

.method public isChecked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v0

    return v0
.end method

.method public onStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mPhoneStateListener:Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController$PhoneCallStateListener;

    iget v1, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController$PhoneCallStateListener;->register(I)V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mPhoneStateListener:Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController$PhoneCallStateListener;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController$PhoneCallStateListener;->unregister()V

    return-void
.end method

.method public setChecked(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsManager;->setEnhanced4gLteModeSetting(Z)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->m4gLteListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController$On4gLteUpdateListener;

    invoke-interface {v1}, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController$On4gLteUpdateListener;->on4gLteUpdated()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    move-object v0, p1

    check-cast v0, Landroidx/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v2, "show_4g_for_lte_data_icon_bool"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v3, "enhanced_4g_lte_title_variant_int"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    if-eqz v1, :cond_0

    const/4 v5, 0x2

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    move v2, v5

    :cond_1
    iget-object v5, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mVariantTitles:[Ljava/lang/CharSequence;

    aget-object v5, v5, v2

    invoke-virtual {v0, v5}, Landroidx/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mVariantSumaries:[Ljava/lang/CharSequence;

    aget-object v5, v5, v2

    invoke-virtual {v0, v5}, Landroidx/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->is4gLtePrefEnabled()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v5}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v5}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    nop

    :goto_1
    invoke-virtual {v0, v3}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method
