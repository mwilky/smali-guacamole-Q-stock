.class public Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "WifiPrivacyPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;


# static fields
.field private static final KEY_WIFI_PRIVACY:Ljava/lang/String; = "privacy"

.field private static final PREF_RANDOMIZATION_NONE:I = 0x1

.field private static final PREF_RANDOMIZATION_PERSISTENT:I


# instance fields
.field private mIsEphemeral:Z

.field private mIsPasspoint:Z

.field private mPreference:Landroidx/preference/Preference;

.field private mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "privacy"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mIsEphemeral:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mIsPasspoint:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method public static translateMacRandomizedValueToPrefValue(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    nop

    :goto_0
    return v0
.end method

.method public static translatePrefValueToMacRandomizedValue(I)I
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateSummary(Landroidx/preference/DropDownPreference;I)V
    .locals 2

    invoke-static {p2}, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->translateMacRandomizedValueToPrefValue(I)I

    move-result v0

    invoke-virtual {p1}, Landroidx/preference/DropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Landroidx/preference/DropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11100fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method getRandomizationValue()I
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->disconnect()Z

    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/preference/DropDownPreference;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onSubmit(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    if-eq v1, v2, :cond_2

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public setIsEphemeral(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mIsEphemeral:Z

    return-void
.end method

.method public setIsPasspoint(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mIsPasspoint:Z

    return-void
.end method

.method public setWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Landroidx/preference/DropDownPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->getRandomizationValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->updateSummary(Landroidx/preference/DropDownPreference;I)V

    iget-boolean v2, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mIsEphemeral:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->mIsPasspoint:Z

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    const v2, 0x7f121957

    invoke-virtual {v0, v2}, Landroidx/preference/DropDownPreference;->setSummary(I)V

    :cond_1
    return-void
.end method
