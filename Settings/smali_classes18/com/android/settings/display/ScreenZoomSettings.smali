.class public Lcom/android/settings/display/ScreenZoomSettings;
.super Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;
.source "ScreenZoomSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mDefaultDensity:I

.field private mValues:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/display/ScreenZoomSettings$1;

    invoke-direct {v0}, Lcom/android/settings/display/ScreenZoomSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/display/ScreenZoomSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected commit()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/display/ScreenZoomSettings;->mValues:[I

    iget v1, p0, Lcom/android/settings/display/ScreenZoomSettings;->mCurrentIndex:I

    aget v0, v0, v1

    iget v1, p0, Lcom/android/settings/display/ScreenZoomSettings;->mDefaultDensity:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-static {v2}, Lcom/android/settingslib/display/DisplayDensityUtils;->clearForcedDisplayDensity(I)V

    goto :goto_0

    :cond_0
    invoke-static {v2, v0}, Lcom/android/settingslib/display/DisplayDensityUtils;->setForcedDisplayDensity(II)V

    :goto_0
    return-void
.end method

.method protected createConfig(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;
    .locals 2

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Lcom/android/settings/display/ScreenZoomSettings;->mValues:[I

    aget v1, v1, p2

    iput v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    return-object v0
.end method

.method protected getActivityLayoutResId()I
    .locals 1

    const v0, 0x7f0d02ab

    return v0
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120803

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x153

    return v0
.end method

.method protected getPreviewSampleResIds()[I
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/display/ScreenZoomSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f0d02ac

    aput v2, v0, v1

    :goto_0
    return-object v0

    :array_0
    .array-data 4
        0x7f0d02ac
        0x7f0d02af
    .end array-data
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/settingslib/display/DisplayDensityUtils;

    invoke-virtual {p0}, Lcom/android/settings/display/ScreenZoomSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/display/DisplayDensityUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/settingslib/display/DisplayDensityUtils;->getCurrentIndex()I

    move-result v1

    if-gez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/display/ScreenZoomSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/4 v3, 0x1

    new-array v4, v3, [I

    const/4 v5, 0x0

    aput v2, v4, v5

    iput-object v4, p0, Lcom/android/settings/display/ScreenZoomSettings;->mValues:[I

    new-array v3, v3, [Ljava/lang/String;

    sget v4, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_DEFAULT:I

    invoke-virtual {p0, v4}, Lcom/android/settings/display/ScreenZoomSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    iput-object v3, p0, Lcom/android/settings/display/ScreenZoomSettings;->mEntries:[Ljava/lang/String;

    iput v5, p0, Lcom/android/settings/display/ScreenZoomSettings;->mInitialIndex:I

    iput v2, p0, Lcom/android/settings/display/ScreenZoomSettings;->mDefaultDensity:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;

    invoke-virtual {p0}, Lcom/android/settings/display/ScreenZoomSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->getValues()[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/display/ScreenZoomSettings;->mValues:[I

    invoke-virtual {v2}, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->getEntries()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/display/ScreenZoomSettings;->mEntries:[Ljava/lang/String;

    invoke-virtual {v2}, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->getCurrentIndex()I

    move-result v3

    iput v3, p0, Lcom/android/settings/display/ScreenZoomSettings;->mInitialIndex:I

    invoke-virtual {v2}, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->getDefaultDensity()I

    move-result v3

    iput v3, p0, Lcom/android/settings/display/ScreenZoomSettings;->mDefaultDensity:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenZoomSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f121365

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    return-void
.end method
