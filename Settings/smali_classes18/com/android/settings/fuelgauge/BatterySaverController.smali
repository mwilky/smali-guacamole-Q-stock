.class public Lcom/android/settings/fuelgauge/BatterySaverController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "BatterySaverController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settings/fuelgauge/BatterySaverReceiver$BatterySaverListener;


# static fields
.field private static final KEY_BATTERY_SAVER:Ljava/lang/String; = "battery_saver_summary"


# instance fields
.field private mBatterySaverPref:Landroidx/preference/Preference;

.field private final mBatteryStateChangeReceiver:Lcom/android/settings/fuelgauge/BatterySaverReceiver;

.field private final mObserver:Landroid/database/ContentObserver;

.field private final mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "battery_saver_summary"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/fuelgauge/BatterySaverController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/BatterySaverController$1;-><init>(Lcom/android/settings/fuelgauge/BatterySaverController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mObserver:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    new-instance v0, Lcom/android/settings/fuelgauge/BatterySaverReceiver;

    invoke-direct {v0, p1}, Lcom/android/settings/fuelgauge/BatterySaverReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mBatteryStateChangeReceiver:Lcom/android/settings/fuelgauge/BatterySaverReceiver;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mBatteryStateChangeReceiver:Lcom/android/settings/fuelgauge/BatterySaverReceiver;

    invoke-virtual {v0, p0}, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->setBatterySaverListener(Lcom/android/settings/fuelgauge/BatterySaverReceiver$BatterySaverListener;)V

    invoke-static {p1}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->revertScheduleToNoneIfNeeded(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/BatterySaverController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatterySaverController;->updateSummary()V

    return-void
.end method

.method private updateSummary()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mBatterySaverPref:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatterySaverController;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "battery_saver_summary"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mBatterySaverPref:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "battery_saver_summary"

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 9

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "low_power_trigger_level"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const-string v4, "automatic_power_save_mode"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mContext:Landroid/content/Context;

    const v5, 0x7f12027e

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    if-nez v4, :cond_2

    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mContext:Landroid/content/Context;

    const v6, 0x7f12027c

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mContext:Landroid/content/Context;

    const v5, 0x7f12027d

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_2
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mContext:Landroid/content/Context;

    const v5, 0x7f120276

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public onBatteryChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPowerSaveModeChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatterySaverController;->updateSummary()V

    return-void
.end method

.method public onStart()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "low_power_trigger_level"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mBatteryStateChangeReceiver:Lcom/android/settings/fuelgauge/BatterySaverReceiver;

    invoke-virtual {v0, v3}, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->setListening(Z)V

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatterySaverController;->updateSummary()V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mBatteryStateChangeReceiver:Lcom/android/settings/fuelgauge/BatterySaverReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->setListening(Z)V

    return-void
.end method
