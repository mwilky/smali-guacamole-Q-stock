.class public Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;
.super Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;
.source "WifiTetherSSIDPreferenceController.java"

# interfaces
.implements Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$Validator;


# static fields
.field static final DEFAULT_SSID:Ljava/lang/String; = "AndroidAP"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final PREF_KEY:Ljava/lang/String; = "wifi_tether_network_name"

.field private static final TAG:Ljava/lang/String; = "WifiTetherSsidPref"


# instance fields
.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mSSID:Ljava/lang/String;

.field private mWifiDeviceNameTextValidator:Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V
    .locals 1

    const-string v0, "wifi_tether_network_name"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;

    invoke-direct {v0}, Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mWifiDeviceNameTextValidator:Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void
.end method

.method private shareHotspotNetwork(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/settings/wifi/tether/-$$Lambda$WifiTetherSSIDPreferenceController$Uuc4492JmFKnNdaFNJky9fSywuI;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/tether/-$$Lambda$WifiTetherSSIDPreferenceController$Uuc4492JmFKnNdaFNJky9fSywuI;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;Landroid/content/Intent;)V

    invoke-static {v0, v1}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->showLockScreen(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateSsidDisplay(Landroidx/preference/EditTextPreference;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mSSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mSSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "wifi_tether_network_name"

    return-object v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mSSID:Ljava/lang/String;

    return-object v0
.end method

.method isQrCodeButtonAvailable()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;

    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->isQrCodeButtonAvailable()Z

    move-result v0

    return v0
.end method

.method public isTextValid(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mWifiDeviceNameTextValidator:Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;->isTextValid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$shareHotspotNetwork$1$WifiTetherSSIDPreferenceController(Landroid/content/Intent;)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/4 v1, 0x0

    const/16 v2, 0x6b0

    const/16 v3, 0x63b

    const/4 v4, 0x0

    const/high16 v5, -0x80000000

    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$updateDisplay$0$WifiTetherSSIDPreferenceController(Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->shareHotspotNetwork(Landroid/content/Intent;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mSSID:Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Landroidx/preference/EditTextPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->updateSsidDisplay(Landroidx/preference/EditTextPreference;)V

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mListener:Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;

    invoke-interface {v0}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;->onTetherConfigUpdated()V

    const/4 v0, 0x1

    return v0
.end method

.method public updateDisplay()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mSSID:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, "AndroidAP"

    iput-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mSSID:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v1, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->setValidator(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$Validator;)V

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v1, v3, v0}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->getHotspotConfiguratorIntentOrNull(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v3, "WifiTetherSsidPref"

    const-string v4, "Invalid security to share hotspot"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v3, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;

    invoke-virtual {v3, v2}, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->setButtonVisible(Z)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v2, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;

    new-instance v3, Lcom/android/settings/wifi/tether/-$$Lambda$WifiTetherSSIDPreferenceController$9y6x9r5FowGt1BqA5hm3Y_mqPlQ;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/wifi/tether/-$$Lambda$WifiTetherSSIDPreferenceController$9y6x9r5FowGt1BqA5hm3Y_mqPlQ;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->setButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v2, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->setButtonVisible(Z)V

    :goto_1
    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v1, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/tether/WifiTetherSsidPreference;->setButtonVisible(Z)V

    :goto_2
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v1, Landroidx/preference/EditTextPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->updateSsidDisplay(Landroidx/preference/EditTextPreference;)V

    return-void
.end method
