.class public Lcom/oneplus/settings/others/OPToolsSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPToolsSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/others/OPToolsSettings$WLBFeatureObserver;,
        Lcom/oneplus/settings/others/OPToolsSettings$SummaryProvider;
    }
.end annotation


# static fields
.field private static final ANTI_MISOPERATION_SCREEN_TOUCH:Ljava/lang/String; = "anti_misoperation_of_the_screen_touch_enable"

.field private static final CHOOSE_LOCK_GENERIC_REQUEST:I = 0x66

.field private static final GOTO_APPLOCKER_PAGE_REQUEST:I = 0x68

.field private static final KEY_APP_LOCKER:Ljava/lang/String; = "oneplus_app_locker"

.field private static final KEY_ONEPLUS_GAME_SPACE:Ljava/lang/String; = "game_space"

.field private static final KEY_ONEPLUS_GAMING_MODE:Ljava/lang/String; = "gaming_mode"

.field private static final KEY_ONEPLUS_LABORATORY_SETTINGS:Ljava/lang/String; = "oneplus_laboratory_settings"

.field private static final KEY_ONEPLUS_MULTI_APP:Ljava/lang/String; = "oneplus_multi_app"

.field private static final KEY_ONEPLUS_QUICK_LAUNCH:Ljava/lang/String; = "oneplus_quick_launch"

.field private static final KEY_ONEPLUS_QUICK_PAY:Ljava/lang/String; = "oneplus_quick_pay"

.field private static final KEY_ONEPLUS_QUICK_REPLAY:Ljava/lang/String; = "oneplus_quick_replay"

.field private static final KEY_ONEPLUS_WLB:Ljava/lang/String; = "worklifebalance"

.field private static final KEY_QUICK_CLIPBOARD:Ljava/lang/String; = "quick_clipboard"

.field private static final KEY_SWITCH:Ljava/lang/String; = "switch"

.field private static final PUSH_SWITCH_ACTION:Ljava/lang/String; = "net.oneplus.push.action.SWITCH_CHANGED"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static final TAG:Ljava/lang/String; = "OPOthersSettings"

.field private static final TIMER_SHUTDOWN_STARTUP_KEY:Ljava/lang/String; = "timer_shutdown_startup_settings"


# instance fields
.field private mAntiMisOperationTouch:Landroidx/preference/SwitchPreference;

.field private mAppLocker:Landroidx/preference/Preference;

.field private mChallenge:J

.field private mContext:Landroid/content/Context;

.field private mGameSpacePreference:Landroidx/preference/Preference;

.field private mGotoAppLockerClick:Z

.field private mMultiAppPreference:Landroidx/preference/Preference;

.field private mOneplusLaboratorySettings:Landroidx/preference/Preference;

.field private mOneplusQuickReply:Landroidx/preference/Preference;

.field private mQuickClipboardSwitchPreference:Landroidx/preference/SwitchPreference;

.field private mQuickLaunchPreference:Landroidx/preference/Preference;

.field private mQuickPayPreference:Landroidx/preference/Preference;

.field private mSwitchPreference:Landroidx/preference/Preference;

.field private mTimerShutdownPreference:Landroidx/preference/Preference;

.field private mWlbFeatureObserver:Lcom/oneplus/settings/others/OPToolsSettings$WLBFeatureObserver;

.field private mWorkLifeBalancePreference:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/settings/others/OPToolsSettings$1;

    invoke-direct {v0}, Lcom/oneplus/settings/others/OPToolsSettings$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/others/OPToolsSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    new-instance v0, Lcom/oneplus/settings/others/OPToolsSettings$2;

    invoke-direct {v0}, Lcom/oneplus/settings/others/OPToolsSettings$2;-><init>()V

    sput-object v0, Lcom/oneplus/settings/others/OPToolsSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mGotoAppLockerClick:Z

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/oneplus/settings/others/OPToolsSettings;->isNeedShowGameSpace(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/oneplus/settings/others/OPToolsSettings;->isNeedShowWorkLife(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/others/OPToolsSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/others/OPToolsSettings;->updateWLBPreferenceSummary()V

    return-void
.end method

.method private static isNeedShowGameSpace(Landroid/content/Context;)Z
    .locals 9

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "game_space_hide_icon"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const-string v2, "com.oneplus.gamespace"

    const-string v3, "com.oneplus.gamespace.ui.main.MainActivity"

    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isNeedShowGameSpace value:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " status:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "OPOthersSettings"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static isNeedShowWorkLife(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.oneplus.opwlb"

    invoke-static {p0, v0}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private launchChooseOrConfirmLock(I)V
    .locals 8

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPToolsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const v2, 0x7f121136

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/others/OPToolsSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v6, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mChallenge:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Z

    move-result v2

    if-nez v2, :cond_0

    const-class v2, Lcom/android/settings/password/ChooseLockGeneric;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.settings"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000

    const-string v3, "minimum_quality"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v2, 0x1

    const-string v3, "hide_disabled_prefs"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "has_challenge"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-wide v2, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mChallenge:J

    const-string v4, "challenge"

    invoke-virtual {v0, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/16 v2, 0x66

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/settings/others/OPToolsSettings;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method private updatePreferencesVisibility()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mWorkLifeBalancePreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPToolsSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/others/OPToolsSettings;->isNeedShowWorkLife(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mWorkLifeBalancePreference:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mWorkLifeBalancePreference:Landroidx/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateView()V
    .locals 5

    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPToolsSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "oneplus_multi_app"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/others/OPToolsSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mMultiAppPreference:Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mMultiAppPreference:Landroidx/preference/Preference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "oneplus_app_locker"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/others/OPToolsSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mAppLocker:Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mAppLocker:Landroidx/preference/Preference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "oneplus_quick_pay"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/others/OPToolsSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mQuickPayPreference:Landroidx/preference/Preference;

    const-string v1, "oneplus_quick_launch"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/others/OPToolsSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mQuickLaunchPreference:Landroidx/preference/Preference;

    const-string v1, "worklifebalance"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/others/OPToolsSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mWorkLifeBalancePreference:Landroidx/preference/Preference;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportQuickLaunch()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mQuickPayPreference:Landroidx/preference/Preference;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mQuickLaunchPreference:Landroidx/preference/Preference;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mQuickLaunchPreference:Landroidx/preference/Preference;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPToolsSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->canShowQuickPay(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mQuickPayPreference:Landroidx/preference/Preference;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_3
    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mQuickPayPreference:Landroidx/preference/Preference;

    const v3, 0x7f120d34

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mQuickPayPreference:Landroidx/preference/Preference;

    const v3, 0x7f120eef

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_1
    const-string v1, "anti_misoperation_of_the_screen_touch_enable"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/others/OPToolsSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SwitchPreference;

    iput-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mAntiMisOperationTouch:Landroidx/preference/SwitchPreference;

    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mAntiMisOperationTouch:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mAntiMisOperationTouch:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPToolsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oem_acc_anti_misoperation_screen"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_5

    move v3, v2

    goto :goto_2

    :cond_5
    move v3, v4

    :goto_2
    invoke-virtual {v1, v3}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportPocketMode()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mAntiMisOperationTouch:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/SwitchPreference;->setVisible(Z)V

    :cond_6
    new-array v1, v4, [I

    const/16 v3, 0x4e

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mAntiMisOperationTouch:Landroidx/preference/SwitchPreference;

    const v3, 0x7f120ec4

    invoke-virtual {v1, v3}, Landroidx/preference/SwitchPreference;->setSummary(I)V

    :cond_7
    const-string v1, "timer_shutdown_startup_settings"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/others/OPToolsSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mTimerShutdownPreference:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPToolsSettings;->checkIfNeedPasswordToPowerOn()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mTimerShutdownPreference:Landroidx/preference/Preference;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mTimerShutdownPreference:Landroidx/preference/Preference;

    const v3, 0x7f121023

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mTimerShutdownPreference:Landroidx/preference/Preference;

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_3
    const-string v1, "oneplus_laboratory_settings"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/others/OPToolsSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mOneplusLaboratorySettings:Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mOneplusLaboratorySettings:Landroidx/preference/Preference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "oneplus_quick_replay"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/others/OPToolsSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mOneplusQuickReply:Landroidx/preference/Preference;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportQuickReply()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mOneplusQuickReply:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_9
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mTimerShutdownPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mAntiMisOperationTouch:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mAppLocker:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mMultiAppPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mOneplusLaboratorySettings:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mOneplusQuickReply:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mWorkLifeBalancePreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_a
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isLaboratoryFeatureExist()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mOneplusLaboratorySettings:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_b
    const-string v1, "switch"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/others/OPToolsSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mSwitchPreference:Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mSwitchPreference:Landroidx/preference/Preference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPToolsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v3, "com.oneplus.backuprestore"

    invoke-static {v1, v3}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPToolsSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iget-object v3, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mSwitchPreference:Landroidx/preference/Preference;

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_c
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPToolsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v3, "com.oneplus.gamespace"

    invoke-static {v1, v3}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "gaming_mode"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/others/OPToolsSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceScreen;

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPToolsSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_d
    const-string v1, "game_space"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/others/OPToolsSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mGameSpacePreference:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPToolsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v3, "com.oneplus.opwlb"

    invoke-static {v1, v3}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mWorkLifeBalancePreference:Landroidx/preference/Preference;

    if-eqz v1, :cond_e

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_e
    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mWlbFeatureObserver:Lcom/oneplus/settings/others/OPToolsSettings$WLBFeatureObserver;

    if-nez v1, :cond_f

    new-instance v1, Lcom/oneplus/settings/others/OPToolsSettings$WLBFeatureObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v3}, Lcom/oneplus/settings/others/OPToolsSettings$WLBFeatureObserver;-><init>(Lcom/oneplus/settings/others/OPToolsSettings;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mWlbFeatureObserver:Lcom/oneplus/settings/others/OPToolsSettings$WLBFeatureObserver;

    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "worklife_feature_enable"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mWlbFeatureObserver:Lcom/oneplus/settings/others/OPToolsSettings$WLBFeatureObserver;

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_f
    invoke-direct {p0}, Lcom/oneplus/settings/others/OPToolsSettings;->updateWLBPreferenceSummary()V

    return-void
.end method

.method private updateWLBPreferenceSummary()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mWorkLifeBalancePreference:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "worklife_feature_enable"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mWorkLifeBalancePreference:Landroidx/preference/Preference;

    const v2, 0x7f120b82

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mWorkLifeBalancePreference:Landroidx/preference/Preference;

    const v2, 0x7f120b83

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_2
    const-string v1, "OPOthersSettings"

    const-string v2, "WLB feature has been removed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public checkIfNeedPasswordToPowerOn()Z
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPToolsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "require_password_to_decrypt"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method public gotoAppLockerPage()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object v0, v1

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$OPAppLockerActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPToolsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No activity found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OPOthersSettings"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mGotoAppLockerClick:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    const/16 v0, 0x68

    if-ne p1, v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPToolsSettings;->gotoAppLockerPage()V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mGotoAppLockerClick:Z

    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f1600c3

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/others/OPToolsSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPToolsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/oneplus/settings/others/OPToolsSettings;->updateView()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mWlbFeatureObserver:Lcom/oneplus/settings/others/OPToolsSettings$WLBFeatureObserver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPToolsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mWlbFeatureObserver:Lcom/oneplus/settings/others/OPToolsSettings$WLBFeatureObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mWlbFeatureObserver:Lcom/oneplus/settings/others/OPToolsSettings$WLBFeatureObserver;

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "anti_misoperation_of_the_screen_touch_enable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPToolsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_acc_anti_misoperation_screen"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oneplus_multi_app"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "oneplus.intent.action.ONEPLUS_MULTI_APP_LIST_ACTION"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPToolsSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "switch"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.oneplus.backuprestore"

    const-string v3, "com.oneplus.backuprestore.activity.BootActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPToolsSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_1
    return v1

    :cond_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "oneplus_app_locker"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "OPOthersSettings"

    const-string v2, "App -> Locker"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mGotoAppLockerClick:Z

    const/16 v0, 0x68

    invoke-direct {p0, v0}, Lcom/oneplus/settings/others/OPToolsSettings;->launchChooseOrConfirmLock(I)V

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mGameSpacePreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPToolsSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/others/OPToolsSettings;->isNeedShowGameSpace(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mGameSpacePreference:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mGameSpacePreference:Landroidx/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/settings/others/OPToolsSettings;->updatePreferencesVisibility()V

    return-void
.end method
