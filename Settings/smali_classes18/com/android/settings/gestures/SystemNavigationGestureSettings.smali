.class public Lcom/android/settings/gestures/SystemNavigationGestureSettings;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "SystemNavigationGestureSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/gestures/SystemNavigationGestureSettings$NavModeCandidateInfo;
    }
.end annotation


# static fields
.field static BACK_GESTURE_INSET_DEFAULT_OVERLAY:I = 0x0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final BACK_GESTURE_INSET_OVERLAYS:[Ljava/lang/String;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_SYSTEM_NAV_2BUTTONS:Ljava/lang/String; = "system_nav_2buttons"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_SYSTEM_NAV_3BUTTONS:Ljava/lang/String; = "system_nav_3buttons"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_SYSTEM_NAV_GESTURAL:Ljava/lang/String; = "system_nav_gestural"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final NAV_BAR_MODE_GESTURAL_OVERLAY_EXTRA_WIDE_BACK:Ljava/lang/String; = "com.android.internal.systemui.navbar.gestural_extra_wide_back"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final NAV_BAR_MODE_GESTURAL_OVERLAY_NARROW_BACK:Ljava/lang/String; = "com.android.internal.systemui.navbar.gestural_narrow_back"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final NAV_BAR_MODE_GESTURAL_OVERLAY_WIDE_BACK:Ljava/lang/String; = "com.android.internal.systemui.navbar.gestural_wide_back"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final PREFS_BACK_SENSITIVITY_KEY:Ljava/lang/String; = "system_navigation_back_sensitivity"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final PREF_KEY_SUGGESTION_COMPLETE:Ljava/lang/String; = "pref_system_navigation_suggestion_complete"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "system_navigation_settings_preferences"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SystemNavigationGesture"


# instance fields
.field private mOverlayManager:Landroid/content/om/IOverlayManager;

.field private mVideoPreference:Lcom/android/settings/widget/VideoPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "com.android.internal.systemui.navbar.gestural_narrow_back"

    const-string v1, "com.android.internal.systemui.navbar.gestural"

    const-string v2, "com.android.internal.systemui.navbar.gestural_wide_back"

    const-string v3, "com.android.internal.systemui.navbar.gestural_extra_wide_back"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->BACK_GESTURE_INSET_OVERLAYS:[Ljava/lang/String;

    const/4 v0, 0x1

    sput v0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->BACK_GESTURE_INSET_DEFAULT_OVERLAY:I

    new-instance v0, Lcom/android/settings/gestures/SystemNavigationGestureSettings$1;

    invoke-direct {v0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    return-void
.end method

.method static getBackSensitivity(Landroid/content/Context;Landroid/content/om/IOverlayManager;)I
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->BACK_GESTURE_INSET_OVERLAYS:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    const/4 v2, 0x0

    :try_start_0
    aget-object v1, v1, v0

    const/4 v3, -0x2

    invoke-interface {p1, v1, v3}, Landroid/content/om/IOverlayManager;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_1
    nop

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const-string v1, "system_navigation_settings_preferences"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sget v1, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->BACK_GESTURE_INSET_DEFAULT_OVERLAY:I

    const-string v2, "system_navigation_back_sensitivity"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static getCurrentSystemNavigationMode(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {p0}, Lcom/android/settings/gestures/SystemNavigationPreferenceController;->isEdgeToEdgeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "system_nav_gestural"

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/android/settings/gestures/SystemNavigationPreferenceController;->isSwipeUpEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "system_nav_2buttons"

    return-object v0

    :cond_1
    const-string v0, "system_nav_3buttons"

    return-object v0
.end method

.method private isAnyServiceSupportAccessibilityButton()Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityServiceInfo;

    iget v4, v3, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private isNavBarMagnificationEnabled()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "accessibility_display_magnification_navbar_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method static setBackSensitivity(Landroid/content/Context;Landroid/content/om/IOverlayManager;I)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-ltz p2, :cond_1

    sget-object v0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->BACK_GESTURE_INSET_OVERLAYS:[Ljava/lang/String;

    array-length v0, v0

    if-ge p2, v0, :cond_1

    const/4 v0, 0x0

    const-string v1, "system_navigation_settings_preferences"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "system_navigation_back_sensitivity"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getCurrentSystemNavigationMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "system_nav_gestural"

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->BACK_GESTURE_INSET_OVERLAYS:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-static {p1, v0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->setNavBarInteractionMode(Landroid/content/om/IOverlayManager;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sensitivity out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static setCurrentSystemNavigationMode(Landroid/content/Context;Landroid/content/om/IOverlayManager;Ljava/lang/String;)V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x6ee22145

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_3

    const v1, -0x51fa588d

    if-eq v0, v1, :cond_2

    const v1, -0x700f466

    if-eq v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v0, "system_nav_3buttons"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :cond_2
    const-string v0, "system_nav_gestural"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const-string v0, "system_nav_2buttons"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_4

    goto :goto_2

    :cond_4
    const-string v0, "com.android.internal.systemui.navbar.threebutton"

    invoke-static {p1, v0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->setNavBarInteractionMode(Landroid/content/om/IOverlayManager;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string v0, "com.android.internal.systemui.navbar.twobutton"

    invoke-static {p1, v0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->setNavBarInteractionMode(Landroid/content/om/IOverlayManager;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    invoke-static {p0, p1}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getBackSensitivity(Landroid/content/Context;Landroid/content/om/IOverlayManager;)I

    move-result v0

    sget-object v1, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->BACK_GESTURE_INSET_OVERLAYS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {p1, v1}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->setNavBarInteractionMode(Landroid/content/om/IOverlayManager;Ljava/lang/String;)V

    nop

    :goto_2
    return-void
.end method

.method private static setIllustrationVideo(Lcom/android/settings/widget/VideoPreference;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/settings/widget/VideoPreference;->setVideo(II)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x6ee22145

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_3

    const v2, -0x51fa588d

    if-eq v1, v2, :cond_2

    const v0, -0x700f466

    if-eq v1, v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v0, "system_nav_3buttons"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :cond_2
    const-string v1, "system_nav_gestural"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_3
    const-string v0, "system_nav_2buttons"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_4

    goto :goto_2

    :cond_4
    const v0, 0x7f110087

    const v1, 0x7f080693

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/widget/VideoPreference;->setVideo(II)V

    goto :goto_2

    :cond_5
    const v0, 0x7f110086

    const v1, 0x7f080692

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/widget/VideoPreference;->setVideo(II)V

    goto :goto_2

    :cond_6
    const v0, 0x7f110088

    const v1, 0x7f080694

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/widget/VideoPreference;->setVideo(II)V

    nop

    :goto_2
    return-void
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


# virtual methods
.method public bindPreferenceExtra(Lcom/android/settings/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    instance-of v0, p3, Lcom/android/settings/gestures/SystemNavigationGestureSettings$NavModeCandidateInfo;

    if-eqz v0, :cond_3

    instance-of v0, p1, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, p3

    check-cast v0, Lcom/android/settings/gestures/SystemNavigationGestureSettings$NavModeCandidateInfo;

    invoke-virtual {v0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings$NavModeCandidateInfo;->loadSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/RadioButtonPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object v0, p1

    check-cast v0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;

    invoke-virtual {p3}, Lcom/android/settingslib/widget/CandidateInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "system_nav_gestural"

    if-ne v1, v3, :cond_2

    nop

    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/gestures/SystemNavigationPreferenceController;->isGestureNavSupportedByDefaultLauncher(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->setExtraWidgetVisibility(I)V

    new-instance v1, Lcom/android/settings/gestures/-$$Lambda$SystemNavigationGestureSettings$JLPyJ0q716VHKo4MJYnw7DzMMKM;

    invoke-direct {v1, p0}, Lcom/android/settings/gestures/-$$Lambda$SystemNavigationGestureSettings$JLPyJ0q716VHKo4MJYnw7DzMMKM;-><init>(Lcom/android/settings/gestures/SystemNavigationGestureSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->setExtraWidgetOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->setEnabled(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->setExtraWidgetVisibility(I)V

    new-instance v1, Lcom/android/settings/gestures/-$$Lambda$SystemNavigationGestureSettings$dn_DgbW7PdfIwF8f94RI8zkOr-E;

    invoke-direct {v1, p0}, Lcom/android/settings/gestures/-$$Lambda$SystemNavigationGestureSettings$dn_DgbW7PdfIwF8f94RI8zkOr-E;-><init>(Lcom/android/settings/gestures/SystemNavigationGestureSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->setExtraWidgetOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->setExtraWidgetVisibility(I)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method protected getCandidates()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/widget/CandidateInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "com.android.internal.systemui.navbar.gestural"

    invoke-static {v0, v2}, Lcom/android/settings/gestures/SystemNavigationPreferenceController;->isOverlayPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/settings/gestures/SystemNavigationGestureSettings$NavModeCandidateInfo;

    const v4, 0x7f12064e

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const v5, 0x7f12064d

    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const-string v6, "system_nav_gestural"

    invoke-direct {v2, v4, v5, v6, v3}, Lcom/android/settings/gestures/SystemNavigationGestureSettings$NavModeCandidateInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v2, "com.android.internal.systemui.navbar.twobutton"

    invoke-static {v0, v2}, Lcom/android/settings/gestures/SystemNavigationPreferenceController;->isOverlayPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/android/settings/gestures/SystemNavigationGestureSettings$NavModeCandidateInfo;

    const v4, 0x7f12150d

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const v5, 0x7f12150c

    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const-string v6, "system_nav_2buttons"

    invoke-direct {v2, v4, v5, v6, v3}, Lcom/android/settings/gestures/SystemNavigationGestureSettings$NavModeCandidateInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v2, "com.android.internal.systemui.navbar.threebutton"

    invoke-static {v0, v2}, Lcom/android/settings/gestures/SystemNavigationPreferenceController;->isOverlayPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/android/settings/gestures/SystemNavigationGestureSettings$NavModeCandidateInfo;

    const v4, 0x7f120900

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const v5, 0x7f1208ff

    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const-string v6, "system_nav_3buttons"

    invoke-direct {v2, v4, v5, v6, v3}, Lcom/android/settings/gestures/SystemNavigationGestureSettings$NavModeCandidateInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v1
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getCurrentSystemNavigationMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x55e

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1600f2

    return v0
.end method

.method public synthetic lambda$bindPreferenceExtra$0$SystemNavigationGestureSettings(Landroid/view/View;)V
    .locals 2

    nop

    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mOverlayManager:Landroid/content/om/IOverlayManager;

    invoke-static {v0, v1}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getBackSensitivity(Landroid/content/Context;Landroid/content/om/IOverlayManager;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/settings/gestures/GestureNavigationBackSensitivityDialog;->show(Lcom/android/settings/gestures/SystemNavigationGestureSettings;I)V

    return-void
.end method

.method public synthetic lambda$bindPreferenceExtra$1$SystemNavigationGestureSettings(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/android/settings/gestures/GestureNavigationNotAvailableDialog;->show(Lcom/android/settings/gestures/SystemNavigationGestureSettings;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onAttach(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "pref_system_navigation_suggestion_complete"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    nop

    const-string v2, "overlay"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mOverlayManager:Landroid/content/om/IOverlayManager;

    new-instance v2, Lcom/android/settings/widget/VideoPreference;

    invoke-direct {v2, p1}, Lcom/android/settings/widget/VideoPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    iget-object v2, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getDefaultKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->setIllustrationVideo(Lcom/android/settings/widget/VideoPreference;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0705b2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/VideoPreference;->setHeight(F)V

    return-void
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "system_nav_gestural"

    if-ne p1, v1, :cond_0

    invoke-static {v0}, Lcom/android/settings/gestures/SystemNavigationPreferenceController;->isGestureNavSupportedByDefaultLauncher(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mOverlayManager:Landroid/content/om/IOverlayManager;

    invoke-static {v0, v2, p1}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->setCurrentSystemNavigationMode(Landroid/content/Context;Landroid/content/om/IOverlayManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    invoke-static {v2, p1}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->setIllustrationVideo(Lcom/android/settings/widget/VideoPreference;Ljava/lang/String;)V

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->isAnyServiceSupportAccessibilityButton()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->isNavBarMagnificationEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/android/settings/SettingsTutorialDialogWrapperActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->startActivity(Landroid/content/Intent;)V

    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public updateCandidates()V
    .locals 13

    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getDefaultKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getSystemDefaultKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/preference/PreferenceScreen;->removeAll()V

    iget-object v0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    invoke-virtual {v8, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getCandidates()Ljava/util/List;

    move-result-object v9

    if-nez v9, :cond_0

    return-void

    :cond_0
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/settingslib/widget/CandidateInfo;

    new-instance v0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;

    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;-><init>(Landroid/content/Context;)V

    move-object v12, v0

    invoke-virtual {v11}, Lcom/android/settingslib/widget/CandidateInfo;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v12, v0, v11, v6}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->bindPreference(Lcom/android/settings/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;)Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v11}, Lcom/android/settingslib/widget/CandidateInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, v12

    move-object v3, v11

    move-object v4, v6

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->bindPreferenceExtra(Lcom/android/settings/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v12}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mayCheckOnlyRadioButton()V

    return-void
.end method
