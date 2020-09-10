.class public abstract Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PreviewSeekBarPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;
    }
.end annotation


# instance fields
.field protected mCurrentIndex:I

.field protected mEntries:[Ljava/lang/String;

.field protected mInitialIndex:I

.field private mLabel:Landroid/widget/TextView;

.field private mLarger:Landroid/view/View;

.field private mPageIndicator:Lcom/android/settings/widget/DotsPageIndicator;

.field private mPageIndicatorPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private mPreviewPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private mPreviewPager:Landroidx/viewpager/widget/ViewPager;

.field private mPreviewPagerAdapter:Lcom/android/settings/display/PreviewPagerAdapter;

.field private mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

.field private mSmaller:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$1;-><init>(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    new-instance v0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$2;-><init>(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPageIndicatorPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->setPreviewLayer(IZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;)Lcom/android/settings/display/PreviewPagerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPagerAdapter:Lcom/android/settings/display/PreviewPagerAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;)Landroidx/viewpager/widget/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->setPagerIndicatorContentDescription(I)V

    return-void
.end method

.method private setPagerIndicatorContentDescription(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPageIndicator:Lcom/android/settings/widget/DotsPageIndicator;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->getPreviewSampleResIds()[I

    move-result-object v2

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const v2, 0x7f12120c

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/DotsPageIndicator;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setPreviewLayer(IZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mSmaller:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mLarger:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    array-length v3, v3

    sub-int/2addr v3, v2

    if-ge p1, v3, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->setPagerIndicatorContentDescription(I)V

    iget-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPagerAdapter:Lcom/android/settings/display/PreviewPagerAdapter;

    iget v1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mCurrentIndex:I

    iget-object v2, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/settings/display/PreviewPagerAdapter;->setPreviewLayer(IIIZ)V

    iput p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mCurrentIndex:I

    return-void
.end method


# virtual methods
.method protected abstract commit()V
.end method

.method protected abstract createConfig(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;
.end method

.method protected abstract getActivityLayoutResId()I
.end method

.method protected abstract getPreviewSampleResIds()[I
.end method

.method public synthetic lambda$onCreateView$0$PreviewSeekBarPreferenceFragment(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/LabeledSeekBar;->getProgress()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/widget/LabeledSeekBar;->setProgress(IZ)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onCreateView$1$PreviewSeekBarPreferenceFragment(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/LabeledSeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/LabeledSeekBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/widget/LabeledSeekBar;->setProgress(IZ)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 15

    move-object v0, p0

    invoke-super/range {p0 .. p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    const v2, 0x102003f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->getActivityLayoutResId()I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v5, p1

    invoke-virtual {v5, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v6, 0x7f0a01a1

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mLabel:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    array-length v6, v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    const v8, 0x7f0a05f9

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/settings/widget/LabeledSeekBar;

    iput-object v8, v0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    iget-object v8, v0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    iget-object v9, v0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/settings/widget/LabeledSeekBar;->setLabels([Ljava/lang/String;)V

    iget-object v8, v0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v8, v6}, Lcom/android/settings/widget/LabeledSeekBar;->setMax(I)V

    const v8, 0x7f0a063d

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mSmaller:Landroid/view/View;

    iget-object v8, v0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mSmaller:Landroid/view/View;

    new-instance v9, Lcom/android/settings/display/-$$Lambda$PreviewSeekBarPreferenceFragment$nsTIuQKr0QeKuykgH3GSjjQwy0U;

    invoke-direct {v9, p0}, Lcom/android/settings/display/-$$Lambda$PreviewSeekBarPreferenceFragment$nsTIuQKr0QeKuykgH3GSjjQwy0U;-><init>(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v8, 0x7f0a0366

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mLarger:Landroid/view/View;

    iget-object v8, v0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mLarger:Landroid/view/View;

    new-instance v9, Lcom/android/settings/display/-$$Lambda$PreviewSeekBarPreferenceFragment$YZVIWVH43LF5m8117asT1G96GFU;

    invoke-direct {v9, p0}, Lcom/android/settings/display/-$$Lambda$PreviewSeekBarPreferenceFragment$YZVIWVH43LF5m8117asT1G96GFU;-><init>(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, v0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    array-length v8, v8

    if-ne v8, v7, :cond_0

    iget-object v8, v0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v8, v4}, Lcom/android/settings/widget/LabeledSeekBar;->setEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v10

    if-ne v10, v7, :cond_1

    move v10, v7

    goto :goto_0

    :cond_1
    move v10, v4

    :goto_0
    iget-object v11, v0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    array-length v11, v11

    new-array v11, v11, [Landroid/content/res/Configuration;

    const/4 v12, 0x0

    :goto_1
    iget-object v13, v0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    array-length v13, v13

    if-ge v12, v13, :cond_2

    invoke-virtual {p0, v9, v12}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->createConfig(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;

    move-result-object v13

    aput-object v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->getPreviewSampleResIds()[I

    move-result-object v12

    const v13, 0x7f0a0551

    invoke-virtual {v3, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroidx/viewpager/widget/ViewPager;

    iput-object v13, v0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v13, Lcom/android/settings/display/PreviewPagerAdapter;

    invoke-direct {v13, v8, v10, v12, v11}, Lcom/android/settings/display/PreviewPagerAdapter;-><init>(Landroid/content/Context;Z[I[Landroid/content/res/Configuration;)V

    iput-object v13, v0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPagerAdapter:Lcom/android/settings/display/PreviewPagerAdapter;

    iget-object v13, v0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v14, v0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPagerAdapter:Lcom/android/settings/display/PreviewPagerAdapter;

    invoke-virtual {v13, v14}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v13, v0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v10, :cond_3

    array-length v14, v12

    sub-int/2addr v14, v7

    goto :goto_2

    :cond_3
    move v14, v4

    :goto_2
    invoke-virtual {v13, v14}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    iget-object v13, v0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v14, v0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v13, v14}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    const v13, 0x7f0a0502

    invoke-virtual {v3, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/settings/widget/DotsPageIndicator;

    iput-object v13, v0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPageIndicator:Lcom/android/settings/widget/DotsPageIndicator;

    array-length v13, v12

    if-le v13, v7, :cond_4

    iget-object v7, v0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPageIndicator:Lcom/android/settings/widget/DotsPageIndicator;

    iget-object v13, v0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v7, v13}, Lcom/android/settings/widget/DotsPageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    iget-object v7, v0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPageIndicator:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-virtual {v7, v4}, Lcom/android/settings/widget/DotsPageIndicator;->setVisibility(I)V

    iget-object v7, v0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPageIndicator:Lcom/android/settings/widget/DotsPageIndicator;

    iget-object v13, v0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPageIndicatorPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v7, v13}, Lcom/android/settings/widget/DotsPageIndicator;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    goto :goto_3

    :cond_4
    iget-object v7, v0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPageIndicator:Lcom/android/settings/widget/DotsPageIndicator;

    const/16 v13, 0x8

    invoke-virtual {v7, v13}, Lcom/android/settings/widget/DotsPageIndicator;->setVisibility(I)V

    :goto_3
    iget v7, v0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mInitialIndex:I

    invoke-direct {p0, v7, v4}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->setPreviewLayer(IZ)V

    return-object v1
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    iget-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    iget v1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mCurrentIndex:I

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/LabeledSeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    new-instance v1, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;-><init>(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/LabeledSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/LabeledSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method
