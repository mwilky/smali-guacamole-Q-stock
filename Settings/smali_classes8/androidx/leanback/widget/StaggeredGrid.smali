.class abstract Landroidx/leanback/widget/StaggeredGrid;
.super Landroidx/leanback/widget/Grid;
.source "StaggeredGrid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/StaggeredGrid$Location;
    }
.end annotation


# instance fields
.field protected mFirstIndex:I

.field protected mLocations:Landroidx/collection/CircularArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/CircularArray<",
            "Landroidx/leanback/widget/StaggeredGrid$Location;",
            ">;"
        }
    .end annotation
.end field

.field protected mPendingItem:Ljava/lang/Object;

.field protected mPendingItemSize:I


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/leanback/widget/Grid;-><init>()V

    new-instance v0, Landroidx/collection/CircularArray;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroidx/collection/CircularArray;-><init>(I)V

    iput-object v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    return-void
.end method

.method private calculateOffsetAfterLastItem(I)I
    .locals 5

    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    if-lt v0, v2, :cond_1

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    iget v3, v2, Landroidx/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v3, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    nop

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v0

    :cond_2
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->isReversedFlow()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    iget v2, v2, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    neg-int v2, v2

    iget v3, p0, Landroidx/leanback/widget/StaggeredGrid;->mSpacing:I

    sub-int/2addr v2, v3

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    iget v2, v2, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    iget v3, p0, Landroidx/leanback/widget/StaggeredGrid;->mSpacing:I

    add-int/2addr v2, v3

    :goto_2
    nop

    add-int/lit8 v3, v0, 0x1

    :goto_3
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v4

    if-gt v3, v4, :cond_4

    invoke-virtual {p0, v3}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v4

    iget v4, v4, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    sub-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    return v2
.end method


# virtual methods
.method protected final appendVisbleItemsWithCache(IZ)Z
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v1}, Landroidx/collection/CircularArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v1, v0, Landroidx/leanback/widget/StaggeredGrid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v1}, Landroidx/leanback/widget/Grid$Provider;->getCount()I

    move-result v1

    iget v3, v0, Landroidx/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    const/4 v4, 0x1

    if-ltz v3, :cond_1

    iget v3, v0, Landroidx/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    add-int/2addr v3, v4

    iget-object v5, v0, Landroidx/leanback/widget/StaggeredGrid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget v6, v0, Landroidx/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    invoke-interface {v5, v6}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v5

    goto :goto_1

    :cond_1
    const v5, 0x7fffffff

    iget v3, v0, Landroidx/leanback/widget/StaggeredGrid;->mStartIndex:I

    const/4 v6, -0x1

    if-eq v3, v6, :cond_2

    iget v3, v0, Landroidx/leanback/widget/StaggeredGrid;->mStartIndex:I

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v6

    add-int/2addr v6, v4

    if-gt v3, v6, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/StaggeredGrid;->getFirstIndex()I

    move-result v6

    if-ge v3, v6, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v6

    if-le v3, v6, :cond_4

    return v2

    :cond_4
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v6

    :goto_2
    if-ge v3, v1, :cond_b

    if-gt v3, v6, :cond_b

    invoke-virtual {v0, v3}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v13

    const v14, 0x7fffffff

    if-eq v5, v14, :cond_5

    iget v7, v13, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    add-int/2addr v5, v7

    :cond_5
    iget v15, v13, Landroidx/leanback/widget/StaggeredGrid$Location;->row:I

    iget-object v7, v0, Landroidx/leanback/widget/StaggeredGrid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget-object v8, v0, Landroidx/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    invoke-interface {v7, v3, v4, v8, v2}, Landroidx/leanback/widget/Grid$Provider;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v12

    iget v7, v13, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    if-eq v12, v7, :cond_6

    iput v12, v13, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    iget-object v7, v0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    sub-int v8, v6, v3

    invoke-virtual {v7, v8}, Landroidx/collection/CircularArray;->removeFromEnd(I)V

    move v6, v3

    :cond_6
    iput v3, v0, Landroidx/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    iget v7, v0, Landroidx/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    if-gez v7, :cond_7

    iput v3, v0, Landroidx/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    :cond_7
    iget-object v7, v0, Landroidx/leanback/widget/StaggeredGrid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget-object v8, v0, Landroidx/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aget-object v8, v8, v2

    move v9, v3

    move v10, v12

    move v11, v15

    move/from16 v16, v12

    move v12, v5

    invoke-interface/range {v7 .. v12}, Landroidx/leanback/widget/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    if-nez p2, :cond_8

    invoke-virtual/range {p0 .. p1}, Landroidx/leanback/widget/StaggeredGrid;->checkAppendOverLimit(I)Z

    move-result v7

    if-eqz v7, :cond_8

    return v4

    :cond_8
    if-ne v5, v14, :cond_9

    iget-object v7, v0, Landroidx/leanback/widget/StaggeredGrid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v7, v3}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v5

    :cond_9
    iget v7, v0, Landroidx/leanback/widget/StaggeredGrid;->mNumRows:I

    sub-int/2addr v7, v4

    if-ne v15, v7, :cond_a

    if-eqz p2, :cond_a

    return v4

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_b
    return v2

    :cond_c
    :goto_3
    iget-object v4, v0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v4}, Landroidx/collection/CircularArray;->clear()V

    return v2
.end method

.method protected final appendVisibleItemToRow(III)I
    .locals 10

    iget v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    add-int/lit8 v1, p1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    const/4 v1, 0x1

    if-gez v0, :cond_3

    iget-object v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v0}, Landroidx/collection/CircularArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v0

    add-int/2addr v0, v1

    if-ne p1, v0, :cond_2

    invoke-direct {p0, p2}, Landroidx/leanback/widget/StaggeredGrid;->calculateOffsetAfterLastItem(I)I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget v2, p0, Landroidx/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    invoke-interface {v0, v2}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    sub-int v0, p3, v0

    :goto_1
    new-instance v2, Landroidx/leanback/widget/StaggeredGrid$Location;

    const/4 v3, 0x0

    invoke-direct {v2, p2, v0, v3}, Landroidx/leanback/widget/StaggeredGrid$Location;-><init>(III)V

    iget-object v4, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v4, v2}, Landroidx/collection/CircularArray;->addLast(Ljava/lang/Object;)V

    iget-object v4, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    if-eqz v4, :cond_4

    iget v3, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItemSize:I

    iput v3, v2, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    iget-object v3, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    const/4 v4, 0x0

    iput-object v4, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    goto :goto_2

    :cond_4
    iget-object v4, p0, Landroidx/leanback/widget/StaggeredGrid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget-object v5, p0, Landroidx/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    invoke-interface {v4, p1, v1, v5, v3}, Landroidx/leanback/widget/Grid$Provider;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v4

    iput v4, v2, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    iget-object v4, p0, Landroidx/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aget-object v3, v4, v3

    :goto_2
    iget-object v4, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v4}, Landroidx/collection/CircularArray;->size()I

    move-result v4

    if-ne v4, v1, :cond_5

    iput p1, p0, Landroidx/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    iput p1, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    iput p1, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    goto :goto_3

    :cond_5
    iget v4, p0, Landroidx/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    if-gez v4, :cond_6

    iput p1, p0, Landroidx/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    iput p1, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    goto :goto_3

    :cond_6
    iget v4, p0, Landroidx/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    add-int/2addr v4, v1

    iput v4, p0, Landroidx/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    :goto_3
    iget-object v4, p0, Landroidx/leanback/widget/StaggeredGrid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget v7, v2, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    move-object v5, v3

    move v6, p1

    move v8, p2

    move v9, p3

    invoke-interface/range {v4 .. v9}, Landroidx/leanback/widget/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    iget v1, v2, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    return v1
.end method

.method protected final appendVisibleItems(IZ)Z
    .locals 4

    iget-object v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroidx/leanback/widget/Grid$Provider;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/StaggeredGrid;->checkAppendOverLimit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/StaggeredGrid;->appendVisbleItemsWithCache(IZ)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    iget-object v3, p0, Landroidx/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aput-object v0, v3, v1

    iput-object v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    return v2

    :cond_2
    :try_start_1
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/StaggeredGrid;->appendVisibleItemsWithoutCache(IZ)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v3, p0, Landroidx/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aput-object v0, v3, v1

    iput-object v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    return v2

    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroidx/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aput-object v0, v3, v1

    iput-object v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    throw v2
.end method

.method protected abstract appendVisibleItemsWithoutCache(IZ)Z
.end method

.method public final debugPrint(Ljava/io/PrintWriter;)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v1}, Landroidx/collection/CircularArray;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v2, v0}, Landroidx/collection/CircularArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/leanback/widget/StaggeredGrid$Location;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    add-int/2addr v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroidx/leanback/widget/StaggeredGrid$Location;->row:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getFirstIndex()I
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    return v0
.end method

.method public final getItemPositionsInRows(II)[Landroidx/collection/CircularIntArray;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/leanback/widget/StaggeredGrid;->mNumRows:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/leanback/widget/StaggeredGrid;->mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/collection/CircularIntArray;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_2

    move v0, p1

    :goto_1
    if-gt v0, p2, :cond_2

    iget-object v1, p0, Landroidx/leanback/widget/StaggeredGrid;->mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    iget v2, v2, Landroidx/leanback/widget/StaggeredGrid$Location;->row:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroidx/collection/CircularIntArray;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1}, Landroidx/collection/CircularIntArray;->getLast()I

    move-result v2

    add-int/lit8 v3, v0, -0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Landroidx/collection/CircularIntArray;->popLast()I

    invoke-virtual {v1, v0}, Landroidx/collection/CircularIntArray;->addLast(I)V

    goto :goto_2

    :cond_1
    invoke-virtual {v1, v0}, Landroidx/collection/CircularIntArray;->addLast(I)V

    invoke-virtual {v1, v0}, Landroidx/collection/CircularIntArray;->addLast(I)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;

    return-object v0
.end method

.method public final getLastIndex()I
    .locals 2

    iget v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    iget-object v1, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v1}, Landroidx/collection/CircularArray;->size()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public bridge synthetic getLocation(I)Landroidx/leanback/widget/Grid$Location;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object p1

    return-object p1
.end method

.method public final getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;
    .locals 2

    iget v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    sub-int v0, p1, v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v1}, Landroidx/collection/CircularArray;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v1, v0}, Landroidx/collection/CircularArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/StaggeredGrid$Location;

    return-object v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public final getSize()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v0}, Landroidx/collection/CircularArray;->size()I

    move-result v0

    return v0
.end method

.method public invalidateItemsAfter(I)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/leanback/widget/Grid;->invalidateItemsAfter(I)V

    iget-object v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/collection/CircularArray;->removeFromEnd(I)V

    iget-object v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v0}, Landroidx/collection/CircularArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    :cond_0
    return-void
.end method

.method protected final prependVisbleItemsWithCache(IZ)Z
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v1}, Landroidx/collection/CircularArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget v1, v0, Landroidx/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    const/4 v3, 0x1

    if-ltz v1, :cond_1

    iget-object v1, v0, Landroidx/leanback/widget/StaggeredGrid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget v4, v0, Landroidx/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    invoke-interface {v1, v4}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v1

    iget v4, v0, Landroidx/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    invoke-virtual {v0, v4}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v4

    iget v4, v4, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    iget v5, v0, Landroidx/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    sub-int/2addr v5, v3

    goto :goto_1

    :cond_1
    const v1, 0x7fffffff

    const/4 v4, 0x0

    iget v5, v0, Landroidx/leanback/widget/StaggeredGrid;->mStartIndex:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    iget v5, v0, Landroidx/leanback/widget/StaggeredGrid;->mStartIndex:I

    goto :goto_0

    :cond_2
    move v5, v2

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v6

    if-gt v5, v6, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/StaggeredGrid;->getFirstIndex()I

    move-result v6

    sub-int/2addr v6, v3

    if-ge v5, v6, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/StaggeredGrid;->getFirstIndex()I

    move-result v6

    if-ge v5, v6, :cond_4

    return v2

    :cond_4
    :goto_1
    iget-object v6, v0, Landroidx/leanback/widget/StaggeredGrid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v6}, Landroidx/leanback/widget/Grid$Provider;->getMinIndex()I

    move-result v6

    iget v7, v0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    :goto_2
    if-lt v5, v6, :cond_9

    invoke-virtual {v0, v5}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v13

    iget v14, v13, Landroidx/leanback/widget/StaggeredGrid$Location;->row:I

    iget-object v7, v0, Landroidx/leanback/widget/StaggeredGrid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget-object v8, v0, Landroidx/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    invoke-interface {v7, v5, v2, v8, v2}, Landroidx/leanback/widget/Grid$Provider;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v15

    iget v7, v13, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    if-eq v15, v7, :cond_5

    iget-object v3, v0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    add-int/lit8 v7, v5, 0x1

    iget v8, v0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroidx/collection/CircularArray;->removeFromStart(I)V

    iget v3, v0, Landroidx/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    iput v3, v0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    iget-object v3, v0, Landroidx/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aget-object v3, v3, v2

    iput-object v3, v0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    iput v15, v0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItemSize:I

    return v2

    :cond_5
    iput v5, v0, Landroidx/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    iget v7, v0, Landroidx/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    if-gez v7, :cond_6

    iput v5, v0, Landroidx/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    :cond_6
    iget-object v7, v0, Landroidx/leanback/widget/StaggeredGrid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget-object v8, v0, Landroidx/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aget-object v8, v8, v2

    sub-int v12, v1, v4

    move v9, v5

    move v10, v15

    move v11, v14

    invoke-interface/range {v7 .. v12}, Landroidx/leanback/widget/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    if-nez p2, :cond_7

    invoke-virtual/range {p0 .. p1}, Landroidx/leanback/widget/StaggeredGrid;->checkPrependOverLimit(I)Z

    move-result v7

    if-eqz v7, :cond_7

    return v3

    :cond_7
    iget-object v7, v0, Landroidx/leanback/widget/StaggeredGrid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v7, v5}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v1

    iget v4, v13, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    if-nez v14, :cond_8

    if-eqz p2, :cond_8

    return v3

    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_9
    return v2

    :cond_a
    :goto_3
    iget-object v3, v0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v3}, Landroidx/collection/CircularArray;->clear()V

    return v2
.end method

.method protected final prependVisibleItemToRow(III)I
    .locals 11

    iget v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getFirstIndex()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    add-int/lit8 v1, p1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    const/4 v1, 0x0

    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    iget-object v2, p0, Landroidx/leanback/widget/StaggeredGrid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget v3, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    invoke-interface {v2, v3}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v2

    new-instance v3, Landroidx/leanback/widget/StaggeredGrid$Location;

    const/4 v4, 0x0

    invoke-direct {v3, p2, v4, v4}, Landroidx/leanback/widget/StaggeredGrid$Location;-><init>(III)V

    iget-object v5, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v5, v3}, Landroidx/collection/CircularArray;->addFirst(Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    if-eqz v5, :cond_3

    iget v4, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItemSize:I

    iput v4, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    iget-object v4, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget-object v1, p0, Landroidx/leanback/widget/StaggeredGrid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget-object v5, p0, Landroidx/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    invoke-interface {v1, p1, v4, v5, v4}, Landroidx/leanback/widget/Grid$Provider;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v1

    iput v1, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    iget-object v1, p0, Landroidx/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aget-object v4, v1, v4

    :goto_2
    iput p1, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    iput p1, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    iget v1, p0, Landroidx/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    if-gez v1, :cond_4

    iput p1, p0, Landroidx/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    :cond_4
    iget-boolean v1, p0, Landroidx/leanback/widget/StaggeredGrid;->mReversedFlow:Z

    if-nez v1, :cond_5

    iget v1, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    sub-int v1, p3, v1

    goto :goto_3

    :cond_5
    iget v1, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    add-int/2addr v1, p3

    :goto_3
    if-eqz v0, :cond_6

    sub-int v5, v2, v1

    iput v5, v0, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    :cond_6
    iget-object v5, p0, Landroidx/leanback/widget/StaggeredGrid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget v8, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    move-object v6, v4

    move v7, p1

    move v9, p2

    move v10, v1

    invoke-interface/range {v5 .. v10}, Landroidx/leanback/widget/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    iget v5, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    return v5
.end method

.method protected final prependVisibleItems(IZ)Z
    .locals 4

    iget-object v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroidx/leanback/widget/Grid$Provider;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/StaggeredGrid;->checkPrependOverLimit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/StaggeredGrid;->prependVisbleItemsWithCache(IZ)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    iget-object v3, p0, Landroidx/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aput-object v0, v3, v1

    iput-object v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    return v2

    :cond_2
    :try_start_1
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/StaggeredGrid;->prependVisibleItemsWithoutCache(IZ)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v3, p0, Landroidx/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aput-object v0, v3, v1

    iput-object v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    return v2

    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroidx/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aput-object v0, v3, v1

    iput-object v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    throw v2
.end method

.method protected abstract prependVisibleItemsWithoutCache(IZ)Z
.end method
