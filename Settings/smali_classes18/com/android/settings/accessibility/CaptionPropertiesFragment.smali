.class public Lcom/android/settings/accessibility/CaptionPropertiesFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "CaptionPropertiesFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;


# static fields
.field private static final LINE_HEIGHT_RATIO:F = 0.0533f

.field private static final PREF_BACKGROUND_COLOR:Ljava/lang/String; = "captioning_background_color"

.field private static final PREF_BACKGROUND_OPACITY:Ljava/lang/String; = "captioning_background_opacity"

.field private static final PREF_CAPTION_PREVIEW:Ljava/lang/String; = "caption_preview"

.field private static final PREF_CUSTOM:Ljava/lang/String; = "custom"

.field private static final PREF_EDGE_COLOR:Ljava/lang/String; = "captioning_edge_color"

.field private static final PREF_EDGE_TYPE:Ljava/lang/String; = "captioning_edge_type"

.field private static final PREF_FONT_SIZE:Ljava/lang/String; = "captioning_font_size"

.field private static final PREF_FOREGROUND_COLOR:Ljava/lang/String; = "captioning_foreground_color"

.field private static final PREF_FOREGROUND_OPACITY:Ljava/lang/String; = "captioning_foreground_opacity"

.field private static final PREF_LOCALE:Ljava/lang/String; = "captioning_locale"

.field private static final PREF_PRESET:Ljava/lang/String; = "captioning_preset"

.field private static final PREF_TYPEFACE:Ljava/lang/String; = "captioning_typeface"

.field private static final PREF_WINDOW_COLOR:Ljava/lang/String; = "captioning_window_color"

.field private static final PREF_WINDOW_OPACITY:Ljava/lang/String; = "captioning_window_opacity"


# instance fields
.field private mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

.field private mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

.field private mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

.field private mCustom:Landroidx/preference/PreferenceCategory;

.field private mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

.field private mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

.field private mFontSize:Landroidx/preference/ListPreference;

.field private mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

.field private mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

.field private mLocale:Lcom/android/settings/accessibility/LocalePreference;

.field private mPreset:Lcom/android/settings/accessibility/PresetPreference;

.field private mPreviewText:Lcom/android/internal/widget/SubtitleView;

.field private mPreviewViewport:Landroid/view/View;

.field private mPreviewWindow:Landroid/view/View;

.field private mShowingCustom:Z

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

.field private mTypeface:Landroidx/preference/ListPreference;

.field private mWindowColor:Lcom/android/settings/accessibility/ColorPreference;

.field private mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/internal/widget/SubtitleView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    return-object v0
.end method

.method public static applyCaptionProperties(Landroid/view/accessibility/CaptioningManager;Lcom/android/internal/widget/SubtitleView;Landroid/view/View;I)V
    .locals 5

    invoke-virtual {p1, p3}, Lcom/android/internal/widget/SubtitleView;->setStyle(I)V

    invoke-virtual {p1}, Lcom/android/internal/widget/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x9

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x41800000    # 16.0f

    div-float/2addr v3, v4

    const v4, 0x3d5a511a    # 0.0533f

    mul-float/2addr v4, v3

    mul-float/2addr v4, v2

    invoke-virtual {p1, v4}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700b4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    mul-float v4, v3, v2

    invoke-virtual {p1, v4}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    const v4, 0x7f1203fc

    if-eqz v3, :cond_1

    invoke-static {v0, v3, v4}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getTextForLocale(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v4}, Lcom/android/internal/widget/SubtitleView;->setText(I)V

    :goto_1
    return-void
.end method

.method private initializeAllPreferences()V
    .locals 14

    const-string v0, "caption_preview"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v1

    const v2, 0x7f0a0552

    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/SubtitleView;

    iput-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    :goto_0
    invoke-virtual {v2, v4}, Lcom/android/internal/widget/SubtitleView;->setVisibility(I)V

    const v2, 0x7f0a055b

    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreviewWindow:Landroid/view/View;

    const v2, 0x7f0a055a

    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreviewViewport:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreviewViewport:Landroid/view/View;

    new-instance v4, Lcom/android/settings/accessibility/-$$Lambda$CaptionPropertiesFragment$JndSKlEiFpsaz6tSo7GdGZbTbs8;

    invoke-direct {v4, p0}, Lcom/android/settings/accessibility/-$$Lambda$CaptionPropertiesFragment$JndSKlEiFpsaz6tSo7GdGZbTbs8;-><init>(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const-string v2, "captioning_locale"

    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accessibility/LocalePreference;

    iput-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/settings/accessibility/LocalePreference;

    const-string v2, "captioning_font_size"

    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroidx/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f030042

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    const v5, 0x7f030041

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    const-string v6, "captioning_preset"

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings/accessibility/PresetPreference;

    iput-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v6, v4}, Lcom/android/settings/accessibility/PresetPreference;->setValues([I)V

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v6, v5}, Lcom/android/settings/accessibility/PresetPreference;->setTitles([Ljava/lang/CharSequence;)V

    const-string v6, "custom"

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    check-cast v6, Landroidx/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroidx/preference/PreferenceCategory;

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    const v7, 0x7f03003a

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    const v8, 0x7f030039

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroidx/preference/PreferenceCategory;

    const-string v10, "captioning_foreground_color"

    invoke-virtual {v9, v10}, Landroidx/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v9, v8}, Lcom/android/settings/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v9, v7}, Lcom/android/settings/accessibility/ColorPreference;->setValues([I)V

    const v9, 0x7f030040

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v9

    const v10, 0x7f03003f

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroidx/preference/PreferenceCategory;

    const-string v12, "captioning_foreground_opacity"

    invoke-virtual {v11, v12}, Landroidx/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v11

    check-cast v11, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v11, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v11, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v11, v10}, Lcom/android/settings/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    iget-object v11, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v11, v9}, Lcom/android/settings/accessibility/ColorPreference;->setValues([I)V

    iget-object v11, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroidx/preference/PreferenceCategory;

    const-string v12, "captioning_edge_color"

    invoke-virtual {v11, v12}, Landroidx/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v11

    check-cast v11, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v11, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v11, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v11, v8}, Lcom/android/settings/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    iget-object v11, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v11, v7}, Lcom/android/settings/accessibility/ColorPreference;->setValues([I)V

    array-length v11, v7

    add-int/2addr v11, v6

    new-array v11, v11, [I

    array-length v12, v8

    add-int/2addr v12, v6

    new-array v12, v12, [Ljava/lang/String;

    array-length v13, v7

    invoke-static {v7, v3, v11, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v13, v8

    invoke-static {v8, v3, v12, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput v3, v11, v3

    const v6, 0x7f120454

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v12, v3

    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroidx/preference/PreferenceCategory;

    const-string v6, "captioning_background_color"

    invoke-virtual {v3, v6}, Landroidx/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v3, v12}, Lcom/android/settings/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v3, v11}, Lcom/android/settings/accessibility/ColorPreference;->setValues([I)V

    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroidx/preference/PreferenceCategory;

    const-string v6, "captioning_background_opacity"

    invoke-virtual {v3, v6}, Landroidx/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v3, v10}, Lcom/android/settings/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v3, v9}, Lcom/android/settings/accessibility/ColorPreference;->setValues([I)V

    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroidx/preference/PreferenceCategory;

    const-string v6, "captioning_window_color"

    invoke-virtual {v3, v6}, Landroidx/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v3, v12}, Lcom/android/settings/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v3, v11}, Lcom/android/settings/accessibility/ColorPreference;->setValues([I)V

    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroidx/preference/PreferenceCategory;

    const-string v6, "captioning_window_opacity"

    invoke-virtual {v3, v6}, Landroidx/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v3, v10}, Lcom/android/settings/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v3, v9}, Lcom/android/settings/accessibility/ColorPreference;->setValues([I)V

    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroidx/preference/PreferenceCategory;

    const-string v6, "captioning_edge_type"

    invoke-virtual {v3, v6}, Landroidx/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accessibility/EdgeTypePreference;

    iput-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroidx/preference/PreferenceCategory;

    const-string v6, "captioning_typeface"

    invoke-virtual {v3, v6}, Landroidx/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/ListPreference;

    iput-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mTypeface:Landroidx/preference/ListPreference;

    return-void
.end method

.method private installSwitchBarToggleSwitch()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->onInstallSwitchBarToggleSwitch()V

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    return-void
.end method

.method private installUpdateListeners()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/PresetPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/EdgeTypePreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mTypeface:Landroidx/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroidx/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/settings/accessibility/LocalePreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/LocalePreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private mergeColorOpacity(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;)I
    .locals 4

    invoke-virtual {p1}, Lcom/android/settings/accessibility/ColorPreference;->getValue()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/settings/accessibility/ColorPreference;->getValue()I

    move-result v1

    invoke-static {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    move-result v2

    if-nez v2, :cond_0

    const v2, 0xffff00

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    goto :goto_0

    :cond_1
    const v2, 0xffffff

    and-int/2addr v2, v0

    const/high16 v3, -0x1000000

    and-int/2addr v3, v1

    or-int/2addr v2, v3

    :goto_0
    return v2
.end method

.method private parseColorOpacity(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;I)V
    .locals 4

    invoke-static {p3}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0xffffff

    and-int/lit16 v1, p3, 0xff

    shl-int/lit8 v1, v1, 0x18

    goto :goto_0

    :cond_0
    ushr-int/lit8 v0, p3, 0x18

    if-nez v0, :cond_1

    const/4 v0, 0x0

    and-int/lit16 v1, p3, 0xff

    shl-int/lit8 v1, v1, 0x18

    goto :goto_0

    :cond_1
    const/high16 v0, -0x1000000

    or-int v1, p3, v0

    and-int/2addr v0, p3

    move v3, v1

    move v1, v0

    move v0, v3

    :goto_0
    const v2, 0xffffff

    or-int/2addr v2, v1

    invoke-virtual {p2, v2}, Lcom/android/settings/accessibility/ColorPreference;->setValue(I)V

    invoke-virtual {p1, v0}, Lcom/android/settings/accessibility/ColorPreference;->setValue(I)V

    return-void
.end method

.method private refreshPreviewText()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager;->getRawUserStyle()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v4, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreviewViewport:Landroid/view/View;

    invoke-static {v3, v1, v4, v2}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->applyCaptionProperties(Landroid/view/accessibility/CaptioningManager;Lcom/android/internal/widget/SubtitleView;Landroid/view/View;I)V

    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    const v4, 0x7f1203fd

    if-eqz v3, :cond_1

    invoke-static {v0, v3, v4}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getTextForLocale(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v4}, Lcom/android/internal/widget/SubtitleView;->setText(I)V

    :goto_0
    iget-object v4, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v4}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreviewWindow:Landroid/view/View;

    iget v6, v4, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :cond_2
    sget-object v5, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreviewWindow:Landroid/view/View;

    iget v7, v5, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private refreshShowingCustom()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/PresetPreference;->getValue()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    iget-boolean v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    iput-boolean v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    iput-boolean v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    :cond_2
    :goto_1
    return-void
.end method

.method private removeSwitchBarToggleSwitch()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    return-void
.end method

.method private updateAllPreferences()V
    .locals 11

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getRawUserStyle()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/accessibility/PresetPreference;->setValue(I)V

    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v1

    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroidx/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getCustomStyle(Landroid/content/ContentResolver;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

    iget v5, v3, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    invoke-virtual {v4, v5}, Lcom/android/settings/accessibility/EdgeTypePreference;->setValue(I)V

    iget-object v4, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    iget v5, v3, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    invoke-virtual {v4, v5}, Lcom/android/settings/accessibility/ColorPreference;->setValue(I)V

    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    move-result v4

    const v5, 0xffffff

    if-eqz v4, :cond_0

    iget v4, v3, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-direct {p0, v6, v7, v4}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->parseColorOpacity(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;I)V

    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, v3, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_1
    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-direct {p0, v7, v8, v6}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->parseColorOpacity(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;I)V

    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result v7

    if-eqz v7, :cond_2

    iget v5, v3, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    goto :goto_2

    :cond_2
    nop

    :goto_2
    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-direct {p0, v7, v8, v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->parseColorOpacity(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;I)V

    iget-object v7, v3, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mTypeface:Landroidx/preference/ListPreference;

    const-string v9, ""

    if-nez v7, :cond_3

    move-object v10, v9

    goto :goto_3

    :cond_3
    move-object v10, v7

    :goto_3
    invoke-virtual {v8, v10}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v8}, Landroid/view/accessibility/CaptioningManager;->getRawLocale()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/settings/accessibility/LocalePreference;

    if-nez v8, :cond_4

    goto :goto_4

    :cond_4
    move-object v9, v8

    :goto_4
    invoke-virtual {v10, v9}, Lcom/android/settings/accessibility/LocalePreference;->setValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public synthetic lambda$initializeAllPreferences$0$CaptionPropertiesFragment(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const v3, 0x7f12004a

    invoke-virtual {v2, v3, v3}, Lcom/android/settings/widget/SwitchBar;->setSwitchBarText(II)V

    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v0}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceScreen;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->installSwitchBarToggleSwitch()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "captioning"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    const v0, 0x7f16002f

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->initializeAllPreferences()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->updateAllPreferences()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->refreshShowingCustom()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->installUpdateListeners()V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->removeSwitchBarToggleSwitch()V

    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v1, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;-><init>(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mTypeface:Landroidx/preference/ListPreference;

    if-ne v1, p1, :cond_0

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    const-string v2, "accessibility_captioning_typeface"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroidx/preference/ListPreference;

    if-ne v1, p1, :cond_1

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const-string v2, "accessibility_captioning_font_scale"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/settings/accessibility/LocalePreference;

    if-ne v1, p1, :cond_2

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    const-string v2, "accessibility_captioning_locale"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V

    const/4 v1, 0x1

    return v1
.end method

.method public onValueChanged(Lcom/android/settings/accessibility/ListDialogPreference;I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    if-eq v1, p1, :cond_7

    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    if-ne v1, p1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    if-eq v1, p1, :cond_6

    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    if-ne v1, p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings/accessibility/ColorPreference;

    if-eq v1, p1, :cond_5

    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    if-ne v1, p1, :cond_3

    const-string v1, "accessibility_captioning_edge_color"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    if-ne v1, p1, :cond_4

    const-string v1, "accessibility_captioning_preset"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->refreshShowingCustom()V

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

    if-ne v1, p1, :cond_8

    const-string v1, "accessibility_captioning_edge_type"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mergeColorOpacity(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;)I

    move-result v1

    const-string v2, "accessibility_captioning_window_color"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mergeColorOpacity(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;)I

    move-result v1

    const-string v2, "accessibility_captioning_background_color"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mergeColorOpacity(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;)I

    move-result v1

    const-string v2, "accessibility_captioning_foreground_color"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    nop

    :cond_8
    :goto_3
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V

    return-void
.end method
