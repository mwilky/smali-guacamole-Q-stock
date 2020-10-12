.class public Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;
.super Ljava/lang/Object;
.source "OPChargingStationSettingsController.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field private static final TAG:Ljava/lang/String; = "OPChargingStationSettings"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFeatureObserver:Landroid/database/ContentObserver;

.field private final mFeatureUri:Landroid/net/Uri;

.field private mMuteNotifications:Landroidx/preference/SwitchPreference;

.field private final mMuteUri:Landroid/net/Uri;

.field private mObserver:Landroid/database/ContentObserver;

.field private mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Landroidx/preference/SwitchPreference;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController$1;-><init>(Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController$2;-><init>(Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mFeatureObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    iput-object p3, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mMuteNotifications:Landroidx/preference/SwitchPreference;

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->setupView()V

    const-string v0, "op_charging_stations_feature_on"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/oneplus/settings/chargingstations/OPChargingStationUtils;->getIntSystemProperty(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "op_charging_stations_mute_notification"

    invoke-static {p1, v3, v1}, Lcom/oneplus/settings/chargingstations/OPChargingStationUtils;->getIntSystemProperty(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    const/4 v6, 0x1

    if-ne v2, v6, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    move v7, v1

    :goto_0
    invoke-virtual {v5, v7}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    iget-object v5, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mMuteNotifications:Landroidx/preference/SwitchPreference;

    if-ne v2, v6, :cond_1

    if-ne v4, v6, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    move v7, v1

    :goto_1
    invoke-virtual {v5, v7}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mMuteNotifications:Landroidx/preference/SwitchPreference;

    if-ne v2, v6, :cond_2

    goto :goto_2

    :cond_2
    move v6, v1

    :goto_2
    invoke-virtual {v5, v6}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v5, p0}, Lcom/android/settings/widget/SwitchWidgetController;->setListener(Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;)V

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mMuteUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mFeatureUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mMuteUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mFeatureUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mFeatureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;)Landroidx/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mMuteNotifications:Landroidx/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;)Lcom/android/settings/widget/SwitchWidgetController;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    return-object v0
.end method


# virtual methods
.method public onStart()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->startListening()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mSwitchController:Lcom/android/settings/widget/SwitchWidgetController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->stopListening()V

    :cond_0
    return-void
.end method

.method public onSwitchToggled(Z)Z
    .locals 6

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mContext:Landroid/content/Context;

    const-string v1, "op_charging_stations_feature_on"

    invoke-static {v0, v1, p1}, Lcom/oneplus/settings/chargingstations/OPChargingStationUtils;->putIntSystemProperty(Landroid/content/Context;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "op_charging_stations_mute_notification"

    invoke-static {v0, v2, v1}, Lcom/oneplus/settings/chargingstations/OPChargingStationUtils;->getIntSystemProperty(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mMuteNotifications:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, p1}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mMuteNotifications:Landroidx/preference/SwitchPreference;

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    if-ne v0, v3, :cond_0

    move v1, v3

    :cond_0
    invoke-virtual {v2, v1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    const-string v2, "type_enabled"

    goto :goto_0

    :cond_1
    const-string v2, "type_undo"

    :goto_0
    invoke-static {v1, v2}, Lcom/oneplus/settings/chargingstations/OPChargingStationUtils;->sendBroadcastToApp(Landroid/content/Context;Ljava/lang/String;)V

    nop

    if-eqz p1, :cond_2

    const-string v1, "on"

    goto :goto_1

    :cond_2
    const-string v1, "off"

    :goto_1
    const-string v2, "C22AG9UUDL"

    const-string v4, "settings_action"

    const-string v5, "settings_feature_enabled"

    invoke-static {v2, v4, v5, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_3

    iget-object v1, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->mContext:Landroid/content/Context;

    const-string v2, "op_charging_station_beacon_name"

    const-string v4, ""

    invoke-static {v1, v2, v4}, Lcom/oneplus/settings/chargingstations/OPChargingStationUtils;->putStringSystemProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    return v3
.end method
