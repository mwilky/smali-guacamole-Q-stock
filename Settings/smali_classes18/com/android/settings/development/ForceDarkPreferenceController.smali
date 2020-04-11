.class public Lcom/android/settings/development/ForceDarkPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "ForceDarkPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static final HWUI_FORCE_DARK:Ljava/lang/String; = "hwui_force_dark"

.field private static final KEY_DARK_MODE_ACTION:Ljava/lang/String; = "oem_black_mode"

.field private static final KEY_ORIGIN_DARK_MODE_ACTION:Ljava/lang/String; = "origin_oem_black_mode"


# instance fields
.field mContext:Landroid/content/Context;

.field private mOpTheme:Lcom/oneplus/sdk/utils/OpTheme;

.field private final mUiModeManager:Landroid/app/UiModeManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/development/ForceDarkPreferenceController;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/oneplus/sdk/utils/OpTheme;

    iget-object v1, p0, Lcom/android/settings/development/ForceDarkPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneplus/sdk/utils/OpTheme;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/development/ForceDarkPreferenceController;->mOpTheme:Lcom/oneplus/sdk/utils/OpTheme;

    iget-object v0, p0, Lcom/android/settings/development/ForceDarkPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "uimode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    iput-object v0, p0, Lcom/android/settings/development/ForceDarkPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    return-void
.end method

.method private setNightMode(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/development/ForceDarkPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/UiModeManager;->setNightMode(I)V

    iget-object v0, p0, Lcom/android/settings/development/ForceDarkPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "op_force_dark_entire_world"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/development/ForceDarkPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentBasicColorMode(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "hwui_force_dark"

    return-object v0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 3

    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    iget-object v0, p0, Lcom/android/settings/development/ForceDarkPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "aosp_force_dark_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/development/ForceDarkPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/development/ForceDarkPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    nop

    const-string v2, "aosp_force_dark_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "origin_oem_black_mode"

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/settings/development/ForceDarkPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/development/ForceDarkPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "oem_black_mode"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v4, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/settings/development/ForceDarkPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/android/settings/development/ForceDarkPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPThemeUtils;->enableLightThemes(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    if-ne v2, v1, :cond_2

    iget-object v3, p0, Lcom/android/settings/development/ForceDarkPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPThemeUtils;->enableDarkThemes(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/settings/development/ForceDarkPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPThemeUtils;->enableColorfulThemes(Landroid/content/Context;)V

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/development/ForceDarkPreferenceController;->setNightMode(Z)V

    return v1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/development/ForceDarkPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "aosp_force_dark_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    move v0, v1

    iget-object v1, p0, Lcom/android/settings/development/ForceDarkPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v1, Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method
