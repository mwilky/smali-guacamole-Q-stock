.class public Lcom/oneplus/settings/chargingstations/OPChargingStationSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "OPChargingStationSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_CHARGING_STATION_MUTE_NOTIFICATION:Ljava/lang/String; = "op_charging_station_mute_notification"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "OPChargingStationSettings"


# instance fields
.field private listener:Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;

.field private mContext:Landroid/content/Context;

.field private mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettings$1;

    invoke-direct {v0}, Lcom/oneplus/settings/chargingstations/OPChargingStationSettings$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    sget-object v0, Lcom/oneplus/settings/chargingstations/-$$Lambda$OPChargingStationSettings$Cz-Xbc1ZhpMClld2i7Uew9d3aTY;->INSTANCE:Lcom/oneplus/settings/chargingstations/-$$Lambda$OPChargingStationSettings$Cz-Xbc1ZhpMClld2i7Uew9d3aTY;

    iput-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettings;->listener:Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;

    return-void
.end method

.method static synthetic lambda$new$0(IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Location changed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPChargingStationSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/oneplus/settings/chargingstations/OPChargingStationUtils;->getLocationUpdate()Lcom/oneplus/settings/chargingstations/OPChargingStationUtils$ILocationUpdate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/settings/chargingstations/OPChargingStationUtils;->getLocationUpdate()Lcom/oneplus/settings/chargingstations/OPChargingStationUtils$ILocationUpdate;

    move-result-object v0

    invoke-interface {v0}, Lcom/oneplus/settings/chargingstations/OPChargingStationUtils$ILocationUpdate;->onOPLocationUpdate()V

    :cond_0
    return-void
.end method

.method private updateMuteDescription(Landroidx/preference/Preference;)V
    .locals 13

    invoke-virtual {p0}, Lcom/oneplus/settings/chargingstations/OPChargingStationSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "op_charging_stations_mute_notification"

    invoke-static {v0, v2, v1}, Lcom/oneplus/settings/chargingstations/OPChargingStationUtils;->getIntSystemProperty(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/settings/chargingstations/OPChargingStationSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-wide/16 v3, 0x0

    const-string v5, "op_charging_stations_mute_eta"

    invoke-static {v2, v5, v3, v4}, Lcom/oneplus/settings/chargingstations/OPChargingStationUtils;->getLongSystemProperty(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v5

    if-nez v0, :cond_0

    cmp-long v2, v5, v3

    if-nez v2, :cond_0

    const v2, 0x7f1210e8

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/chargingstations/OPChargingStationSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object v2, p1

    check-cast v2, Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_0
    cmp-long v2, v5, v3

    if-lez v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v7

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v9

    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v11

    sub-long/2addr v9, v11

    const v4, 0x7f1210e9

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/chargingstations/OPChargingStationSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v1

    const/4 v1, 0x1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v1

    invoke-static {v4, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "OPChargingStationSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f16008c

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/chargingstations/OPChargingStationSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettings;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettings;->mFooterPreferenceMixin:Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;

    invoke-virtual {v0}, Lcom/oneplus/settings/widget/FooterPreferenceMixinCompat;->createFooterPreference()Lcom/oneplus/settings/widget/OPFooterPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettings;->mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

    iget-object v0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettings;->mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

    const v1, 0x7f1210df

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/widget/OPFooterPreference;->setTitle(I)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "op_charging_station_mute_notification"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettings;->mContext:Landroid/content/Context;

    nop

    const-string v2, "op_charging_stations_mute_notification"

    invoke-static {v1, v2, v0}, Lcom/oneplus/settings/chargingstations/OPChargingStationUtils;->putIntSystemProperty(Landroid/content/Context;Ljava/lang/String;I)Z

    const-string v1, "op_charging_stations_mute_eta"

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettings;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x1499700

    add-long/2addr v3, v5

    invoke-static {v2, v1, v3, v4}, Lcom/oneplus/settings/chargingstations/OPChargingStationUtils;->putLongSystemProperty(Landroid/content/Context;Ljava/lang/String;J)Z

    iget-object v1, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettings;->mContext:Landroid/content/Context;

    const-string v2, "type_mute"

    invoke-static {v1, v2}, Lcom/oneplus/settings/chargingstations/OPChargingStationUtils;->sendBroadcastToApp(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettings;->mContext:Landroid/content/Context;

    const-wide/16 v3, 0x0

    invoke-static {v2, v1, v3, v4}, Lcom/oneplus/settings/chargingstations/OPChargingStationUtils;->putLongSystemProperty(Landroid/content/Context;Ljava/lang/String;J)Z

    iget-object v1, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettings;->mContext:Landroid/content/Context;

    const-string v2, "type_undo"

    invoke-static {v1, v2}, Lcom/oneplus/settings/chargingstations/OPChargingStationUtils;->sendBroadcastToApp(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    nop

    if-eqz v0, :cond_1

    const-string v1, "on"

    goto :goto_1

    :cond_1
    const-string v1, "off"

    :goto_1
    const-string v2, "C22AG9UUDL"

    const-string v3, "settings_action"

    const-string v4, "settings_notifications_muted"

    invoke-static {v2, v3, v4, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oneplus/settings/chargingstations/OPChargingStationSettings;->updateMuteDescription(Landroidx/preference/Preference;)V

    const/4 v1, 0x1

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/chargingstations/OPChargingStationSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    const v2, 0x7f12110f

    invoke-virtual {v1, v2, v2}, Lcom/android/settings/widget/SwitchBar;->setSwitchBarText(II)V

    const-string v1, "op_charging_station_mute_notification"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/chargingstations/OPChargingStationSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SwitchPreference;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0, v1}, Lcom/oneplus/settings/chargingstations/OPChargingStationSettings;->updateMuteDescription(Landroidx/preference/Preference;)V

    :cond_0
    new-instance v2, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;

    new-instance v3, Lcom/android/settings/widget/SwitchBarController;

    move-object v4, v0

    check-cast v4, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v4}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/settings/widget/SwitchBarController;-><init>(Lcom/android/settings/widget/SwitchBar;)V

    invoke-direct {v2, v0, v3, v1}, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Landroidx/preference/SwitchPreference;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/chargingstations/OPChargingStationSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_1
    new-instance v4, Lcom/android/settings/location/LocationEnabler;

    iget-object v5, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettings;->listener:Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;

    invoke-direct {v4, v0, v5, v3}, Lcom/android/settings/location/LocationEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method
