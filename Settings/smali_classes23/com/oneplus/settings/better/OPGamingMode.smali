.class public Lcom/oneplus/settings/better/OPGamingMode;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPGamingMode.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/better/OPGamingMode$SettingsObserver;
    }
.end annotation


# static fields
.field private static final BATTERY_SAVER_CLOSE_VALUE:Ljava/lang/String; = "0_0"

.field private static final BATTERY_SAVER_HIGH_VALUE:Ljava/lang/String; = "56_30"

.field private static final BATTERY_SAVER_LIGHT_VALUE:Ljava/lang/String; = "56_0"

.field private static final GAME_MODE_AD_ENABLE:Ljava/lang/String; = "op_game_mode_ad_enable"

.field public static final GAME_MODE_ANSWER_NO_INCALLUI:Ljava/lang/String; = "game_mode_answer_no_incallui"

.field public static final GAME_MODE_BATTERY_SAVER:Ljava/lang/String; = "game_mode_battery_saver"

.field public static final GAME_MODE_BLOCK_NOTIFICATION:Ljava/lang/String; = "game_mode_block_notification"

.field public static final GAME_MODE_CLOSE_AUTOMATIC_BRIGHTNESS:Ljava/lang/String; = "game_mode_close_automatic_brightness"

.field public static final GAME_MODE_LOCK_BUTTONS:Ljava/lang/String; = "game_mode_lock_buttons"

.field private static final GAME_MODE_NETWORK_ACCELERATION:Ljava/lang/String; = "game_mode_network_acceleration"

.field private static final GAME_MODE_NOTIFICATIONS_3RD_CALLS:Ljava/lang/String; = "game_mode_notifications_3rd_calls"

.field public static final GAME_MODE_STATUS:Ljava/lang/String; = "game_mode_status"

.field public static final GAME_MODE_STATUS_AUTO:Ljava/lang/String; = "game_mode_status_auto"

.field public static final GAME_MODE_STATUS_MANUAL:Ljava/lang/String; = "game_mode_status_manual"

.field private static final KEY_AUTO_TURN_ON_APPS:Ljava/lang/String; = "auto_turn_on_apps"

.field private static final KEY_BATTERY_SAVER:Ljava/lang/String; = "battery_saver"

.field private static final KEY_BLOCK_NOTIFICATIONS:Ljava/lang/String; = "block_notifications"

.field private static final KEY_CLOSE_AUTOMATIC_BRIGHTNESS:Ljava/lang/String; = "close_automatic_brightness"

.field private static final KEY_DO_NOT_DISTURB_ANSWER_CALL_BY_SPEAKER:Ljava/lang/String; = "do_not_disturb_answer_call_by_speaker"

.field private static final KEY_DO_NOT_DISTURB_SETTINGS:Ljava/lang/String; = "do_not_disturb_settings"

.field private static final KEY_GAME_MODE_AD_ENABLE:Ljava/lang/String; = "op_game_mode_ad_enable"

.field private static final KEY_GAMING_MODE_ADD_APPS:Ljava/lang/String; = "gaming_mode_add_apps"

.field private static final KEY_HAPTIC_FEEDBACK:Ljava/lang/String; = "op_haptic_feedback"

.field private static final KEY_LOCK_BUTTONS:Ljava/lang/String; = "lock_buttons"

.field private static final KEY_NETWORK_ACCELERATION:Ljava/lang/String; = "network_acceleration"

.field private static final KEY_NOTIFICATIONS_3RD_CALLS:Ljava/lang/String; = "notifications_3rd_calls"

.field private static final KEY_NOTIFICATION_WAYS:Ljava/lang/String; = "notification_ways"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static final SHIELDING_NOTIFICATION_VALUE:I = 0x1

.field private static final SUSPENSION_NOTICE_VALUE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OPGamingMode"

.field private static final WEAK_TEXT_REMINDING_VALUE:I = 0x2

.field private static mToast:Landroid/widget/Toast;


# instance fields
.field private mAdEnable:Landroidx/preference/SwitchPreference;

.field private mAnswerCallBySpeakerPreference:Landroidx/preference/SwitchPreference;

.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mAutoTurnOnAppList:Landroidx/preference/PreferenceCategory;

.field private mBatterySaverPreference:Landroidx/preference/Preference;

.field private mBlockNotificationsPreference:Landroidx/preference/SwitchPreference;

.field private mCloseAutomaticBrightness:Landroidx/preference/SwitchPreference;

.field private mContext:Landroid/content/Context;

.field private mDoNotDisturbSettings:Landroidx/preference/PreferenceCategory;

.field private mGamingModeAddAppsPreference:Landroidx/preference/Preference;

.field private mHandler:Landroid/os/Handler;

.field private mHapticFeedbackPreference:Lcom/android/settings/widget/MasterSwitchPreference;

.field private mLockButtonsPreference:Landroidx/preference/SwitchPreference;

.field private mNetworkAcceleration:Landroidx/preference/SwitchPreference;

.field private mNotificationWaysPreference:Landroidx/preference/Preference;

.field private mNotificationsCalls:Landroidx/preference/SwitchPreference;

.field private mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private final mSettingsObserver:Lcom/oneplus/settings/better/OPGamingMode$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/settings/better/OPGamingMode$2;

    invoke-direct {v0}, Lcom/oneplus/settings/better/OPGamingMode$2;-><init>()V

    sput-object v0, Lcom/oneplus/settings/better/OPGamingMode;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mAppList:Ljava/util/List;

    new-instance v0, Lcom/oneplus/settings/better/OPGamingMode$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/better/OPGamingMode$SettingsObserver;-><init>(Lcom/oneplus/settings/better/OPGamingMode;)V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mSettingsObserver:Lcom/oneplus/settings/better/OPGamingMode$SettingsObserver;

    new-instance v0, Lcom/oneplus/settings/better/OPGamingMode$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/better/OPGamingMode$1;-><init>(Lcom/oneplus/settings/better/OPGamingMode;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/better/OPGamingMode;)Landroidx/preference/PreferenceCategory;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mAutoTurnOnAppList:Landroidx/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/better/OPGamingMode;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/better/OPGamingMode;)Lcom/oneplus/settings/apploader/OPApplicationLoader;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/better/OPGamingMode;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/better/OPGamingMode;)Landroid/app/AppOpsManager;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/better/OPGamingMode;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGamingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/better/OPGamingMode;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/settings/better/OPGamingMode;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGamingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/oneplus/settings/better/OPGamingMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/better/OPGamingMode;->disableOptionsInEsportsMode()V

    return-void
.end method

.method private disableOptionsInEsportsMode()V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/settings/better/OPGamingMode;->isEsportsMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/oneplus/settings/better/OPGamingMode;->mAnswerCallBySpeakerPreference:Landroidx/preference/SwitchPreference;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/better/OPGamingMode;->mNotificationWaysPreference:Landroidx/preference/Preference;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/better/OPGamingMode;->mNotificationsCalls:Landroidx/preference/SwitchPreference;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method private isEsportsMode()Z
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGamingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "esport_mode_enabled"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private showToast()V
    .locals 3

    sget-object v0, Lcom/oneplus/settings/better/OPGamingMode;->mToast:Landroid/widget/Toast;

    const/4 v1, 0x1

    const v2, 0x7f120d2a

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGamingMode;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/better/OPGamingMode;->mToast:Landroid/widget/Toast;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGamingMode;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/better/OPGamingMode;->mToast:Landroid/widget/Toast;

    :goto_0
    sget-object v0, Lcom/oneplus/settings/better/OPGamingMode;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private updateBatterySaverData()V
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGamingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_mode_battery_saver"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0_0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "56_0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "56_30"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private updateListData()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    invoke-virtual {v0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->loadSelectedGameOrReadAppMap(I)Ljava/util/Map;

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/oneplus/settings/better/OPGamingMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->initData(ILandroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method private updateNotificationWaysSummary()V
    .locals 4

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGamingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_mode_block_notification"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPGamingMode;->mNotificationWaysPreference:Landroidx/preference/Preference;

    const v2, 0x7f120f5e

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/better/OPGamingMode;->mNotificationWaysPreference:Landroidx/preference/Preference;

    const v2, 0x7f120fe5

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Lcom/oneplus/settings/better/OPGamingMode;->mNotificationWaysPreference:Landroidx/preference/Preference;

    const v2, 0x7f120f37

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f16009c

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPGamingMode;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGamingMode;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mContext:Landroid/content/Context;

    const-string v0, "appops"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPGamingMode;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGamingMode;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v1, p0, Lcom/oneplus/settings/better/OPGamingMode;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/settings/better/OPGamingMode;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v3, p0, Lcom/oneplus/settings/better/OPGamingMode;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/settings/apploader/OPApplicationLoader;-><init>(Landroid/content/Context;Landroid/app/AppOpsManager;Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    const-string v0, "do_not_disturb_answer_call_by_speaker"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPGamingMode;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mAnswerCallBySpeakerPreference:Landroidx/preference/SwitchPreference;

    const-string v0, "block_notifications"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPGamingMode;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mBlockNotificationsPreference:Landroidx/preference/SwitchPreference;

    const-string v0, "lock_buttons"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPGamingMode;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mLockButtonsPreference:Landroidx/preference/SwitchPreference;

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mAnswerCallBySpeakerPreference:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mBlockNotificationsPreference:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mLockButtonsPreference:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2
    const-string v0, "auto_turn_on_apps"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPGamingMode;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mAutoTurnOnAppList:Landroidx/preference/PreferenceCategory;

    const-string v0, "gaming_mode_add_apps"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPGamingMode;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mGamingModeAddAppsPreference:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mGamingModeAddAppsPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_3
    const-string v0, "do_not_disturb_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPGamingMode;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mDoNotDisturbSettings:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mLockButtonsPreference:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/oneplus/settings/better/OPGamingMode;->mDoNotDisturbSettings:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    :cond_4
    const-string v0, "battery_saver"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPGamingMode;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mBatterySaverPreference:Landroidx/preference/Preference;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportGameModePowerSaver()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mBatterySaverPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_5
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mBatterySaverPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/oneplus/settings/better/OPGamingMode;->updateBatterySaverData()V

    :cond_6
    const-string v0, "close_automatic_brightness"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPGamingMode;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mCloseAutomaticBrightness:Landroidx/preference/SwitchPreference;

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mCloseAutomaticBrightness:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p0}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_7
    const-string v0, "network_acceleration"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPGamingMode;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mNetworkAcceleration:Landroidx/preference/SwitchPreference;

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mNetworkAcceleration:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p0}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_8
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportGameModeNetBoost()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mDoNotDisturbSettings:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/oneplus/settings/better/OPGamingMode;->mNetworkAcceleration:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    :cond_9
    const-string v0, "notification_ways"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPGamingMode;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mNotificationWaysPreference:Landroidx/preference/Preference;

    const-string v0, "notifications_3rd_calls"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPGamingMode;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mNotificationsCalls:Landroidx/preference/SwitchPreference;

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mNotificationsCalls:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p0}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_a
    const-string v0, "op_game_mode_ad_enable"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPGamingMode;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mAdEnable:Landroidx/preference/SwitchPreference;

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mAdEnable:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p0}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_b
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportGameAdMode()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mAdEnable:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_c

    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setVisible(Z)V

    :cond_c
    const-string v0, "op_haptic_feedback"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPGamingMode;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/MasterSwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mHapticFeedbackPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXVibrate()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mDoNotDisturbSettings:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/better/OPGamingMode;->mHapticFeedbackPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_d
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mHapticFeedbackPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/MasterSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPHapticFeedback;->getHapticFeedbackState(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPGamingMode;->mHapticFeedbackPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mSettingsObserver:Lcom/oneplus/settings/better/OPGamingMode$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/better/OPGamingMode$SettingsObserver;->register(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "block_notifications"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "OPGamingMode"

    const/4 v3, -0x2

    if-eqz v1, :cond_0

    const-string v1, "KEY_BLOCK_NOTIFICATIONS"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGamingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v5, "game_mode_block_notification"

    invoke-static {v2, v5, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_1

    :cond_0
    const-string v1, "lock_buttons"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "KEY_LOCK_BUTTONS"

    if-eqz v1, :cond_1

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGamingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v5, "game_mode_lock_buttons"

    invoke-static {v2, v5, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_1

    :cond_1
    const-string v1, "do_not_disturb_answer_call_by_speaker"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGamingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v5, "game_mode_answer_no_incallui"

    invoke-static {v2, v5, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForGameModeSpeakerAnswer()V

    goto/16 :goto_1

    :cond_2
    const-string v1, "close_automatic_brightness"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGamingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v5, "game_mode_close_automatic_brightness"

    invoke-static {v2, v5, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForGameModeBrightness()V

    goto :goto_1

    :cond_3
    const-string v1, "network_acceleration"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGamingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v5, "game_mode_network_acceleration"

    invoke-static {v2, v5, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForGameModeNetWorkBoost()V

    goto :goto_1

    :cond_4
    const-string v1, "notifications_3rd_calls"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGamingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v5, "game_mode_notifications_3rd_calls"

    invoke-static {v2, v5, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForGameMode3drPartyCalls()V

    goto :goto_1

    :cond_5
    const-string v1, "op_game_mode_ad_enable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGamingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v4, v1, v5, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForGameModeAdEnable()V

    goto :goto_0

    :cond_6
    const-string v1, "op_haptic_feedback"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/oneplus/settings/better/OPGamingMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/oneplus/settings/better/OPHapticFeedback;->setHapticFeedbackState(Landroid/content/Context;Z)V

    goto :goto_1

    :cond_7
    :goto_0
    nop

    :goto_1
    const/4 v1, 0x1

    return v1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gaming_mode_add_apps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OPGamingMode"

    const-string v1, "KEY_GAMING_MODE_ADD_APPS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "oneplus.intent.action.ONEPLUS_GAME_READ_APP_LIST_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/16 v1, 0x3ec

    const-string v2, "op_load_app_tyep"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/oneplus/settings/better/OPGamingMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 6

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode;->mSettingsObserver:Lcom/oneplus/settings/better/OPGamingMode$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/better/OPGamingMode$SettingsObserver;->register(Z)V

    invoke-direct {p0}, Lcom/oneplus/settings/better/OPGamingMode;->updateListData()V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGamingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, -0x2

    const/4 v3, 0x0

    const-string v4, "game_mode_answer_no_incallui"

    invoke-static {v0, v4, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v4, p0, Lcom/oneplus/settings/better/OPGamingMode;->mAnswerCallBySpeakerPreference:Landroidx/preference/SwitchPreference;

    if-eqz v4, :cond_1

    if-eqz v0, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    invoke-virtual {v4, v5}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGamingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "game_mode_block_notification"

    invoke-static {v4, v5, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const-string v4, "do_not_disturb_settings"

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/better/OPGamingMode;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/oneplus/settings/better/OPGamingMode;->mDoNotDisturbSettings:Landroidx/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/oneplus/settings/better/OPGamingMode;->mBlockNotificationsPreference:Landroidx/preference/SwitchPreference;

    if-eqz v4, :cond_3

    if-eqz v0, :cond_2

    move v5, v1

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    invoke-virtual {v4, v5}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/oneplus/settings/better/OPGamingMode;->mDoNotDisturbSettings:Landroidx/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/oneplus/settings/better/OPGamingMode;->mBlockNotificationsPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGamingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "game_mode_lock_buttons"

    invoke-static {v4, v5, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v4, p0, Lcom/oneplus/settings/better/OPGamingMode;->mLockButtonsPreference:Landroidx/preference/SwitchPreference;

    if-eqz v4, :cond_5

    if-eqz v0, :cond_4

    move v5, v1

    goto :goto_2

    :cond_4
    move v5, v3

    :goto_2
    invoke-virtual {v4, v5}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGamingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "game_mode_close_automatic_brightness"

    invoke-static {v4, v5, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v4, p0, Lcom/oneplus/settings/better/OPGamingMode;->mCloseAutomaticBrightness:Landroidx/preference/SwitchPreference;

    if-eqz v4, :cond_7

    if-eqz v0, :cond_6

    move v5, v1

    goto :goto_3

    :cond_6
    move v5, v3

    :goto_3
    invoke-virtual {v4, v5}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    :cond_7
    iget-object v4, p0, Lcom/oneplus/settings/better/OPGamingMode;->mBatterySaverPreference:Landroidx/preference/Preference;

    if-eqz v4, :cond_8

    invoke-direct {p0}, Lcom/oneplus/settings/better/OPGamingMode;->updateBatterySaverData()V

    :cond_8
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGamingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "game_mode_network_acceleration"

    invoke-static {v4, v5, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v4, p0, Lcom/oneplus/settings/better/OPGamingMode;->mNetworkAcceleration:Landroidx/preference/SwitchPreference;

    if-eqz v4, :cond_a

    if-eqz v0, :cond_9

    move v5, v1

    goto :goto_4

    :cond_9
    move v5, v3

    :goto_4
    invoke-virtual {v4, v5}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    :cond_a
    iget-object v4, p0, Lcom/oneplus/settings/better/OPGamingMode;->mNotificationWaysPreference:Landroidx/preference/Preference;

    if-eqz v4, :cond_b

    invoke-direct {p0}, Lcom/oneplus/settings/better/OPGamingMode;->updateNotificationWaysSummary()V

    :cond_b
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGamingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "game_mode_notifications_3rd_calls"

    invoke-static {v4, v5, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v4, p0, Lcom/oneplus/settings/better/OPGamingMode;->mNotificationsCalls:Landroidx/preference/SwitchPreference;

    if-eqz v4, :cond_d

    if-eqz v0, :cond_c

    move v5, v1

    goto :goto_5

    :cond_c
    move v5, v3

    :goto_5
    invoke-virtual {v4, v5}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    :cond_d
    invoke-direct {p0}, Lcom/oneplus/settings/better/OPGamingMode;->disableOptionsInEsportsMode()V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGamingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "op_game_mode_ad_enable"

    invoke-static {v4, v5, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/settings/better/OPGamingMode;->mAdEnable:Landroidx/preference/SwitchPreference;

    if-eqz v2, :cond_f

    if-eqz v0, :cond_e

    goto :goto_6

    :cond_e
    move v1, v3

    :goto_6
    invoke-virtual {v2, v1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    :cond_f
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXVibrate()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/oneplus/settings/better/OPGamingMode;->mHapticFeedbackPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/oneplus/settings/better/OPGamingMode;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/settings/better/OPHapticFeedback;->getHapticFeedbackState(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/oneplus/settings/better/OPGamingMode;->mHapticFeedbackPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    :cond_10
    return-void
.end method
