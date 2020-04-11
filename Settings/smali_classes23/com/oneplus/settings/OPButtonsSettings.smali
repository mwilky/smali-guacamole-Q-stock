.class public Lcom/oneplus/settings/OPButtonsSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPButtonsSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;,
        Lcom/oneplus/settings/OPButtonsSettings$Helper;,
        Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;
    }
.end annotation


# static fields
.field private static final BACKLIGHT_PREF:Ljava/lang/String; = "pre_navbar_button_backlight"

.field public static final GSM_PACKAGE:Ljava/lang/String; = "com.google.android.googlequicksearchbox"

.field private static final KEY_BACK_DOUBLE_TAP:Ljava/lang/String; = "hardware_keys_back_double_tap"

.field private static final KEY_BACK_LONG_PRESS:Ljava/lang/String; = "hardware_keys_back_long_press"

.field private static final KEY_BUTTONS_BRIGHTNESS:Ljava/lang/String; = "buttons_brightness"

.field private static final KEY_BUTTONS_ENABLE_ON_SCREEN_NAVKEYS:Ljava/lang/String; = "buttons_enable_on_screen_navkeys"

.field private static final KEY_BUTTONS_FORCE_HOME:Ljava/lang/String; = "buttons_force_home"

.field private static final KEY_BUTTONS_SWAP_NAVKEYS:Ljava/lang/String; = "buttons_swap_navkeys"

.field private static final KEY_CAMERA_DOUBLE_TAP_POWER_GESTURE:Ljava/lang/String; = "camera_double_tap_power_gesture"

.field private static final KEY_CATEGORY_BACK:Ljava/lang/String; = "back_key"

.field private static final KEY_CATEGORY_HOME:Ljava/lang/String; = "home_key"

.field private static final KEY_CATEGORY_MENU:Ljava/lang/String; = "menu_key"

.field private static final KEY_HIDE_NAVKEYS:Ljava/lang/String; = "hide_navkeys"

.field private static final KEY_HOME_DOUBLE_TAP:Ljava/lang/String; = "hardware_keys_home_double_tap"

.field private static final KEY_HOME_LONG_PRESS:Ljava/lang/String; = "hardware_keys_home_long_press"

.field private static final KEY_LOCK_MODE_FOOT:I = 0x4

.field private static final KEY_LOCK_MODE_HOME:I = 0x3

.field private static final KEY_LOCK_MODE_POWER_HOME:I = 0x2

.field private static final KEY_MENU_DOUBLE_TAP:Ljava/lang/String; = "hardware_keys_menu_double_tap"

.field private static final KEY_MENU_LONG_PRESS:Ljava/lang/String; = "hardware_keys_menu_long_press"

.field private static final KEY_NAVIGATION_BAR_TYPE:Ljava/lang/String; = "key_navigation_bar_type"

.field public static final QUICKPAY_VALUE:Ljava/lang/String; = "11"

.field private static final REFRESH_PREPERENCE:I = 0x1

.field private static final REQUEST_CODE_FOR_GESTURE_GUIDE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "SystemSettings"


# instance fields
.field private mBackDoubleTapAction:Landroidx/preference/ListPreference;

.field private mBackLongPressAction:Landroidx/preference/ListPreference;

.field private mCameraDoubleTapPowerGesturePreference:Landroidx/preference/SwitchPreference;

.field private mDisableNavKeysBrightness:Landroidx/preference/SwitchPreference;

.field private mEnableOnScreenNavkeys:Landroidx/preference/SwitchPreference;

.field private mForceHomeButtonEnabled:Landroidx/preference/SwitchPreference;

.field private mHandler:Landroid/os/Handler;

.field private mHideNavkeys:Landroidx/preference/SwitchPreference;

.field private mHomeDoubleTapAction:Landroidx/preference/ListPreference;

.field private mHomeLongPressAction:Landroidx/preference/ListPreference;

.field private mMenuDoubleTapAction:Landroidx/preference/ListPreference;

.field private mMenuLongPressAction:Landroidx/preference/ListPreference;

.field private final mSettingsObserver:Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;

.field private mSwapNavkeys:Landroidx/preference/SwitchPreference;

.field private mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;

    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;-><init>(Lcom/oneplus/settings/OPButtonsSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mSettingsObserver:Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/OPButtonsSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->loadPreferenceScreen()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OPButtonsSettings;)Landroidx/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHideNavkeys:Landroidx/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/OPButtonsSettings;)Landroidx/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroidx/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/OPButtonsSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/OPButtonsSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public static checkGMS(Landroid/content/Context;)Z
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.google.android.googlequicksearchbox"

    const/16 v2, 0x2000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method private delayEnableHideNavkey()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHideNavkeys:Landroidx/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/settings/OPButtonsSettings$2;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/OPButtonsSettings$2;-><init>(Lcom/oneplus/settings/OPButtonsSettings;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static getNonVisibleKeys()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "buttons_enable_on_screen_navkeys"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "buttons_swap_navkeys"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "buttons_brightness"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "buttons_force_home"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "hardware_keys_home_long_press"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "hardware_keys_home_double_tap"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "hardware_keys_menu_long_press"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "hardware_keys_menu_double_tap"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "hardware_keys_back_long_press"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "hardware_keys_back_double_tap"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "home_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "menu_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "back_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "pre_navbar_button_backlight"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "camera_double_tap_power_gesture"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5

    instance-of v0, p1, Landroidx/preference/ListPreference;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/preference/ListPreference;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, p3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_0
    instance-of v0, p1, Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    instance-of v1, p2, Ljava/lang/Boolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_1
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_3

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    move v0, v1

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    invoke-static {v1, p3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4

    :cond_5
    :goto_3
    nop

    :goto_4
    return-void
.end method

.method private initActionList(Ljava/lang/String;I)Landroidx/preference/ListPreference;
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p0}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-object v0
.end method

.method private initListViewPrefs()V
    .locals 16

    move-object/from16 v0, p0

    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const-string v3, "key_home_long_press_action"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const-string v4, "hardware_keys_home_long_press"

    invoke-direct {v0, v4, v3}, Lcom/oneplus/settings/OPButtonsSettings;->initActionList(Ljava/lang/String;I)Landroidx/preference/ListPreference;

    move-result-object v4

    iput-object v4, v0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0051

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const-string v5, "key_home_double_tap_action"

    invoke-static {v1, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const-string v6, "hardware_keys_home_double_tap"

    invoke-direct {v0, v6, v5}, Lcom/oneplus/settings/OPButtonsSettings;->initActionList(Ljava/lang/String;I)Landroidx/preference/ListPreference;

    move-result-object v6

    iput-object v6, v0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x5080007

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    const-string v7, "key_app_switch_long_press_action"

    invoke-static {v1, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    const-string v8, "hardware_keys_menu_long_press"

    invoke-direct {v0, v8, v7}, Lcom/oneplus/settings/OPButtonsSettings;->initActionList(Ljava/lang/String;I)Landroidx/preference/ListPreference;

    move-result-object v8

    iput-object v8, v0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x5080003

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    const-string v9, "key_app_switch_double_tap_action"

    invoke-static {v1, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const-string v10, "hardware_keys_menu_double_tap"

    invoke-direct {v0, v10, v9}, Lcom/oneplus/settings/OPButtonsSettings;->initActionList(Ljava/lang/String;I)Landroidx/preference/ListPreference;

    move-result-object v10

    iput-object v10, v0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x5080008

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    const-string v11, "key_back_long_press_action"

    invoke-static {v1, v11, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const-string v12, "hardware_keys_back_long_press"

    invoke-direct {v0, v12, v11}, Lcom/oneplus/settings/OPButtonsSettings;->initActionList(Ljava/lang/String;I)Landroidx/preference/ListPreference;

    move-result-object v12

    iput-object v12, v0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x5080004

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    const-string v13, "key_back_double_tap_action"

    invoke-static {v1, v13, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    const-string v14, "hardware_keys_back_double_tap"

    invoke-direct {v0, v14, v13}, Lcom/oneplus/settings/OPButtonsSettings;->initActionList(Ljava/lang/String;I)Landroidx/preference/ListPreference;

    move-result-object v14

    iput-object v14, v0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/settings/OPButtonsSettings;->isSupportHardwareKeys()Z

    move-result v14

    if-nez v14, :cond_5

    iget-object v14, v0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    const v15, 0x7f03009a

    if-eqz v14, :cond_0

    invoke-virtual {v14, v15}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v14, v0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    const v15, 0x7f03009e

    invoke-virtual {v14, v15}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    :cond_0
    const v15, 0x7f03009e

    :goto_0
    iget-object v14, v0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroidx/preference/ListPreference;

    if-eqz v14, :cond_1

    const v15, 0x7f03009a

    invoke-virtual {v14, v15}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v14, v0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroidx/preference/ListPreference;

    const v15, 0x7f03009e

    invoke-virtual {v14, v15}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    :cond_1
    iget-object v14, v0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroidx/preference/ListPreference;

    if-eqz v14, :cond_2

    const v15, 0x7f03009a

    invoke-virtual {v14, v15}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v14, v0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroidx/preference/ListPreference;

    const v15, 0x7f03009e

    invoke-virtual {v14, v15}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    :cond_2
    iget-object v14, v0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroidx/preference/ListPreference;

    if-eqz v14, :cond_3

    const v15, 0x7f03009a

    invoke-virtual {v14, v15}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v14, v0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroidx/preference/ListPreference;

    const v15, 0x7f03009e

    invoke-virtual {v14, v15}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    :cond_3
    iget-object v14, v0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    if-eqz v14, :cond_4

    const v15, 0x7f03009a

    invoke-virtual {v14, v15}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v14, v0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    const v15, 0x7f03009e

    invoke-virtual {v14, v15}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    :cond_4
    iget-object v14, v0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroidx/preference/ListPreference;

    if-eqz v14, :cond_5

    const v15, 0x7f03009a

    invoke-virtual {v14, v15}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v14, v0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroidx/preference/ListPreference;

    const v15, 0x7f03009e

    invoke-virtual {v14, v15}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    :cond_5
    return-void
.end method

.method private initListViewPrefsnogms()V
    .locals 6

    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->canShowQuickPay(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x7f030088

    const v2, 0x7f030084

    const v3, 0x7f03009f

    const v4, 0x7f03009b

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->isSupportHardwareKeys()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->isSupportHardwareKeys()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    const v5, 0x7f030085

    invoke-virtual {v0, v5}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    const v5, 0x7f030089

    invoke-virtual {v0, v5}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    const v5, 0x7f03009c

    invoke-virtual {v0, v5}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    const v5, 0x7f0300a0

    invoke-virtual {v0, v5}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    :goto_0
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->isSupportHardwareKeys()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    :goto_1
    return-void
.end method

.method private initPrefs()V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->initListViewPrefs()V

    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/OPButtonsSettings;->checkGMS(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->initListViewPrefsnogms()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->canShowQuickPay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->isSupportHardwareKeys()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    const v1, 0x7f030083

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    const v1, 0x7f030087

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    const v1, 0x7f03009a

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    const v1, 0x7f03009e

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->isSupportHardwareKeys()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    const v1, 0x7f030086

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    const v1, 0x7f03008a

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    const v1, 0x7f03009d

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    const v1, 0x7f0300a1

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    :goto_0
    return-void
.end method

.method private static isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z
    .locals 1

    const v0, 0x1110038

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private isSupportHardwareKeys()Z
    .locals 2

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11100be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    return v1
.end method

.method private loadPreferenceScreen()V
    .locals 18

    move-object/from16 v0, p0

    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    if-eqz v1, :cond_16

    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const-string v3, "buttons_brightness"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    const-string v7, "buttons_show_on_screen_navkeys"

    invoke-static {v1, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    move v7, v6

    :goto_1
    const-string v8, "buttons_force_home_enabled"

    invoke-static {v1, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    move v8, v6

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "oem_acc_key_define"

    invoke-static {v9, v10, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_3

    :cond_3
    move v9, v6

    :goto_3
    iget-object v11, v0, Lcom/oneplus/settings/OPButtonsSettings;->mSwapNavkeys:Landroidx/preference/SwitchPreference;

    invoke-virtual {v11, v9}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    iget-object v11, v0, Lcom/oneplus/settings/OPButtonsSettings;->mDisableNavKeysBrightness:Landroidx/preference/SwitchPreference;

    invoke-virtual {v11, v4}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    iget-object v11, v0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroidx/preference/SwitchPreference;

    invoke-virtual {v11, v7}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    sget-object v11, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;->NORMAL:Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;

    invoke-virtual {v11}, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;->ordinal()I

    move-result v11

    invoke-static {v1, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    sget-object v11, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;->FOOT:Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;

    invoke-virtual {v11}, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;->ordinal()I

    move-result v11

    if-ne v10, v11, :cond_4

    move v10, v6

    goto :goto_4

    :cond_4
    const/4 v10, 0x1

    :goto_4
    iget-object v11, v0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroidx/preference/SwitchPreference;

    invoke-virtual {v11, v10}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v11, v0, Lcom/oneplus/settings/OPButtonsSettings;->mForceHomeButtonEnabled:Landroidx/preference/SwitchPreference;

    invoke-virtual {v11, v8}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPButtonsSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v11

    nop

    const-string v12, "home_key"

    invoke-virtual {v11, v12}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v12

    check-cast v12, Landroidx/preference/PreferenceCategory;

    nop

    const-string v13, "menu_key"

    invoke-virtual {v11, v13}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v13

    check-cast v13, Landroidx/preference/PreferenceCategory;

    nop

    const-string v14, "back_key"

    invoke-virtual {v11, v14}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v14

    check-cast v14, Landroidx/preference/PreferenceCategory;

    iget-object v15, v0, Lcom/oneplus/settings/OPButtonsSettings;->mDisableNavKeysBrightness:Landroidx/preference/SwitchPreference;

    if-eqz v15, :cond_6

    if-nez v7, :cond_5

    const/4 v6, 0x1

    :cond_5
    invoke-virtual {v15, v6}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/settings/OPButtonsSettings;->isSupportHardwareKeys()Z

    move-result v6

    const-string v15, "hide_navkeys"

    const-string v5, "buttons_enable_on_screen_navkeys"

    if-eqz v6, :cond_9

    iget-object v3, v0, Lcom/oneplus/settings/OPButtonsSettings;->mForceHomeButtonEnabled:Landroidx/preference/SwitchPreference;

    if-eqz v3, :cond_7

    invoke-virtual {v3, v7}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    :cond_7
    if-eqz v12, :cond_8

    if-nez v8, :cond_8

    :cond_8
    nop

    nop

    invoke-virtual {v0, v15}, Lcom/oneplus/settings/OPButtonsSettings;->removePreference(Ljava/lang/String;)Z

    move-object/from16 v16, v1

    move/from16 v17, v2

    goto :goto_c

    :cond_9
    invoke-virtual {v0, v3}, Lcom/oneplus/settings/OPButtonsSettings;->removePreference(Ljava/lang/String;)Z

    invoke-virtual {v0, v5}, Lcom/oneplus/settings/OPButtonsSettings;->removePreference(Ljava/lang/String;)Z

    const-string v3, "buttons_force_home"

    invoke-virtual {v0, v3}, Lcom/oneplus/settings/OPButtonsSettings;->removePreference(Ljava/lang/String;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "op_navigation_bar_type"

    move-object/from16 v16, v1

    const/4 v1, 0x1

    invoke-static {v3, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget-object v6, v0, Lcom/oneplus/settings/OPButtonsSettings;->mHideNavkeys:Landroidx/preference/SwitchPreference;

    if-eqz v3, :cond_a

    goto :goto_5

    :cond_a
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v6, v1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    const/4 v1, 0x3

    if-ne v3, v1, :cond_b

    const/4 v1, 0x1

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    :goto_6
    iget-object v6, v0, Lcom/oneplus/settings/OPButtonsSettings;->mSwapNavkeys:Landroidx/preference/SwitchPreference;

    if-eqz v6, :cond_d

    move/from16 v17, v2

    if-nez v1, :cond_c

    const/4 v2, 0x1

    goto :goto_7

    :cond_c
    const/4 v2, 0x0

    :goto_7
    invoke-virtual {v6, v2}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_8

    :cond_d
    move/from16 v17, v2

    :goto_8
    if-eqz v12, :cond_f

    if-nez v1, :cond_e

    const/4 v2, 0x1

    goto :goto_9

    :cond_e
    const/4 v2, 0x0

    :goto_9
    invoke-virtual {v12, v2}, Landroidx/preference/PreferenceCategory;->setEnabled(Z)V

    :cond_f
    if-eqz v13, :cond_11

    if-nez v1, :cond_10

    const/4 v2, 0x1

    goto :goto_a

    :cond_10
    const/4 v2, 0x0

    :goto_a
    invoke-virtual {v13, v2}, Landroidx/preference/PreferenceCategory;->setEnabled(Z)V

    :cond_11
    if-eqz v14, :cond_13

    if-nez v1, :cond_12

    const/4 v2, 0x1

    goto :goto_b

    :cond_12
    const/4 v2, 0x0

    :goto_b
    invoke-virtual {v14, v2}, Landroidx/preference/PreferenceCategory;->setEnabled(Z)V

    :cond_13
    :goto_c
    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->isSurportNavigationBarOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0, v5}, Lcom/oneplus/settings/OPButtonsSettings;->removePreference(Ljava/lang/String;)Z

    invoke-virtual {v0, v15}, Lcom/oneplus/settings/OPButtonsSettings;->removePreference(Ljava/lang/String;)Z

    goto :goto_d

    :cond_14
    const-string v1, "key_navigation_bar_type"

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OPButtonsSettings;->removePreference(Ljava/lang/String;)Z

    :goto_d
    iget-object v1, v0, Lcom/oneplus/settings/OPButtonsSettings;->mCameraDoubleTapPowerGesturePreference:Landroidx/preference/SwitchPreference;

    if-eqz v1, :cond_16

    nop

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "camera_double_tap_power_gesture_disabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, v0, Lcom/oneplus/settings/OPButtonsSettings;->mCameraDoubleTapPowerGesturePreference:Landroidx/preference/SwitchPreference;

    if-nez v1, :cond_15

    const/4 v3, 0x1

    :cond_15
    invoke-virtual {v2, v3}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    :cond_16
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "op_gesture_guide_completed"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "op_gesture_button_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "op_fullscreen_gesture_enabled"

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->delayEnableHideNavkey()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mWindow:Landroid/view/Window;

    const v0, 0x7f160089

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings;->addPreferencesFromResource(I)V

    new-instance v0, Lcom/oneplus/settings/OPButtonsSettings$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/OPButtonsSettings$1;-><init>(Lcom/oneplus/settings/OPButtonsSettings;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHandler:Landroid/os/Handler;

    const-string v0, "buttons_enable_on_screen_navkeys"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroidx/preference/SwitchPreference;

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "buttons_swap_navkeys"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mSwapNavkeys:Landroidx/preference/SwitchPreference;

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mSwapNavkeys:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "buttons_brightness"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mDisableNavKeysBrightness:Landroidx/preference/SwitchPreference;

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mDisableNavKeysBrightness:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "buttons_force_home"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mForceHomeButtonEnabled:Landroidx/preference/SwitchPreference;

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mForceHomeButtonEnabled:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "camera_double_tap_power_gesture"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings;->removePreference(Ljava/lang/String;)Z

    const-string v0, "hide_navkeys"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHideNavkeys:Landroidx/preference/SwitchPreference;

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHideNavkeys:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mSettingsObserver:Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;->setListening(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    instance-of v1, p2, Ljava/lang/Boolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_0
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_2

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    move v0, v1

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mSwapNavkeys:Landroidx/preference/SwitchPreference;

    if-ne p1, v1, :cond_3

    const-string v2, "oem_acc_key_define"

    invoke-direct {p0, v1, p2, v2}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return v3

    :cond_3
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    if-ne p1, v1, :cond_5

    const-string v2, "key_home_long_press_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    const-string v2, "11"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->gotoQuickPaySettingsPage(Landroid/content/Context;)V

    :cond_4
    return v3

    :cond_5
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroidx/preference/ListPreference;

    if-ne p1, v1, :cond_6

    const-string v2, "key_home_double_tap_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return v3

    :cond_6
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroidx/preference/ListPreference;

    if-ne p1, v1, :cond_7

    const-string v2, "key_app_switch_long_press_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return v3

    :cond_7
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroidx/preference/ListPreference;

    if-ne p1, v1, :cond_8

    const-string v2, "key_app_switch_double_tap_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return v3

    :cond_8
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    if-ne p1, v1, :cond_9

    const-string v2, "key_back_long_press_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return v3

    :cond_9
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroidx/preference/ListPreference;

    if-ne p1, v1, :cond_a

    const-string v2, "key_back_double_tap_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return v3

    :cond_a
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mDisableNavKeysBrightness:Landroidx/preference/SwitchPreference;

    if-ne p1, v1, :cond_b

    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0, v2}, Lcom/oneplus/settings/OPButtonsSettings$Helper;->setHWButtonsLightsState(Landroid/content/Context;ZZ)V

    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->loadPreferenceScreen()V

    return v3

    :cond_b
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroidx/preference/SwitchPreference;

    if-ne p1, v1, :cond_c

    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/oneplus/settings/OPButtonsSettings$Helper;->updateSettings(Landroid/content/Context;Z)V

    const-string v1, "buttons_enable_on_screen_navkeys"

    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Z)V

    return v3

    :cond_c
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mForceHomeButtonEnabled:Landroidx/preference/SwitchPreference;

    if-ne p1, v1, :cond_d

    const-string v2, "buttons_force_home_enabled"

    invoke-direct {p0, v1, p2, v2}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->loadPreferenceScreen()V

    return v3

    :cond_d
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mCameraDoubleTapPowerGesturePreference:Landroidx/preference/SwitchPreference;

    if-ne p1, v1, :cond_e

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    nop

    xor-int/lit8 v4, v1, 0x1

    const-string v5, "camera_double_tap_power_gesture_disabled"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v3

    :cond_e
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHideNavkeys:Landroidx/preference/SwitchPreference;

    if-ne p1, v1, :cond_10

    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "op_gesture_guide_completed"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_f

    new-instance v1, Landroid/content/Intent;

    const-string v2, "oneplus.intent.action.ONEPLUS_FULLSCREEN_GESTURE_GUIDE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/settings/OPButtonsSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    :cond_f
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    nop

    const-string v4, "op_gesture_button_enabled"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "op_fullscreen_gesture_enabled"

    invoke-static {v2, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->delayEnableHideNavkey()V

    :goto_2
    return v3

    :cond_10
    return v2
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroidx/preference/SwitchPreference;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mWindow:Landroid/view/Window;

    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->getThemeMode(Landroid/content/ContentResolver;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->setLightNavigationBar(Landroid/view/Window;I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroidx/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/settings/OPButtonsSettings$3;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/OPButtonsSettings$3;-><init>(Lcom/oneplus/settings/OPButtonsSettings;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->initPrefs()V

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mSettingsObserver:Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;->setListening(Z)V

    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->loadPreferenceScreen()V

    return-void
.end method
