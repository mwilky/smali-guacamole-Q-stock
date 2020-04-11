.class public Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "BatteryTipPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController$BatteryTipListener;
    }
.end annotation


# static fields
.field private static final KEY_BATTERY_TIPS:Ljava/lang/String; = "key_battery_tips"

.field public static final PREF_NAME:Ljava/lang/String; = "battery_tip"

.field private static final REQUEST_ANOMALY_ACTION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BatteryTipPreferenceController"


# instance fields
.field private mBatteryTipListener:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController$BatteryTipListener;

.field private mBatteryTipMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;",
            ">;"
        }
    .end annotation
.end field

.field private mBatteryTips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;",
            ">;"
        }
    .end annotation
.end field

.field mCardPreference:Landroidx/preference/Preference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

.field private mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mNeedUpdate:Z

.field mPrefContext:Landroid/content/Context;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mSettingsActivity:Lcom/android/settings/SettingsActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mBatteryTipMap:Ljava/util/Map;

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mNeedUpdate:Z

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p1}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mPrefContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mCardPreference:Landroidx/preference/Preference;

    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/tips/SummaryTip;

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/fuelgauge/batterytip/tips/SummaryTip;-><init>(IJ)V

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mCardPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/batterytip/tips/SummaryTip;->updatePreference(Landroidx/preference/Preference;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mBatteryTipMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->shouldShowDialog()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getMetricsCategory()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->newInstance(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;I)Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    invoke-virtual {v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v3, "BatteryTipPreferenceController"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mSettingsActivity:Lcom/android/settings/SettingsActivity;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    invoke-static {v0, v1, v2}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipUtils;->getActionForBatteryTip(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;)Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    invoke-virtual {v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getMetricsCategory()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;->handlePositiveAction(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mBatteryTipListener:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController$BatteryTipListener;

    if-eqz v2, :cond_2

    invoke-interface {v2, v0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController$BatteryTipListener;->onBatteryTipHandled(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;)V

    :cond_2
    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_3
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public needUpdate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mNeedUpdate:Z

    return v0
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "key_battery_tips"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->updateBatteryTips(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mBatteryTips:Ljava/util/List;

    const-string v1, "key_battery_tips"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public setActivity(Lcom/android/settings/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mSettingsActivity:Lcom/android/settings/SettingsActivity;

    return-void
.end method

.method public setBatteryTipListener(Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController$BatteryTipListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mBatteryTipListener:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController$BatteryTipListener;

    return-void
.end method

.method public setFragment(Lcom/android/settings/core/InstrumentedPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    return-void
.end method

.method public updateBatteryTips(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mBatteryTips:Ljava/util/List;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mBatteryTips:Ljava/util/List;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mBatteryTips:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    invoke-virtual {v2, v3}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->updateState(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_2
    if-ge v0, v1, :cond_4

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mBatteryTips:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->sanityCheck(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mCardPreference:Landroidx/preference/Preference;

    invoke-virtual {v2, v3}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->updatePreference(Landroidx/preference/Preference;)V

    iget-object v3, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mBatteryTipMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mCardPreference:Landroidx/preference/Preference;

    invoke-virtual {v4}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->log(Landroid/content/Context;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->needUpdate()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->mNeedUpdate:Z

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method
