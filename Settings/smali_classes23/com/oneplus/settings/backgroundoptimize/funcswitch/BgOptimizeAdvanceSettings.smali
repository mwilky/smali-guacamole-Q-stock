.class public Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "BgOptimizeAdvanceSettings.java"


# static fields
.field private static final KEY_SLEEP_STANDBY:Ljava/lang/String; = "sleep_standby"

.field private static final KEY_SMART_BATTERY_MANAGER:Ljava/lang/String; = "smart_battery_manager"

.field private static final OPTIMAL_POWER_SAVE_MODE_ENABLED:Ljava/lang/String; = "optimal_power_save_mode_enabled"

.field public static final TAG:Ljava/lang/String; = "BgOptimizeAdvanceSettings"


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

.field private mSleepStandBySwitchPreference:Landroidx/preference/SwitchPreference;

.field private mSmartatteryBySwitchPreference:Lcom/android/settings/widget/MasterSwitchPreference;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private initData()V
    .locals 8

    nop

    invoke-virtual {p0}, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    invoke-virtual {p0}, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {p0}, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {v0, v1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipUtils;->getRestrictedAppsList(Landroid/app/AppOpsManager;Landroid/os/UserManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    invoke-interface {v1}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isSmartBatterySupported()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "adaptive_battery_management_enabled"

    goto :goto_0

    :cond_0
    const-string v1, "app_auto_restriction_enabled"

    :goto_0
    nop

    nop

    invoke-virtual {p0}, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    const-string v5, "smart_battery_manager"

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/widget/MasterSwitchPreference;

    iput-object v5, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->mSmartatteryBySwitchPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    iget-object v5, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->mSmartatteryBySwitchPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    if-eqz v5, :cond_2

    invoke-virtual {v5, v2}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->mSmartatteryBySwitchPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    new-instance v6, Lcom/oneplus/settings/backgroundoptimize/funcswitch/-$$Lambda$BgOptimizeAdvanceSettings$m6K78XVJyX1S38ETA3FWrGbZqv8;

    invoke-direct {v6, p0, v0}, Lcom/oneplus/settings/backgroundoptimize/funcswitch/-$$Lambda$BgOptimizeAdvanceSettings$m6K78XVJyX1S38ETA3FWrGbZqv8;-><init>(Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;I)V

    invoke-virtual {v5, v6}, Lcom/android/settings/widget/MasterSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2
    const-string v5, "sleep_standby"

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Landroidx/preference/SwitchPreference;

    iput-object v5, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->mSleepStandBySwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, -0x2

    const-string v7, "optimal_power_save_mode_enabled"

    invoke-static {v5, v7, v4, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportSleepStandby()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->mSleepStandBySwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v6, v4}, Landroidx/preference/SwitchPreference;->setVisible(Z)V

    :cond_3
    iget-object v6, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->mSleepStandBySwitchPreference:Landroidx/preference/SwitchPreference;

    if-eqz v6, :cond_5

    if-lez v5, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    :cond_5
    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "BgOptimizeAdvanceSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f160027

    return v0
.end method

.method public synthetic lambda$initData$0$BgOptimizeAdvanceSettings(ILandroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    move-object v0, p3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    invoke-interface {v2}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isSmartBatterySupported()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "adaptive_battery_management_enabled"

    goto :goto_0

    :cond_0
    const-string v2, "app_auto_restriction_enabled"

    :goto_0
    nop

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez p1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10000a

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, p1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    const v1, 0x7f120269

    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setSummary(I)V

    instance-of v1, p2, Lcom/android/settings/widget/MasterSwitchPreference;

    if-eqz v1, :cond_3

    move-object v1, p2

    check-cast v1, Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    goto :goto_1

    :cond_2
    const v3, 0x7f120268

    invoke-virtual {p2, v3}, Landroidx/preference/Preference;->setSummary(I)V

    instance-of v3, p2, Lcom/android/settings/widget/MasterSwitchPreference;

    if-eqz v3, :cond_3

    move-object v3, p2

    check-cast v3, Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {v3, v1}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    :cond_3
    :goto_1
    return v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->initData()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sleep_standby"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->mSleepStandBySwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0}, Landroidx/preference/SwitchPreference;->isChecked()Z

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x2

    const-string v3, "optimal_power_save_mode_enabled"

    invoke-static {v1, v3, v0, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result v0

    return v0
.end method
