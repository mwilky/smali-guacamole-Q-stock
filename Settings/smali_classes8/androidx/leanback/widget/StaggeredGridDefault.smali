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

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget v1, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    :goto_0
    iget v2, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    if-lt v1, v2, :cond_2

    invoke-virtual {p0, v1}, Landroidx/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    iget v2, v2, Landroidx/leanback/widget/StaggeredGrid$Location;->row:I

    if-nez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    iget v3, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mNumRows:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_1

    return v1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    goto :goto_4

    :cond_3
    iget v1, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    :goto_2
    iget v2, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    if-gt v1, v2, :cond_6

    invoke-virtual {p0, v1}, Landroidx/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    iget v2, v2, Landroidx/leanback/widget/StaggeredGrid$Location;->row:I

    iget v3, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mNumRows:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_5

    if-nez v2, :cond_5

    return v1

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    const/4 v1, -0x1

    return v1
.end method


# virtual methods
.method protected appendVisibleItemsWithoutCache(IZ)Z
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Landroidx/leanback/widget/StaggeredGridDefault;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v1}, Landroidx/leanback/widget/Grid$Provider;->getCount()I

    move-result v1

    iget v2, v0, Landroidx/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    const/high16 v3, -0x80000000

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ltz v2, :cond_9

    iget v2, v0, Landroidx/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGridDefault;->getLastIndex()I

    move-result v7

    if-ge v2, v7, :cond_0

    return v4

    :cond_0
    iget v2, v0, Landroidx/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    add-int/2addr v2, v6

    iget v7, v0, Landroidx/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    invoke-virtual {p0, v7}, Landroidx/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v7

    iget v7, v7, Landroidx/leanback/widget/StaggeredGrid$Location;->row:I

    invoke-direct {p0, v6}, Landroidx/leanback/widget/StaggeredGridDefault;->findRowEdgeLimitSearchIndex(Z)I

    move-result v8

    if-gez v8, :cond_4

    const/high16 v9, -0x80000000

    const/4 v10, 0x0

    :goto_0
    iget v11, v0, Landroidx/leanback/widget/StaggeredGridDefault;->mNumRows:I

    if-ge v10, v11, :cond_3

    iget-boolean v11, v0, Landroidx/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_1

    invoke-virtual {p0, v10}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v11

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v10}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v11

    :goto_1
    move v9, v11

    if-eq v9, v3, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    goto :goto_4

    :cond_4
    iget-boolean v9, v0, Landroidx/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v9, :cond_5

    invoke-virtual {p0, v4, v8, v5}, Landroidx/leanback/widget/StaggeredGridDefault;->findRowMin(ZI[I)I

    move-result v9

    goto :goto_3

    :cond_5
    invoke-virtual {p0, v6, v8, v5}, Landroidx/leanback/widget/StaggeredGridDefault;->findRowMax(ZI[I)I

    move-result v9

    :goto_3
    nop

    :goto_4
    iget-boolean v10, v0, Landroidx/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_6

    invoke-virtual {p0, v7}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v10

    if-gt v10, v9, :cond_8

    goto :goto_5

    :cond_6
    invoke-virtual {p0, v7}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v10

    if-lt v10, v9, :cond_8

    :goto_5
    add-int/lit8 v7, v7, 0x1

    iget v10, v0, Landroidx/leanback/widget/StaggeredGridDefault;->mNumRows:I

    if-ne v7, v10, :cond_8

    const/4 v7, 0x0

    iget-boolean v10, v0, Landroidx/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_7

    invoke-virtual {p0, v4, v5}, Landroidx/leanback/widget/StaggeredGridDefault;->findRowMin(Z[I)I

    move-result v10

    goto :goto_6

    :cond_7
    invoke-virtual {p0, v6, v5}, Landroidx/leanback/widget/StaggeredGridDefault;->findRowMax(Z[I)I

    move-result v10

    :goto_6
    move v9, v10

    :cond_8
    const/4 v8, 0x1

    goto :goto_9

    :cond_9
    iget v2, v0, Landroidx/leanback/widget/StaggeredGridDefault;->mStartIndex:I

    const/4 v7, -0x1

    if-eq v2, v7, :cond_a

    iget v2, v0, Landroidx/leanback/widget/StaggeredGridDefault;->mStartIndex:I

    goto :goto_7

    :cond_a
    move v2, v4

    :goto_7
    iget-object v7, v0, Landroidx/leanback/widget/StaggeredGridDefault;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v7}, Landroidx/collection/CircularArray;->size()I

    move-result v7

    if-lez v7, :cond_b

    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGridDefault;->getLastIndex()I

    move-result v7

    invoke-virtual {p0, v7}, Landroidx/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v7

    iget v7, v7, Landroidx/leanback/widget/StaggeredGrid$Location;->row:I

    add-int/2addr v7, v6

    goto :goto_8

    :cond_b
    move v7, v2

    :goto_8
    iget v8, v0, Landroidx/leanback/widget/StaggeredGridDefault;->mNumRows:I

    rem-int/2addr v7, v8

    const/4 v9, 0x0

    const/4 v8, 0x0

    :goto_9
    const/4 v10, 0x0

    :goto_a
    iget v11, v0, Landroidx/leanback/widget/StaggeredGridDefault;->mNumRows:I

    if-ge v7, v11, :cond_1e

    if-eq v2, v1, :cond_1d

    if-nez p2, :cond_c

    invoke-virtual/range {p0 .. p1}, Landroidx/leanback/widget/StaggeredGridDefault;->checkAppendOverLimit(I)Z

    move-result v11

    if-eqz v11, :cond_c

    goto/16 :goto_18

    :cond_c
    iget-boolean v11, v0, Landroidx/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_d

    invoke-virtual {p0, v7}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v11

    goto :goto_b

    :cond_d
    invoke-virtual {p0, v7}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v11

    :goto_b
    const v12, 0x7fffffff

    if-eq v11, v12, :cond_10

    if-ne v11, v3, :cond_e

    goto :goto_d

    :cond_e
    iget-boolean v12, v0, Landroidx/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v12, :cond_f

    iget v12, v0, Landroidx/leanback/widget/StaggeredGridDefault;->mSpacing:I

    neg-int v12, v12

    goto :goto_c

    :cond_f
    iget v12, v0, Landroidx/leanback/widget/StaggeredGridDefault;->mSpacing:I

    :goto_c
    add-int/2addr v11, v12

    goto :goto_11

    :cond_10
    :goto_d
    if-nez v7, :cond_13

    iget-boolean v13, v0, Landroidx/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v13, :cond_11

    iget v13, v0, Landroidx/leanback/widget/StaggeredGridDefault;->mNumRows:I

    sub-int/2addr v13, v6

    invoke-virtual {p0, v13}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v13

    goto :goto_e

    :cond_11
    iget v13, v0, Landroidx/leanback/widget/StaggeredGridDefault;->mNumRows:I

    sub-int/2addr v13, v6

    invoke-virtual {p0, v13}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v13

    :goto_e
    move v11, v13

    if-eq v11, v12, :cond_15

    if-eq v11, v3, :cond_15

    iget-boolean v12, v0, Landroidx/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v12, :cond_12

    iget v12, v0, Landroidx/leanback/widget/StaggeredGridDefault;->mSpacing:I

    neg-int v12, v12

    goto :goto_f

    :cond_12
    iget v12, v0, Landroidx/leanback/widget/StaggeredGridDefault;->mSpacing:I

    :goto_f
    add-int/2addr v11, v12

    goto :goto_11

    :cond_13
    iget-boolean v12, v0, Landroidx/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v12, :cond_14

    add-int/lit8 v12, v7, -0x1

    invoke-virtual {p0, v12}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v12

    goto :goto_10

    :cond_14
    add-int/lit8 v12, v7, -0x1

    invoke-virtual {p0, v12}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v12

    :goto_10
    move v11, v12

    :cond_15
    :goto_11
    add-int/lit8 v12, v2, 0x1

    invoke-virtual {p0, v2, v7, v11}, Landroidx/leanback/widget/StaggeredGridDefault;->appendVisibleItemToRow(III)I

    move-result v2

    const/4 v10, 0x1

    if-eqz v8, :cond_1b

    :goto_12
    iget-boolean v13, v0, Landroidx/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v13, :cond_16

    sub-int v13, v11, v2

    if-le v13, v9, :cond_1a

    goto :goto_13

    :cond_16
    add-int v13, v11, v2

    if-ge v13, v9, :cond_1a

    :goto_13
    if-eq v12, v1, :cond_19

    if-nez p2, :cond_17

    invoke-virtual/range {p0 .. p1}, Landroidx/leanback/widget/StaggeredGridDefault;->checkAppendOverLimit(I)Z

    move-result v13

    if-eqz v13, :cond_17

    goto :goto_15

    :cond_17
    iget-boolean v13, v0, Landroidx/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v13, :cond_18

    neg-int v13, v2

    iget v14, v0, Landroidx/leanback/widget/StaggeredGridDefault;->mSpacing:I

    sub-int/2addr v13, v14

    goto :goto_14

    :cond_18
    iget v13, v0, Landroidx/leanback/widget/StaggeredGridDefault;->mSpacing:I

    add-int/2addr v13, v2

    :goto_14
    add-int/2addr v11, v13

    add-int/lit8 v13, v12, 0x1

    invoke-virtual {p0, v12, v7, v11}, Landroidx/leanback/widget/StaggeredGridDefault;->appendVisibleItemToRow(III)I

    move-result v2

    move v12, v13

    goto :goto_12

    :cond_19
    :goto_15
    return v10

    :cond_1a
    move v2, v12

    goto :goto_17

    :cond_1b
    const/4 v8, 0x1

    iget-boolean v13, v0, Landroidx/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v13, :cond_1c

    invoke-virtual {p0, v7}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v13

    goto :goto_16

    :cond_1c
    invoke-virtual {p0, v7}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v13

    :goto_16
    move v9, v13

    move v2, v12

    :goto_17
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_a

    :cond_1d
    :goto_18
    return v10

    :cond_1e
    if-eqz p2, :cond_1f

    return v10

    :cond_1f
    iget-boolean v11, v0, Landroidx/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_20

    invoke-virtual {p0, v4, v5}, Landroidx/leanback/widget/StaggeredGridDefault;->findRowMin(Z[I)I

    move-result v11

    goto :goto_19

    :cond_20
    invoke-virtual {p0, v6, v5}, Landroidx/leanback/widget/StaggeredGridDefault;->findRowMax(Z[I)I

    move-result v11

    :goto_19
    move v9, v11

    const/4 v7, 0x0

    goto/16 :goto_a
.end method

.method public findRowMax(ZI[I)I
    .locals 9

    iget-object v0, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v0, p2}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroidx/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v1

    iget v2, v1, Landroidx/leanback/widget/StaggeredGrid$Location;->row:I

    move v3, p2

    const/4 v4, 0x1

    move v5, v2

    iget-boolean v6, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v6, :cond_2

    move v6, v0

    add-int/lit8 v7, p2, 0x1

    :goto_0
    iget v8, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mNumRows:I

    if-ge v4, v8, :cond_5

    iget v8, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    if-gt v7, v8, :cond_5

    invoke-virtual {p0, v7}, Landroidx/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v1

    iget v8, v1, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    add-int/2addr v0, v8

    iget v8, v1, Landroidx/leanback/widget/StaggeredGrid$Location;->row:I

    if-eq v8, v5, :cond_1

    iget v5, v1, Landroidx/leanback/widget/StaggeredGrid$Location;->row:I

    add-int/lit8 v4, v4, 0x1

    if-eqz p1, :cond_0

    if-le v0, v6, :cond_1

    goto :goto_1

    :cond_0
    if-ge v0, v6, :cond_1

    :goto_1
    move v2, v5

    move v6, v0

    move v3, v7

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    iget-object v6, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v6, p2}, Landroidx/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v6

    add-int/2addr v6, v0

    add-int/lit8 v7, p2, -0x1

    :goto_2
    iget v8, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mNumRows:I

    if-ge v4, v8, :cond_5

    iget v8, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    if-lt v7, v8, :cond_5

    iget v8, v1, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    sub-int/2addr v0, v8

    invoke-virtual {p0, v7}, Landroidx/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v1

    iget v8, v1, Landroidx/leanback/widget/StaggeredGrid$Location;->row:I

    if-eq v8, v5, :cond_4

    iget v5, v1, Landroidx/leanback/widget/StaggeredGrid$Location;->row:I

    add-int/lit8 v4, v4, 0x1

    iget-object v8, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v8, v7}, Landroidx/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v8

    add-int/2addr v8, v0

    if-eqz p1, :cond_3

    if-le v8, v6, :cond_4

    goto :goto_3

    :cond_3
    if-ge v8, v6, :cond_4

    :goto_3
    move v2, v5

    move v6, v8

    move v3, v7

    :cond_4
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_5
    if-eqz p3, :cond_6

    const/4 v7, 0x0

    aput v2, p3, v7

    const/4 v7, 0x1

    aput v3, p3, v7

    :cond_6
    return v6
.end method

.method public findRowMin(ZI[I)I
    .locals 9

    iget-object v0, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v0, p2}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroidx/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v1

    iget v2, v1, Landroidx/leanback/widget/StaggeredGrid$Location;->row:I

    move v3, p2

    const/4 v4, 0x1

    move v5, v2

    iget-boolean v6, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v6, p2}, Landroidx/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v6

    sub-int v6, v0, v6

    add-int/lit8 v7, p2, -0x1

    :goto_0
    iget v8, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mNumRows:I

    if-ge v4, v8, :cond_5

    iget v8, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    if-lt v7, v8, :cond_5

    iget v8, v1, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    sub-int/2addr v0, v8

    invoke-virtual {p0, v7}, Landroidx/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v1

    iget v8, v1, Landroidx/leanback/widget/StaggeredGrid$Location;->row:I

    if-eq v8, v5, :cond_1

    iget v5, v1, Landroidx/leanback/widget/StaggeredGrid$Location;->row:I

    add-int/lit8 v4, v4, 0x1

    iget-object v8, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v8, v7}, Landroidx/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v8

    sub-int v8, v0, v8

    if-eqz p1, :cond_0

    if-le v8, v6, :cond_1

    goto :goto_1

    :cond_0
    if-ge v8, v6, :cond_1

    :goto_1
    move v6, v8

    move v2, v5

    move v3, v7

    :cond_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    :cond_2
    move v6, v0

    add-int/lit8 v7, p2, 0x1

    :goto_2
    iget v8, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mNumRows:I

    if-ge v4, v8, :cond_5

    iget v8, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    if-gt v7, v8, :cond_5

    invoke-virtual {p0, v7}, Landroidx/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v1

    iget v8, v1, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    add-int/2addr v0, v8

    iget v8, v1, Landroidx/leanback/widget/StaggeredGrid$Location;->row:I

    if-eq v8, v5, :cond_4

    iget v5, v1, Landroidx/leanback/widget/StaggeredGrid$Location;->row:I

    add-int/lit8 v4, v4, 0x1

    if-eqz p1, :cond_3

    if-le v0, v6, :cond_4

    goto :goto_3

    :cond_3
    if-ge v0, v6, :cond_4

    :goto_3
    move v6, v0

    move v2, v5

    move v3, v7

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    if-eqz p3, :cond_6

    const/4 v7, 0x0

    aput v2, p3, v7

    const/4 v7, 0x1

    aput v3, p3, v7

    :cond_6
    return v6
.end method

.method getRowMax(I)I
    .locals 5

    iget v0, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    const/high16 v1, -0x80000000

    if-gez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget v2, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    invoke-interface {v0, v2}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    iget v2, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    invoke-virtual {p0, v2}, Landroidx/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    iget v2, v2, Landroidx/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v2, p1, :cond_1

    return v0

    :cond_1
    iget v2, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    add-int/lit8 v2, v2, 0x1

    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGridDefault;->getLastIndex()I

    move-result v3

    if-gt v2, v3, :cond_3

    invoke-virtual {p0, v2}, Landroidx/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v3

    iget v4, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    add-int/2addr v0, v4

    iget v4, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v4, p1, :cond_2

    return v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    goto :goto_2

    :cond_4
    iget-object v0, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget v2, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    invoke-interface {v0, v2}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    iget v2, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    invoke-virtual {p0, v2}, Landroidx/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    iget v3, v2, Landroidx/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v3, p1, :cond_5

    iget v1, v2, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    add-int/2addr v1, v0

    return v1

    :cond_5
    iget v3, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    add-int/lit8 v3, v3, -0x1

    :goto_1
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGridDefault;->getFirstIndex()I

    move-result v4

    if-lt v3, v4, :cond_7

    iget v4, v2, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    sub-int/2addr v0, v4

    invoke-virtual {p0, v3}, Landroidx/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    iget v4, v2, Landroidx/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v4, p1, :cond_6

    iget v1, v2, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    add-int/2addr v1, v0

    return v1

    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_7
    :goto_2
    return v1
.end method

.method getRowMin(I)I
    .locals 5

    iget v0, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    const v1, 0x7fffffff

    if-gez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget v2, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    invoke-interface {v0, v2}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    iget v2, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    invoke-virtual {p0, v2}, Landroidx/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    iget v3, v2, Landroidx/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v3, p1, :cond_1

    iget v1, v2, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    sub-int v1, v0, v1

    return v1

    :cond_1
    iget v3, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    add-int/lit8 v3, v3, -0x1

    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGridDefault;->getFirstIndex()I

    move-result v4

    if-lt v3, v4, :cond_3

    iget v4, v2, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    sub-int/2addr v0, v4

    invoke-virtual {p0, v3}, Landroidx/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    iget v4, v2, Landroidx/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v4, p1, :cond_2

    iget v1, v2, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    sub-int v1, v0, v1

    return v1

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    goto :goto_2

    :cond_4
    iget-object v0, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget v2, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    invoke-interface {v0, v2}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    iget v2, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    invoke-virtual {p0, v2}, Landroidx/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    iget v2, v2, Landroidx/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v2, p1, :cond_5

    return v0

    :cond_5
    iget v2, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    add-int/lit8 v2, v2, 0x1

    :goto_1
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGridDefault;->getLastIndex()I

    move-result v3

    if-gt v2, v3, :cond_7

    invoke-virtual {p0, v2}, Landroidx/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v3

    iget v4, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    add-int/2addr v0, v4

    iget v4, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v4, p1, :cond_6

    return v0

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    return v1
.end method

.method protected prependVisibleItemsWithoutCache(IZ)Z
    .locals 13

    iget v0, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    const v1, 0x7fffffff

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v0, :cond_9

    iget v0, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGridDefault;->getFirstIndex()I

    move-result v5

    if-le v0, v5, :cond_0

    return v3

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    sub-int/2addr v0, v4

    iget v5, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    invoke-virtual {p0, v5}, Landroidx/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v5

    iget v5, v5, Landroidx/leanback/widget/StaggeredGrid$Location;->row:I

    invoke-direct {p0, v3}, Landroidx/leanback/widget/StaggeredGridDefault;->findRowEdgeLimitSearchIndex(Z)I

    move-result v6

    if-gez v6, :cond_4

    add-int/lit8 v5, v5, -0x1

    const v7, 0x7fffffff

    iget v8, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mNumRows:I

    sub-int/2addr v8, v4

    :goto_0
    if-ltz v8, :cond_3

    iget-boolean v9, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v9, :cond_1

    invoke-virtual {p0, v8}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v9

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v8}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v9

    :goto_1
    move v7, v9

    if-eq v7, v1, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    :cond_3
    :goto_2
    goto :goto_4

    :cond_4
    iget-boolean v7, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v7, :cond_5

    invoke-virtual {p0, v4, v6, v2}, Landroidx/leanback/widget/StaggeredGridDefault;->findRowMax(ZI[I)I

    move-result v7

    goto :goto_3

    :cond_5
    invoke-virtual {p0, v3, v6, v2}, Landroidx/leanback/widget/StaggeredGridDefault;->findRowMin(ZI[I)I

    move-result v7

    :goto_3
    nop

    :goto_4
    iget-boolean v8, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v8, :cond_6

    invoke-virtual {p0, v5}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v8

    if-lt v8, v7, :cond_8

    goto :goto_5

    :cond_6
    invoke-virtual {p0, v5}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v8

    if-gt v8, v7, :cond_8

    :goto_5
    add-int/lit8 v5, v5, -0x1

    if-gez v5, :cond_8

    iget v8, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mNumRows:I

    add-int/lit8 v5, v8, -0x1

    iget-boolean v8, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v8, :cond_7

    invoke-virtual {p0, v4, v2}, Landroidx/leanback/widget/StaggeredGridDefault;->findRowMax(Z[I)I

    move-result v8

    goto :goto_6

    :cond_7
    invoke-virtual {p0, v3, v2}, Landroidx/leanback/widget/StaggeredGridDefault;->findRowMin(Z[I)I

    move-result v8

    :goto_6
    move v7, v8

    :cond_8
    const/4 v6, 0x1

    goto :goto_9

    :cond_9
    iget v0, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mStartIndex:I

    const/4 v5, -0x1

    if-eq v0, v5, :cond_a

    iget v0, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mStartIndex:I

    goto :goto_7

    :cond_a
    move v0, v3

    :goto_7
    iget-object v5, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v5}, Landroidx/collection/CircularArray;->size()I

    move-result v5

    if-lez v5, :cond_b

    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGridDefault;->getFirstIndex()I

    move-result v5

    invoke-virtual {p0, v5}, Landroidx/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v5

    iget v5, v5, Landroidx/leanback/widget/StaggeredGrid$Location;->row:I

    iget v6, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mNumRows:I

    add-int/2addr v5, v6

    sub-int/2addr v5, v4

    goto :goto_8

    :cond_b
    move v5, v0

    :goto_8
    iget v6, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mNumRows:I

    rem-int/2addr v5, v6

    const/4 v7, 0x0

    const/4 v6, 0x0

    :goto_9
    const/4 v8, 0x0

    :goto_a
    if-ltz v5, :cond_1e

    if-ltz v0, :cond_1d

    if-nez p2, :cond_c

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/StaggeredGridDefault;->checkPrependOverLimit(I)Z

    move-result v9

    if-eqz v9, :cond_c

    goto/16 :goto_18

    :cond_c
    iget-boolean v9, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v9, :cond_d

    invoke-virtual {p0, v5}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v9

    goto :goto_b

    :cond_d
    invoke-virtual {p0, v5}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v9

    :goto_b
    const/high16 v10, -0x80000000

    if-eq v9, v1, :cond_10

    if-ne v9, v10, :cond_e

    goto :goto_d

    :cond_e
    iget-boolean v10, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_f

    iget v10, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mSpacing:I

    goto :goto_c

    :cond_f
    iget v10, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mSpacing:I

    neg-int v10, v10

    :goto_c
    add-int/2addr v9, v10

    goto :goto_11

    :cond_10
    :goto_d
    iget v11, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mNumRows:I

    sub-int/2addr v11, v4

    if-ne v5, v11, :cond_13

    iget-boolean v11, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_11

    invoke-virtual {p0, v3}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v11

    goto :goto_e

    :cond_11
    invoke-virtual {p0, v3}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v11

    :goto_e
    move v9, v11

    if-eq v9, v1, :cond_15

    if-eq v9, v10, :cond_15

    iget-boolean v10, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_12

    iget v10, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mSpacing:I

    goto :goto_f

    :cond_12
    iget v10, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mSpacing:I

    neg-int v10, v10

    :goto_f
    add-int/2addr v9, v10

    goto :goto_11

    :cond_13
    iget-boolean v10, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_14

    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0, v10}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v10

    goto :goto_10

    :cond_14
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0, v10}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v10

    :goto_10
    move v9, v10

    :cond_15
    :goto_11
    add-int/lit8 v10, v0, -0x1

    invoke-virtual {p0, v0, v5, v9}, Landroidx/leanback/widget/StaggeredGridDefault;->prependVisibleItemToRow(III)I

    move-result v0

    const/4 v8, 0x1

    if-eqz v6, :cond_1b

    :goto_12
    iget-boolean v11, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_16

    add-int v11, v9, v0

    if-ge v11, v7, :cond_1a

    goto :goto_13

    :cond_16
    sub-int v11, v9, v0

    if-le v11, v7, :cond_1a

    :goto_13
    if-ltz v10, :cond_19

    if-nez p2, :cond_17

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/StaggeredGridDefault;->checkPrependOverLimit(I)Z

    move-result v11

    if-eqz v11, :cond_17

    goto :goto_15

    :cond_17
    iget-boolean v11, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_18

    iget v11, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mSpacing:I

    add-int/2addr v11, v0

    goto :goto_14

    :cond_18
    neg-int v11, v0

    iget v12, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mSpacing:I

    sub-int/2addr v11, v12

    :goto_14
    add-int/2addr v9, v11

    add-int/lit8 v11, v10, -0x1

    invoke-virtual {p0, v10, v5, v9}, Landroidx/leanback/widget/StaggeredGridDefault;->prependVisibleItemToRow(III)I

    move-result v0

    move v10, v11

    goto :goto_12

    :cond_19
    :goto_15
    return v8

    :cond_1a
    move v0, v10

    goto :goto_17

    :cond_1b
    const/4 v6, 0x1

    iget-boolean v11, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_1c

    invoke-virtual {p0, v5}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v11

    goto :goto_16

    :cond_1c
    invoke-virtual {p0, v5}, Landroidx/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v11

    :goto_16
    move v7, v11

    move v0, v10

    :goto_17
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_a

    :cond_1d
    :goto_18
    return v8

    :cond_1e
    if-eqz p2, :cond_1f

    return v8

    :cond_1f
    iget-boolean v9, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v9, :cond_20

    invoke-virtual {p0, v4, v2}, Landroidx/leanback/widget/StaggeredGridDefault;->findRowMax(Z[I)I

    move-result v9

    goto :goto_19

    :cond_20
    invoke-virtual {p0, v3, v2}, Landroidx/leanback/widget/StaggeredGridDefault;->findRowMin(Z[I)I

    move-result v9

    :goto_19
    move v7, v9

    iget v9, p0, Landroidx/leanback/widget/StaggeredGridDefault;->mNumRows:I

    add-int/lit8 v5, v9, -0x1

    goto/16 :goto_a
.end method
