.class public Landroidx/slice/widget/SliceStyle;
.super Ljava/lang/Object;
.source "SliceStyle.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mGridAllImagesHeight:I

.field private mGridBigPicMaxHeight:I

.field private mGridBigPicMinHeight:I

.field private mGridBottomPadding:I

.field private mGridImageTextHeight:I

.field private mGridMaxHeight:I

.field private mGridMinHeight:I

.field private mGridSubtitleSize:I

.field private mGridTitleSize:I

.field private mGridTopPadding:I

.field private mHeaderSubtitleSize:I

.field private mHeaderTitleSize:I

.field private mListLargeHeight:I

.field private mListMinScrollHeight:I

.field private mRowMaxHeight:I

.field private mRowMinHeight:I

.field private mRowRangeHeight:I

.field private mRowSelectionHeight:I

.field private mRowSingleTextWithRangeHeight:I

.field private mRowSingleTextWithSelectionHeight:I

.field private mRowStyle:Landroidx/slice/widget/RowStyle;

.field private mRowTextWithRangeHeight:I

.field private mRowTextWithSelectionHeight:I

.field private mSubtitleColor:I

.field private mSubtitleSize:I

.field private mTintColor:I

.field private mTitleColor:I

.field private mTitleSize:I

.field private mVerticalGridTextPadding:I

.field private mVerticalHeaderTextPadding:I

.field private mVerticalTextPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/slice/widget/SliceStyle;->mTintColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Landroidx/slice/view/R$styleable;->SliceView:[I

    invoke-virtual {v1, p2, v2, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    :try_start_0
    sget v2, Landroidx/slice/view/R$styleable;->SliceView_tintColor:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    if-eq v2, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mTintColor:I

    :goto_0
    iput v0, p0, Landroidx/slice/widget/SliceStyle;->mTintColor:I

    sget v0, Landroidx/slice/view/R$styleable;->SliceView_titleColor:I

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/SliceStyle;->mTitleColor:I

    sget v0, Landroidx/slice/view/R$styleable;->SliceView_subtitleColor:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/SliceStyle;->mSubtitleColor:I

    sget v0, Landroidx/slice/view/R$styleable;->SliceView_headerTitleSize:I

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroidx/slice/widget/SliceStyle;->mHeaderTitleSize:I

    sget v0, Landroidx/slice/view/R$styleable;->SliceView_headerSubtitleSize:I

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroidx/slice/widget/SliceStyle;->mHeaderSubtitleSize:I

    sget v0, Landroidx/slice/view/R$styleable;->SliceView_headerTextVerticalPadding:I

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroidx/slice/widget/SliceStyle;->mVerticalHeaderTextPadding:I

    sget v0, Landroidx/slice/view/R$styleable;->SliceView_titleSize:I

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroidx/slice/widget/SliceStyle;->mTitleSize:I

    sget v0, Landroidx/slice/view/R$styleable;->SliceView_subtitleSize:I

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroidx/slice/widget/SliceStyle;->mSubtitleSize:I

    sget v0, Landroidx/slice/view/R$styleable;->SliceView_textVerticalPadding:I

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroidx/slice/widget/SliceStyle;->mVerticalTextPadding:I

    sget v0, Landroidx/slice/view/R$styleable;->SliceView_gridTitleSize:I

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroidx/slice/widget/SliceStyle;->mGridTitleSize:I

    sget v0, Landroidx/slice/view/R$styleable;->SliceView_gridSubtitleSize:I

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroidx/slice/widget/SliceStyle;->mGridSubtitleSize:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Landroidx/slice/view/R$dimen;->abc_slice_grid_text_inner_padding:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v5, Landroidx/slice/view/R$styleable;->SliceView_gridTextVerticalPadding:I

    int-to-float v6, v0

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Landroidx/slice/widget/SliceStyle;->mVerticalGridTextPadding:I

    sget v5, Landroidx/slice/view/R$styleable;->SliceView_gridTopPadding:I

    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Landroidx/slice/widget/SliceStyle;->mGridTopPadding:I

    sget v5, Landroidx/slice/view/R$styleable;->SliceView_gridBottomPadding:I

    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroidx/slice/widget/SliceStyle;->mGridBottomPadding:I

    sget v4, Landroidx/slice/view/R$styleable;->SliceView_rowStyle:I

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_1

    new-instance v4, Landroidx/slice/widget/RowStyle;

    invoke-direct {v4, p1, v3}, Landroidx/slice/widget/RowStyle;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Landroidx/slice/widget/SliceStyle;->mRowStyle:Landroidx/slice/widget/RowStyle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    nop

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Landroidx/slice/view/R$dimen;->abc_slice_row_max_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroidx/slice/widget/SliceStyle;->mRowMaxHeight:I

    sget v2, Landroidx/slice/view/R$dimen;->abc_slice_row_range_multi_text_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroidx/slice/widget/SliceStyle;->mRowTextWithRangeHeight:I

    sget v2, Landroidx/slice/view/R$dimen;->abc_slice_row_range_single_text_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroidx/slice/widget/SliceStyle;->mRowSingleTextWithRangeHeight:I

    sget v2, Landroidx/slice/view/R$dimen;->abc_slice_row_min_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroidx/slice/widget/SliceStyle;->mRowMinHeight:I

    sget v2, Landroidx/slice/view/R$dimen;->abc_slice_row_range_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroidx/slice/widget/SliceStyle;->mRowRangeHeight:I

    sget v2, Landroidx/slice/view/R$dimen;->abc_slice_row_selection_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroidx/slice/widget/SliceStyle;->mRowSelectionHeight:I

    sget v2, Landroidx/slice/view/R$dimen;->abc_slice_row_selection_multi_text_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroidx/slice/widget/SliceStyle;->mRowTextWithSelectionHeight:I

    sget v2, Landroidx/slice/view/R$dimen;->abc_slice_row_selection_single_text_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroidx/slice/widget/SliceStyle;->mRowSingleTextWithSelectionHeight:I

    sget v2, Landroidx/slice/view/R$dimen;->abc_slice_big_pic_min_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroidx/slice/widget/SliceStyle;->mGridBigPicMinHeight:I

    sget v2, Landroidx/slice/view/R$dimen;->abc_slice_big_pic_max_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroidx/slice/widget/SliceStyle;->mGridBigPicMaxHeight:I

    sget v2, Landroidx/slice/view/R$dimen;->abc_slice_grid_image_only_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroidx/slice/widget/SliceStyle;->mGridAllImagesHeight:I

    sget v2, Landroidx/slice/view/R$dimen;->abc_slice_grid_image_text_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroidx/slice/widget/SliceStyle;->mGridImageTextHeight:I

    sget v2, Landroidx/slice/view/R$dimen;->abc_slice_grid_min_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroidx/slice/widget/SliceStyle;->mGridMinHeight:I

    sget v2, Landroidx/slice/view/R$dimen;->abc_slice_grid_max_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroidx/slice/widget/SliceStyle;->mGridMaxHeight:I

    sget v2, Landroidx/slice/view/R$dimen;->abc_slice_row_min_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroidx/slice/widget/SliceStyle;->mListMinScrollHeight:I

    sget v2, Landroidx/slice/view/R$dimen;->abc_slice_large_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroidx/slice/widget/SliceStyle;->mListLargeHeight:I

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method


# virtual methods
.method public getGridBottomPadding()I
    .locals 1

    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mGridBottomPadding:I

    return v0
.end method

.method public getGridHeight(Landroidx/slice/widget/GridContent;Landroidx/slice/widget/SliceViewPolicy;)I
    .locals 7

    invoke-virtual {p2}, Landroidx/slice/widget/SliceViewPolicy;->getMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1}, Landroidx/slice/widget/GridContent;->isValid()Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroidx/slice/widget/GridContent;->getLargestImageMode()I

    move-result v3

    invoke-virtual {p1}, Landroidx/slice/widget/GridContent;->isAllImages()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Landroidx/slice/widget/GridContent;->getGridContent()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v2, :cond_3

    if-eqz v0, :cond_2

    iget v2, p0, Landroidx/slice/widget/SliceStyle;->mGridBigPicMinHeight:I

    goto :goto_1

    :cond_2
    iget v2, p0, Landroidx/slice/widget/SliceStyle;->mGridBigPicMaxHeight:I

    goto :goto_1

    :cond_3
    if-nez v3, :cond_4

    iget v2, p0, Landroidx/slice/widget/SliceStyle;->mGridMinHeight:I

    goto :goto_1

    :cond_4
    iget v2, p0, Landroidx/slice/widget/SliceStyle;->mGridAllImagesHeight:I

    :goto_1
    goto :goto_5

    :cond_5
    invoke-virtual {p1}, Landroidx/slice/widget/GridContent;->getMaxCellLineCount()I

    move-result v4

    if-le v4, v2, :cond_6

    move v4, v2

    goto :goto_2

    :cond_6
    move v4, v1

    :goto_2
    invoke-virtual {p1}, Landroidx/slice/widget/GridContent;->hasImage()Z

    move-result v5

    if-eqz v3, :cond_8

    const/4 v6, 0x3

    if-ne v3, v6, :cond_7

    goto :goto_3

    :cond_7
    move v2, v1

    :cond_8
    :goto_3
    if-eqz v4, :cond_9

    if-nez v0, :cond_9

    if-eqz v5, :cond_a

    iget v6, p0, Landroidx/slice/widget/SliceStyle;->mGridMaxHeight:I

    goto :goto_4

    :cond_9
    if-eqz v2, :cond_b

    :cond_a
    iget v6, p0, Landroidx/slice/widget/SliceStyle;->mGridMinHeight:I

    goto :goto_4

    :cond_b
    iget v6, p0, Landroidx/slice/widget/SliceStyle;->mGridImageTextHeight:I

    :goto_4
    move v2, v6

    :goto_5
    invoke-virtual {p1}, Landroidx/slice/widget/GridContent;->isAllImages()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {p1}, Landroidx/slice/widget/GridContent;->getRowIndex()I

    move-result v4

    if-nez v4, :cond_c

    iget v4, p0, Landroidx/slice/widget/SliceStyle;->mGridTopPadding:I

    goto :goto_6

    :cond_c
    move v4, v1

    :goto_6
    invoke-virtual {p1}, Landroidx/slice/widget/GridContent;->isAllImages()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {p1}, Landroidx/slice/widget/GridContent;->getIsLastIndex()Z

    move-result v5

    if-eqz v5, :cond_d

    iget v1, p0, Landroidx/slice/widget/SliceStyle;->mGridBottomPadding:I

    :cond_d
    add-int v5, v2, v4

    add-int/2addr v5, v1

    return v5
.end method

.method public getGridSubtitleSize()I
    .locals 1

    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mGridSubtitleSize:I

    return v0
.end method

.method public getGridTitleSize()I
    .locals 1

    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mGridTitleSize:I

    return v0
.end method

.method public getGridTopPadding()I
    .locals 1

    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mGridTopPadding:I

    return v0
.end method

.method public getHeaderSubtitleSize()I
    .locals 1

    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mHeaderSubtitleSize:I

    return v0
.end method

.method public getHeaderTitleSize()I
    .locals 1

    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mHeaderTitleSize:I

    return v0
.end method

.method public getListHeight(Landroidx/slice/widget/ListContent;Landroidx/slice/widget/SliceViewPolicy;)I
    .locals 7

    invoke-virtual {p2}, Landroidx/slice/widget/SliceViewPolicy;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getHeader()Landroidx/slice/widget/RowContent;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Landroidx/slice/widget/RowContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p2}, Landroidx/slice/widget/SliceViewPolicy;->getMaxHeight()I

    move-result v0

    invoke-virtual {p2}, Landroidx/slice/widget/SliceViewPolicy;->isScrollable()Z

    move-result v2

    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Landroidx/slice/widget/SliceStyle;->getListItemsHeight(Ljava/util/List;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v3

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getHeader()Landroidx/slice/widget/RowContent;

    move-result-object v4

    invoke-virtual {v4, p0, p2}, Landroidx/slice/widget/RowContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v4

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_1
    if-lez v0, :cond_2

    move v4, v0

    goto :goto_0

    :cond_2
    iget v4, p0, Landroidx/slice/widget/SliceStyle;->mListLargeHeight:I

    :goto_0
    sub-int v5, v3, v4

    iget v6, p0, Landroidx/slice/widget/SliceStyle;->mListMinScrollHeight:I

    if-lt v5, v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    move v5, v4

    goto :goto_2

    :cond_4
    if-gtz v0, :cond_5

    move v5, v3

    goto :goto_2

    :cond_5
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_2
    nop

    if-nez v2, :cond_6

    invoke-virtual {p0, p1, v5, p2}, Landroidx/slice/widget/SliceStyle;->getListItemsForNonScrollingList(Landroidx/slice/widget/ListContent;ILandroidx/slice/widget/SliceViewPolicy;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {p0, v6, p2}, Landroidx/slice/widget/SliceStyle;->getListItemsHeight(Ljava/util/List;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v5

    :cond_6
    return v5
.end method

.method public getListItemsForNonScrollingList(Landroidx/slice/widget/ListContent;ILandroidx/slice/widget/SliceViewPolicy;)Ljava/util/ArrayList;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/slice/widget/ListContent;",
            "I",
            "Landroidx/slice/widget/SliceViewPolicy;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroidx/slice/widget/SliceContent;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getSeeMoreItem()Landroidx/slice/widget/SliceContent;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getSeeMoreItem()Landroidx/slice/widget/SliceContent;

    move-result-object v3

    invoke-virtual {v3, p0, p3}, Landroidx/slice/widget/SliceContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_2
    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/slice/widget/SliceContent;

    invoke-virtual {v5, p0, p3}, Landroidx/slice/widget/SliceContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v5

    if-lez p2, :cond_3

    add-int v6, v2, v5

    if-le v6, p2, :cond_3

    goto :goto_2

    :cond_3
    add-int/2addr v2, v5

    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getSeeMoreItem()Landroidx/slice/widget/SliceContent;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v1, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v4, v3, :cond_5

    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getSeeMoreItem()Landroidx/slice/widget/SliceContent;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v0

    :cond_7
    :goto_3
    return-object v0
.end method

.method public getListItemsHeight(Ljava/util/List;Landroidx/slice/widget/SliceViewPolicy;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/widget/SliceContent;",
            ">;",
            "Landroidx/slice/widget/SliceViewPolicy;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/slice/widget/SliceContent;

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    invoke-virtual {v2}, Landroidx/slice/widget/SliceContent;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v0

    const-string v3, "horizontal"

    invoke-virtual {v0, v3}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v2, p0, p2}, Landroidx/slice/widget/SliceContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/slice/widget/SliceContent;

    invoke-virtual {v3, p0, p2}, Landroidx/slice/widget/SliceContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public getRowHeight(Landroidx/slice/widget/RowContent;Landroidx/slice/widget/SliceViewPolicy;)I
    .locals 3

    invoke-virtual {p2}, Landroidx/slice/widget/SliceViewPolicy;->getMaxSmallHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroidx/slice/widget/SliceViewPolicy;->getMaxSmallHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mRowMaxHeight:I

    :goto_0
    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getRange()Landroidx/slice/SliceItem;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getSelection()Landroidx/slice/SliceItem;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Landroidx/slice/widget/SliceViewPolicy;->getMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getRange()Landroidx/slice/SliceItem;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getLineCount()I

    move-result v1

    if-le v1, v2, :cond_2

    iget v1, p0, Landroidx/slice/widget/SliceStyle;->mRowTextWithRangeHeight:I

    goto :goto_1

    :cond_2
    iget v1, p0, Landroidx/slice/widget/SliceStyle;->mRowSingleTextWithRangeHeight:I

    :goto_1
    iget v2, p0, Landroidx/slice/widget/SliceStyle;->mRowRangeHeight:I

    add-int/2addr v2, v1

    return v2

    :cond_3
    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getSelection()Landroidx/slice/SliceItem;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getLineCount()I

    move-result v1

    if-le v1, v2, :cond_4

    iget v1, p0, Landroidx/slice/widget/SliceStyle;->mRowTextWithSelectionHeight:I

    goto :goto_2

    :cond_4
    iget v1, p0, Landroidx/slice/widget/SliceStyle;->mRowSingleTextWithSelectionHeight:I

    :goto_2
    iget v2, p0, Landroidx/slice/widget/SliceStyle;->mRowSelectionHeight:I

    add-int/2addr v2, v1

    return v2

    :cond_5
    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getLineCount()I

    move-result v1

    if-gt v1, v2, :cond_7

    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getIsHeader()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    iget v1, p0, Landroidx/slice/widget/SliceStyle;->mRowMinHeight:I

    goto :goto_4

    :cond_7
    :goto_3
    move v1, v0

    :goto_4
    return v1
.end method

.method public getRowMaxHeight()I
    .locals 1

    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mRowMaxHeight:I

    return v0
.end method

.method public getRowRangeHeight()I
    .locals 1

    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mRowRangeHeight:I

    return v0
.end method

.method public getRowSelectionHeight()I
    .locals 1

    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mRowSelectionHeight:I

    return v0
.end method

.method public getRowStyle()Landroidx/slice/widget/RowStyle;
    .locals 1

    iget-object v0, p0, Landroidx/slice/widget/SliceStyle;->mRowStyle:Landroidx/slice/widget/RowStyle;

    return-object v0
.end method

.method public getSubtitleColor()I
    .locals 1

    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mSubtitleColor:I

    return v0
.end method

.method public getSubtitleSize()I
    .locals 1

    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mSubtitleSize:I

    return v0
.end method

.method public getTintColor()I
    .locals 1

    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mTintColor:I

    return v0
.end method

.method public getTitleColor()I
    .locals 1

    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mTitleColor:I

    return v0
.end method

.method public getTitleSize()I
    .locals 1

    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mTitleSize:I

    return v0
.end method

.method public getVerticalGridTextPadding()I
    .locals 1

    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mVerticalGridTextPadding:I

    return v0
.end method

.method public getVerticalHeaderTextPadding()I
    .locals 1

    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mVerticalHeaderTextPadding:I

    return v0
.end method

.method public getVerticalTextPadding()I
    .locals 1

    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mVerticalTextPadding:I

    return v0
.end method

.method public setTintColor(I)V
    .locals 0

    iput p1, p0, Landroidx/slice/widget/SliceStyle;->mTintColor:I

    return-void
.end method
