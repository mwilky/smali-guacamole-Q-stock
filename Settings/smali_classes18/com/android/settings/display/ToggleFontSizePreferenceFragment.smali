.class public Lcom/android/settings/display/ToggleFontSizePreferenceFragment;
.super Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;
.source "ToggleFontSizePreferenceFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mValues:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/display/ToggleFontSizePreferenceFragment$1;

    invoke-direct {v0}, Lcom/android/settings/display/ToggleFontSizePreferenceFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;-><init>()V

    return-void
.end method

.method public static fontSizeValueToIndex(F[Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/4 v1, 0x1

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    sub-float v3, v2, v0

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    add-float/2addr v3, v0

    cmpg-float v3, p0, v3

    if-gez v3, :cond_0

    add-int/lit8 v3, v1, -0x1

    return v3

    :cond_0
    move v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method


# virtual methods
.method protected commit()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->mValues:[F

    iget v2, p0, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->mCurrentIndex:I

    aget v1, v1, v2

    const-string v2, "font_scale"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    return-void
.end method

.method protected createConfig(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;
    .locals 2

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->mValues:[F

    aget v1, v1, p2

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    return-object v0
.end method

.method protected getActivityLayoutResId()I
    .locals 1

    const v0, 0x7f0d00b4

    return v0
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120809

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x154

    return v0
.end method

.method protected getPreviewSampleResIds()[I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f0d00b5

    aput v2, v0, v1

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const v2, 0x7f03007c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->mEntries:[Ljava/lang/String;

    const v2, 0x7f03007d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    nop

    const-string v3, "font_scale"

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    invoke-static {v3, v2}, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->fontSizeValueToIndex(F[Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->mInitialIndex:I

    array-length v4, v2

    new-array v4, v4, [F

    iput-object v4, p0, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->mValues:[F

    const/4 v4, 0x0

    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->mValues:[F

    aget-object v6, v2, v4

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f121647

    invoke-virtual {v4, v5}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    return-void
.end method
