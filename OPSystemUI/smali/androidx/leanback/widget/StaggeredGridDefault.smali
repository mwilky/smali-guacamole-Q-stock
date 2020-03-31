.class final Landroidx/leanback/widget/StaggeredGridDefault;
.super Landroidx/leanback/widget/StaggeredGrid;
.source "StaggeredGridDefault.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/leanback/widget/StaggeredGrid;-><init>()V

    return-void
.end method

.method private findRowEdgeLimitSearchIndex(Z)I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget p1, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    :goto_0
    iget v2, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-lt p1, v2, :cond_5

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    iget v2, v2, Landroidx/leanback/widget/Grid$Location;->row:I

    if-nez v2, :cond_0

    move v1, v0

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    iget v3, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    sub-int/2addr v3, v0

    if-ne v2, v3, :cond_1

    return p1

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    iget p1, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    :goto_2
    iget v2, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    if-gt p1, v2, :cond_5

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    iget v2, v2, Landroidx/leanback/widget/Grid$Location;->row:I

    iget v3, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    sub-int/2addr v3, v0

    if-ne v2, v3, :cond_3

    move v1, v0

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_4

    if-nez v2, :cond_4

    return p1

    :cond_4
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method protected appendVisibleItemsWithoutCache(IZ)Z
    .locals 13

    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroidx/leanback/widget/Grid$Provider;->getCount()I

    move-result v0

    iget v1, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ltz v1, :cond_9

    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v6

    if-ge v1, v6, :cond_0

    return v4

    :cond_0
    iget v1, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p0, v1}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v1

    iget v1, v1, Landroidx/leanback/widget/Grid$Location;->row:I

    invoke-direct {p0, v5}, Landroidx/leanback/widget/StaggeredGridDefault;->findRowEdgeLimitSearchIndex(Z)I

    move-result v7

    if-gez v7, :cond_3

    move v8, v2

    move v7, v4

    :goto_0
    iget v9, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    if-ge v7, v9, :cond_5

    iget-boolean v8, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v8, :cond_1

    invoke-virtual {p0, v7}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v8

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v7}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v8

    :goto_1
    if-eq v8, v2, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    iget-boolean v8, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v8, :cond_4

    invoke-virtual {p0, v4, v7, v3}, Landroidx/leanback/widget/StaggeredGridDefault;->findRowMin(ZI[I)I

    move-result v7

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v5, v7, v3}, Landroidx/leanback/widget/StaggeredGridDefault;->findRowMax(ZI[I)I

    move-result v7

    :goto_2
    move v8, v7

    :cond_5
    :goto_3
    iget-boolean v7, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v7, :cond_6

    invoke-virtual {p0, v1}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v7

    if-gt v7, v8, :cond_8

    goto :goto_4

    :cond_6
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v7

    if-lt v7, v8, :cond_8

    :goto_4
    add-int/lit8 v1, v1, 0x1

    iget v7, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    if-ne v1, v7, :cond_8

    iget-boolean v1, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v1, :cond_7

    invoke-virtual {p0, v4, v3}, Landroidx/leanback/widget/Grid;->findRowMin(Z[I)I

    move-result v1

    goto :goto_5

    :cond_7
    invoke-virtual {p0, v5, v3}, Landroidx/leanback/widget/Grid;->findRowMax(Z[I)I

    move-result v1

    :goto_5
    move v8, v1

    move v1, v4

    :cond_8
    move v7, v5

    goto :goto_8

    :cond_9
    iget v1, p0, Landroidx/leanback/widget/Grid;->mStartIndex:I

    const/4 v6, -0x1

    if-eq v1, v6, :cond_a

    move v6, v1

    goto :goto_6

    :cond_a
    move v6, v4

    :goto_6
    iget-object v1, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v1}, Landroidx/collection/CircularArray;->size()I

    move-result v1

    if-lez v1, :cond_b

    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v1

    iget v1, v1, Landroidx/leanback/widget/Grid$Location;->row:I

    add-int/2addr v1, v5

    goto :goto_7

    :cond_b
    move v1, v6

    :goto_7
    iget v7, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    rem-int/2addr v1, v7

    move v7, v4

    move v8, v7

    :goto_8
    move v9, v8

    move v8, v7

    move v7, v4

    :goto_9
    iget v10, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    if-ge v1, v10, :cond_1e

    if-eq v6, v0, :cond_1d

    if-nez p2, :cond_c

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Grid;->checkAppendOverLimit(I)Z

    move-result v10

    if-eqz v10, :cond_c

    goto/16 :goto_17

    :cond_c
    iget-boolean v7, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v7, :cond_d

    invoke-virtual {p0, v1}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v7

    goto :goto_a

    :cond_d
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v7

    :goto_a
    const v10, 0x7fffffff

    if-eq v7, v10, :cond_10

    if-ne v7, v2, :cond_e

    goto :goto_d

    :cond_e
    iget-boolean v10, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v10, :cond_f

    iget v10, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    :goto_b
    neg-int v10, v10

    goto :goto_c

    :cond_f
    iget v10, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    :goto_c
    add-int/2addr v7, v10

    goto :goto_f

    :cond_10
    :goto_d
    if-nez v1, :cond_13

    iget-boolean v7, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v7, :cond_11

    iget v7, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    sub-int/2addr v7, v5

    invoke-virtual {p0, v7}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v7

    goto :goto_e

    :cond_11
    iget v7, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    sub-int/2addr v7, v5

    invoke-virtual {p0, v7}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v7

    :goto_e
    if-eq v7, v10, :cond_15

    if-eq v7, v2, :cond_15

    iget-boolean v10, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v10, :cond_12

    iget v10, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    goto :goto_b

    :cond_12
    iget v10, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    goto :goto_c

    :cond_13
    iget-boolean v7, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v7, :cond_14

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {p0, v7}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v7

    goto :goto_f

    :cond_14
    add-int/lit8 v7, v1, -0x1

    invoke-virtual {p0, v7}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v7

    :cond_15
    :goto_f
    add-int/lit8 v10, v6, 0x1

    invoke-virtual {p0, v6, v1, v7}, Landroidx/leanback/widget/StaggeredGrid;->appendVisibleItemToRow(III)I

    move-result v6

    if-eqz v8, :cond_1b

    :goto_10
    iget-boolean v11, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v11, :cond_16

    sub-int v11, v7, v6

    if-le v11, v9, :cond_1a

    goto :goto_11

    :cond_16
    add-int v11, v7, v6

    if-ge v11, v9, :cond_1a

    :goto_11
    if-eq v10, v0, :cond_19

    if-nez p2, :cond_17

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Grid;->checkAppendOverLimit(I)Z

    move-result v11

    if-eqz v11, :cond_17

    goto :goto_13

    :cond_17
    iget-boolean v11, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v11, :cond_18

    neg-int v6, v6

    iget v11, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    sub-int/2addr v6, v11

    goto :goto_12

    :cond_18
    iget v11, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    add-int/2addr v6, v11

    :goto_12
    add-int/2addr v7, v6

    add-int/lit8 v6, v10, 0x1

    invoke-virtual {p0, v10, v1, v7}, Landroidx/leanback/widget/StaggeredGrid;->appendVisibleItemToRow(III)I

    move-result v10

    move v12, v10

    move v10, v6

    move v6, v12

    goto :goto_10

    :cond_19
    :goto_13
    return v5

    :cond_1a
    :goto_14
    move v6, v10

    goto :goto_16

    :cond_1b
    iget-boolean v6, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v6, :cond_1c

    invoke-virtual {p0, v1}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v6

    goto :goto_15

    :cond_1c
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v6

    :goto_15
    move v8, v5

    move v9, v6

    goto :goto_14

    :goto_16
    add-int/lit8 v1, v1, 0x1

    move v7, v5

    goto/16 :goto_9

    :cond_1d
    :goto_17
    return v7

    :cond_1e
    if-eqz p2, :cond_1f

    return v7

    :cond_1f
    iget-boolean v1, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v1, :cond_20

    invoke-virtual {p0, v4, v3}, Landroidx/leanback/widget/Grid;->findRowMin(Z[I)I

    move-result v1

    goto :goto_18

    :cond_20
    invoke-virtual {p0, v5, v3}, Landroidx/leanback/widget/Grid;->findRowMax(Z[I)I

    move-result v1

    :goto_18
    move v9, v1

    move v1, v4

    goto/16 :goto_9
.end method

.method public findRowMax(ZI[I)I
    .locals 9

    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v0, p2}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v1

    iget v2, v1, Landroidx/leanback/widget/Grid$Location;->row:I

    iget-boolean v3, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    add-int/lit8 v1, p2, 0x1

    move v3, p2

    move v5, v0

    move v6, v2

    move p2, v4

    :goto_0
    iget v7, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    if-ge p2, v7, :cond_7

    iget v7, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    if-gt v1, v7, :cond_7

    invoke-virtual {p0, v1}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v7

    iget v8, v7, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    add-int/2addr v5, v8

    iget v7, v7, Landroidx/leanback/widget/Grid$Location;->row:I

    if-eq v7, v6, :cond_2

    add-int/lit8 p2, p2, 0x1

    if-eqz p1, :cond_0

    if-le v5, v0, :cond_1

    goto :goto_1

    :cond_0
    if-ge v5, v0, :cond_1

    :goto_1
    move v3, v1

    move v0, v5

    move v2, v7

    move v6, v2

    goto :goto_2

    :cond_1
    move v6, v7

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v3, p2}, Landroidx/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v5, p2, -0x1

    move-object v6, v1

    move v7, v2

    move v1, v0

    move v0, v3

    move v3, p2

    move p2, v4

    :goto_3
    iget v8, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    if-ge p2, v8, :cond_7

    iget v8, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-lt v5, v8, :cond_7

    iget v6, v6, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    sub-int/2addr v1, v6

    invoke-virtual {p0, v5}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v6

    iget v8, v6, Landroidx/leanback/widget/Grid$Location;->row:I

    if-eq v8, v7, :cond_6

    add-int/lit8 p2, p2, 0x1

    iget-object v7, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v7, v5}, Landroidx/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v7

    add-int/2addr v7, v1

    if-eqz p1, :cond_4

    if-le v7, v0, :cond_5

    goto :goto_4

    :cond_4
    if-ge v7, v0, :cond_5

    :goto_4
    move v3, v5

    move v0, v7

    move v2, v8

    move v7, v2

    goto :goto_5

    :cond_5
    move v7, v8

    :cond_6
    :goto_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_7
    if-eqz p3, :cond_8

    const/4 p0, 0x0

    aput v2, p3, p0

    aput v3, p3, v4

    :cond_8
    return v0
.end method

.method public findRowMin(ZI[I)I
    .locals 9

    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v0, p2}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v1

    iget v2, v1, Landroidx/leanback/widget/Grid$Location;->row:I

    iget-boolean v3, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v3, p2}, Landroidx/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v3

    sub-int v3, v0, v3

    add-int/lit8 v5, p2, -0x1

    move-object v6, v1

    move v7, v2

    move v1, v0

    move v0, p2

    move p2, v4

    :goto_0
    iget v8, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    if-ge p2, v8, :cond_7

    iget v8, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-lt v5, v8, :cond_7

    iget v6, v6, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    sub-int/2addr v1, v6

    invoke-virtual {p0, v5}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v6

    iget v8, v6, Landroidx/leanback/widget/Grid$Location;->row:I

    if-eq v8, v7, :cond_2

    add-int/lit8 p2, p2, 0x1

    iget-object v7, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v7, v5}, Landroidx/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v7

    sub-int v7, v1, v7

    if-eqz p1, :cond_0

    if-le v7, v3, :cond_1

    goto :goto_1

    :cond_0
    if-ge v7, v3, :cond_1

    :goto_1
    move v0, v5

    move v3, v7

    move v2, v8

    move v7, v2

    goto :goto_2

    :cond_1
    move v7, v8

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v1, p2, 0x1

    move v3, v0

    move v5, v3

    move v6, v2

    move v0, p2

    move p2, v4

    :goto_3
    iget v7, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    if-ge p2, v7, :cond_7

    iget v7, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    if-gt v1, v7, :cond_7

    invoke-virtual {p0, v1}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v7

    iget v8, v7, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    add-int/2addr v5, v8

    iget v7, v7, Landroidx/leanback/widget/Grid$Location;->row:I

    if-eq v7, v6, :cond_6

    add-int/lit8 p2, p2, 0x1

    if-eqz p1, :cond_4

    if-le v5, v3, :cond_5

    goto :goto_4

    :cond_4
    if-ge v5, v3, :cond_5

    :goto_4
    move v0, v1

    move v3, v5

    move v2, v7

    move v6, v2

    goto :goto_5

    :cond_5
    move v6, v7

    :cond_6
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    if-eqz p3, :cond_8

    const/4 p0, 0x0

    aput v2, p3, p0

    aput v0, p3, v4

    :cond_8
    return v3
.end method

.method getRowMax(I)I
    .locals 5

    iget v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    const/high16 v1, -0x80000000

    if-gez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v2, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v2, v0}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    iget v2, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    invoke-virtual {p0, v2}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    iget v2, v2, Landroidx/leanback/widget/Grid$Location;->row:I

    if-ne v2, p1, :cond_1

    return v0

    :cond_1
    iget v2, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    :goto_0
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v3

    if-gt v2, v3, :cond_6

    invoke-virtual {p0, v2}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v3

    iget v4, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    add-int/2addr v0, v4

    iget v3, v3, Landroidx/leanback/widget/Grid$Location;->row:I

    if-ne v3, p1, :cond_2

    return v0

    :cond_2
    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget v2, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    invoke-interface {v0, v2}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    iget v2, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    invoke-virtual {p0, v2}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    iget v3, v2, Landroidx/leanback/widget/Grid$Location;->row:I

    if-ne v3, p1, :cond_4

    iget p0, v2, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    :goto_1
    add-int/2addr v0, p0

    return v0

    :cond_4
    iget v3, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    add-int/lit8 v3, v3, -0x1

    :goto_2
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getFirstIndex()I

    move-result v4

    if-lt v3, v4, :cond_6

    iget v2, v2, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    sub-int/2addr v0, v2

    invoke-virtual {p0, v3}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    iget v4, v2, Landroidx/leanback/widget/Grid$Location;->row:I

    if-ne v4, p1, :cond_5

    iget p0, v2, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    goto :goto_1

    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_6
    return v1
.end method

.method getRowMin(I)I
    .locals 5

    iget v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    const v1, 0x7fffffff

    if-gez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v2, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v2, :cond_3

    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget v2, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    invoke-interface {v0, v2}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    iget v2, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    invoke-virtual {p0, v2}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    iget v3, v2, Landroidx/leanback/widget/Grid$Location;->row:I

    if-ne v3, p1, :cond_1

    iget p0, v2, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    :goto_0
    sub-int/2addr v0, p0

    return v0

    :cond_1
    iget v3, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    add-int/lit8 v3, v3, -0x1

    :goto_1
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getFirstIndex()I

    move-result v4

    if-lt v3, v4, :cond_6

    iget v2, v2, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    sub-int/2addr v0, v2

    invoke-virtual {p0, v3}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    iget v4, v2, Landroidx/leanback/widget/Grid$Location;->row:I

    if-ne v4, p1, :cond_2

    iget p0, v2, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v2, v0}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    iget v2, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    invoke-virtual {p0, v2}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    iget v2, v2, Landroidx/leanback/widget/Grid$Location;->row:I

    if-ne v2, p1, :cond_4

    return v0

    :cond_4
    iget v2, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    :goto_2
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v3

    if-gt v2, v3, :cond_6

    invoke-virtual {p0, v2}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v3

    iget v4, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    add-int/2addr v0, v4

    iget v3, v3, Landroidx/leanback/widget/Grid$Location;->row:I

    if-ne v3, p1, :cond_5

    return v0

    :cond_5
    goto :goto_2

    :cond_6
    return v1
.end method

.method protected prependVisibleItemsWithoutCache(IZ)Z
    .locals 12

    iget v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    const v1, 0x7fffffff

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v0, :cond_9

    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getFirstIndex()I

    move-result v5

    if-le v0, v5, :cond_0

    return v3

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v0

    iget v0, v0, Landroidx/leanback/widget/Grid$Location;->row:I

    invoke-direct {p0, v3}, Landroidx/leanback/widget/StaggeredGridDefault;->findRowEdgeLimitSearchIndex(Z)I

    move-result v6

    if-gez v6, :cond_3

    add-int/lit8 v0, v0, -0x1

    iget v6, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    sub-int/2addr v6, v4

    move v7, v1

    :goto_0
    if-ltz v6, :cond_5

    iget-boolean v7, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v7, :cond_1

    invoke-virtual {p0, v6}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v7

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v6}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v7

    :goto_1
    if-eq v7, v1, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_3
    iget-boolean v7, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v7, :cond_4

    invoke-virtual {p0, v4, v6, v2}, Landroidx/leanback/widget/StaggeredGridDefault;->findRowMax(ZI[I)I

    move-result v6

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v3, v6, v2}, Landroidx/leanback/widget/StaggeredGridDefault;->findRowMin(ZI[I)I

    move-result v6

    :goto_2
    move v7, v6

    :cond_5
    :goto_3
    iget-boolean v6, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v6, :cond_6

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v6

    if-lt v6, v7, :cond_8

    goto :goto_4

    :cond_6
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v6

    if-gt v6, v7, :cond_8

    :goto_4
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_8

    iget v0, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    sub-int/2addr v0, v4

    iget-boolean v6, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v6, :cond_7

    invoke-virtual {p0, v4, v2}, Landroidx/leanback/widget/Grid;->findRowMax(Z[I)I

    move-result v6

    goto :goto_5

    :cond_7
    invoke-virtual {p0, v3, v2}, Landroidx/leanback/widget/Grid;->findRowMin(Z[I)I

    move-result v6

    :goto_5
    move v7, v6

    :cond_8
    move v6, v4

    goto :goto_8

    :cond_9
    iget v0, p0, Landroidx/leanback/widget/Grid;->mStartIndex:I

    const/4 v5, -0x1

    if-eq v0, v5, :cond_a

    move v5, v0

    goto :goto_6

    :cond_a
    move v5, v3

    :goto_6
    iget-object v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v0}, Landroidx/collection/CircularArray;->size()I

    move-result v0

    if-lez v0, :cond_b

    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getFirstIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v0

    iget v0, v0, Landroidx/leanback/widget/Grid$Location;->row:I

    iget v6, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    add-int/2addr v0, v6

    sub-int/2addr v0, v4

    goto :goto_7

    :cond_b
    move v0, v5

    :goto_7
    iget v6, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    rem-int/2addr v0, v6

    move v6, v3

    move v7, v6

    :goto_8
    move v8, v7

    move v7, v6

    move v6, v3

    :goto_9
    if-ltz v0, :cond_1e

    if-ltz v5, :cond_1d

    if-nez p2, :cond_c

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Grid;->checkPrependOverLimit(I)Z

    move-result v9

    if-eqz v9, :cond_c

    goto/16 :goto_17

    :cond_c
    iget-boolean v6, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v6, :cond_d

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v6

    goto :goto_a

    :cond_d
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v6

    :goto_a
    const/high16 v9, -0x80000000

    if-eq v6, v1, :cond_10

    if-ne v6, v9, :cond_e

    goto :goto_d

    :cond_e
    iget-boolean v9, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v9, :cond_f

    iget v9, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    goto :goto_c

    :cond_f
    iget v9, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    :goto_b
    neg-int v9, v9

    :goto_c
    add-int/2addr v6, v9

    goto :goto_f

    :cond_10
    :goto_d
    iget v6, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    sub-int/2addr v6, v4

    if-ne v0, v6, :cond_13

    iget-boolean v6, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v6, :cond_11

    invoke-virtual {p0, v3}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v6

    goto :goto_e

    :cond_11
    invoke-virtual {p0, v3}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v6

    :goto_e
    if-eq v6, v1, :cond_15

    if-eq v6, v9, :cond_15

    iget-boolean v9, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v9, :cond_12

    iget v9, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    goto :goto_c

    :cond_12
    iget v9, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    goto :goto_b

    :cond_13
    iget-boolean v6, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v6, :cond_14

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v6}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v6

    goto :goto_f

    :cond_14
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v6}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v6

    :cond_15
    :goto_f
    add-int/lit8 v9, v5, -0x1

    invoke-virtual {p0, v5, v0, v6}, Landroidx/leanback/widget/StaggeredGrid;->prependVisibleItemToRow(III)I

    move-result v5

    if-eqz v7, :cond_1b

    :goto_10
    iget-boolean v10, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v10, :cond_16

    add-int v10, v6, v5

    if-ge v10, v8, :cond_1a

    goto :goto_11

    :cond_16
    sub-int v10, v6, v5

    if-le v10, v8, :cond_1a

    :goto_11
    if-ltz v9, :cond_19

    if-nez p2, :cond_17

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Grid;->checkPrependOverLimit(I)Z

    move-result v10

    if-eqz v10, :cond_17

    goto :goto_13

    :cond_17
    iget-boolean v10, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v10, :cond_18

    iget v10, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    add-int/2addr v5, v10

    goto :goto_12

    :cond_18
    neg-int v5, v5

    iget v10, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    sub-int/2addr v5, v10

    :goto_12
    add-int/2addr v6, v5

    add-int/lit8 v5, v9, -0x1

    invoke-virtual {p0, v9, v0, v6}, Landroidx/leanback/widget/StaggeredGrid;->prependVisibleItemToRow(III)I

    move-result v9

    move v11, v9

    move v9, v5

    move v5, v11

    goto :goto_10

    :cond_19
    :goto_13
    return v4

    :cond_1a
    :goto_14
    move v5, v9

    goto :goto_16

    :cond_1b
    iget-boolean v5, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v5, :cond_1c

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v5

    goto :goto_15

    :cond_1c
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v5

    :goto_15
    move v7, v4

    move v8, v5

    goto :goto_14

    :goto_16
    add-int/lit8 v0, v0, -0x1

    move v6, v4

    goto/16 :goto_9

    :cond_1d
    :goto_17
    return v6

    :cond_1e
    if-eqz p2, :cond_1f

    return v6

    :cond_1f
    iget-boolean v0, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v0, :cond_20

    invoke-virtual {p0, v4, v2}, Landroidx/leanback/widget/Grid;->findRowMax(Z[I)I

    move-result v0

    goto :goto_18

    :cond_20
    invoke-virtual {p0, v3, v2}, Landroidx/leanback/widget/Grid;->findRowMin(Z[I)I

    move-result v0

    :goto_18
    move v8, v0

    iget v0, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    sub-int/2addr v0, v4

    goto/16 :goto_9
.end method
