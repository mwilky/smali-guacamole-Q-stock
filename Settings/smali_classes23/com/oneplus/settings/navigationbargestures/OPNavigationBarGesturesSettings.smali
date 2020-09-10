.class public Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPNavigationBarGesturesSettings.java"

# interfaces
.implements Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field private static final EXTRA_LAUNCH_GESTURE_TUTORIAL_FROM:Ljava/lang/String; = "extra_launch_gesture_tutorial_from"

.field private static final KEY_ALWAYS_SHOW_NAVIGATION_BAR:Ljava/lang/String; = "always_show_navigation_bar"

.field private static final KEY_CUSTOMIZATION:Ljava/lang/String; = "customization"

.field private static final KEY_CUSTOM_SETTINGS_CATEGORY:Ljava/lang/String; = "custom_settings_category"

.field private static final KEY_GESTURE_HIDDEN_BAR:Ljava/lang/String; = "gesture_hidden_bar"

.field private static final KEY_GESTURE_NAVIGATION_BAR:Ljava/lang/String; = "gesture_navigation_bar"

.field private static final KEY_GESTURE_NAVIGATION_BAR_DEPRECATED:Ljava/lang/String; = "gesture_navigation_bar_deprecated"

.field private static final KEY_LEARN_GESTURE_BUTTON_CONTAINER:Ljava/lang/String; = "learn_gesture_button_container"

.field private static final KEY_PHONE_CONTROL_WAY:Ljava/lang/String; = "phone_control_way"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static final TUTORIAL_FLOW_COMPLETE:I = 0x0

.field private static final TUTORIAL_FLOW_ONLY_TUTORIAL:I = 0x1

.field private static final TYPE_ALWAYS_SHOW_NAVIGATION_BAR:I = 0x1

.field private static final TYPE_GESTURE_NAVIGATION_BAR:I = 0x2

.field private static final TYPE_GESTURE_NAVIGATION_BAR_DEPRECATED:I = 0x3

.field private static final TYPE_GESTURE_NAVIGATION_HIDE_BAR:I = 0x4


# instance fields
.field private mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

.field private mAm:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mCustomSettingsCategory:Landroidx/preference/PreferenceCategory;

.field private mCustomization:Landroidx/preference/Preference;

.field private mEnterStatus:Ljava/lang/String;

.field private mGestureHiddenBar:Landroidx/preference/SwitchPreference;

.field private mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

.field private mGestureNavigationBarDeprecated:Lcom/android/settings/ui/RadioButtonPreference;

.field private mHandler:Landroid/os/Handler;

.field private mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

.field private mOverlayManager:Landroid/content/om/IOverlayManager;

.field private mbuttonLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings$1;

    invoke-direct {v0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    invoke-static {}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->isSupportHardwareKeys()Z

    move-result v0

    return v0
.end method

.method static is2ButtonEnabled(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static is3ButtonEnabled(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isCustomSettingsEnable(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->is3ButtonEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static isGesturalEnabled(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isHideBarEnabled(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "oneplus_fullscreen_gesture_type"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method static isSideEnabled(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "op_gesture_button_side_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method private static isSupportHardwareKeys()Z
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

.method private static setNavBarInteractionMode(Landroid/content/om/IOverlayManager;Ljava/lang/String;)V
    .locals 2

    const/4 v0, -0x2

    :try_start_0
    invoke-interface {p0, p1, v0}, Landroid/content/om/IOverlayManager;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private static setSideEnable(Landroid/content/Context;Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    nop

    const-string v1, "op_gesture_button_side_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method public synthetic lambda$onCreate$0$OPNavigationBarGesturesSettings(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "net.oneplus.launcher"

    const-string v2, "net.oneplus.launcher.gestureGuide.GestureTutorialActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_launch_gesture_tutorial_from"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$onPreferenceChange$3$OPNavigationBarGesturesSettings()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureHiddenBar:Landroidx/preference/SwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    return-void
.end method

.method public synthetic lambda$onRadioButtonClicked$1$OPNavigationBarGesturesSettings()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBarDeprecated:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureHiddenBar:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    return-void
.end method

.method public synthetic lambda$onRadioButtonClicked$2$OPNavigationBarGesturesSettings()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBarDeprecated:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f1600a3

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->addPreferencesFromResource(I)V

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAm:Landroid/app/ActivityManager;

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iput-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    const-string v0, "customization"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mCustomization:Landroidx/preference/Preference;

    const-string v0, "always_show_navigation_bar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v1, "gesture_navigation_bar"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v2, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v2, "gesture_navigation_bar_deprecated"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v3, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBarDeprecated:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v3, "gesture_hidden_bar"

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/SwitchPreference;

    iput-object v4, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureHiddenBar:Landroidx/preference/SwitchPreference;

    const-string v4, "phone_control_way"

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    iput-object v4, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    const-string v4, "custom_settings_category"

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mCustomSettingsCategory:Landroidx/preference/PreferenceCategory;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    const v5, 0x7f120d3f

    invoke-virtual {v4, v5}, Lcom/android/settings/ui/RadioButtonPreference;->setTitle(I)V

    :cond_0
    const-string v4, "OP_FEATURE_GESTURE_DEPRECATED"

    invoke-static {v4}, Lcom/oneplus/lib/util/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    const v7, 0x7f120d91

    invoke-virtual {v4, v7}, Lcom/android/settings/ui/RadioButtonPreference;->setTitle(I)V

    iget-object v4, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    const v7, 0x7f120d8e

    invoke-virtual {v4, v7}, Lcom/android/settings/ui/RadioButtonPreference;->setSummary(I)V

    iget-object v4, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBarDeprecated:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v4, v6}, Lcom/android/settings/ui/RadioButtonPreference;->setVisible(Z)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBarDeprecated:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v4, v5}, Lcom/android/settings/ui/RadioButtonPreference;->setVisible(Z)V

    :goto_0
    const-string v4, "OP_FEATURE_HIDE_NAVBAR"

    invoke-static {v4}, Lcom/oneplus/lib/util/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mCustomization:Landroidx/preference/Preference;

    const v7, 0x7f120ca6

    invoke-virtual {v4, v7}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_2
    iget-object v4, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v4, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object v4, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v4, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object v4, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBarDeprecated:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v4, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object v4, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureHiddenBar:Landroidx/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    nop

    const-string v4, "overlay"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mOverlayManager:Landroid/content/om/IOverlayManager;

    const-string v4, "learn_gesture_button_container"

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v4, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mbuttonLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v4, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mbuttonLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    const v7, 0x7f0a0396

    invoke-virtual {v4, v7}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/widget/button/OPButton;

    new-instance v7, Lcom/oneplus/settings/navigationbargestures/-$$Lambda$OPNavigationBarGesturesSettings$SqMDUtfMPpqX0AIjfoq9awLuak8;

    invoke-direct {v7, p0}, Lcom/oneplus/settings/navigationbargestures/-$$Lambda$OPNavigationBarGesturesSettings$SqMDUtfMPpqX0AIjfoq9awLuak8;-><init>(Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;)V

    invoke-virtual {v4, v7}, Lcom/oneplus/lib/widget/button/OPButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->isGesturalEnabled(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->is2ButtonEnabled(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v7, v6}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mCustomization:Landroidx/preference/Preference;

    invoke-virtual {v7, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v6, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureHiddenBar:Landroidx/preference/SwitchPreference;

    invoke-virtual {v6, v5}, Landroidx/preference/SwitchPreference;->setVisible(Z)V

    iget-object v6, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mbuttonLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v6, v5}, Lcom/android/settingslib/widget/LayoutPreference;->setVisible(Z)V

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->isGesturalEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->isSideEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v7, v6}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mCustomization:Landroidx/preference/Preference;

    invoke-virtual {v7, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v5, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureHiddenBar:Landroidx/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Landroidx/preference/SwitchPreference;->setVisible(Z)V

    iget-object v5, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureHiddenBar:Landroidx/preference/SwitchPreference;

    iget-object v7, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->isHideBarEnabled(Landroid/content/Context;)Z

    move-result v7

    invoke-virtual {v5, v7}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mbuttonLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v5, v6}, Lcom/android/settingslib/widget/LayoutPreference;->setVisible(Z)V

    goto :goto_1

    :cond_4
    iget-object v7, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->isGesturalEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->isSideEnabled(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBarDeprecated:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v7, v6}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v6, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mCustomSettingsCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v6, v5}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    iget-object v6, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mbuttonLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v6, v5}, Lcom/android/settingslib/widget/LayoutPreference;->setVisible(Z)V

    :cond_5
    :goto_1
    iget-object v5, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->isGesturalEnabled(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->is2ButtonEnabled(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_6

    iput-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mEnterStatus:Ljava/lang/String;

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->isGesturalEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->isHideBarEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    iput-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mEnterStatus:Ljava/lang/String;

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->isGesturalEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->isHideBarEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    iput-object v3, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mEnterStatus:Ljava/lang/String;

    goto :goto_2

    :cond_8
    iput-object v2, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mEnterStatus:Ljava/lang/String;

    :goto_2
    return-void
.end method

.method public onDestroy()V
    .locals 8

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->releaseAnim()V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    const-string v0, "gesture_navigation_bar"

    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->isGesturalEnabled(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "status"

    const-string v3, "nav_gesture"

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->is2ButtonEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v0, "always_show_navigation_bar"

    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mEnterStatus:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "1"

    invoke-static {v3, v2, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->isGesturalEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->isSideEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v0, "gesture_navigation_bar_deprecated"

    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mEnterStatus:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "3"

    invoke-static {v3, v2, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->isGesturalEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->isSideEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->isHideBarEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "gesture_hidden_bar"

    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mEnterStatus:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "4"

    invoke-static {v3, v2, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "gesture_navigation_bar"

    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mEnterStatus:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "5"

    invoke-static {v3, v2, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mEnterStatus:Ljava/lang/String;

    const-string v2, "always_show_navigation_bar"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v4, "gesture_hidden_bar"

    const-string v5, "gesture_navigation_bar_deprecated"

    const-string v6, "gesture_navigation_bar"

    const-string v7, "resource"

    if-eqz v1, :cond_7

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    const-string v1, "full_screen_default"

    invoke-static {v3, v7, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mEnterStatus:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mEnterStatus:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mEnterStatus:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "default_full_screen"

    invoke-static {v3, v7, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mEnterStatus:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "others"

    invoke-static {v3, v7, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_1
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->stopAnim()V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureHiddenBar:Landroidx/preference/SwitchPreference;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "oneplus_fullscreen_gesture_type"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    const/4 v2, 0x4

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->setViewType(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->setViewType(I)V

    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureHiddenBar:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/settings/navigationbargestures/-$$Lambda$OPNavigationBarGesturesSettings$FBs9QW0KxYbC2etmrPZQQKvglhQ;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/navigationbargestures/-$$Lambda$OPNavigationBarGesturesSettings$FBs9QW0KxYbC2etmrPZQQKvglhQ;-><init>(Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public onRadioButtonClicked(Lcom/android/settings/ui/RadioButtonPreference;)V
    .locals 7

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAm:Landroid/app/ActivityManager;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPApplicationUtils;->killProcess(Landroid/app/ActivityManager;)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->is3ButtonEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBarDeprecated:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBarDeprecated:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mCustomSettingsCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mCustomization:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mCustomization:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureHiddenBar:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/SwitchPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mbuttonLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/LayoutPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->setVisible(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mOverlayManager:Landroid/content/om/IOverlayManager;

    const-string v1, "com.android.internal.systemui.navbar.threebutton"

    invoke-static {v0, v1}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->setNavBarInteractionMode(Landroid/content/om/IOverlayManager;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    const-wide/16 v3, 0x1f4

    const-string v5, "com.android.internal.systemui.navbar.gestural"

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->isGesturalEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->isSideEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBarDeprecated:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBarDeprecated:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mCustomSettingsCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mCustomization:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureHiddenBar:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureHiddenBar:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureHiddenBar:Landroidx/preference/SwitchPreference;

    iget-object v6, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->isHideBarEnabled(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mbuttonLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->isGesturalEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->setSideEnable(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-virtual {p0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->isHideBarEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->setViewType(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/settings/navigationbargestures/-$$Lambda$OPNavigationBarGesturesSettings$gemNwH7kwFrpIyA9VNh6ACnKCLM;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/navigationbargestures/-$$Lambda$OPNavigationBarGesturesSettings$gemNwH7kwFrpIyA9VNh6ACnKCLM;-><init>(Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->setVisible(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mbuttonLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/LayoutPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->setSideEnable(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mOverlayManager:Landroid/content/om/IOverlayManager;

    invoke-static {v0, v5}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->setNavBarInteractionMode(Landroid/content/om/IOverlayManager;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBarDeprecated:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->isGesturalEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->isSideEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBarDeprecated:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBarDeprecated:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mCustomSettingsCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mbuttonLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/LayoutPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->isGesturalEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->setSideEnable(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->setViewType(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/settings/navigationbargestures/-$$Lambda$OPNavigationBarGesturesSettings$owtEVR48lEgyPwANgsMLWgqElWo;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/navigationbargestures/-$$Lambda$OPNavigationBarGesturesSettings$owtEVR48lEgyPwANgsMLWgqElWo;-><init>(Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->setSideEnable(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->setVisible(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mOverlayManager:Landroid/content/om/IOverlayManager;

    invoke-static {v0, v5}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->setNavBarInteractionMode(Landroid/content/om/IOverlayManager;Ljava/lang/String;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->startAnim()V

    :cond_0
    return-void
.end method
