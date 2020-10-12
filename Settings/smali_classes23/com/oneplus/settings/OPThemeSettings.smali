.class public Lcom/oneplus/settings/OPThemeSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "OPThemeSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/oneplus/settings/widget/OPThemePresetDialogPreference$OnOPThemePresetDialogClickListener;


# static fields
.field public static final ACTION_THEME_CHANGE:Ljava/lang/String; = "com.oneplus.skin.theme_change"

.field private static final KEY_ONEPLUS_THEME:Ljava/lang/String; = "oneplus_theme_system_key"

.field private static final KEY_ONEPLUS_THEME_CUSTOM:Ljava/lang/String; = "oneplus_theme_custom_key"

.field private static final KEY_PRESET:Ljava/lang/String; = "oneplus_theme_preset"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "OPThemeSettings"

.field private static final THEME_ANDROID_MODE:I = 0x2

.field private static final THEME_DARK_MODE:I = 0x1

.field private static final THEME_LIGHT_MODE:I = 0x0

.field private static final THEME_MCL_MODE:I = 0x3


# instance fields
.field private mAm:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mDefaultThemeMode:I

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mHandler:Landroid/os/Handler;

.field private mLoadingDialog:Landroidx/appcompat/app/AlertDialog;

.field private mOPThemeIconPreference:Lcom/oneplus/settings/ui/OPThemeIconPreference;

.field private mOPThemePreference:Lcom/oneplus/settings/ui/OPThemePreference;

.field private mThemeModePreference:Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;

.field private mWarnDialog:Lcom/oneplus/lib/app/OPAlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/settings/OPThemeSettings$1;

    invoke-direct {v0}, Lcom/oneplus/settings/OPThemeSettings$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/OPThemeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/OPThemeSettings;->mDefaultThemeMode:I

    return-void
.end method

.method private applyTheme(I)V
    .locals 5

    const-string v0, "oem_special_theme"

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/OPThemeSettings;->mAm:Landroid/app/ActivityManager;

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPApplicationUtils;->killProcess(Landroid/app/ActivityManager;)V

    iget-object v1, p0, Lcom/oneplus/settings/OPThemeSettings;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentCustomizationTheme(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/oneplus/settings/OPThemeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    const-string v2, "status"

    const-string v3, "pre_theme"

    if-ne p1, v1, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/oneplus/settings/OPThemeSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPThemeUtils;->enableDarkThemes(Landroid/content/Context;)V

    const-string v0, "dark"

    invoke-static {v3, v2, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/OPThemeSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPThemeUtils;->enableLightThemes(Landroid/content/Context;)V

    const-string v0, "simple"

    invoke-static {v3, v2, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    if-ne p1, v4, :cond_2

    iget-object v4, p0, Lcom/oneplus/settings/OPThemeSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/oneplus/settings/utils/OPThemeUtils;->enableMclThemes(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/oneplus/settings/OPThemeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "mcl"

    invoke-static {v3, v2, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/OPThemeSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPThemeUtils;->enableColorfulThemes(Landroid/content/Context;)V

    const-string v0, "color"

    invoke-static {v3, v2, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v0, "oneplus_theme_preset"

    invoke-static {v0, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "OPThemeSettings"

    const-string v2, "could not persist screen timeout setting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method static synthetic lambda$showWarningDialog$2(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private updateThemeSummary(I)V
    .locals 2

    const v0, 0x7f121012

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/OPThemeSettings;->mThemeModePreference:Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;

    invoke-virtual {v1, v0}, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;->setSummary(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPThemeSettings;->mThemeModePreference:Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;

    const v1, 0x7f121013

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;->setSummary(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/OPThemeSettings;->mThemeModePreference:Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;

    const v1, 0x7f121010

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;->setSummary(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/OPThemeSettings;->mThemeModePreference:Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;

    const v1, 0x7f121011

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;->setSummary(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/oneplus/settings/OPThemeSettings;->mThemeModePreference:Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;

    invoke-virtual {v1, v0}, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;->setSummary(I)V

    nop

    :goto_0
    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "OPThemeSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    invoke-static {}, Lcom/oneplus/settings/utils/OPThemeUtils;->isSupportMclTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1600c2

    return v0

    :cond_0
    const v0, 0x7f1600c1

    return v0
.end method

.method public synthetic lambda$showWarningDialog$0$OPThemeSettings(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPThemeSettings;->applyTheme(I)V

    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPThemeSettings;->updateThemeSummary(I)V

    return-void
.end method

.method public synthetic lambda$showWarningDialog$1$OPThemeSettings(ILandroid/content/DialogInterface;I)V
    .locals 5

    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/oneplus/settings/OPThemeSettings;->mContext:Landroid/content/Context;

    const-class v2, Lcom/oneplus/settings/OPThemeService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/oneplus/settings/OPThemeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/oneplus/settings/OPThemeSettings;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/oneplus/settings/-$$Lambda$OPThemeSettings$C6kQtaLLIAgYempaPUo6K7qFVBw;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/settings/-$$Lambda$OPThemeSettings$C6kQtaLLIAgYempaPUo6K7qFVBw;-><init>(Lcom/oneplus/settings/OPThemeSettings;I)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/OPThemeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPThemeSettings;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPThemeSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/oneplus/settings/OPThemeSettings;->mAm:Landroid/app/ActivityManager;

    const-string v0, "oneplus_theme_preset"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPThemeSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPThemeSettings;->mThemeModePreference:Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;

    iget-object v0, p0, Lcom/oneplus/settings/OPThemeSettings;->mThemeModePreference:Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;->setOnOPThemePresetDialogClickListener(Lcom/oneplus/settings/widget/OPThemePresetDialogPreference$OnOPThemePresetDialogClickListener;)V

    const-string v0, "oneplus_theme_custom_key"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPThemeSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPThemeIconPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPThemeSettings;->mOPThemeIconPreference:Lcom/oneplus/settings/ui/OPThemeIconPreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/OPThemeSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPThemeSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v0, p0, Lcom/oneplus/settings/OPThemeSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPThemeUtils;->getCurrentCustomizationTheme(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/OPThemeSettings;->updateThemeSummary(I)V

    const-string v1, "oneplus_theme_system_key"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/OPThemeSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/ui/OPThemePreference;

    iput-object v1, p0, Lcom/oneplus/settings/OPThemeSettings;->mOPThemePreference:Lcom/oneplus/settings/ui/OPThemePreference;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/oneplus/settings/OPThemeSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public onDialogClickListener(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/OPThemeSettings;->showWarningDialog(I)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oneplus_theme_preset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/OPThemeSettings;->showWarningDialog(I)V

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    iget-object v0, p0, Lcom/oneplus/settings/OPThemeSettings;->mOPThemeIconPreference:Lcom/oneplus/settings/ui/OPThemeIconPreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPThemeIconPreference;->refreshUI()V

    iget-object v0, p0, Lcom/oneplus/settings/OPThemeSettings;->mOPThemePreference:Lcom/oneplus/settings/ui/OPThemePreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPThemePreference;->refreshUI()V

    return-void
.end method

.method public showWarningDialog(I)V
    .locals 3

    new-instance v0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/oneplus/settings/OPThemeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120ffe

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120ffd

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setMessage(I)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/oneplus/settings/-$$Lambda$OPThemeSettings$AsO1ozfnDsTk_lbezIGWSfxxNGo;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/settings/-$$Lambda$OPThemeSettings$AsO1ozfnDsTk_lbezIGWSfxxNGo;-><init>(Lcom/oneplus/settings/OPThemeSettings;I)V

    const v2, 0x7f1201bb

    invoke-virtual {v0, v2, v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/oneplus/settings/-$$Lambda$OPThemeSettings$QEX9kLB0ud0tfjfKljyzvaEhAzU;->INSTANCE:Lcom/oneplus/settings/-$$Lambda$OPThemeSettings$QEX9kLB0ud0tfjfKljyzvaEhAzU;

    const v2, 0x7f1203eb

    invoke-virtual {v0, v2, v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->create()Lcom/oneplus/lib/app/OPAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPThemeSettings;->mWarnDialog:Lcom/oneplus/lib/app/OPAlertDialog;

    iget-object v0, p0, Lcom/oneplus/settings/OPThemeSettings;->mWarnDialog:Lcom/oneplus/lib/app/OPAlertDialog;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/OPAlertDialog;->show()V

    return-void
.end method
