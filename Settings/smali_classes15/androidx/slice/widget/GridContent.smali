.class public Landroidx/slice/widget/GridContent;
.super Landroidx/slice/widget/SliceContent;
.source "GridContent.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/widget/GridContent$CellContent;
    }
.end annotation


# instance fields
.field private mAllImages:Z

.field private mGridContent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/slice/widget/GridContent$CellContent;",
            ">;"
        }
    .end annotation
.end field

.field private mHasImage:Z

.field private mIsLastIndex:Z

.field private mLargestImageMode:I

.field private mMaxCellLineCount:I

.field private mPrimaryAction:Landroidx/slice/SliceItem;

.field private mSeeMoreItem:Landroidx/slice/SliceItem;

.field private mTitleItem:Landroidx/slice/SliceItem;


# direct methods
.method public constructor <init>(Landroidx/slice/SliceItem;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/slice/widget/SliceContent;-><init>(Landroidx/slice/SliceItem;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/GridContent;->mGridContent:Ljava/util/ArrayList;

    const/4 v0, 0x3

    iput v0, p0, Landroidx/slice/widget/GridContent;->mLargestImageMode:I

    invoke-direct {p0, p1}, Landroidx/slice/widget/GridContent;->populate(Landroidx/slice/SliceItem;)Z

    return-void
.end method

.method private filterAndProcessItems(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/SliceItem;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceItem;

    const-string v3, "see_more"

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_1

    :cond_0
    move v4, v5

    :goto_1
    if-nez v4, :cond_1

    const-string v7, "shortcut"

    const-string v8, "keywords"

    const-string v9, "ttl"

    const-string v10, "last_updated"

    filled-new-array {v7, v3, v8, v9, v10}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v5, v6

    :cond_2
    move v3, v5

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "content_description"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iput-object v2, p0, Landroidx/slice/widget/GridContent;->mContentDescr:Landroidx/slice/SliceItem;

    goto :goto_2

    :cond_3
    if-nez v3, :cond_4

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method private populate(Landroidx/slice/SliceItem;)Z
    .locals 6

    const/4 v0, 0x0

    const-string v1, "see_more"

    invoke-static {p1, v0, v1, v0}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/widget/GridContent;->mSeeMoreItem:Landroidx/slice/SliceItem;

    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mSeeMoreItem:Landroidx/slice/SliceItem;

    const-string v1, "slice"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mSeeMoreItem:Landroidx/slice/SliceItem;

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceItem;

    iput-object v2, p0, Landroidx/slice/widget/GridContent;->mSeeMoreItem:Landroidx/slice/SliceItem;

    :cond_0
    const-string v0, "shortcut"

    const-string v2, "title"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const-string v2, "actions"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v0, v2}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v2

    iput-object v2, p0, Landroidx/slice/widget/GridContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/slice/widget/GridContent;->mAllImages:Z

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/slice/widget/GridContent;->filterAndProcessItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/slice/SliceItem;

    invoke-virtual {v3}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "content_description"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Landroidx/slice/widget/GridContent$CellContent;

    invoke-direct {v4, v3}, Landroidx/slice/widget/GridContent$CellContent;-><init>(Landroidx/slice/SliceItem;)V

    invoke-direct {p0, v4}, Landroidx/slice/widget/GridContent;->processContent(Landroidx/slice/widget/GridContent$CellContent;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    goto :goto_1

    :cond_3
    new-instance v1, Landroidx/slice/widget/GridContent$CellContent;

    invoke-direct {v1, p1}, Landroidx/slice/widget/GridContent$CellContent;-><init>(Landroidx/slice/SliceItem;)V

    invoke-direct {p0, v1}, Landroidx/slice/widget/GridContent;->processContent(Landroidx/slice/widget/GridContent$CellContent;)V

    :goto_1
    invoke-virtual {p0}, Landroidx/slice/widget/GridContent;->isValid()Z

    move-result v1

    return v1
.end method

.method private processContent(Landroidx/slice/widget/GridContent$CellContent;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/slice/widget/GridContent$CellContent;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mTitleItem:Landroidx/slice/SliceItem;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/slice/widget/GridContent$CellContent;->getTitleItem()Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/slice/widget/GridContent$CellContent;->getTitleItem()Landroidx/slice/SliceItem;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/widget/GridContent;->mTitleItem:Landroidx/slice/SliceItem;

    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mGridContent:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroidx/slice/widget/GridContent$CellContent;->isImageOnly()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/slice/widget/GridContent;->mAllImages:Z

    :cond_1
    iget v0, p0, Landroidx/slice/widget/GridContent;->mMaxCellLineCount:I

    invoke-virtual {p1}, Landroidx/slice/widget/GridContent$CellContent;->getTextCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/GridContent;->mMaxCellLineCount:I

    iget-boolean v0, p0, Landroidx/slice/widget/GridContent;->mHasImage:Z

    invoke-virtual {p1}, Landroidx/slice/widget/GridContent$CellContent;->hasImage()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Landroidx/slice/widget/GridContent;->mHasImage:Z

    iget v0, p0, Landroidx/slice/widget/GridContent;->mLargestImageMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroidx/slice/widget/GridContent$CellContent;->getImageMode()I

    move-result v0

    goto :goto_0

    :cond_2
    nop

    invoke-virtual {p1}, Landroidx/slice/widget/GridContent$CellContent;->getImageMode()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    iput v0, p0, Landroidx/slice/widget/GridContent;->mLargestImageMode:I

    :cond_3
    return-void
.end method


# virtual methods
.method public getContentIntent()Landroidx/slice/SliceItem;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    return-object v0
.end method

.method public getGridContent()Ljava/util/ArrayList;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/slice/widget/GridContent$CellContent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mGridContent:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I
    .locals 1

    invoke-virtual {p1, p0, p2}, Landroidx/slice/widget/SliceStyle;->getGridHeight(Landroidx/slice/widget/GridContent;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v0

    return v0
.end method

.method public getIsLastIndex()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/slice/widget/GridContent;->mIsLastIndex:Z

    return v0
.end method

.method public getLargestImageMode()I
    .locals 1

    iget v0, p0, Landroidx/slice/widget/GridContent;->mLargestImageMode:I

    return v0
.end method

.method public getMaxCellLineCount()I
    .locals 1

    iget v0, p0, Landroidx/slice/widget/GridContent;->mMaxCellLineCount:I

    return v0
.end method

.method public getSeeMoreItem()Landroidx/slice/SliceItem;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mSeeMoreItem:Landroidx/slice/SliceItem;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mTitleItem:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getSanitizedText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mPrimaryAction:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_1

    new-instance v1, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v1, v0}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    invoke-virtual {v1}, Landroidx/slice/core/SliceActionImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasImage()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/slice/widget/GridContent;->mHasImage:Z

    return v0
.end method

.method public isAllImages()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/slice/widget/GridContent;->mAllImages:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    invoke-super {p0}, Landroidx/slice/widget/SliceContent;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/GridContent;->mGridContent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setIsLastIndex(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/slice/widget/GridContent;->mIsLastIndex:Z

    return-void
.end method
