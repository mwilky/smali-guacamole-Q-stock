.class public Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;
.super Ljava/lang/Object;
.source "SimpleArrayMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static mBaseCache:[Ljava/lang/Object;

.field static mBaseCacheSize:I

.field static mTwiceBaseCache:[Ljava/lang/Object;

.field static mTwiceBaseCacheSize:I


# instance fields
.field mArray:[Ljava/lang/Object;

.field mHashes:[I

.field mSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/oneplus/lib/widget/recyclerview/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mHashes:[I

    sget-object v0, Lcom/oneplus/lib/widget/recyclerview/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mSize:I

    return-void
.end method

.method private allocArrays(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-ne p1, v3, :cond_1

    const-class v3, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    monitor-enter v3

    :try_start_0
    sget-object v4, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    if-eqz v4, :cond_0

    sget-object p1, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    aget-object v4, p1, v1

    check-cast v4, [Ljava/lang/Object;

    sput-object v4, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    aget-object v4, p1, v2

    check-cast v4, [I

    iput-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mHashes:[I

    aput-object v0, p1, v2

    aput-object v0, p1, v1

    sget p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mTwiceBaseCacheSize:I

    sub-int/2addr p0, v2

    sput p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mTwiceBaseCacheSize:I

    monitor-exit v3

    return-void

    :cond_0
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    const/4 v3, 0x4

    if-ne p1, v3, :cond_3

    const-class v3, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    monitor-enter v3

    :try_start_1
    sget-object v4, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    if-eqz v4, :cond_2

    sget-object p1, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    aget-object v4, p1, v1

    check-cast v4, [Ljava/lang/Object;

    sput-object v4, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    aget-object v4, p1, v2

    check-cast v4, [I

    iput-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mHashes:[I

    aput-object v0, p1, v2

    aput-object v0, p1, v1

    sget p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mBaseCacheSize:I

    sub-int/2addr p0, v2

    sput p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mBaseCacheSize:I

    monitor-exit v3

    return-void

    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception p0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_3
    :goto_0
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mHashes:[I

    shl-int/2addr p1, v2

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    return-void
.end method

.method private static freeArrays([I[Ljava/lang/Object;I)V
    .locals 7

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/16 v4, 0xa

    const/4 v5, 0x1

    const/16 v6, 0x8

    if-ne v0, v6, :cond_2

    const-class v0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    monitor-enter v0

    :try_start_0
    sget v6, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mTwiceBaseCacheSize:I

    if-ge v6, v4, :cond_1

    sget-object v4, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    aput-object v4, p1, v3

    aput-object p0, p1, v5

    shl-int/lit8 p0, p2, 0x1

    sub-int/2addr p0, v5

    :goto_0
    if-lt p0, v2, :cond_0

    aput-object v1, p1, p0

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    sput-object p1, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    sget p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mTwiceBaseCacheSize:I

    add-int/2addr p0, v5

    sput p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mTwiceBaseCacheSize:I

    :cond_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    array-length v0, p0

    const/4 v6, 0x4

    if-ne v0, v6, :cond_5

    const-class v0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    monitor-enter v0

    :try_start_1
    sget v6, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mBaseCacheSize:I

    if-ge v6, v4, :cond_4

    sget-object v4, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    aput-object v4, p1, v3

    aput-object p0, p1, v5

    shl-int/lit8 p0, p2, 0x1

    sub-int/2addr p0, v5

    :goto_1
    if-lt p0, v2, :cond_3

    aput-object v1, p1, p0

    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_3
    sput-object p1, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    sget p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mBaseCacheSize:I

    add-int/2addr p0, v5

    sput p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mBaseCacheSize:I

    :cond_4
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mSize:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mHashes:[I

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    sget-object v0, Lcom/oneplus/lib/widget/recyclerview/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mHashes:[I

    sget-object v0, Lcom/oneplus/lib/widget/recyclerview/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mSize:I

    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public ensureCapacity(I)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mHashes:[I

    array-length v1, v0

    if-ge v1, p1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->allocArrays(I)V

    iget p1, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mSize:I

    if-lez p1, :cond_0

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mHashes:[I

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mSize:I

    shl-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget p0, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mSize:I

    invoke-static {v0, v1, p0}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    move v1, v2

    :goto_0
    :try_start_0
    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mSize:I

    if-ge v1, v3, :cond_5

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_3

    if-nez v5, :cond_2

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_2
    return v2

    :cond_3
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_4

    return v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return v0

    :catch_0
    :cond_6
    return v2
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p0, p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public hashCode()I
    .locals 8

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mHashes:[I

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget p0, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mSize:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v5, v2

    move v2, v3

    move v4, v2

    :goto_0
    if-ge v2, p0, :cond_1

    aget-object v6, v1, v5

    aget v7, v0, v2

    if-nez v6, :cond_0

    move v6, v3

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :goto_1
    xor-int/2addr v6, v7

    add-int/2addr v4, v6

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    :cond_1
    return v4
.end method

.method indexOf(Ljava/lang/Object;I)I
    .locals 5

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mSize:I

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mHashes:[I

    invoke-static {v1, v0, p2}, Lcom/oneplus/lib/widget/recyclerview/ContainerHelpers;->binarySearch([III)I

    move-result v1

    if-gez v1, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v1, 0x1

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mHashes:[I

    aget v3, v3, v2

    if-ne v3, p2, :cond_4

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_6

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mHashes:[I

    aget v0, v0, v1

    if-ne v0, p2, :cond_6

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_6
    not-int p0, v2

    return p0
.end method

.method public indexOfKey(Ljava/lang/Object;)I
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->indexOfNull()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result p0

    :goto_0
    return p0
.end method

.method indexOfNull()I
    .locals 5

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mSize:I

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mHashes:[I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/oneplus/lib/widget/recyclerview/ContainerHelpers;->binarySearch([III)I

    move-result v1

    if-gez v1, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    if-nez v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v1, 0x1

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mHashes:[I

    aget v3, v3, v2

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    if-nez v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_6

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mHashes:[I

    aget v0, v0, v1

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v0, v0, v3

    if-nez v0, :cond_5

    return v1

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_6
    not-int p0, v2

    return p0
.end method

.method indexOfValue(Ljava/lang/Object;)I
    .locals 4

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mSize:I

    mul-int/lit8 v0, v0, 0x2

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v1, 0x1

    if-nez p1, :cond_1

    move p1, v1

    :goto_0
    if-ge p1, v0, :cond_3

    aget-object v2, p0, p1

    if-nez v2, :cond_0

    shr-int/lit8 p0, p1, 0x1

    return p0

    :cond_0
    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_3

    aget-object v3, p0, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    shr-int/lit8 p0, v2, 0x1

    return p0

    :cond_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mSize:I

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public keyAt(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    aget-object p0, p0, p1

    return-object p0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->indexOfNull()I

    move-result v1

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v2

    move v7, v2

    move v2, v1

    move v1, v7

    :goto_0
    if-ltz v1, :cond_1

    shl-int/lit8 p1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    aget-object v0, p0, p1

    aput-object p2, p0, p1

    return-object v0

    :cond_1
    not-int v1, v1

    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mSize:I

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mHashes:[I

    array-length v4, v4

    if-lt v3, v4, :cond_5

    const/4 v4, 0x4

    const/16 v5, 0x8

    if-lt v3, v5, :cond_2

    shr-int/lit8 v4, v3, 0x1

    add-int/2addr v4, v3

    goto :goto_1

    :cond_2
    if-lt v3, v4, :cond_3

    move v4, v5

    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mHashes:[I

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    invoke-direct {p0, v4}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->allocArrays(I)V

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mHashes:[I

    array-length v6, v4

    if-lez v6, :cond_4

    array-length v6, v3

    invoke-static {v3, v0, v4, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    array-length v6, v5

    invoke-static {v5, v0, v4, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mSize:I

    invoke-static {v3, v5, v0}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    :cond_5
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mSize:I

    if-ge v1, v0, :cond_6

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mHashes:[I

    add-int/lit8 v4, v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {v3, v1, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    shl-int/lit8 v4, v4, 0x1

    iget v5, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mSize:I

    sub-int/2addr v5, v1

    shl-int/lit8 v5, v5, 0x1

    invoke-static {v0, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mHashes:[I

    aput v2, v0, v1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, v1, 0x1

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    aput-object p2, v0, v1

    iget p1, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mSize:I

    const/4 p0, 0x0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, v1, 0x1

    aget-object v2, v0, v2

    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mSize:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gt v3, v5, :cond_0

    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mHashes:[I

    invoke-static {p1, v0, v3}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    sget-object p1, Lcom/oneplus/lib/widget/recyclerview/ContainerHelpers;->EMPTY_INTS:[I

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mHashes:[I

    sget-object p1, Lcom/oneplus/lib/widget/recyclerview/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iput v4, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mSize:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mHashes:[I

    array-length v6, v0

    const/16 v7, 0x8

    if-le v6, v7, :cond_3

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    if-ge v3, v0, :cond_3

    if-le v3, v7, :cond_1

    shr-int/lit8 v0, v3, 0x1

    add-int v7, v3, v0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mHashes:[I

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    invoke-direct {p0, v7}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->allocArrays(I)V

    iget v6, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mSize:I

    sub-int/2addr v6, v5

    iput v6, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mSize:I

    if-lez p1, :cond_2

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mHashes:[I

    invoke-static {v0, v4, v6, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    invoke-static {v3, v4, v6, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget v4, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mSize:I

    if-ge p1, v4, :cond_5

    add-int/lit8 v6, p1, 0x1

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mHashes:[I

    sub-int/2addr v4, p1

    invoke-static {v0, v6, v7, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    shl-int/lit8 v0, v6, 0x1

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget p0, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mSize:I

    sub-int/2addr p0, p1

    shl-int/2addr p0, v5

    invoke-static {v3, v0, v4, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mSize:I

    sub-int/2addr v0, v5

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mSize:I

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mSize:I

    if-ge p1, v0, :cond_4

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mHashes:[I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v3, v4, v3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v4, 0x1

    iget v4, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mSize:I

    sub-int/2addr v4, p1

    shl-int/lit8 p1, v4, 0x1

    invoke-static {v0, v3, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget p0, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mSize:I

    shl-int/lit8 v0, p0, 0x1

    const/4 v1, 0x0

    aput-object v1, p1, v0

    shl-int/2addr p0, v5

    add-int/2addr p0, v5

    aput-object v1, p1, p0

    :cond_5
    :goto_0
    return-object v2
.end method

.method public setValueAt(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    aget-object v0, p0, p1

    aput-object p2, p0, p1

    return-object v0
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mSize:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p0, "{}"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mSize:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mSize:I

    if-ge v1, v2, :cond_4

    if-lez v1, :cond_1

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "(this Map)"

    if-eq v2, p0, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p0, p0, p1

    return-object p0
.end method
