.class public Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleRadioButtonsController;
.super Ljava/lang/Object;
.source "BatterySaverScheduleRadioButtonsController.java"


# static fields
.field public static final KEY_NO_SCHEDULE:Ljava/lang/String; = "key_battery_saver_no_schedule"

.field public static final KEY_PERCENTAGE:Ljava/lang/String; = "key_battery_saver_percentage"

.field public static final KEY_ROUTINE:Ljava/lang/String; = "key_battery_saver_routine"

.field public static final TRIGGER_LEVEL_MIN:I = 0x5


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSeekBarController:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleRadioButtonsController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleRadioButtonsController;->mSeekBarController:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;

    return-void
.end method


# virtual methods
.method public getDefaultKey()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleRadioButtonsController;->mContext:Landroid/content/Context;

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

    move-result v1

    if-gtz v1, :cond_0

    const-string v3, "key_battery_saver_no_schedule"

    return-object v3

    :cond_0
    const-string v3, "key_battery_saver_percentage"

    return-object v3

    :cond_1
    const-string v1, "key_battery_saver_routine"

    return-object v1
.end method

.method public setDefaultKey(Ljava/lang/String;)Z
    .locals 11

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleRadioButtonsController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Landroid/os/Bundle;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Landroid/os/Bundle;-><init>(I)V

    const/4 v5, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, 0xb3ab488

    const-string v8, "key_battery_saver_no_schedule"

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eq v6, v7, :cond_4

    const v7, 0xd747119

    if-eq v6, v7, :cond_3

    const v7, 0x4f9ed856    # 5.3299558E9f

    if-eq v6, v7, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const-string v6, "key_battery_saver_percentage"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v10

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v0

    goto :goto_0

    :cond_4
    const-string v6, "key_battery_saver_routine"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v9

    :goto_0
    if-eqz v5, :cond_7

    const-string v6, "extra_power_save_mode_trigger"

    const-string v7, "extra_confirm_only"

    if-eq v5, v10, :cond_6

    if-ne v5, v9, :cond_5

    const/4 v2, 0x1

    invoke-virtual {v4, v7, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v4, v6, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not a valid key for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/4 v3, 0x5

    invoke-virtual {v4, v7, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "extra_power_save_mode_trigger_level"

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_7
    nop

    :goto_1
    invoke-static {p1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleRadioButtonsController;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->maybeShowBatterySaverConfirmation(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_8
    const-string v0, "automatic_power_save_mode"

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eq v2, v10, :cond_9

    const-string v0, "low_power_trigger_level"

    invoke-static {v1, v0, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_9
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleRadioButtonsController;->mSeekBarController:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSeekBarController;->updateSeekBar()V

    return v10
.end method
