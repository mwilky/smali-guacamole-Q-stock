.class public Lcom/android/settingslib/widget/BarChartPreference;
.super Landroidx/preference/Preference;
.source "BarChartPreference.java"


# static fields
.field private static final BAR_VIEWS:[I

.field public static final MAXIMUM_BAR_VIEWS:I = 0x4

.field private static final TAG:Ljava/lang/String; = "BarChartPreference"


# instance fields
.field private mBarChartInfo:Lcom/android/settingslib/widget/BarChartInfo;

.field private mIsLoading:Z

.field private mMaxBarHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    sget v1, Lcom/android/settingslib/widget/R$id;->bar_view1:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/android/settingslib/widget/R$id;->bar_view2:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/android/settingslib/widget/R$id;->bar_view3:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/android/settingslib/widget/R$id;->bar_view4:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sput-object v0, Lcom/android/settingslib/widget/BarChartPreference;->BAR_VIEWS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/settingslib/widget/BarChartPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/android/settingslib/widget/BarChartPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/android/settingslib/widget/BarChartPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0}, Lcom/android/settingslib/widget/BarChartPreference;->init()V

    return-void
.end method

.method private bindChartDetailsView(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    sget v0, Lcom/android/settingslib/widget/R$id;->bar_chart_details:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settingslib/widget/BarChartPreference;->mBarChartInfo:Lcom/android/settingslib/widget/BarChartInfo;

    invoke-virtual {v1}, Lcom/android/settingslib/widget/BarChartInfo;->getDetails()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v2, p0, Lcom/android/settingslib/widget/BarChartPreference;->mBarChartInfo:Lcom/android/settingslib/widget/BarChartInfo;

    invoke-virtual {v2}, Lcom/android/settingslib/widget/BarChartInfo;->getDetailsOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method private bindChartTitleView(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    sget v0, Lcom/android/settingslib/widget/R$id;->bar_chart_title:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settingslib/widget/BarChartPreference;->mBarChartInfo:Lcom/android/settingslib/widget/BarChartInfo;

    invoke-virtual {v1}, Lcom/android/settingslib/widget/BarChartInfo;->getTitle()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private init()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/BarChartPreference;->setSelectable(Z)V

    sget v0, Lcom/android/settingslib/widget/R$layout;->settings_bar_chart:I

    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/BarChartPreference;->setLayoutResource(I)V

    invoke-virtual {p0}, Lcom/android/settingslib/widget/BarChartPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settingslib/widget/R$dimen;->settings_bar_view_max_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/widget/BarChartPreference;->mMaxBarHeight:I

    return-void
.end method

.method private normalizeBarViewHeights()V
    .locals 7

    iget-object v0, p0, Lcom/android/settingslib/widget/BarChartPreference;->mBarChartInfo:Lcom/android/settingslib/widget/BarChartInfo;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/BarChartInfo;->getBarViewInfos()[Lcom/android/settingslib/widget/BarViewInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/android/settingslib/widget/BarViewInfo;->getHeight()I

    move-result v2

    if-nez v2, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/android/settingslib/widget/BarChartPreference;->mMaxBarHeight:I

    div-int/2addr v3, v2

    :goto_0
    array-length v4, v0

    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v5, v0, v1

    invoke-virtual {v5}, Lcom/android/settingslib/widget/BarViewInfo;->getHeight()I

    move-result v6

    mul-int/2addr v6, v3

    invoke-virtual {v5, v6}, Lcom/android/settingslib/widget/BarViewInfo;->setNormalizedHeight(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method private setEmptyViewVisible(Landroidx/preference/PreferenceViewHolder;Z)V
    .locals 6

    sget v0, Lcom/android/settingslib/widget/R$id;->bar_views_container:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/settingslib/widget/R$id;->empty_view:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settingslib/widget/BarChartPreference;->mBarChartInfo:Lcom/android/settingslib/widget/BarChartInfo;

    invoke-virtual {v2}, Lcom/android/settingslib/widget/BarChartInfo;->getEmptyText()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz p2, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p2, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateBarChart(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/settingslib/widget/BarChartPreference;->normalizeBarViewHeights()V

    iget-object v0, p0, Lcom/android/settingslib/widget/BarChartPreference;->mBarChartInfo:Lcom/android/settingslib/widget/BarChartInfo;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/BarChartInfo;->getBarViewInfos()[Lcom/android/settingslib/widget/BarViewInfo;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    sget-object v2, Lcom/android/settingslib/widget/BarChartPreference;->BAR_VIEWS:[I

    aget v2, v2, v1

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/widget/BarView;

    if-eqz v0, :cond_1

    array-length v3, v0

    if-lt v1, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settingslib/widget/BarView;->setVisibility(I)V

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Lcom/android/settingslib/widget/BarView;->updateView(Lcom/android/settingslib/widget/BarViewInfo;)V

    goto :goto_2

    :cond_1
    :goto_1
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/settingslib/widget/BarView;->setVisibility(I)V

    nop

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public initializeBarChart(Lcom/android/settingslib/widget/BarChartInfo;)V
    .locals 0
    .param p1    # Lcom/android/settingslib/widget/BarChartInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/settingslib/widget/BarChartPreference;->mBarChartInfo:Lcom/android/settingslib/widget/BarChartInfo;

    invoke-virtual {p0}, Lcom/android/settingslib/widget/BarChartPreference;->notifyChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/BarChartPreference;->bindChartTitleView(Landroidx/preference/PreferenceViewHolder;)V

    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/BarChartPreference;->bindChartDetailsView(Landroidx/preference/PreferenceViewHolder;)V

    iget-boolean v1, p0, Lcom/android/settingslib/widget/BarChartPreference;->mIsLoading:Z

    if-eqz v1, :cond_0

    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settingslib/widget/BarChartPreference;->mBarChartInfo:Lcom/android/settingslib/widget/BarChartInfo;

    invoke-virtual {v1}, Lcom/android/settingslib/widget/BarChartInfo;->getBarViewInfos()[Lcom/android/settingslib/widget/BarViewInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v3, v1

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v2}, Lcom/android/settingslib/widget/BarChartPreference;->setEmptyViewVisible(Landroidx/preference/PreferenceViewHolder;Z)V

    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/BarChartPreference;->updateBarChart(Landroidx/preference/PreferenceViewHolder;)V

    return-void

    :cond_2
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/widget/BarChartPreference;->setEmptyViewVisible(Landroidx/preference/PreferenceViewHolder;Z)V

    return-void
.end method

.method public setBarViewInfos([Lcom/android/settingslib/widget/BarViewInfo;)V
    .locals 2
    .param p1    # [Lcom/android/settingslib/widget/BarViewInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "We only support up to four bar views"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/widget/BarChartPreference;->mBarChartInfo:Lcom/android/settingslib/widget/BarChartInfo;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/widget/BarChartInfo;->setBarViewInfos([Lcom/android/settingslib/widget/BarViewInfo;)V

    invoke-virtual {p0}, Lcom/android/settingslib/widget/BarChartPreference;->notifyChanged()V

    return-void
.end method

.method public updateLoadingState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingslib/widget/BarChartPreference;->mIsLoading:Z

    invoke-virtual {p0}, Lcom/android/settingslib/widget/BarChartPreference;->notifyChanged()V

    return-void
.end method
