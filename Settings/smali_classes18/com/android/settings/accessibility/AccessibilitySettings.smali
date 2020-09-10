.class public Lcom/android/settings/accessibility/AccessibilitySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final ACCESSIBILITY_CONTROL_TIMEOUT_PREFERENCE:Ljava/lang/String; = "accessibility_control_timeout_preference_fragment"

.field private static final ACCESSIBILITY_SHORTCUT_PREFERENCE:Ljava/lang/String; = "accessibility_shortcut_preference"

.field private static final ANIMATION_OFF_VALUE:Ljava/lang/String; = "0"

.field private static final ANIMATION_ON_VALUE:Ljava/lang/String; = "1"

.field private static final AUTOCLICK_PREFERENCE_SCREEN:Ljava/lang/String; = "autoclick_preference"

.field private static final CAPTIONING_PREFERENCE_SCREEN:Ljava/lang/String; = "captioning_preference_screen"

.field private static final CATEGORIES:[Ljava/lang/String;

.field private static final CATEGORY_AUDIO_AND_CAPTIONS:Ljava/lang/String; = "audio_and_captions_category"

.field private static final CATEGORY_DISPLAY:Ljava/lang/String; = "display_category"

.field private static final CATEGORY_DOWNLOADED_SERVICES:Ljava/lang/String; = "user_installed_services_category"

.field private static final CATEGORY_EXPERIMENTAL:Ljava/lang/String; = "experimental_category"

.field private static final CATEGORY_INTERACTION_CONTROL:Ljava/lang/String; = "interaction_control_category"

.field private static final CATEGORY_SCREEN_READER:Ljava/lang/String; = "screen_reader_category"

.field private static final DARK_UI_MODE_PREFERENCE:Ljava/lang/String; = "dark_ui_mode_accessibility"

.field private static final DELAY_UPDATE_SERVICES_MILLIS:J = 0x3e8L

.field private static final DISPLAY_DALTONIZER_PREFERENCE_SCREEN:Ljava/lang/String; = "daltonizer_preference"

.field private static final DISPLAY_MAGNIFICATION_PREFERENCE_SCREEN:Ljava/lang/String; = "magnification_preference_screen"

.field static final EXTRA_CHECKED:Ljava/lang/String; = "checked"

.field static final EXTRA_COMPONENT_NAME:Ljava/lang/String; = "component_name"

.field static final EXTRA_LAUNCHED_FROM_SUW:Ljava/lang/String; = "from_suw"

.field static final EXTRA_PREFERENCE_KEY:Ljava/lang/String; = "preference_key"

.field static final EXTRA_RESOLVE_INFO:Ljava/lang/String; = "resolve_info"

.field static final EXTRA_SETTINGS_COMPONENT_NAME:Ljava/lang/String; = "settings_component_name"

.field static final EXTRA_SETTINGS_TITLE:Ljava/lang/String; = "settings_title"

.field static final EXTRA_SUMMARY:Ljava/lang/String; = "summary"

.field static final EXTRA_SUMMARY_RES:Ljava/lang/String; = "summary_res"

.field static final EXTRA_TITLE:Ljava/lang/String; = "title"

.field static final EXTRA_TITLE_RES:Ljava/lang/String; = "title_res"

.field static final EXTRA_VIDEO_RAW_RESOURCE_ID:Ljava/lang/String; = "video_resource"

.field private static final FIRST_PREFERENCE_IN_CATEGORY_INDEX:I = -0x1

.field private static final FONT_SIZE_PREFERENCE_SCREEN:Ljava/lang/String; = "font_size_preference_screen"

.field private static final HEARING_AID_ENABLED:Ljava/lang/String; = "hac_enabled=true"

.field private static final HEARING_AID_KEY:Ljava/lang/String; = "hearing_aid"

.field private static final HEARING_AID_PREFERENCE:Ljava/lang/String; = "hearing_aid_preference"

.field private static final LIVE_CAPTION_PREFERENCE_KEY:Ljava/lang/String; = "live_caption"

.field static final RAMPING_RINGER_ENABLED:Ljava/lang/String; = "ramping_ringer_enabled"

.field private static final RTT_FEATURE_KEY:Ljava/lang/String; = "rtt_feature"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final SELECT_LONG_PRESS_TIMEOUT_PREFERENCE:Ljava/lang/String; = "select_long_press_timeout_preference"

.field private static final TOGGLE_ANIMATION_TARGETS:[Ljava/lang/String;

.field private static final TOGGLE_DISABLE_ANIMATIONS:Ljava/lang/String; = "toggle_disable_animations"

.field private static final TOGGLE_HIGH_TEXT_CONTRAST_PREFERENCE:Ljava/lang/String; = "toggle_high_text_contrast_preference"

.field private static final TOGGLE_INVERSION_PREFERENCE:Ljava/lang/String; = "toggle_inversion_preference"

.field private static final TOGGLE_LARGE_POINTER_ICON:Ljava/lang/String; = "toggle_large_pointer_icon"

.field private static final TOGGLE_LOCK_SCREEN_ROTATION_PREFERENCE:Ljava/lang/String; = "toggle_lock_screen_rotation_preference"

.field private static final TOGGLE_MASTER_MONO:Ljava/lang/String; = "toggle_master_mono"

.field private static final TOGGLE_POWER_BUTTON_ENDS_CALL_PREFERENCE:Ljava/lang/String; = "toggle_power_button_ends_call_preference"

.field private static final VIBRATION_PREFERENCE_SCREEN:Ljava/lang/String; = "vibration_preference_screen"


# instance fields
.field private mAccessibilityShortcutPreferenceScreen:Landroidx/preference/Preference;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoclickPreferenceScreen:Landroidx/preference/Preference;

.field private mCaptioningPreferenceScreen:Landroidx/preference/Preference;

.field private final mCategoryToPrefCategoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/preference/PreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mDarkUIModePreference:Landroidx/preference/SwitchPreference;

.field private mDarkUIPreferenceController:Lcom/android/settings/display/DarkUIPreferenceController;

.field private mDisplayDaltonizerPreferenceScreen:Landroidx/preference/Preference;

.field private mDisplayMagnificationPreferenceScreen:Landroidx/preference/Preference;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mFontSizePreferenceScreen:Landroidx/preference/Preference;

.field private final mHandler:Landroid/os/Handler;

.field private mHearingAidCompatibilitPreferencey:Landroidx/preference/SwitchPreference;

.field private mHearingAidPreference:Landroidx/preference/Preference;

.field private mHearingAidPreferenceController:Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;

.field private mInversionPreferenceController:Lcom/android/settings/accessibility/ColorInversionPreferenceController;

.field private mLiveCaptionPreference:Landroidx/preference/Preference;

.field private mLiveCaptionPreferenceController:Lcom/android/settings/accessibility/LiveCaptionPreferenceController;

.field private mLongPressTimeoutDefault:I

.field private final mLongPressTimeoutValueToTitleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreBundledServiceComponentToCategoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Landroidx/preference/PreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mRTTPreference:Landroidx/preference/Preference;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mSelectLongPressTimeoutPreference:Landroidx/preference/ListPreference;

.field private final mServicePreferenceToPreferenceCategoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/preference/Preference;",
            "Landroidx/preference/PreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mToggleDisableAnimationsPreference:Landroidx/preference/SwitchPreference;

.field private mToggleHighTextContrastPreference:Landroidx/preference/SwitchPreference;

.field private mToggleInversionPreference:Landroidx/preference/SwitchPreference;

.field private mToggleLargePointerIconPreference:Landroidx/preference/SwitchPreference;

.field private mToggleLockScreenRotationPreference:Landroidx/preference/SwitchPreference;

.field private mToggleMasterMonoPreference:Landroidx/preference/SwitchPreference;

.field private mTogglePowerButtonEndsCallPreference:Landroidx/preference/SwitchPreference;

.field private final mUpdateRunnable:Ljava/lang/Runnable;

.field private mVibrationPreferenceScreen:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "screen_reader_category"

    const-string v1, "audio_and_captions_category"

    const-string v2, "display_category"

    const-string v3, "interaction_control_category"

    const-string v4, "experimental_category"

    const-string v5, "user_installed_services_category"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->CATEGORIES:[Ljava/lang/String;

    const-string v0, "window_animation_scale"

    const-string v1, "transition_animation_scale"

    const-string v2, "animator_duration_scale"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->TOGGLE_ANIMATION_TARGETS:[Ljava/lang/String;

    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$5;

    invoke-direct {v0}, Lcom/android/settings/accessibility/AccessibilitySettings$5;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValueToTitleMap:Ljava/util/Map;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$1;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$2;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$3;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicePreferenceToPreferenceCategoryMap:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mPreBundledServiceComponentToCategoryMap:Ljava/util/Map;

    invoke-static {}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getFrameworkShortcutFeaturesMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;

    invoke-virtual {v3}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;->getSettingKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/settings/accessibility/AccessibilitySettings$4;

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3, v1}, Lcom/android/settings/accessibility/AccessibilitySettings$4;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;Landroid/os/Handler;Ljava/util/List;)V

    iput-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/AccessibilitySettings;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/AccessibilitySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateLockScreenRotationCheckbox()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/AccessibilitySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateAllPreferences()V

    return-void
.end method

.method private static configureMagnificationPreferenceIfNeeded(Landroidx/preference/Preference;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->isApplicable(Landroid/content/res/Resources;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    nop

    invoke-static {v1, v0}, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->populateMagnificationGesturesPreferenceExtras(Landroid/os/Bundle;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static getServiceSummary(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;Z)Ljava/lang/CharSequence;
    .locals 5

    if-eqz p2, :cond_0

    const v0, 0x7f12008b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x7f12008a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    nop

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadSummary(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f1211d4

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    return-object v3
.end method

.method private getVibrationSummary(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    const-string v1, ""

    return-object v1

    :cond_0
    const v1, 0x7f1200b0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    const v1, 0x7f1200b2

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    const v1, 0x7f1200b1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_3
    const v1, 0x7f1200b3

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_4
    if-nez p2, :cond_5

    const v1, 0x7f1215db

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_5
    const v1, 0x7f1215da

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private gotoRTTSettingsActivity()V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.settings.OPRTTSettingsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->finish()V

    :goto_0
    return-void
.end method

.method private handleLockScreenRotationPreferenceClick()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1}, Landroidx/preference/SwitchPreference;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    return-void
.end method

.method private handleLongPressTimeoutPreferenceChange(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "long_press_timeout"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroidx/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValueToTitleMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private handleToggleDisableAnimations()V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleDisableAnimationsPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0}, Landroidx/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    goto :goto_0

    :cond_0
    const-string v0, "1"

    :goto_0
    sget-object v1, Lcom/android/settings/accessibility/AccessibilitySettings;->TOGGLE_ANIMATION_TARGETS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private handleToggleLargePointerIconPreferenceClick()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLargePointerIconPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1}, Landroidx/preference/SwitchPreference;->isChecked()Z

    move-result v1

    const-string v2, "accessibility_large_pointer_icon"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private handleToggleMasterMonoPreferenceClick()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleMasterMonoPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1}, Landroidx/preference/SwitchPreference;->isChecked()Z

    move-result v1

    const/4 v2, -0x2

    const-string v3, "master_mono"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private handleTogglePowerButtonEndsCallPreferenceClick()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1}, Landroidx/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const-string v2, "incall_power_button_behavior"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private handleToggleTextContrastPreferenceClick()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleHighTextContrastPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1}, Landroidx/preference/SwitchPreference;->isChecked()Z

    move-result v1

    const-string v2, "high_text_contrast_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private initializeAllPreferences()V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/settings/accessibility/AccessibilitySettings;->CATEGORIES:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    sget-object v3, Lcom/android/settings/accessibility/AccessibilitySettings;->CATEGORIES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    const-string v0, "toggle_high_text_contrast_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleHighTextContrastPreference:Landroidx/preference/SwitchPreference;

    const-string v0, "toggle_inversion_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroidx/preference/SwitchPreference;

    new-instance v1, Lcom/android/settings/accessibility/ColorInversionPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/settings/accessibility/ColorInversionPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mInversionPreferenceController:Lcom/android/settings/accessibility/ColorInversionPreferenceController;

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mInversionPreferenceController:Lcom/android/settings/accessibility/ColorInversionPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ColorInversionPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "hearing_aid"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHearingAidCompatibilitPreferencey:Landroidx/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHearingAidCompatibilitPreferencey:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportHearingAid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHearingAidCompatibilitPreferencey:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setVisible(Z)V

    :cond_1
    const-string v0, "rtt_feature"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mRTTPreference:Landroidx/preference/Preference;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isProductRTTSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    sget-object v2, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isRttSupported(ILandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mRTTPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_3
    nop

    const-string v0, "toggle_power_button_ends_call_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroidx/preference/SwitchPreference;

    const/16 v0, 0x1a

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    const-string v2, "interaction_control_category"

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    :cond_5
    nop

    const-string v0, "toggle_lock_screen_rotation_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    :cond_6
    nop

    const-string v0, "toggle_large_pointer_icon"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLargePointerIconPreference:Landroidx/preference/SwitchPreference;

    nop

    const-string v0, "toggle_disable_animations"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleDisableAnimationsPreference:Landroidx/preference/SwitchPreference;

    nop

    const-string v0, "toggle_master_mono"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleMasterMonoPreference:Landroidx/preference/SwitchPreference;

    nop

    const-string v0, "select_long_press_timeout_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroidx/preference/ListPreference;

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroidx/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValueToTitleMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f030098

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutDefault:I

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030097

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_7

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValueToTitleMap:Ljava/util/Map;

    aget-object v5, v0, v3

    aget-object v6, v1, v3

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    const-string v0, "hearing_aid_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHearingAidPreference:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHearingAidPreferenceController:Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "captioning_preference_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCaptioningPreferenceScreen:Landroidx/preference/Preference;

    const-string v0, "live_caption"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLiveCaptionPreference:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLiveCaptionPreferenceController:Lcom/android/settings/accessibility/LiveCaptionPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/LiveCaptionPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "magnification_preference_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroidx/preference/Preference;

    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->configureMagnificationPreferenceIfNeeded(Landroidx/preference/Preference;)V

    const-string v0, "font_size_preference_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mFontSizePreferenceScreen:Landroidx/preference/Preference;

    const-string v0, "autoclick_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAutoclickPreferenceScreen:Landroidx/preference/Preference;

    const-string v0, "daltonizer_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayDaltonizerPreferenceScreen:Landroidx/preference/Preference;

    const-string v0, "accessibility_shortcut_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAccessibilityShortcutPreferenceScreen:Landroidx/preference/Preference;

    const-string v0, "vibration_preference_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mVibrationPreferenceScreen:Landroidx/preference/Preference;

    return-void
.end method

.method private initializePreBundledServicesMapFromArray(Ljava/lang/String;I)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mPreBundledServiceComponentToCategoryMap:Ljava/util/Map;

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static isColorTransformAccelerated(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11100b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method static isRampingRingerEnabled(Landroid/content/Context;)Z
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "apply_ramping_ringer"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string v0, "telephony"

    const-string v3, "ramping_ringer_enabled"

    invoke-static {v0, v3, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    nop

    :goto_0
    return v1
.end method

.method private updateAccessibilityShortcut(Landroidx/preference/Preference;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAccessibilityShortcutPreferenceScreen:Landroidx/preference/Preference;

    const v1, 0x7f12006b

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAccessibilityShortcutPreferenceScreen:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAccessibilityShortcutPreferenceScreen:Landroidx/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    nop

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->isShortcutEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getServiceName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_1
    const v1, 0x7f12005b

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    nop

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAccessibilityShortcutPreferenceScreen:Landroidx/preference/Preference;

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private updateAllPreferences()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateSystemPreferences()V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateServicePreferences()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateRTTPreference()V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHearingAidCompatibilitPreferencey:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "hearing_aid"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHearingAidCompatibilitPreferencey:Landroidx/preference/SwitchPreference;

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move v1, v3

    :cond_0
    invoke-virtual {v2, v1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method private updateAutoclickSummary(Landroidx/preference/Preference;)V
    .locals 4

    nop

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "accessibility_autoclick_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    move v0, v1

    if-nez v0, :cond_1

    const v1, 0x7f12005b

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(I)V

    return-void

    :cond_1
    nop

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/16 v2, 0x258

    const-string v3, "accessibility_autoclick_delay"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    nop

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getAutoclickPreferenceSummary(Landroid/content/res/Resources;I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateCategoryOrderFromArray(Ljava/lang/String;I)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_1

    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceCategory;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    aget-object v7, v0, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceCategory;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroidx/preference/Preference;->setOrder(I)V

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateDisableAnimationsToggle()V
    .locals 7

    const/4 v0, 0x1

    sget-object v1, Lcom/android/settings/accessibility/AccessibilitySettings;->TOGGLE_ANIMATION_TARGETS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    nop

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleDisableAnimationsPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method

.method private updateFeatureSummary(Ljava/lang/String;Landroidx/preference/Preference;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    move v0, v1

    if-eqz v0, :cond_1

    const v1, 0x7f12005c

    goto :goto_0

    :cond_1
    const v1, 0x7f12005b

    :goto_0
    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method

.method private updateFontSizeSummary(Landroidx/preference/Preference;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_scale"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f03007d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->fontSizeValueToIndex(F[Ljava/lang/String;)I

    move-result v4

    aget-object v5, v2, v4

    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateLockScreenRotationCheckbox()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroidx/preference/SwitchPreference;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private updateMagnificationSummary(Landroidx/preference/Preference;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "accessibility_display_magnification_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_display_magnification_navbar_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    move v1, v2

    :cond_1
    const/4 v2, 0x0

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    const v2, 0x7f12005b

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    const v2, 0x7f120076

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    const v2, 0x7f120072

    goto :goto_1

    :cond_4
    const v2, 0x7f120078

    :goto_1
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method

.method private updateMasterMono()V
    .locals 4

    nop

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "master_mono"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    move v0, v1

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleMasterMonoPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method

.method private updateRTTPreference()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "rtt_calling_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    move v0, v1

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mRTTPreference:Landroidx/preference/Preference;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    const v2, 0x7f1215db

    goto :goto_0

    :cond_1
    const v2, 0x7f1215da

    :goto_0
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    const v0, 0x7f1207d4

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/content/Context;)V

    new-instance v0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;

    const-string v1, "hearing_aid_preference"

    invoke-direct {v0, p1, v1}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHearingAidPreferenceController:Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHearingAidPreferenceController:Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->setFragmentManager(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHearingAidPreferenceController:Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    new-instance v0, Lcom/android/settings/accessibility/LiveCaptionPreferenceController;

    const-string v1, "live_caption"

    invoke-direct {v0, p1, v1}, Lcom/android/settings/accessibility/LiveCaptionPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLiveCaptionPreferenceController:Lcom/android/settings/accessibility/LiveCaptionPreferenceController;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f160007

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->initializeAllPreferences()V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroidx/preference/ListPreference;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleLongPressTimeoutPreferenceChange(Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHearingAidCompatibilitPreferencey:Landroidx/preference/SwitchPreference;

    if-ne v0, p1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "hearing_aid"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAudioManager:Landroid/media/AudioManager;

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "HACSetting=ON"

    goto :goto_0

    :cond_1
    const-string v2, "HACSetting=OFF"

    :goto_0
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleHighTextContrastPreference:Landroidx/preference/SwitchPreference;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleToggleTextContrastPreferenceClick()V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroidx/preference/SwitchPreference;

    if-ne v0, p1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleTogglePowerButtonEndsCallPreferenceClick()V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroidx/preference/SwitchPreference;

    if-ne v0, p1, :cond_2

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleLockScreenRotationPreferenceClick()V

    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLargePointerIconPreference:Landroidx/preference/SwitchPreference;

    if-ne v0, p1, :cond_3

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleToggleLargePointerIconPreferenceClick()V

    return v1

    :cond_3
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleDisableAnimationsPreference:Landroidx/preference/SwitchPreference;

    if-ne v0, p1, :cond_4

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleToggleDisableAnimations()V

    return v1

    :cond_4
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleMasterMonoPreference:Landroidx/preference/SwitchPreference;

    if-ne v0, p1, :cond_5

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleToggleMasterMonoPreferenceClick()V

    return v1

    :cond_5
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mRTTPreference:Landroidx/preference/Preference;

    if-ne v0, p1, :cond_6

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->gotoRTTSettingsActivity()V

    :cond_6
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateAllPreferences()V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    :cond_0
    return-void
.end method

.method updateAccessibilityTimeoutSummary(Landroid/content/ContentResolver;Landroidx/preference/Preference;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    const-string v2, "accessibility_interactive_ui_timeout_ms"

    invoke-static {p1, v2}, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->getSecureAccessibilityTimeoutValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->indexOf([II)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    aget-object v4, v0, v4

    invoke-virtual {p2, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected updateServicePreferences()V
    .locals 29

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicePreferenceToPreferenceCategoryMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/Preference;

    iget-object v4, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicePreferenceToPreferenceCategoryMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/preference/PreferenceCategory;

    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const v2, 0x7f030056

    const-string v3, "screen_reader_category"

    invoke-direct {v0, v3, v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->initializePreBundledServicesMapFromArray(Ljava/lang/String;I)V

    const v2, 0x7f030053

    const-string v4, "audio_and_captions_category"

    invoke-direct {v0, v4, v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->initializePreBundledServicesMapFromArray(Ljava/lang/String;I)V

    const v2, 0x7f030054

    const-string v5, "display_category"

    invoke-direct {v0, v5, v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->initializePreBundledServicesMapFromArray(Ljava/lang/String;I)V

    const v2, 0x7f030055

    const-string v6, "interaction_control_category"

    invoke-direct {v0, v6, v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->initializePreBundledServicesMapFromArray(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    nop

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v7

    nop

    const/4 v8, -0x1

    invoke-virtual {v2, v8}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v9

    nop

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v10

    iget-object v11, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/app/admin/DevicePolicyManager;->getPermittedAccessibilityServices(I)Ljava/util/List;

    move-result-object v11

    iget-object v12, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    const-string v13, "user_installed_services_category"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v13}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v13

    if-nez v13, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    :cond_1
    const/4 v13, 0x0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    :goto_1
    if-ge v13, v14, :cond_c

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v15}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v8

    move-object/from16 v16, v1

    new-instance v1, Lcom/android/settingslib/RestrictedPreference;

    move-object/from16 v17, v2

    invoke-virtual {v12}, Landroidx/preference/PreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v18

    if-nez v18, :cond_2

    move-object/from16 v18, v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v7

    move/from16 v19, v14

    const v14, 0x7f080197

    invoke-static {v7, v14}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_2

    :cond_2
    move-object/from16 v18, v7

    move/from16 v19, v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    :goto_2
    iget-object v14, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v20, v5

    iget-object v5, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v6

    new-instance v6, Landroid/content/ComponentName;

    move-object/from16 v22, v4

    iget-object v4, v14, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v5, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v6

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/settingslib/RestrictedPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/settingslib/RestrictedPreference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/android/settingslib/RestrictedPreference;->setIconSize(I)V

    invoke-static {v1, v7}, Lcom/android/settings/Utils;->setSafeIcon(Landroidx/preference/Preference;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v10, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    move-object/from16 v24, v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v15, v7}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_3

    move-object/from16 v25, v7

    const v7, 0x7f12007d

    invoke-virtual {v0, v7}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_3
    move-object/from16 v25, v7

    :goto_3
    if-eqz v6, :cond_4

    move-object/from16 v25, v7

    iget-object v7, v14, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v5, v7, v9}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->hasServiceCrashed(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_5

    const v7, 0x7f12008c

    invoke-virtual {v1, v7}, Lcom/android/settingslib/RestrictedPreference;->setSummary(I)V

    const v7, 0x7f120051

    invoke-virtual {v0, v7}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_4
    move-object/from16 v25, v7

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v15, v6}, Lcom/android/settings/accessibility/AccessibilitySettings;->getServiceSummary(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;Z)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v7, v25

    :goto_4
    move-object/from16 v25, v9

    if-eqz v11, :cond_7

    invoke-interface {v11, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_6

    goto :goto_5

    :cond_6
    const/16 v26, 0x0

    goto :goto_6

    :cond_7
    :goto_5
    const/16 v26, 0x1

    :goto_6
    if-nez v26, :cond_9

    if-nez v6, :cond_9

    nop

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    move-object/from16 v28, v10

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-static {v9, v5, v10}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfAccessibilityServiceDisallowed(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-virtual {v1, v9}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_7

    :cond_8
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :goto_7
    const/4 v9, 0x1

    goto :goto_8

    :cond_9
    move-object/from16 v28, v10

    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :goto_8
    const-class v10, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/android/settingslib/RestrictedPreference;->setFragment(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Lcom/android/settingslib/RestrictedPreference;->setPersistent(Z)V

    invoke-virtual {v1}, Lcom/android/settingslib/RestrictedPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/settingslib/RestrictedPreference;->getKey()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v23, v11

    const-string v11, "preference_key"

    invoke-virtual {v9, v11, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "checked"

    invoke-virtual {v9, v10, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v10, "title"

    invoke-virtual {v9, v10, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "resolve_info"

    invoke-virtual {v9, v10, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v10, "summary"

    invoke-virtual {v9, v10, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_a

    const v11, 0x7f120069

    invoke-virtual {v0, v11}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v27, v2

    const-string v2, "settings_title"

    invoke-virtual {v9, v2, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v5, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    const-string v11, "settings_component_name"

    invoke-virtual {v9, v11, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_a
    move-object/from16 v27, v2

    :goto_9
    const-string v2, "component_name"

    invoke-virtual {v9, v2, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object v2, v12

    iget-object v11, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mPreBundledServiceComponentToCategoryMap:Ljava/util/Map;

    invoke-interface {v11, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    iget-object v11, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mPreBundledServiceComponentToCategoryMap:Ljava/util/Map;

    invoke-interface {v11, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v2, v11

    check-cast v2, Landroidx/preference/PreferenceCategory;

    :cond_b
    const/4 v11, -0x1

    invoke-virtual {v1, v11}, Lcom/android/settingslib/RestrictedPreference;->setOrder(I)V

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v11, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicePreferenceToPreferenceCategoryMap:Ljava/util/Map;

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v7, v18

    move/from16 v14, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v4, v22

    move-object/from16 v11, v23

    move-object/from16 v9, v25

    move-object/from16 v10, v28

    const/4 v8, -0x1

    goto/16 :goto_1

    :cond_c
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v22, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v18, v7

    move-object/from16 v25, v9

    move-object/from16 v28, v10

    move-object/from16 v23, v11

    move/from16 v19, v14

    const v1, 0x7f030052

    invoke-direct {v0, v3, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateCategoryOrderFromArray(Ljava/lang/String;I)V

    const v1, 0x7f03004f

    move-object/from16 v2, v22

    invoke-direct {v0, v2, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateCategoryOrderFromArray(Ljava/lang/String;I)V

    const v1, 0x7f030051

    move-object/from16 v2, v21

    invoke-direct {v0, v2, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateCategoryOrderFromArray(Ljava/lang/String;I)V

    const v1, 0x7f030050

    move-object/from16 v2, v20

    invoke-direct {v0, v2, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateCategoryOrderFromArray(Ljava/lang/String;I)V

    invoke-virtual {v12}, Landroidx/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_d
    return-void
.end method

.method protected updateSystemPreferences()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/ColorDisplayManager;->isColorTransformAccelerated(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    const-string v2, "experimental_category"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    const-string v3, "display_category"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayDaltonizerPreferenceScreen:Landroidx/preference/Preference;

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayDaltonizerPreferenceScreen:Landroidx/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroidx/preference/Preference;

    invoke-virtual {v4}, Landroidx/preference/Preference;->getOrder()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setOrder(I)V

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroidx/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayDaltonizerPreferenceScreen:Landroidx/preference/Preference;

    invoke-virtual {v4}, Landroidx/preference/Preference;->getOrder()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Landroidx/preference/SwitchPreference;->setOrder(I)V

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLargePointerIconPreference:Landroidx/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v4}, Landroidx/preference/SwitchPreference;->getOrder()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Landroidx/preference/SwitchPreference;->setOrder(I)V

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleDisableAnimationsPreference:Landroidx/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLargePointerIconPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v4}, Landroidx/preference/SwitchPreference;->getOrder()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Landroidx/preference/SwitchPreference;->setOrder(I)V

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroidx/preference/SwitchPreference;

    const v4, 0x7f1215c8

    invoke-virtual {v3, v4}, Landroidx/preference/SwitchPreference;->setSummary(I)V

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayDaltonizerPreferenceScreen:Landroidx/preference/Preference;

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleHighTextContrastPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "high_text_contrast_enabled"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mInversionPreferenceController:Lcom/android/settings/accessibility/ColorInversionPreferenceController;

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/accessibility/ColorInversionPreferenceController;->updateState(Landroidx/preference/Preference;)V

    const/16 v0, 0x1a

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "incall_power_button_behavior"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v4, v2}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateLockScreenRotationCheckbox()V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLargePointerIconPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "accessibility_large_pointer_icon"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateDisableAnimationsToggle()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateMasterMono()V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutDefault:I

    const-string v2, "long_press_timeout"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroidx/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroidx/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValueToTitleMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mVibrationPreferenceScreen:Landroidx/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateVibrationSummary(Landroidx/preference/Preference;)V

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHearingAidPreferenceController:Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHearingAidPreference:Landroidx/preference/Preference;

    invoke-virtual {v2, v3}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLiveCaptionPreferenceController:Lcom/android/settings/accessibility/LiveCaptionPreferenceController;

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLiveCaptionPreference:Landroidx/preference/Preference;

    invoke-virtual {v2, v3}, Lcom/android/settings/accessibility/LiveCaptionPreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCaptioningPreferenceScreen:Landroidx/preference/Preference;

    const-string v3, "accessibility_captioning_enabled"

    invoke-direct {p0, v3, v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateFeatureSummary(Ljava/lang/String;Landroidx/preference/Preference;)V

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayDaltonizerPreferenceScreen:Landroidx/preference/Preference;

    const-string v3, "accessibility_display_daltonizer_enabled"

    invoke-direct {p0, v3, v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateFeatureSummary(Ljava/lang/String;Landroidx/preference/Preference;)V

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroidx/preference/Preference;

    invoke-direct {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateMagnificationSummary(Landroidx/preference/Preference;)V

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mFontSizePreferenceScreen:Landroidx/preference/Preference;

    invoke-direct {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateFontSizeSummary(Landroidx/preference/Preference;)V

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAutoclickPreferenceScreen:Landroidx/preference/Preference;

    invoke-direct {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateAutoclickSummary(Landroidx/preference/Preference;)V

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAccessibilityShortcutPreferenceScreen:Landroidx/preference/Preference;

    invoke-direct {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateAccessibilityShortcut(Landroidx/preference/Preference;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_control_timeout_preference_fragment"

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateAccessibilityTimeoutSummary(Landroid/content/ContentResolver;Landroidx/preference/Preference;)V

    return-void
.end method

.method updateVibrationSummary(Landroidx/preference/Preference;)V
    .locals 12
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/Vibrator;->getDefaultRingVibrationIntensity()I

    move-result v3

    const-string v4, "ring_vibration_intensity"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "vibrate_when_ringing"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->isRampingRingerEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x0

    :cond_0
    nop

    invoke-static {v0, v2}, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->getIntensityString(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/Vibrator;->getDefaultNotificationVibrationIntensity()I

    move-result v6

    const-string v7, "notification_vibration_intensity"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    nop

    invoke-static {v0, v5}, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->getIntensityString(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v1}, Landroid/os/Vibrator;->getDefaultHapticFeedbackIntensity()I

    move-result v8

    const-string v9, "haptic_feedback_intensity"

    invoke-static {v7, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "haptic_feedback_enabled"

    invoke-static {v8, v9, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_1

    const/4 v7, 0x0

    :cond_1
    nop

    invoke-static {v0, v7}, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->getIntensityString(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mVibrationPreferenceScreen:Landroidx/preference/Preference;

    if-nez v9, :cond_2

    const-string v9, "vibration_preference_screen"

    invoke-virtual {p0, v9}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mVibrationPreferenceScreen:Landroidx/preference/Preference;

    :cond_2
    if-ne v2, v7, :cond_3

    if-ne v2, v5, :cond_3

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mVibrationPreferenceScreen:Landroidx/preference/Preference;

    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v9, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mVibrationPreferenceScreen:Landroidx/preference/Preference;

    const v10, 0x7f1200af

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v3, v11, v4

    const/4 v4, 0x1

    aput-object v6, v11, v4

    const/4 v4, 0x2

    aput-object v8, v11, v4

    invoke-virtual {p0, v10, v11}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
