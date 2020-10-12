.class public Lcom/oneplus/settings/chargingstations/OPChargingStationPrefController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPChargingStationPrefController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

.field private mSwitchPreference:Lcom/android/settings/widget/MasterSwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationPrefController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/chargingstations/OPChargingStationPrefController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/MasterSwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationPrefController;->mSwitchPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationPrefController;->mContext:Landroid/content/Context;

    const-string v1, "com.oneplus.chargingpilar"

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    return v1
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationPrefController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/widget/MasterSwitchController;->stopListening()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationPrefController;->mSwitchPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/settings/widget/MasterSwitchController;

    invoke-direct {v1, v0}, Lcom/android/settings/widget/MasterSwitchController;-><init>(Lcom/android/settings/widget/MasterSwitchPreference;)V

    iput-object v1, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationPrefController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationPrefController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/MasterSwitchController;->setListener(Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationPrefController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    invoke-virtual {v0}, Lcom/android/settings/widget/MasterSwitchController;->startListening()V

    :cond_0
    return-void
.end method

.method public onSwitchToggled(Z)Z
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationPrefController;->mContext:Landroid/content/Context;

    nop

    const-string v1, "op_charging_stations_feature_on"

    invoke-static {v0, v1, p1}, Lcom/oneplus/settings/chargingstations/OPChargingStationUtils;->putIntSystemProperty(Landroid/content/Context;Ljava/lang/String;I)Z

    nop

    if-eqz p1, :cond_0

    const-string v0, "on"

    goto :goto_0

    :cond_0
    const-string v0, "off"

    :goto_0
    const-string v1, "C22AG9UUDL"

    const-string v2, "settings_action"

    const-string v3, "settings_feature_enabled"

    invoke-static {v1, v2, v3, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationPrefController;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    const-string v1, "type_enabled"

    goto :goto_1

    :cond_1
    const-string v1, "type_undo"

    :goto_1
    invoke-static {v0, v1}, Lcom/oneplus/settings/chargingstations/OPChargingStationUtils;->sendBroadcastToApp(Landroid/content/Context;Ljava/lang/String;)V

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationPrefController;->mContext:Landroid/content/Context;

    const-string v1, "op_charging_station_beacon_name"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/oneplus/settings/chargingstations/OPChargingStationUtils;->putStringSystemProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public setLifeCycle(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method
