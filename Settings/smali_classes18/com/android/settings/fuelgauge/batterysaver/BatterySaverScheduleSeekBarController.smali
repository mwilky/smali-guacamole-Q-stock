.class public Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;
.super Ljava/lang/Object;
.source "BatterySaverScheduleSeekBarController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final KEY_BATTERY_SAVER_SEEK_BAR:Ljava/lang/String; = "battery_saver_seek_bar"

.field public static final MAX_SEEKBAR_VALUE:I = 0xf

.field public static final MIN_SEEKBAR_VALUE:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field public mSeekBarPreference:Lcom/android/settings/widget/SeekBarPreference;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/settings/widget/SeekBarPreference;

    invoke-direct {v0, p1}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/SeekBarPreference;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SeekBarPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/SeekBarPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SeekBarPreference;->setContinuousUpdates(Z)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/SeekBarPreference;

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SeekBarPreference;->setMax(I)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SeekBarPreference;->setMin(I)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/SeekBarPreference;

    const-string v1, "battery_saver_seek_bar"

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SeekBarPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->updateSeekBar()V

    return-void
.end method


# virtual methods
.method public addToScreen(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/SeekBarPreference;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SeekBarPreference;->setOrder(I)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "low_power_trigger_level"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f120280

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return v2
.end method

.method public updateSeekBar()V
    .locals 10

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->mContext:Landroid/content/Context;

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

    iget-object v4, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {v4, v1}, Lcom/android/settings/widget/SeekBarPreference;->setVisible(Z)V

    goto :goto_0

    :cond_0
    div-int/lit8 v4, v3, 0x5

    const/4 v5, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v6, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {v6, v5}, Lcom/android/settings/widget/SeekBarPreference;->setVisible(Z)V

    iget-object v6, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {v6, v4}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    iget-object v6, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/SeekBarPreference;

    iget-object v7, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->mContext:Landroid/content/Context;

    const v8, 0x7f120280

    new-array v5, v5, [Ljava/lang/Object;

    mul-int/lit8 v9, v4, 0x5

    invoke-static {v9}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v1

    invoke-virtual {v7, v8, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/android/settings/widget/SeekBarPreference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->mSeekBarPreference:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {v3, v1}, Lcom/android/settings/widget/SeekBarPreference;->setVisible(Z)V

    :goto_1
    return-void
.end method
