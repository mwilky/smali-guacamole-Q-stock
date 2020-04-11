.class public Lcom/oneplus/settings/system/OPRamBoostSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPRamBoostSettings.java"


# static fields
.field private static final KEY_RAMBOOST_INSTRUCTIONS:Ljava/lang/String; = "op_ramboost_instructions"

.field public static final KEY_SETTINGS_PROVIDER:Ljava/lang/String; = "op_smartboost_enable"


# instance fields
.field private final EVENT_RAMBOOST:Ljava/lang/String;

.field private final KEY_RAMBOOST_SWITCH:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mLottieAnimPreference:Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;

.field private mSwitchPreference:Landroidx/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-string v0, "op_ramboost_switch"

    iput-object v0, p0, Lcom/oneplus/settings/system/OPRamBoostSettings;->KEY_RAMBOOST_SWITCH:Ljava/lang/String;

    const-string v0, "RAM_Boost"

    iput-object v0, p0, Lcom/oneplus/settings/system/OPRamBoostSettings;->EVENT_RAMBOOST:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/system/OPRamBoostSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/system/OPRamBoostSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getRamBoostState(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "op_smartboost_enable"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method private refreshUI()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/system/OPRamBoostSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/system/OPRamBoostSettings;->getRamBoostState(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/oneplus/settings/system/OPRamBoostSettings;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method

.method public static sendDefaultAppTracker()V
    .locals 2

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/oneplus/settings/system/OPRamBoostSettings;->getRamBoostState(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "op_ramboost_instructions"

    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    return-void
.end method

.method public static setRamBoostState(Landroid/content/Context;Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "op_smartboost_enable"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/system/OPRamBoostSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/system/OPRamBoostSettings;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const v0, 0x7f1600ae

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/system/OPRamBoostSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/system/OPRamBoostSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "op_ramboost_switch"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SwitchPreference;

    iput-object v1, p0, Lcom/oneplus/settings/system/OPRamBoostSettings;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    const-string v1, "op_ramboost_instructions"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;

    iput-object v1, p0, Lcom/oneplus/settings/system/OPRamBoostSettings;->mLottieAnimPreference:Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;

    const-string v1, "op_ramboost_anim_white.json"

    iget-object v2, p0, Lcom/oneplus/settings/system/OPRamBoostSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "op_ramboost_anim_dark.json"

    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/system/OPRamBoostSettings;->mLottieAnimPreference:Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;

    invoke-virtual {v2, v1}, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;->setAnimFile(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oneplus/settings/system/OPRamBoostSettings;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    new-instance v3, Lcom/oneplus/settings/system/OPRamBoostSettings$1;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/system/OPRamBoostSettings$1;-><init>(Lcom/oneplus/settings/system/OPRamBoostSettings;)V

    invoke-virtual {v2, v3}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/oneplus/settings/system/OPRamBoostSettings;->refreshUI()V

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
