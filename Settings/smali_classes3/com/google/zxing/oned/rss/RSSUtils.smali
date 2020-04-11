.class public final Lcom/google/zxing/oned/rss/RSSUtils;
.super Ljava/lang/Object;
.source "RSSUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static combins(II)I
    .locals 5

    sub-int v0, p0, p1

    if-le v0, p1, :cond_0

    move v0, p1

    sub-int v1, p0, p1

    goto :goto_0

    :cond_0
    sub-int v0, p0, p1

    move v1, p1

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x1

    move v4, p0

    :goto_1
    if-le v4, v1, :cond_2

    mul-int/2addr v2, v4

    if-gt v3, v0, :cond_1

    div-int/2addr v2, v3

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-gt v3, v0, :cond_3

    div-int/2addr v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return v2
.end method

.method static elements([III)[I
    .locals 9

    array-length v0, p0

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    shl-int/lit8 v1, p2, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v2, v0, v3

    const/16 v3, 0xa

    const/4 v4, 0x1

    const/4 v5, 0x1

    :goto_0
    add-int/lit8 v6, v1, -0x2

    if-ge v5, v6, :cond_1

    add-int/lit8 v6, v5, -0x1

    aget v6, p0, v6

    add-int/lit8 v7, v5, -0x1

    aget v7, v0, v7

    sub-int/2addr v6, v7

    aput v6, v0, v5

    add-int/lit8 v6, v5, 0x1

    aget v7, p0, v5

    aget v8, v0, v5

    sub-int/2addr v7, v8

    aput v7, v0, v6

    aget v6, v0, v5

    add-int/lit8 v7, v5, 0x1

    aget v7, v0, v7

    add-int/2addr v6, v7

    add-int/2addr v4, v6

    aget v6, v0, v5

    if-ge v6, v3, :cond_0

    aget v3, v0, v5

    :cond_0
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    :cond_1
    add-int/lit8 v6, v1, -0x1

    sub-int v7, p1, v4

    aput v7, v0, v6

    add-int/lit8 v6, v1, -0x1

    aget v6, v0, v6

    if-ge v6, v3, :cond_2

    add-int/lit8 v6, v1, -0x1

    aget v3, v0, v6

    :cond_2
    if-le v3, v2, :cond_3

    const/4 v2, 0x0

    move v5, v2

    :goto_1
    if-ge v5, v1, :cond_3

    aget v2, v0, v5

    add-int/lit8 v6, v3, -0x1

    add-int/2addr v2, v6

    aput v2, v0, v5

    add-int/lit8 v2, v5, 0x1

    aget v6, v0, v2

    add-int/lit8 v7, v3, -0x1

    sub-int/2addr v6, v7

    aput v6, v0, v2

    add-int/lit8 v5, v5, 0x2

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public static getRSSvalue([IIZ)I
    .locals 12

    array-length v0, p0

    const/4 v1, 0x0

    move-object v2, p0

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, v2, v4

    add-int/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    add-int/lit8 v5, v0, -0x1

    if-ge v4, v5, :cond_6

    const/4 v5, 0x1

    const/4 v6, 0x1

    shl-int v7, v6, v4

    or-int/2addr v3, v7

    :goto_2
    aget v7, p0, v4

    if-ge v5, v7, :cond_5

    sub-int v7, v1, v5

    sub-int/2addr v7, v6

    sub-int v8, v0, v4

    add-int/lit8 v8, v8, -0x2

    invoke-static {v7, v8}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    move-result v7

    if-eqz p2, :cond_1

    if-nez v3, :cond_1

    sub-int v8, v1, v5

    sub-int v9, v0, v4

    sub-int/2addr v9, v6

    sub-int/2addr v8, v9

    sub-int v9, v0, v4

    sub-int/2addr v9, v6

    if-lt v8, v9, :cond_1

    sub-int v8, v1, v5

    sub-int v9, v0, v4

    sub-int/2addr v8, v9

    sub-int v9, v0, v4

    add-int/lit8 v9, v9, -0x2

    invoke-static {v8, v9}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    move-result v8

    sub-int/2addr v7, v8

    :cond_1
    sub-int v8, v0, v4

    sub-int/2addr v8, v6

    if-le v8, v6, :cond_3

    const/4 v8, 0x0

    sub-int v9, v1, v5

    sub-int v10, v0, v4

    add-int/lit8 v10, v10, -0x2

    sub-int/2addr v9, v10

    :goto_3
    if-le v9, p1, :cond_2

    sub-int v10, v1, v5

    sub-int/2addr v10, v9

    sub-int/2addr v10, v6

    sub-int v11, v0, v4

    add-int/lit8 v11, v11, -0x3

    invoke-static {v10, v11}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    move-result v10

    add-int/2addr v8, v10

    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v9, v0, -0x1

    sub-int/2addr v9, v4

    mul-int/2addr v9, v8

    sub-int/2addr v7, v9

    goto :goto_4

    :cond_3
    sub-int v8, v1, v5

    if-le v8, p1, :cond_4

    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    :cond_4
    :goto_4
    nop

    :goto_5
    add-int/2addr v2, v7

    add-int/lit8 v5, v5, 0x1

    shl-int v7, v6, v4

    not-int v7, v7

    and-int/2addr v3, v7

    goto :goto_2

    :cond_5
    sub-int/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    return v2
.end method

.method static getRSSwidths(IIIIZ)[I
    .locals 10

    new-array v0, p2, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, p2, -0x1

    if-ge v2, v3, :cond_5

    const/4 v3, 0x1

    shl-int v4, v3, v2

    or-int/2addr v1, v4

    const/4 v4, 0x1

    :goto_1
    sub-int v5, p1, v4

    sub-int/2addr v5, v3

    sub-int v6, p2, v2

    add-int/lit8 v6, v6, -0x2

    invoke-static {v5, v6}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    move-result v5

    if-eqz p4, :cond_0

    if-nez v1, :cond_0

    sub-int v6, p1, v4

    sub-int v7, p2, v2

    sub-int/2addr v7, v3

    sub-int/2addr v6, v7

    sub-int v7, p2, v2

    sub-int/2addr v7, v3

    if-lt v6, v7, :cond_0

    sub-int v6, p1, v4

    sub-int v7, p2, v2

    sub-int/2addr v6, v7

    sub-int v7, p2, v2

    add-int/lit8 v7, v7, -0x2

    invoke-static {v6, v7}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    move-result v6

    sub-int/2addr v5, v6

    :cond_0
    sub-int v6, p2, v2

    sub-int/2addr v6, v3

    if-le v6, v3, :cond_2

    const/4 v6, 0x0

    sub-int v7, p1, v4

    sub-int v8, p2, v2

    add-int/lit8 v8, v8, -0x2

    sub-int/2addr v7, v8

    :goto_2
    if-le v7, p3, :cond_1

    sub-int v8, p1, v4

    sub-int/2addr v8, v7

    sub-int/2addr v8, v3

    sub-int v9, p2, v2

    add-int/lit8 v9, v9, -0x3

    invoke-static {v8, v9}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    move-result v8

    add-int/2addr v6, v8

    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, p2, -0x1

    sub-int/2addr v7, v2

    mul-int/2addr v7, v6

    sub-int/2addr v5, v7

    goto :goto_3

    :cond_2
    sub-int v6, p1, v4

    if-le v6, p3, :cond_3

    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    :cond_3
    :goto_3
    nop

    :goto_4
    sub-int/2addr p0, v5

    if-gez p0, :cond_4

    nop

    add-int/2addr p0, v5

    sub-int/2addr p1, v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    shl-int v6, v3, v2

    not-int v6, v6

    and-int/2addr v1, v6

    goto :goto_1

    :cond_5
    aput p1, v0, v2

    return-object v0
.end method
