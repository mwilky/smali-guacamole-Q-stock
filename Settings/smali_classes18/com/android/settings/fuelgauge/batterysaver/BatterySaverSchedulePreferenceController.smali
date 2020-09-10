.class public Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSchedulePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "BatterySaverSchedulePreferenceController.java"


# static fields
.field public static final KEY_BATTERY_SAVER_SCHEDULE:Ljava/lang/String; = "battery_saver_schedule"


# instance fields
.field mBatterySaverSchedulePreference:Landroidx/preference/Preference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "battery_saver_schedule"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->revertScheduleToNoneIfNeeded(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "battery_saver_schedule"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSchedulePreferenceController;->mBatterySaverSchedulePreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "battery_saver_schedule"

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 8

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSchedulePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "automatic_power_save_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    nop

    const-string v3, "low_power_trigger_level"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-gtz v3, :cond_0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSchedulePreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f120273

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v4, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSchedulePreferenceController;->mContext:Landroid/content/Context;

    const v5, 0x7f120275

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSchedulePreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f120276

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method
