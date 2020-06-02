.class public abstract Lyou/zta/sis/sis/tsu;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final M:J = 0xffffffffL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()[I
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    return-object v0
.end method

.method public static dma([I[I)I
    .locals 10

    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    const-wide/16 v5, 0x0

    add-long/2addr v1, v5

    long-to-int v5, v1

    aput v5, p1, v0

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    const/4 v5, 0x1

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    aput v6, p1, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x2

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    aput v6, p1, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    aput v6, p1, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x4

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    aput v6, p1, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x5

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    aput v6, p1, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x6

    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long v8, p0

    and-long/2addr v3, v8

    add-long/2addr v6, v3

    add-long/2addr v1, v6

    long-to-int p0, v1

    aput p0, p1, v5

    ushr-long p0, v1, v0

    long-to-int p0, p0

    return p0
.end method

.method public static dma([I[I[I)I
    .locals 10

    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    const-wide/16 v5, 0x0

    add-long/2addr v1, v5

    long-to-int v5, v1

    aput v5, p2, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    const/4 v5, 0x1

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x2

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x4

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x5

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x6

    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    sub-long/2addr v6, p0

    add-long/2addr v1, v6

    long-to-int p0, v1

    aput p0, p2, v5

    shr-long p0, v1, v0

    long-to-int p0, p0

    return p0
.end method

.method public static dma([I)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    aget v2, p0, v1

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static dma(Ljava/math/BigInteger;)[I
    .locals 4

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0xe0

    if-gt v0, v1, :cond_1

    invoke-static {}, Lyou/zta/sis/sis/tsu;->create()[I

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    aput v3, v0, v1

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    move v1, v2

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static gck([I[I[I)I
    .locals 32

    const/4 v0, 0x0

    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/4 v5, 0x1

    aget v5, p1, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/4 v7, 0x2

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v3

    const/4 v9, 0x3

    aget v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v3

    const/4 v11, 0x4

    aget v11, p1, v11

    int-to-long v11, v11

    and-long/2addr v11, v3

    const/4 v13, 0x5

    aget v13, p1, v13

    int-to-long v13, v13

    and-long/2addr v13, v3

    const/4 v15, 0x6

    aget v15, p1, v15

    move-wide/from16 v17, v1

    int-to-long v0, v15

    and-long/2addr v0, v3

    const-wide/16 v19, 0x0

    move-wide/from16 v21, v19

    const/4 v2, 0x0

    :goto_0
    const/4 v15, 0x7

    if-ge v2, v15, :cond_0

    aget v15, p0, v2

    move-wide/from16 v23, v0

    int-to-long v0, v15

    and-long/2addr v0, v3

    mul-long v15, v0, v17

    add-int/lit8 v25, v2, 0x0

    move-wide/from16 v26, v13

    aget v13, p2, v25

    int-to-long v13, v13

    and-long/2addr v13, v3

    add-long/2addr v15, v13

    add-long v13, v15, v19

    long-to-int v15, v13

    aput v15, p2, v25

    const/16 v15, 0x20

    ushr-long/2addr v13, v15

    mul-long v28, v0, v5

    add-int/lit8 v16, v2, 0x1

    aget v15, p2, v16

    move-wide/from16 v30, v5

    int-to-long v5, v15

    and-long/2addr v5, v3

    add-long v28, v28, v5

    add-long v13, v13, v28

    long-to-int v5, v13

    aput v5, p2, v16

    const/16 v5, 0x20

    ushr-long/2addr v13, v5

    mul-long v28, v0, v7

    add-int/lit8 v6, v2, 0x2

    aget v15, p2, v6

    move/from16 v25, v6

    int-to-long v5, v15

    and-long/2addr v5, v3

    add-long v28, v28, v5

    add-long v13, v13, v28

    long-to-int v5, v13

    aput v5, p2, v25

    const/16 v5, 0x20

    ushr-long/2addr v13, v5

    mul-long v28, v0, v9

    add-int/lit8 v6, v2, 0x3

    aget v15, p2, v6

    move/from16 v25, v6

    int-to-long v5, v15

    and-long/2addr v5, v3

    add-long v28, v28, v5

    add-long v13, v13, v28

    long-to-int v5, v13

    aput v5, p2, v25

    const/16 v5, 0x20

    ushr-long/2addr v13, v5

    mul-long v28, v0, v11

    add-int/lit8 v6, v2, 0x4

    aget v15, p2, v6

    move/from16 v25, v6

    int-to-long v5, v15

    and-long/2addr v5, v3

    add-long v28, v28, v5

    add-long v13, v13, v28

    long-to-int v5, v13

    aput v5, p2, v25

    const/16 v5, 0x20

    ushr-long/2addr v13, v5

    mul-long v28, v0, v26

    add-int/lit8 v6, v2, 0x5

    aget v15, p2, v6

    move/from16 v25, v6

    int-to-long v5, v15

    and-long/2addr v5, v3

    add-long v28, v28, v5

    add-long v13, v13, v28

    long-to-int v5, v13

    aput v5, p2, v25

    const/16 v5, 0x20

    ushr-long/2addr v13, v5

    mul-long v0, v0, v23

    add-int/lit8 v6, v2, 0x6

    aget v15, p2, v6

    move/from16 v25, v6

    int-to-long v5, v15

    and-long/2addr v5, v3

    add-long/2addr v0, v5

    add-long/2addr v13, v0

    long-to-int v0, v13

    aput v0, p2, v25

    const/16 v0, 0x20

    ushr-long v5, v13, v0

    add-int/lit8 v2, v2, 0x7

    aget v1, p2, v2

    int-to-long v13, v1

    and-long/2addr v13, v3

    move-wide/from16 v3, v21

    add-long v21, v3, v13

    add-long v5, v5, v21

    long-to-int v1, v5

    aput v1, p2, v2

    ushr-long v21, v5, v0

    move/from16 v2, v16

    move-wide/from16 v0, v23

    move-wide/from16 v13, v26

    move-wide/from16 v5, v30

    const-wide v3, 0xffffffffL

    goto/16 :goto_0

    :cond_0
    move-wide/from16 v3, v21

    long-to-int v0, v3

    return v0
.end method

.method public static gck([I)Z
    .locals 4

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    move v1, v2

    :goto_0
    const/4 v3, 0x7

    if-ge v1, v3, :cond_2

    aget v3, p0, v1

    if-eqz v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static igw([I[I[I)I
    .locals 10

    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    aget v5, p2, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    const-wide/16 v5, 0x0

    add-long/2addr v1, v5

    long-to-int v5, v1

    aput v5, p2, v0

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    const/4 v5, 0x1

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x2

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x4

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x5

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x6

    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    add-long/2addr v6, p0

    aget p0, p2, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    add-long/2addr v6, p0

    add-long/2addr v1, v6

    long-to-int p0, v1

    aput p0, p2, v5

    ushr-long p0, v1, v0

    long-to-int p0, p0

    return p0
.end method

.method public static igw([I[I)V
    .locals 41

    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/16 v6, 0xe

    move v8, v0

    move v7, v6

    const/4 v6, 0x6

    :goto_0
    add-int/lit8 v9, v6, -0x1

    aget v6, p0, v6

    int-to-long v10, v6

    and-long/2addr v10, v3

    mul-long/2addr v10, v10

    add-int/lit8 v7, v7, -0x1

    shl-int/lit8 v6, v8, 0x1f

    const/16 v8, 0x21

    ushr-long v12, v10, v8

    long-to-int v12, v12

    or-int/2addr v6, v12

    aput v6, p1, v7

    add-int/lit8 v7, v7, -0x1

    const/4 v6, 0x1

    ushr-long v12, v10, v6

    long-to-int v12, v12

    aput v12, p1, v7

    long-to-int v10, v10

    if-gtz v9, :cond_0

    mul-long v11, v1, v1

    shl-int/lit8 v7, v10, 0x1f

    int-to-long v9, v7

    and-long/2addr v9, v3

    ushr-long v7, v11, v8

    or-long/2addr v7, v9

    long-to-int v9, v11

    aput v9, p1, v0

    const/16 v0, 0x20

    ushr-long v9, v11, v0

    long-to-int v9, v9

    and-int/2addr v9, v6

    aget v10, p0, v6

    int-to-long v10, v10

    and-long/2addr v10, v3

    const/4 v12, 0x2

    aget v13, p1, v12

    int-to-long v13, v13

    and-long/2addr v13, v3

    mul-long v15, v10, v1

    add-long/2addr v7, v15

    long-to-int v15, v7

    shl-int/lit8 v16, v15, 0x1

    or-int v9, v16, v9

    aput v9, p1, v6

    ushr-int/lit8 v9, v15, 0x1f

    ushr-long/2addr v7, v0

    add-long/2addr v13, v7

    aget v7, p0, v12

    int-to-long v7, v7

    and-long/2addr v7, v3

    const/4 v15, 0x3

    aget v6, p1, v15

    int-to-long v5, v6

    and-long/2addr v5, v3

    const/16 v18, 0x4

    aget v15, p1, v18

    move-wide/from16 v21, v13

    int-to-long v12, v15

    and-long/2addr v12, v3

    mul-long v14, v7, v1

    add-long v14, v21, v14

    long-to-int v3, v14

    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v4, v9

    const/4 v9, 0x2

    aput v4, p1, v9

    ushr-int/lit8 v3, v3, 0x1f

    ushr-long/2addr v14, v0

    mul-long v23, v7, v10

    add-long v14, v14, v23

    add-long/2addr v5, v14

    ushr-long v14, v5, v0

    add-long/2addr v12, v14

    const-wide v14, 0xffffffffL

    and-long v4, v5, v14

    const/4 v6, 0x3

    aget v9, p0, v6

    move-wide/from16 v23, v1

    int-to-long v0, v9

    and-long/2addr v0, v14

    const/4 v6, 0x5

    aget v9, p1, v6

    move-wide/from16 v25, v7

    int-to-long v6, v9

    and-long/2addr v6, v14

    const/16 v2, 0x20

    ushr-long v20, v12, v2

    add-long v6, v6, v20

    and-long/2addr v12, v14

    const/4 v9, 0x6

    aget v8, p1, v9

    int-to-long v8, v8

    and-long/2addr v8, v14

    ushr-long v21, v6, v2

    add-long v8, v8, v21

    and-long/2addr v6, v14

    mul-long v14, v0, v23

    add-long/2addr v4, v14

    long-to-int v14, v4

    shl-int/lit8 v15, v14, 0x1

    or-int/2addr v3, v15

    const/4 v15, 0x3

    aput v3, p1, v15

    ushr-int/lit8 v3, v14, 0x1f

    ushr-long/2addr v4, v2

    mul-long v14, v0, v10

    add-long/2addr v4, v14

    add-long/2addr v12, v4

    ushr-long v4, v12, v2

    mul-long v14, v0, v25

    add-long/2addr v4, v14

    add-long/2addr v6, v4

    const-wide v4, 0xffffffffL

    and-long/2addr v12, v4

    ushr-long v14, v6, v2

    add-long/2addr v8, v14

    and-long/2addr v6, v4

    aget v14, p0, v18

    int-to-long v14, v14

    and-long/2addr v14, v4

    const/16 v19, 0x7

    aget v2, p1, v19

    move-wide/from16 v28, v0

    int-to-long v0, v2

    and-long/2addr v0, v4

    const/16 v2, 0x20

    ushr-long v21, v8, v2

    add-long v0, v0, v21

    and-long/2addr v8, v4

    const/16 v27, 0x8

    aget v2, p1, v27

    move-wide/from16 v31, v8

    int-to-long v8, v2

    and-long/2addr v8, v4

    const/16 v2, 0x20

    ushr-long v21, v0, v2

    add-long v8, v8, v21

    and-long/2addr v0, v4

    mul-long v4, v14, v23

    add-long/2addr v12, v4

    long-to-int v4, v12

    shl-int/lit8 v5, v4, 0x1

    or-int/2addr v3, v5

    aput v3, p1, v18

    ushr-int/lit8 v3, v4, 0x1f

    ushr-long v4, v12, v2

    mul-long v12, v14, v10

    add-long/2addr v4, v12

    add-long/2addr v6, v4

    ushr-long v4, v6, v2

    mul-long v12, v14, v25

    add-long/2addr v4, v12

    add-long v4, v31, v4

    const-wide v12, 0xffffffffL

    and-long/2addr v6, v12

    ushr-long v21, v4, v2

    mul-long v30, v14, v28

    add-long v21, v21, v30

    add-long v0, v0, v21

    and-long/2addr v4, v12

    ushr-long v21, v0, v2

    add-long v21, v8, v21

    and-long/2addr v0, v12

    const/4 v8, 0x5

    aget v9, p0, v8

    int-to-long v8, v9

    and-long/2addr v8, v12

    const/16 v18, 0x9

    aget v2, p1, v18

    move-wide/from16 v31, v14

    int-to-long v14, v2

    and-long/2addr v14, v12

    const/16 v2, 0x20

    ushr-long v33, v21, v2

    add-long v14, v14, v33

    and-long v33, v21, v12

    const/16 v21, 0xa

    aget v2, p1, v21

    move-wide/from16 v35, v0

    int-to-long v0, v2

    and-long/2addr v0, v12

    const/16 v2, 0x20

    ushr-long v21, v14, v2

    add-long v0, v0, v21

    and-long/2addr v14, v12

    mul-long v12, v8, v23

    add-long/2addr v6, v12

    long-to-int v12, v6

    shl-int/lit8 v13, v12, 0x1

    or-int/2addr v3, v13

    const/4 v13, 0x5

    aput v3, p1, v13

    ushr-int/lit8 v3, v12, 0x1f

    ushr-long/2addr v6, v2

    mul-long v12, v8, v10

    add-long/2addr v6, v12

    add-long/2addr v4, v6

    ushr-long v6, v4, v2

    mul-long v12, v8, v25

    add-long/2addr v6, v12

    add-long v6, v35, v6

    const-wide v12, 0xffffffffL

    and-long/2addr v4, v12

    ushr-long v20, v6, v2

    mul-long v35, v8, v28

    add-long v20, v20, v35

    add-long v33, v33, v20

    and-long/2addr v6, v12

    ushr-long v20, v33, v2

    mul-long v35, v8, v31

    add-long v20, v20, v35

    add-long v14, v14, v20

    and-long v20, v33, v12

    ushr-long v33, v14, v2

    add-long v0, v0, v33

    and-long/2addr v14, v12

    const/16 v17, 0x6

    aget v2, p0, v17

    move-wide/from16 v33, v8

    int-to-long v8, v2

    and-long/2addr v8, v12

    const/16 v2, 0xb

    aget v2, p1, v2

    move-wide/from16 v35, v14

    int-to-long v14, v2

    and-long/2addr v14, v12

    const/16 v2, 0x20

    ushr-long v37, v0, v2

    add-long v14, v14, v37

    and-long/2addr v0, v12

    const/16 v22, 0xc

    aget v2, p1, v22

    move-wide/from16 v37, v0

    int-to-long v0, v2

    and-long/2addr v0, v12

    const/16 v2, 0x20

    ushr-long v39, v14, v2

    add-long v0, v0, v39

    and-long/2addr v12, v14

    mul-long v14, v8, v23

    add-long/2addr v4, v14

    long-to-int v14, v4

    shl-int/lit8 v15, v14, 0x1

    or-int/2addr v3, v15

    const/4 v15, 0x6

    aput v3, p1, v15

    ushr-int/lit8 v3, v14, 0x1f

    ushr-long/2addr v4, v2

    mul-long/2addr v10, v8

    add-long/2addr v4, v10

    add-long/2addr v6, v4

    ushr-long v4, v6, v2

    mul-long v10, v8, v25

    add-long/2addr v4, v10

    add-long v4, v20, v4

    ushr-long v10, v4, v2

    mul-long v14, v8, v28

    add-long/2addr v10, v14

    add-long v14, v35, v10

    ushr-long v10, v14, v2

    mul-long v20, v8, v31

    add-long v10, v10, v20

    add-long v10, v37, v10

    ushr-long v20, v10, v2

    mul-long v8, v8, v33

    add-long v20, v20, v8

    add-long v12, v12, v20

    ushr-long v8, v12, v2

    add-long/2addr v0, v8

    long-to-int v6, v6

    shl-int/lit8 v7, v6, 0x1

    or-int/2addr v3, v7

    aput v3, p1, v19

    ushr-int/lit8 v3, v6, 0x1f

    long-to-int v4, v4

    shl-int/lit8 v5, v4, 0x1

    or-int/2addr v3, v5

    aput v3, p1, v27

    ushr-int/lit8 v3, v4, 0x1f

    long-to-int v4, v14

    shl-int/lit8 v5, v4, 0x1

    or-int/2addr v3, v5

    aput v3, p1, v18

    ushr-int/lit8 v3, v4, 0x1f

    long-to-int v4, v10

    const/16 v5, 0xa

    shl-int/lit8 v6, v4, 0x1

    or-int/2addr v3, v6

    aput v3, p1, v5

    ushr-int/lit8 v3, v4, 0x1f

    long-to-int v4, v12

    const/16 v5, 0xb

    shl-int/lit8 v6, v4, 0x1

    or-int/2addr v3, v6

    aput v3, p1, v5

    ushr-int/lit8 v3, v4, 0x1f

    long-to-int v4, v0

    const/16 v5, 0xc

    shl-int/lit8 v6, v4, 0x1

    or-int/2addr v3, v6

    aput v3, p1, v5

    ushr-int/lit8 v3, v4, 0x1f

    const/16 v4, 0xd

    aget v4, p1, v4

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    add-int/2addr v4, v0

    const/16 v0, 0xd

    const/4 v1, 0x1

    shl-int/lit8 v1, v4, 0x1

    or-int/2addr v1, v3

    aput v1, p1, v0

    return-void

    :cond_0
    move v6, v9

    move v8, v10

    goto/16 :goto_0
.end method

.method public static jl()[I
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [I

    return-object v0
.end method

.method public static kth(I[I)I
    .locals 9

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 p0, 0x0

    aget v4, p1, p0

    int-to-long v4, v4

    and-long/2addr v4, v2

    mul-long/2addr v4, v0

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    long-to-int v6, v4

    aput v6, p1, p0

    const/16 p0, 0x20

    ushr-long/2addr v4, p0

    const/4 v6, 0x1

    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long/2addr v7, v0

    add-long/2addr v4, v7

    long-to-int v7, v4

    aput v7, p1, v6

    ushr-long/2addr v4, p0

    const/4 v6, 0x2

    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long/2addr v7, v0

    add-long/2addr v4, v7

    long-to-int v7, v4

    aput v7, p1, v6

    ushr-long/2addr v4, p0

    const/4 v6, 0x3

    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long/2addr v7, v0

    add-long/2addr v4, v7

    long-to-int v7, v4

    aput v7, p1, v6

    ushr-long/2addr v4, p0

    const/4 v6, 0x4

    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long/2addr v7, v0

    add-long/2addr v4, v7

    long-to-int v7, v4

    aput v7, p1, v6

    ushr-long/2addr v4, p0

    const/4 v6, 0x5

    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long/2addr v7, v0

    add-long/2addr v4, v7

    long-to-int v7, v4

    aput v7, p1, v6

    ushr-long/2addr v4, p0

    const/4 v6, 0x6

    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v2, v7

    mul-long/2addr v0, v2

    add-long/2addr v4, v0

    long-to-int v0, v4

    aput v0, p1, v6

    ushr-long p0, v4, p0

    long-to-int p0, p0

    return p0
.end method

.method public static oif([I[I)I
    .locals 10

    const/4 v0, 0x0

    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p0, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    const-wide/16 v5, 0x0

    add-long/2addr v1, v5

    long-to-int v5, v1

    aput v5, p1, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    const/4 v5, 0x1

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    aput v6, p1, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x2

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    aput v6, p1, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    aput v6, p1, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x4

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    aput v6, p1, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x5

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    aput v6, p1, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x6

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget p0, p0, v5

    int-to-long v8, p0

    and-long/2addr v3, v8

    sub-long/2addr v6, v3

    add-long/2addr v1, v6

    long-to-int p0, v1

    aput p0, p1, v5

    shr-long p0, v1, v0

    long-to-int p0, p0

    return p0
.end method

.method public static qbh([I)V
    .locals 2

    const/4 v0, 0x0

    aput v0, p0, v0

    const/4 v1, 0x1

    aput v0, p0, v1

    const/4 v1, 0x2

    aput v0, p0, v1

    const/4 v1, 0x3

    aput v0, p0, v1

    const/4 v1, 0x4

    aput v0, p0, v1

    const/4 v1, 0x5

    aput v0, p0, v1

    const/4 v1, 0x6

    aput v0, p0, v1

    return-void
.end method

.method public static qbh([I[I)Z
    .locals 5

    const/4 v0, 0x6

    :goto_0
    const/4 v1, 0x1

    if-ltz v0, :cond_2

    aget v2, p0, v0

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    aget v4, p1, v0

    xor-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-le v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static rtg([II[II)I
    .locals 10

    add-int/lit8 v0, p3, 0x0

    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    add-int/lit8 v5, p1, 0x0

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    const-wide/16 v5, 0x0

    add-long/2addr v1, v5

    long-to-int v5, v1

    aput v5, p2, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    add-int/lit8 v5, p3, 0x1

    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-int/lit8 v8, p1, 0x1

    aget v8, p0, v8

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    aput v6, p2, v5

    shr-long/2addr v1, v0

    add-int/lit8 v5, p3, 0x2

    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-int/lit8 v8, p1, 0x2

    aget v8, p0, v8

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    aput v6, p2, v5

    shr-long/2addr v1, v0

    add-int/lit8 v5, p3, 0x3

    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-int/lit8 v8, p1, 0x3

    aget v8, p0, v8

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    aput v6, p2, v5

    shr-long/2addr v1, v0

    add-int/lit8 v5, p3, 0x4

    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-int/lit8 v8, p1, 0x4

    aget v8, p0, v8

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    aput v6, p2, v5

    shr-long/2addr v1, v0

    add-int/lit8 v5, p3, 0x5

    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-int/lit8 v8, p1, 0x5

    aget v8, p0, v8

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    aput v6, p2, v5

    shr-long/2addr v1, v0

    add-int/lit8 p3, p3, 0x6

    aget v5, p2, p3

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-int/lit8 p1, p1, 0x6

    aget p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v3

    sub-long/2addr v5, p0

    add-long/2addr v1, v5

    long-to-int p0, v1

    aput p0, p2, p3

    shr-long p0, v1, v0

    long-to-int p0, p0

    return p0
.end method

.method public static rtg([II[II[II)I
    .locals 9

    add-int/lit8 v0, p1, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v4, p3, 0x0

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-long/2addr v0, v4

    const-wide/16 v4, 0x0

    add-long/2addr v0, v4

    add-int/lit8 v4, p5, 0x0

    long-to-int v5, v0

    aput v5, p4, v4

    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x1

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x1

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p5, 0x1

    long-to-int v6, v0

    aput v6, p4, v5

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x2

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x2

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p5, 0x2

    long-to-int v6, v0

    aput v6, p4, v5

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x3

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x3

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p5, 0x3

    long-to-int v6, v0

    aput v6, p4, v5

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x4

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x4

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p5, 0x4

    long-to-int v6, v0

    aput v6, p4, v5

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x5

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x5

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p5, 0x5

    long-to-int v6, v0

    aput v6, p4, v5

    ushr-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x6

    aget p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    add-int/lit8 p3, p3, 0x6

    aget p2, p2, p3

    int-to-long p2, p2

    and-long/2addr p2, v2

    add-long/2addr p0, p2

    add-long/2addr v0, p0

    add-int/lit8 p5, p5, 0x6

    long-to-int p0, v0

    aput p0, p4, p5

    ushr-long p0, v0, v4

    long-to-int p0, p0

    return p0
.end method

.method public static sis([II[II[II)I
    .locals 32

    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v4, p3, 0x1

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x2

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-int/lit8 v8, p3, 0x3

    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-int/lit8 v10, p3, 0x4

    aget v10, p2, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    add-int/lit8 v12, p3, 0x5

    aget v12, p2, v12

    int-to-long v12, v12

    and-long/2addr v12, v2

    add-int/lit8 v14, p3, 0x6

    aget v14, p2, v14

    int-to-long v14, v14

    and-long/2addr v14, v2

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    move/from16 v3, p5

    move-wide/from16 p2, v14

    move-wide/from16 v21, v16

    move/from16 v2, v18

    :goto_0
    const/4 v14, 0x7

    if-ge v2, v14, :cond_0

    add-int v15, p1, v2

    aget v15, p0, v15

    int-to-long v14, v15

    const-wide v18, 0xffffffffL

    and-long v14, v14, v18

    mul-long v23, v14, v0

    add-int/lit8 v25, v3, 0x0

    move-wide/from16 v26, v0

    aget v0, p4, v25

    int-to-long v0, v0

    and-long v0, v0, v18

    add-long v23, v23, v0

    add-long v0, v23, v16

    move/from16 v18, v2

    long-to-int v2, v0

    aput v2, p4, v25

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    mul-long v23, v14, v4

    add-int/lit8 v25, v3, 0x1

    aget v2, p4, v25

    move-wide/from16 v28, v4

    int-to-long v4, v2

    const-wide v19, 0xffffffffL

    and-long v4, v4, v19

    add-long v23, v23, v4

    add-long v0, v0, v23

    long-to-int v2, v0

    aput v2, p4, v25

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    mul-long v4, v14, v6

    add-int/lit8 v23, v3, 0x2

    aget v2, p4, v23

    move-wide/from16 v30, v6

    int-to-long v6, v2

    and-long v6, v6, v19

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    long-to-int v2, v0

    aput v2, p4, v23

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    mul-long v4, v14, v8

    add-int/lit8 v6, v3, 0x3

    aget v7, p4, v6

    move/from16 v23, v3

    int-to-long v2, v7

    and-long v2, v2, v19

    add-long/2addr v4, v2

    add-long/2addr v0, v4

    long-to-int v2, v0

    aput v2, p4, v6

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    mul-long v3, v14, v10

    add-int/lit8 v5, v23, 0x4

    aget v6, p4, v5

    int-to-long v6, v6

    and-long v6, v6, v19

    add-long/2addr v3, v6

    add-long/2addr v0, v3

    long-to-int v3, v0

    aput v3, p4, v5

    ushr-long/2addr v0, v2

    mul-long v3, v14, v12

    add-int/lit8 v5, v23, 0x5

    aget v6, p4, v5

    int-to-long v6, v6

    and-long v6, v6, v19

    add-long/2addr v3, v6

    add-long/2addr v0, v3

    long-to-int v3, v0

    aput v3, p4, v5

    ushr-long/2addr v0, v2

    mul-long v14, v14, p2

    add-int/lit8 v3, v23, 0x6

    aget v4, p4, v3

    int-to-long v4, v4

    and-long v4, v4, v19

    add-long/2addr v14, v4

    add-long/2addr v0, v14

    long-to-int v4, v0

    aput v4, p4, v3

    ushr-long/2addr v0, v2

    const/4 v3, 0x7

    add-int/lit8 v3, v23, 0x7

    aget v4, p4, v3

    int-to-long v4, v4

    and-long v4, v4, v19

    move-wide/from16 v6, v21

    add-long v21, v6, v4

    add-long v0, v0, v21

    long-to-int v4, v0

    aput v4, p4, v3

    ushr-long v21, v0, v2

    add-int/lit8 v2, v18, 0x1

    move/from16 v3, v25

    move-wide/from16 v0, v26

    move-wide/from16 v4, v28

    move-wide/from16 v6, v30

    goto/16 :goto_0

    :cond_0
    move-wide/from16 v6, v21

    long-to-int v0, v6

    return v0
.end method

.method public static sis([II[II)Z
    .locals 5

    const/4 v0, 0x6

    :goto_0
    const/4 v1, 0x1

    if-ltz v0, :cond_2

    add-int v2, p1, v0

    aget v2, p0, v2

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    add-int v4, p3, v0

    aget v4, p2, v4

    xor-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-le v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static ssp([II[II[II)I
    .locals 10

    add-int/lit8 v0, p1, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v4, p3, 0x0

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-long/2addr v0, v4

    add-int/lit8 v4, p5, 0x0

    aget v5, p4, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-long/2addr v0, v5

    const-wide/16 v5, 0x0

    add-long/2addr v0, v5

    long-to-int v5, v0

    aput v5, p4, v4

    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x1

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x1

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-int/lit8 v7, p5, 0x1

    aget v8, p4, v7

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v5, v8

    add-long/2addr v0, v5

    long-to-int v5, v0

    aput v5, p4, v7

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x2

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x2

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-int/lit8 v7, p5, 0x2

    aget v8, p4, v7

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v5, v8

    add-long/2addr v0, v5

    long-to-int v5, v0

    aput v5, p4, v7

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x3

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x3

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-int/lit8 v7, p5, 0x3

    aget v8, p4, v7

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v5, v8

    add-long/2addr v0, v5

    long-to-int v5, v0

    aput v5, p4, v7

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x4

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x4

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-int/lit8 v7, p5, 0x4

    aget v8, p4, v7

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v5, v8

    add-long/2addr v0, v5

    long-to-int v5, v0

    aput v5, p4, v7

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x5

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x5

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-int/lit8 v7, p5, 0x5

    aget v8, p4, v7

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v5, v8

    add-long/2addr v0, v5

    long-to-int v5, v0

    aput v5, p4, v7

    ushr-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x6

    aget p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    add-int/lit8 p3, p3, 0x6

    aget p2, p2, p3

    int-to-long p2, p2

    and-long/2addr p2, v2

    add-long/2addr p0, p2

    add-int/lit8 p5, p5, 0x6

    aget p2, p4, p5

    int-to-long p2, p2

    and-long/2addr p2, v2

    add-long/2addr p0, p2

    add-long/2addr v0, p0

    long-to-int p0, v0

    aput p0, p4, p5

    ushr-long p0, v0, v4

    long-to-int p0, p0

    return p0
.end method

.method public static tsu([II[II[II)I
    .locals 9

    add-int/lit8 v0, p1, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v4, p3, 0x0

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    add-long/2addr v0, v4

    add-int/lit8 v4, p5, 0x0

    long-to-int v5, v0

    aput v5, p4, v4

    const/16 v4, 0x20

    shr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x1

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x1

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p5, 0x1

    long-to-int v6, v0

    aput v6, p4, v5

    shr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x2

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x2

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p5, 0x2

    long-to-int v6, v0

    aput v6, p4, v5

    shr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x3

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x3

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p5, 0x3

    long-to-int v6, v0

    aput v6, p4, v5

    shr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x4

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x4

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p5, 0x4

    long-to-int v6, v0

    aput v6, p4, v5

    shr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x5

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x5

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p5, 0x5

    long-to-int v6, v0

    aput v6, p4, v5

    shr-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x6

    aget p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    add-int/lit8 p3, p3, 0x6

    aget p2, p2, p3

    int-to-long p2, p2

    and-long/2addr p2, v2

    sub-long/2addr p0, p2

    add-long/2addr v0, p0

    add-int/lit8 p5, p5, 0x6

    long-to-int p0, v0

    aput p0, p4, p5

    shr-long p0, v0, v4

    long-to-int p0, p0

    return p0
.end method

.method public static tsu([II[II)V
    .locals 43

    add-int/lit8 v0, p1, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v5, 0x0

    const/16 v6, 0xe

    move v7, v5

    const/4 v5, 0x6

    :goto_0
    add-int/lit8 v8, v5, -0x1

    add-int v5, p1, v5

    aget v5, p0, v5

    int-to-long v9, v5

    and-long/2addr v9, v2

    mul-long/2addr v9, v9

    add-int/lit8 v6, v6, -0x1

    add-int v5, p3, v6

    shl-int/lit8 v7, v7, 0x1f

    const/16 v11, 0x21

    ushr-long v12, v9, v11

    long-to-int v12, v12

    or-int/2addr v7, v12

    aput v7, p2, v5

    add-int/lit8 v6, v6, -0x1

    add-int v5, p3, v6

    const/4 v7, 0x1

    ushr-long v12, v9, v7

    long-to-int v12, v12

    aput v12, p2, v5

    long-to-int v5, v9

    if-gtz v8, :cond_0

    mul-long v8, v0, v0

    shl-int/lit8 v5, v5, 0x1f

    int-to-long v5, v5

    and-long/2addr v5, v2

    ushr-long v10, v8, v11

    or-long/2addr v5, v10

    add-int/lit8 v10, p3, 0x0

    long-to-int v11, v8

    aput v11, p2, v10

    const/16 v10, 0x20

    ushr-long/2addr v8, v10

    long-to-int v8, v8

    and-int/2addr v8, v7

    add-int/lit8 v9, p1, 0x1

    aget v9, p0, v9

    int-to-long v11, v9

    and-long/2addr v11, v2

    add-int/lit8 v9, p3, 0x2

    aget v13, p2, v9

    int-to-long v13, v13

    and-long/2addr v13, v2

    mul-long v15, v11, v0

    add-long/2addr v5, v15

    long-to-int v15, v5

    add-int/lit8 v16, p3, 0x1

    shl-int/lit8 v17, v15, 0x1

    or-int v8, v17, v8

    aput v8, p2, v16

    ushr-int/lit8 v8, v15, 0x1f

    ushr-long/2addr v5, v10

    add-long/2addr v13, v5

    add-int/lit8 v5, p1, 0x2

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v15, p3, 0x3

    aget v7, p2, v15

    move-wide/from16 v18, v11

    int-to-long v10, v7

    and-long/2addr v10, v2

    add-int/lit8 v7, p3, 0x4

    aget v12, p2, v7

    move-wide/from16 v20, v10

    int-to-long v10, v12

    and-long/2addr v10, v2

    mul-long v22, v5, v0

    add-long v13, v13, v22

    long-to-int v12, v13

    shl-int/lit8 v22, v12, 0x1

    or-int v8, v22, v8

    aput v8, p2, v9

    ushr-int/lit8 v8, v12, 0x1f

    const/16 v9, 0x20

    ushr-long v12, v13, v9

    mul-long v22, v5, v18

    add-long v12, v12, v22

    add-long v12, v20, v12

    ushr-long v20, v12, v9

    add-long v10, v10, v20

    and-long/2addr v12, v2

    add-int/lit8 v9, p1, 0x3

    aget v9, p0, v9

    move-wide/from16 v20, v5

    int-to-long v4, v9

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x5

    aget v9, p2, v6

    move/from16 v22, v15

    int-to-long v14, v9

    and-long/2addr v14, v2

    const/16 v9, 0x20

    ushr-long v24, v10, v9

    add-long v14, v14, v24

    and-long/2addr v10, v2

    add-int/lit8 v24, p3, 0x6

    aget v9, p2, v24

    move/from16 v26, v6

    move/from16 v25, v7

    int-to-long v6, v9

    and-long/2addr v6, v2

    const/16 v9, 0x20

    ushr-long v27, v14, v9

    add-long v6, v6, v27

    and-long/2addr v14, v2

    mul-long v27, v4, v0

    add-long v12, v12, v27

    long-to-int v2, v12

    shl-int/lit8 v3, v2, 0x1

    or-int/2addr v3, v8

    aput v3, p2, v22

    ushr-int/lit8 v2, v2, 0x1f

    ushr-long/2addr v12, v9

    mul-long v29, v4, v18

    add-long v12, v12, v29

    add-long/2addr v10, v12

    ushr-long v12, v10, v9

    mul-long v29, v4, v20

    add-long v12, v12, v29

    add-long/2addr v14, v12

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    ushr-long v27, v14, v9

    add-long v6, v6, v27

    and-long v8, v14, v12

    add-int/lit8 v3, p1, 0x4

    aget v3, p0, v3

    int-to-long v14, v3

    and-long/2addr v14, v12

    add-int/lit8 v3, p3, 0x7

    move-wide/from16 v29, v4

    aget v4, p2, v3

    int-to-long v4, v4

    and-long/2addr v4, v12

    const/16 v17, 0x20

    ushr-long v27, v6, v17

    add-long v4, v4, v27

    and-long/2addr v6, v12

    add-int/lit8 v22, p3, 0x8

    move/from16 v31, v3

    aget v3, p2, v22

    move-wide/from16 v32, v6

    int-to-long v6, v3

    and-long/2addr v6, v12

    ushr-long v27, v4, v17

    add-long v6, v6, v27

    and-long v3, v4, v12

    mul-long v12, v14, v0

    add-long/2addr v10, v12

    long-to-int v5, v10

    shl-int/lit8 v12, v5, 0x1

    or-int/2addr v2, v12

    aput v2, p2, v25

    ushr-int/lit8 v2, v5, 0x1f

    ushr-long v10, v10, v17

    mul-long v12, v14, v18

    add-long/2addr v10, v12

    add-long/2addr v8, v10

    ushr-long v10, v8, v17

    mul-long v12, v14, v20

    add-long/2addr v10, v12

    add-long v10, v32, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v8, v12

    ushr-long v27, v10, v17

    mul-long v32, v14, v29

    add-long v27, v27, v32

    add-long v3, v3, v27

    and-long/2addr v10, v12

    ushr-long v27, v3, v17

    add-long v6, v6, v27

    and-long/2addr v3, v12

    add-int/lit8 v5, p1, 0x5

    aget v5, p0, v5

    move-wide/from16 v32, v14

    int-to-long v14, v5

    and-long/2addr v14, v12

    add-int/lit8 v5, p3, 0x9

    move-wide/from16 v34, v3

    aget v3, p2, v5

    int-to-long v3, v3

    and-long/2addr v3, v12

    const/16 v17, 0x20

    ushr-long v27, v6, v17

    add-long v3, v3, v27

    and-long/2addr v6, v12

    add-int/lit8 v25, p3, 0xa

    move/from16 v36, v5

    aget v5, p2, v25

    move-wide/from16 v37, v6

    int-to-long v5, v5

    and-long/2addr v5, v12

    ushr-long v27, v3, v17

    add-long v5, v5, v27

    and-long/2addr v3, v12

    mul-long v12, v14, v0

    add-long/2addr v8, v12

    long-to-int v7, v8

    shl-int/lit8 v12, v7, 0x1

    or-int/2addr v2, v12

    aput v2, p2, v26

    ushr-int/lit8 v2, v7, 0x1f

    ushr-long v7, v8, v17

    mul-long v12, v14, v18

    add-long/2addr v7, v12

    add-long/2addr v10, v7

    ushr-long v7, v10, v17

    mul-long v12, v14, v20

    add-long/2addr v7, v12

    add-long v7, v34, v7

    const-wide v12, 0xffffffffL

    and-long v9, v10, v12

    ushr-long v26, v7, v17

    mul-long v34, v14, v29

    add-long v26, v26, v34

    add-long v26, v37, v26

    and-long/2addr v7, v12

    ushr-long v34, v26, v17

    mul-long v37, v14, v32

    add-long v34, v34, v37

    add-long v3, v3, v34

    and-long v26, v26, v12

    ushr-long v34, v3, v17

    add-long v5, v5, v34

    and-long/2addr v3, v12

    const/4 v11, 0x6

    add-int/lit8 v11, p1, 0x6

    aget v11, p0, v11

    move-wide/from16 v34, v14

    int-to-long v14, v11

    and-long/2addr v14, v12

    add-int/lit8 v11, p3, 0xb

    move-wide/from16 v37, v3

    aget v3, p2, v11

    int-to-long v3, v3

    and-long/2addr v3, v12

    const/16 v17, 0x20

    ushr-long v39, v5, v17

    add-long v3, v3, v39

    and-long/2addr v5, v12

    add-int/lit8 v23, p3, 0xc

    move/from16 p0, v11

    aget v11, p2, v23

    move-wide/from16 v39, v5

    int-to-long v5, v11

    and-long/2addr v5, v12

    ushr-long v41, v3, v17

    add-long v5, v5, v41

    and-long/2addr v3, v12

    mul-long/2addr v0, v14

    add-long/2addr v9, v0

    long-to-int v0, v9

    shl-int/lit8 v1, v0, 0x1

    or-int/2addr v1, v2

    aput v1, p2, v24

    ushr-int/lit8 v0, v0, 0x1f

    ushr-long v1, v9, v17

    mul-long v11, v14, v18

    add-long/2addr v1, v11

    add-long/2addr v7, v1

    ushr-long v1, v7, v17

    mul-long v9, v14, v20

    add-long/2addr v1, v9

    add-long v1, v26, v1

    ushr-long v9, v1, v17

    mul-long v11, v14, v29

    add-long/2addr v9, v11

    add-long v9, v37, v9

    ushr-long v11, v9, v17

    mul-long v18, v14, v32

    add-long v11, v11, v18

    add-long v11, v39, v11

    ushr-long v18, v11, v17

    mul-long v14, v14, v34

    add-long v18, v18, v14

    add-long v3, v3, v18

    ushr-long v13, v3, v17

    add-long/2addr v5, v13

    long-to-int v7, v7

    shl-int/lit8 v8, v7, 0x1

    or-int/2addr v0, v8

    aput v0, p2, v31

    ushr-int/lit8 v0, v7, 0x1f

    long-to-int v1, v1

    shl-int/lit8 v2, v1, 0x1

    or-int/2addr v0, v2

    aput v0, p2, v22

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v9

    shl-int/lit8 v2, v1, 0x1

    or-int/2addr v0, v2

    aput v0, p2, v36

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v11

    shl-int/lit8 v2, v1, 0x1

    or-int/2addr v0, v2

    aput v0, p2, v25

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v3

    shl-int/lit8 v2, v1, 0x1

    or-int/2addr v0, v2

    aput v0, p2, p0

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v5

    shl-int/lit8 v2, v1, 0x1

    or-int/2addr v0, v2

    aput v0, p2, v23

    ushr-int/lit8 v0, v1, 0x1f

    add-int/lit8 v1, p3, 0xd

    aget v2, p2, v1

    const/16 v3, 0x20

    ushr-long v3, v5, v3

    long-to-int v3, v3

    add-int/2addr v2, v3

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    or-int/2addr v0, v2

    aput v0, p2, v1

    return-void

    :cond_0
    move v7, v5

    move v5, v8

    goto/16 :goto_0
.end method

.method public static wtn([I[I[I)V
    .locals 30

    const/4 v0, 0x0

    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/4 v5, 0x1

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    const/4 v8, 0x2

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    const/4 v11, 0x3

    aget v12, p1, v11

    int-to-long v12, v12

    and-long/2addr v12, v3

    const/4 v14, 0x4

    aget v15, p1, v14

    int-to-long v14, v15

    and-long/2addr v14, v3

    const/16 v17, 0x5

    aget v11, p1, v17

    move-wide/from16 v20, v9

    int-to-long v8, v11

    and-long/2addr v8, v3

    const/4 v10, 0x6

    aget v11, p1, v10

    int-to-long v10, v11

    and-long/2addr v10, v3

    aget v5, p0, v0

    move-wide/from16 v24, v10

    int-to-long v10, v5

    and-long/2addr v10, v3

    mul-long v26, v10, v1

    const-wide/16 v28, 0x0

    add-long v3, v26, v28

    long-to-int v5, v3

    aput v5, p2, v0

    const/16 v0, 0x20

    ushr-long/2addr v3, v0

    mul-long v26, v10, v6

    add-long v3, v3, v26

    long-to-int v5, v3

    const/16 v23, 0x1

    aput v5, p2, v23

    ushr-long/2addr v3, v0

    mul-long v26, v10, v20

    add-long v3, v3, v26

    long-to-int v5, v3

    const/16 v19, 0x2

    aput v5, p2, v19

    ushr-long/2addr v3, v0

    mul-long v26, v10, v12

    add-long v3, v3, v26

    long-to-int v5, v3

    const/16 v18, 0x3

    aput v5, p2, v18

    ushr-long/2addr v3, v0

    mul-long v18, v10, v14

    add-long v3, v3, v18

    long-to-int v5, v3

    const/16 v16, 0x4

    aput v5, p2, v16

    ushr-long/2addr v3, v0

    mul-long v18, v10, v8

    add-long v3, v3, v18

    long-to-int v5, v3

    aput v5, p2, v17

    ushr-long/2addr v3, v0

    mul-long v10, v10, v24

    add-long/2addr v3, v10

    long-to-int v5, v3

    const/4 v10, 0x6

    aput v5, p2, v10

    ushr-long/2addr v3, v0

    long-to-int v3, v3

    const/4 v4, 0x7

    aput v3, p2, v4

    move/from16 v3, v23

    :goto_0
    if-ge v3, v4, :cond_0

    aget v5, p0, v3

    int-to-long v10, v5

    const-wide v16, 0xffffffffL

    and-long v10, v10, v16

    mul-long v18, v10, v1

    add-int/lit8 v5, v3, 0x0

    aget v4, p2, v5

    move-wide/from16 v22, v1

    int-to-long v0, v4

    and-long v0, v0, v16

    add-long v18, v18, v0

    add-long v0, v18, v28

    long-to-int v4, v0

    aput v4, p2, v5

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    mul-long v4, v10, v6

    add-int/lit8 v18, v3, 0x1

    aget v2, p2, v18

    move-wide/from16 v26, v6

    int-to-long v6, v2

    and-long v6, v6, v16

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    long-to-int v2, v0

    aput v2, p2, v18

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    mul-long v4, v10, v20

    add-int/lit8 v6, v3, 0x2

    aget v7, p2, v6

    move/from16 v19, v3

    int-to-long v2, v7

    and-long v2, v2, v16

    add-long/2addr v4, v2

    add-long/2addr v0, v4

    long-to-int v2, v0

    aput v2, p2, v6

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    mul-long v3, v10, v12

    add-int/lit8 v5, v19, 0x3

    aget v6, p2, v5

    int-to-long v6, v6

    and-long v6, v6, v16

    add-long/2addr v3, v6

    add-long/2addr v0, v3

    long-to-int v3, v0

    aput v3, p2, v5

    ushr-long/2addr v0, v2

    mul-long v3, v10, v14

    add-int/lit8 v5, v19, 0x4

    aget v6, p2, v5

    int-to-long v6, v6

    and-long v6, v6, v16

    add-long/2addr v3, v6

    add-long/2addr v0, v3

    long-to-int v3, v0

    aput v3, p2, v5

    ushr-long/2addr v0, v2

    mul-long v3, v10, v8

    add-int/lit8 v5, v19, 0x5

    aget v6, p2, v5

    int-to-long v6, v6

    and-long v6, v6, v16

    add-long/2addr v3, v6

    add-long/2addr v0, v3

    long-to-int v3, v0

    aput v3, p2, v5

    ushr-long/2addr v0, v2

    mul-long v10, v10, v24

    add-int/lit8 v3, v19, 0x6

    aget v4, p2, v3

    int-to-long v4, v4

    and-long v4, v4, v16

    add-long/2addr v10, v4

    add-long/2addr v0, v10

    long-to-int v4, v0

    aput v4, p2, v3

    ushr-long/2addr v0, v2

    add-int/lit8 v3, v19, 0x7

    long-to-int v0, v0

    aput v0, p2, v3

    move v0, v2

    move/from16 v3, v18

    move-wide/from16 v1, v22

    move-wide/from16 v6, v26

    const/4 v4, 0x7

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method public static you(IJ[II)I
    .locals 10

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long v4, p1, v2

    mul-long/2addr v4, v0

    add-int/lit8 p0, p4, 0x0

    aget v6, p3, p0

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr v4, v6

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    long-to-int v8, v4

    aput v8, p3, p0

    const/16 p0, 0x20

    ushr-long/2addr v4, p0

    ushr-long/2addr p1, p0

    mul-long/2addr v0, p1

    add-int/lit8 p1, p4, 0x1

    aget p2, p3, p1

    int-to-long v8, p2

    and-long/2addr v8, v2

    add-long/2addr v0, v8

    add-long/2addr v4, v0

    long-to-int p2, v4

    aput p2, p3, p1

    ushr-long p1, v4, p0

    add-int/lit8 v0, p4, 0x2

    aget v1, p3, v0

    int-to-long v4, v1

    and-long v1, v4, v2

    add-long/2addr p1, v1

    long-to-int v1, p1

    aput v1, p3, v0

    ushr-long p0, p1, p0

    cmp-long p0, p0, v6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x7

    const/4 p1, 0x3

    invoke-static {p0, p3, p4, p1}, Lyou/zta/sis/sis/kth;->you(I[III)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static you(I[II[II)I
    .locals 11

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 p0, p2, 0x0

    aget p0, p1, p0

    int-to-long v4, p0

    and-long/2addr v4, v2

    mul-long/2addr v4, v0

    add-int/lit8 p0, p4, 0x0

    aget v6, p3, p0

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr v4, v6

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    long-to-int v6, v4

    aput v6, p3, p0

    const/16 p0, 0x20

    ushr-long/2addr v4, p0

    add-int/lit8 v6, p2, 0x1

    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long/2addr v6, v0

    add-int/lit8 v8, p4, 0x1

    aget v9, p3, v8

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v6, v9

    add-long/2addr v4, v6

    long-to-int v6, v4

    aput v6, p3, v8

    ushr-long/2addr v4, p0

    add-int/lit8 v6, p2, 0x2

    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long/2addr v6, v0

    add-int/lit8 v8, p4, 0x2

    aget v9, p3, v8

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v6, v9

    add-long/2addr v4, v6

    long-to-int v6, v4

    aput v6, p3, v8

    ushr-long/2addr v4, p0

    add-int/lit8 v6, p2, 0x3

    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long/2addr v6, v0

    add-int/lit8 v8, p4, 0x3

    aget v9, p3, v8

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v6, v9

    add-long/2addr v4, v6

    long-to-int v6, v4

    aput v6, p3, v8

    ushr-long/2addr v4, p0

    add-int/lit8 v6, p2, 0x4

    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long/2addr v6, v0

    add-int/lit8 v8, p4, 0x4

    aget v9, p3, v8

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v6, v9

    add-long/2addr v4, v6

    long-to-int v6, v4

    aput v6, p3, v8

    ushr-long/2addr v4, p0

    add-int/lit8 v6, p2, 0x5

    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long/2addr v6, v0

    add-int/lit8 v8, p4, 0x5

    aget v9, p3, v8

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v6, v9

    add-long/2addr v4, v6

    long-to-int v6, v4

    aput v6, p3, v8

    ushr-long/2addr v4, p0

    add-int/lit8 p2, p2, 0x6

    aget p1, p1, p2

    int-to-long p1, p1

    and-long/2addr p1, v2

    mul-long/2addr v0, p1

    add-int/lit8 p4, p4, 0x6

    aget p1, p3, p4

    int-to-long p1, p1

    and-long/2addr p1, v2

    add-long/2addr v0, p1

    add-long/2addr v4, v0

    long-to-int p1, v4

    aput p1, p3, p4

    ushr-long p0, v4, p0

    long-to-int p0, p0

    return p0
.end method

.method public static you([I[I[I)I
    .locals 10

    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    const-wide/16 v5, 0x0

    add-long/2addr v1, v5

    long-to-int v5, v1

    aput v5, p2, v0

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    const/4 v5, 0x1

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x2

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x4

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x5

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x6

    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    add-long/2addr v6, p0

    add-long/2addr v1, v6

    long-to-int p0, v1

    aput p0, p2, v5

    ushr-long p0, v1, v0

    long-to-int p0, p0

    return p0
.end method

.method public static you([II[II)V
    .locals 2

    add-int/lit8 v0, p3, 0x0

    add-int/lit8 v1, p1, 0x0

    aget v1, p0, v1

    aput v1, p2, v0

    add-int/lit8 v0, p3, 0x1

    add-int/lit8 v1, p1, 0x1

    aget v1, p0, v1

    aput v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    add-int/lit8 v1, p1, 0x2

    aget v1, p0, v1

    aput v1, p2, v0

    add-int/lit8 v0, p3, 0x3

    add-int/lit8 v1, p1, 0x3

    aget v1, p0, v1

    aput v1, p2, v0

    add-int/lit8 v0, p3, 0x4

    add-int/lit8 v1, p1, 0x4

    aget v1, p0, v1

    aput v1, p2, v0

    add-int/lit8 v0, p3, 0x5

    add-int/lit8 v1, p1, 0x5

    aget v1, p0, v1

    aput v1, p2, v0

    add-int/lit8 p3, p3, 0x6

    add-int/lit8 p1, p1, 0x6

    aget p0, p0, p1

    aput p0, p2, p3

    return-void
.end method

.method public static you([II[II[II)V
    .locals 31

    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v4, p3, 0x1

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x2

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-int/lit8 v8, p3, 0x3

    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-int/lit8 v10, p3, 0x4

    aget v10, p2, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    add-int/lit8 v12, p3, 0x5

    aget v12, p2, v12

    int-to-long v12, v12

    and-long/2addr v12, v2

    add-int/lit8 v14, p3, 0x6

    aget v14, p2, v14

    int-to-long v14, v14

    and-long/2addr v14, v2

    add-int/lit8 v16, p1, 0x0

    move-wide/from16 p2, v14

    aget v14, p0, v16

    int-to-long v14, v14

    and-long/2addr v14, v2

    mul-long v16, v14, v0

    const-wide/16 v18, 0x0

    add-long v2, v16, v18

    add-int/lit8 v16, p5, 0x0

    move-wide/from16 v22, v0

    long-to-int v0, v2

    aput v0, p4, v16

    const/16 v0, 0x20

    ushr-long v1, v2, v0

    mul-long v16, v14, v4

    add-long v1, v1, v16

    add-int/lit8 v3, p5, 0x1

    move-wide/from16 v16, v4

    long-to-int v4, v1

    aput v4, p4, v3

    ushr-long/2addr v1, v0

    mul-long v3, v14, v6

    add-long/2addr v1, v3

    add-int/lit8 v3, p5, 0x2

    long-to-int v4, v1

    aput v4, p4, v3

    ushr-long/2addr v1, v0

    mul-long v3, v14, v8

    add-long/2addr v1, v3

    add-int/lit8 v3, p5, 0x3

    long-to-int v4, v1

    aput v4, p4, v3

    ushr-long/2addr v1, v0

    mul-long v3, v14, v10

    add-long/2addr v1, v3

    add-int/lit8 v3, p5, 0x4

    long-to-int v4, v1

    aput v4, p4, v3

    ushr-long/2addr v1, v0

    mul-long v3, v14, v12

    add-long/2addr v1, v3

    add-int/lit8 v3, p5, 0x5

    long-to-int v4, v1

    aput v4, p4, v3

    ushr-long/2addr v1, v0

    mul-long v14, v14, p2

    add-long/2addr v1, v14

    add-int/lit8 v3, p5, 0x6

    long-to-int v4, v1

    aput v4, p4, v3

    ushr-long/2addr v1, v0

    add-int/lit8 v3, p5, 0x7

    long-to-int v1, v1

    aput v1, p4, v3

    const/4 v1, 0x1

    move/from16 v3, p5

    move v2, v1

    :goto_0
    const/4 v4, 0x7

    if-ge v2, v4, :cond_0

    add-int/2addr v3, v1

    add-int v4, p1, v2

    aget v4, p0, v4

    int-to-long v4, v4

    const-wide v14, 0xffffffffL

    and-long/2addr v4, v14

    mul-long v20, v4, v22

    add-int/lit8 v24, v3, 0x0

    aget v1, p4, v24

    int-to-long v0, v1

    and-long/2addr v0, v14

    add-long v20, v20, v0

    add-long v0, v20, v18

    long-to-int v14, v0

    aput v14, p4, v24

    const/16 v14, 0x20

    ushr-long/2addr v0, v14

    mul-long v25, v4, v16

    add-int/lit8 v15, v3, 0x1

    aget v14, p4, v15

    move-wide/from16 v27, v12

    int-to-long v12, v14

    const-wide v20, 0xffffffffL

    and-long v12, v12, v20

    add-long v25, v25, v12

    add-long v0, v0, v25

    long-to-int v12, v0

    aput v12, p4, v15

    const/16 v12, 0x20

    ushr-long/2addr v0, v12

    mul-long v13, v4, v6

    add-int/lit8 v15, v3, 0x2

    aget v12, p4, v15

    move-wide/from16 v29, v6

    int-to-long v6, v12

    and-long v6, v6, v20

    add-long/2addr v13, v6

    add-long/2addr v0, v13

    long-to-int v6, v0

    aput v6, p4, v15

    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    mul-long v12, v4, v8

    add-int/lit8 v7, v3, 0x3

    aget v14, p4, v7

    int-to-long v14, v14

    and-long v14, v14, v20

    add-long/2addr v12, v14

    add-long/2addr v0, v12

    long-to-int v12, v0

    aput v12, p4, v7

    ushr-long/2addr v0, v6

    mul-long v12, v4, v10

    add-int/lit8 v7, v3, 0x4

    aget v14, p4, v7

    int-to-long v14, v14

    and-long v14, v14, v20

    add-long/2addr v12, v14

    add-long/2addr v0, v12

    long-to-int v12, v0

    aput v12, p4, v7

    ushr-long/2addr v0, v6

    mul-long v12, v4, v27

    add-int/lit8 v7, v3, 0x5

    aget v14, p4, v7

    int-to-long v14, v14

    and-long v14, v14, v20

    add-long/2addr v12, v14

    add-long/2addr v0, v12

    long-to-int v12, v0

    aput v12, p4, v7

    ushr-long/2addr v0, v6

    mul-long v4, v4, p2

    add-int/lit8 v7, v3, 0x6

    aget v12, p4, v7

    int-to-long v12, v12

    and-long v12, v12, v20

    add-long/2addr v4, v12

    add-long/2addr v0, v4

    long-to-int v4, v0

    aput v4, p4, v7

    ushr-long/2addr v0, v6

    add-int/lit8 v4, v3, 0x7

    long-to-int v0, v0

    aput v0, p4, v4

    add-int/lit8 v2, v2, 0x1

    move v0, v6

    move-wide/from16 v12, v27

    move-wide/from16 v6, v29

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method public static ywr([I[I[I)I
    .locals 10

    const/4 v0, 0x0

    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p0, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    const-wide/16 v5, 0x0

    add-long/2addr v1, v5

    long-to-int v5, v1

    aput v5, p2, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    const/4 v5, 0x1

    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x2

    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x3

    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x4

    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x5

    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x6

    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget p0, p0, v5

    int-to-long v8, p0

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    sub-long/2addr v6, p0

    add-long/2addr v1, v6

    long-to-int p0, v1

    aput p0, p2, v5

    shr-long p0, v1, v0

    long-to-int p0, p0

    return p0
.end method

.method public static ywr([I)Ljava/math/BigInteger;
    .locals 4

    const/16 v0, 0x1c

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    aget v2, p0, v1

    if-eqz v2, :cond_0

    rsub-int/lit8 v3, v1, 0x6

    shl-int/lit8 v3, v3, 0x2

    invoke-static {v2, v0, v3}, Lorg/bouncycastle/util/igw;->you(I[BI)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method public static ywr([I[I)Z
    .locals 3

    const/4 v0, 0x6

    :goto_0
    if-ltz v0, :cond_1

    aget v1, p0, v0

    aget v2, p1, v0

    if-eq v1, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static zta(II[II)I
    .locals 10

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long p0, p1

    and-long/2addr p0, v2

    mul-long/2addr v0, p0

    add-int/lit8 v4, p3, 0x0

    aget v5, p2, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-long/2addr v0, v5

    const-wide/16 v5, 0x0

    add-long/2addr v0, v5

    long-to-int v7, v0

    aput v7, p2, v4

    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    add-int/lit8 v7, p3, 0x1

    aget v8, p2, v7

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr p0, v8

    add-long/2addr v0, p0

    long-to-int p0, v0

    aput p0, p2, v7

    ushr-long p0, v0, v4

    add-int/lit8 v0, p3, 0x2

    aget v1, p2, v0

    int-to-long v7, v1

    and-long v1, v7, v2

    add-long/2addr p0, v1

    long-to-int v1, p0

    aput v1, p2, v0

    ushr-long/2addr p0, v4

    cmp-long p0, p0, v5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x7

    const/4 p1, 0x3

    invoke-static {p0, p2, p3, p1}, Lyou/zta/sis/sis/kth;->you(I[III)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static zta(IJ[II)I
    .locals 15

    move-object/from16 v0, p3

    move v1, p0

    move/from16 v2, p4

    int-to-long v3, v1

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    and-long v7, p1, v5

    mul-long v9, v3, v7

    add-int/lit8 v1, v2, 0x0

    aget v11, v0, v1

    int-to-long v11, v11

    and-long/2addr v11, v5

    add-long/2addr v9, v11

    const-wide/16 v11, 0x0

    add-long/2addr v9, v11

    long-to-int v13, v9

    aput v13, v0, v1

    const/16 v1, 0x20

    ushr-long/2addr v9, v1

    ushr-long v13, p1, v1

    mul-long/2addr v3, v13

    add-long/2addr v3, v7

    add-int/lit8 v7, v2, 0x1

    aget v8, v0, v7

    int-to-long v11, v8

    and-long/2addr v11, v5

    add-long/2addr v3, v11

    add-long/2addr v9, v3

    long-to-int v3, v9

    aput v3, v0, v7

    ushr-long v3, v9, v1

    add-int/lit8 v7, v2, 0x2

    aget v8, v0, v7

    int-to-long v8, v8

    and-long/2addr v8, v5

    add-long/2addr v13, v8

    add-long/2addr v3, v13

    long-to-int v8, v3

    aput v8, v0, v7

    ushr-long/2addr v3, v1

    add-int/lit8 v7, v2, 0x3

    aget v8, v0, v7

    int-to-long v8, v8

    and-long/2addr v5, v8

    add-long/2addr v3, v5

    long-to-int v5, v3

    aput v5, v0, v7

    ushr-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    const/4 v3, 0x4

    invoke-static {v1, v0, v2, v3}, Lyou/zta/sis/sis/kth;->you(I[III)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static zta(I[I[I)I
    .locals 11

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 p0, 0x0

    aget v4, p2, p0

    int-to-long v4, v4

    and-long/2addr v4, v2

    mul-long/2addr v4, v0

    aget v6, p1, p0

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr v4, v6

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    long-to-int v6, v4

    aput v6, p2, p0

    const/16 p0, 0x20

    ushr-long/2addr v4, p0

    const/4 v6, 0x1

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long/2addr v7, v0

    aget v9, p1, v6

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v7, v9

    add-long/2addr v4, v7

    long-to-int v7, v4

    aput v7, p2, v6

    ushr-long/2addr v4, p0

    const/4 v6, 0x2

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long/2addr v7, v0

    aget v9, p1, v6

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v7, v9

    add-long/2addr v4, v7

    long-to-int v7, v4

    aput v7, p2, v6

    ushr-long/2addr v4, p0

    const/4 v6, 0x3

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long/2addr v7, v0

    aget v9, p1, v6

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v7, v9

    add-long/2addr v4, v7

    long-to-int v7, v4

    aput v7, p2, v6

    ushr-long/2addr v4, p0

    const/4 v6, 0x4

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long/2addr v7, v0

    aget v9, p1, v6

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v7, v9

    add-long/2addr v4, v7

    long-to-int v7, v4

    aput v7, p2, v6

    ushr-long/2addr v4, p0

    const/4 v6, 0x5

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long/2addr v7, v0

    aget v9, p1, v6

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v7, v9

    add-long/2addr v4, v7

    long-to-int v7, v4

    aput v7, p2, v6

    ushr-long/2addr v4, p0

    const/4 v6, 0x6

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long/2addr v0, v7

    aget p1, p1, v6

    int-to-long v7, p1

    and-long/2addr v2, v7

    add-long/2addr v0, v2

    add-long/2addr v4, v0

    long-to-int p1, v4

    aput p1, p2, v6

    ushr-long p0, v4, p0

    long-to-int p0, p0

    return p0
.end method

.method public static zta(I[I[II)I
    .locals 8

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    const/4 p0, 0x0

    :cond_0
    aget v6, p1, p0

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long/2addr v6, v0

    add-long/2addr v4, v6

    add-int v6, p3, p0

    long-to-int v7, v4

    aput v7, p2, v6

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    add-int/lit8 p0, p0, 0x1

    const/4 v6, 0x7

    if-lt p0, v6, :cond_0

    long-to-int p0, v4

    return p0
.end method

.method public static zta([II)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    aget p0, p0, v0

    :goto_0
    and-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    shr-int/lit8 v1, p1, 0x5

    if-ltz v1, :cond_2

    const/4 v2, 0x7

    if-lt v1, v2, :cond_1

    goto :goto_1

    :cond_1
    and-int/lit8 p1, p1, 0x1f

    aget p0, p0, v1

    ushr-int/2addr p0, p1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public static zta([II[II)I
    .locals 11

    add-int/lit8 v0, p1, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    add-int/lit8 v5, p3, 0x0

    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-long/2addr v1, v6

    const-wide/16 v6, 0x0

    add-long/2addr v1, v6

    long-to-int v6, v1

    aput v6, p0, v0

    aput v6, p2, v5

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    add-int/lit8 v5, p1, 0x1

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-int/lit8 v8, p3, 0x1

    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    add-long/2addr v6, v9

    add-long/2addr v1, v6

    long-to-int v6, v1

    aput v6, p0, v5

    aput v6, p2, v8

    ushr-long/2addr v1, v0

    add-int/lit8 v5, p1, 0x2

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-int/lit8 v8, p3, 0x2

    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    add-long/2addr v6, v9

    add-long/2addr v1, v6

    long-to-int v6, v1

    aput v6, p0, v5

    aput v6, p2, v8

    ushr-long/2addr v1, v0

    add-int/lit8 v5, p1, 0x3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-int/lit8 v8, p3, 0x3

    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    add-long/2addr v6, v9

    add-long/2addr v1, v6

    long-to-int v6, v1

    aput v6, p0, v5

    aput v6, p2, v8

    ushr-long/2addr v1, v0

    add-int/lit8 v5, p1, 0x4

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-int/lit8 v8, p3, 0x4

    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    add-long/2addr v6, v9

    add-long/2addr v1, v6

    long-to-int v6, v1

    aput v6, p0, v5

    aput v6, p2, v8

    ushr-long/2addr v1, v0

    add-int/lit8 v5, p1, 0x5

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-int/lit8 v8, p3, 0x5

    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    add-long/2addr v6, v9

    add-long/2addr v1, v6

    long-to-int v6, v1

    aput v6, p0, v5

    aput v6, p2, v8

    ushr-long/2addr v1, v0

    add-int/lit8 p1, p1, 0x6

    aget v5, p0, p1

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-int/lit8 p3, p3, 0x6

    aget v7, p2, p3

    int-to-long v7, v7

    and-long/2addr v3, v7

    add-long/2addr v5, v3

    add-long/2addr v1, v5

    long-to-int v3, v1

    aput v3, p0, p1

    aput v3, p2, p3

    ushr-long p0, v1, v0

    long-to-int p0, p0

    return p0
.end method

.method public static zta([II[III)I
    .locals 9

    int-to-long v0, p4

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 p4, p1, 0x0

    aget p4, p0, p4

    int-to-long v4, p4

    and-long/2addr v4, v2

    add-int/lit8 p4, p3, 0x0

    aget v6, p2, p4

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    long-to-int v4, v0

    aput v4, p2, p4

    const/16 p4, 0x20

    ushr-long/2addr v0, p4

    add-int/lit8 v4, p1, 0x1

    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x1

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v0, v4

    long-to-int v4, v0

    aput v4, p2, v6

    ushr-long/2addr v0, p4

    add-int/lit8 v4, p1, 0x2

    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x2

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v0, v4

    long-to-int v4, v0

    aput v4, p2, v6

    ushr-long/2addr v0, p4

    add-int/lit8 v4, p1, 0x3

    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x3

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v0, v4

    long-to-int v4, v0

    aput v4, p2, v6

    ushr-long/2addr v0, p4

    add-int/lit8 v4, p1, 0x4

    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x4

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v0, v4

    long-to-int v4, v0

    aput v4, p2, v6

    ushr-long/2addr v0, p4

    add-int/lit8 v4, p1, 0x5

    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x5

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v0, v4

    long-to-int v4, v0

    aput v4, p2, v6

    ushr-long/2addr v0, p4

    add-int/lit8 p1, p1, 0x6

    aget p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    add-int/lit8 p3, p3, 0x6

    aget v4, p2, p3

    int-to-long v4, v4

    and-long/2addr v2, v4

    add-long/2addr p0, v2

    add-long/2addr v0, p0

    long-to-int p0, v0

    aput p0, p2, p3

    ushr-long p0, v0, p4

    long-to-int p0, p0

    return p0
.end method

.method public static zta(I[II[II[II)J
    .locals 13

    move v0, p0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v4, p2, 0x0

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    mul-long v6, v0, v4

    add-int/lit8 v8, p4, 0x0

    aget v8, p3, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v6, v8

    const-wide/16 v8, 0x0

    add-long/2addr v6, v8

    add-int/lit8 v8, p6, 0x0

    long-to-int v9, v6

    aput v9, p5, v8

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    add-int/lit8 v9, p2, 0x1

    aget v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v2

    mul-long v11, v0, v9

    add-long/2addr v11, v4

    add-int/lit8 v4, p4, 0x1

    aget v4, p3, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-long/2addr v11, v4

    add-long/2addr v6, v11

    add-int/lit8 v4, p6, 0x1

    long-to-int v5, v6

    aput v5, p5, v4

    ushr-long v4, v6, v8

    add-int/lit8 v6, p2, 0x2

    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long v11, v0, v6

    add-long/2addr v11, v9

    add-int/lit8 v9, p4, 0x2

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v11, v9

    add-long/2addr v4, v11

    add-int/lit8 v9, p6, 0x2

    long-to-int v10, v4

    aput v10, p5, v9

    ushr-long/2addr v4, v8

    add-int/lit8 v9, p2, 0x3

    aget v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v2

    mul-long v11, v0, v9

    add-long/2addr v11, v6

    add-int/lit8 v6, p4, 0x3

    aget v6, p3, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr v11, v6

    add-long/2addr v4, v11

    add-int/lit8 v6, p6, 0x3

    long-to-int v7, v4

    aput v7, p5, v6

    ushr-long/2addr v4, v8

    add-int/lit8 v6, p2, 0x4

    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long v11, v0, v6

    add-long/2addr v11, v9

    add-int/lit8 v9, p4, 0x4

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v11, v9

    add-long/2addr v4, v11

    add-int/lit8 v9, p6, 0x4

    long-to-int v10, v4

    aput v10, p5, v9

    ushr-long/2addr v4, v8

    add-int/lit8 v9, p2, 0x5

    aget v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v2

    mul-long v11, v0, v9

    add-long/2addr v11, v6

    add-int/lit8 v6, p4, 0x5

    aget v6, p3, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr v11, v6

    add-long/2addr v4, v11

    add-int/lit8 v6, p6, 0x5

    long-to-int v7, v4

    aput v7, p5, v6

    ushr-long/2addr v4, v8

    add-int/lit8 v6, p2, 0x6

    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long/2addr v0, v6

    add-long/2addr v0, v9

    add-int/lit8 v9, p4, 0x6

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v2, v9

    add-long/2addr v0, v2

    add-long/2addr v4, v0

    add-int/lit8 v0, p6, 0x6

    long-to-int v1, v4

    aput v1, p5, v0

    ushr-long v0, v4, v8

    add-long/2addr v0, v6

    return-wide v0
.end method

.method public static zta([I[I)V
    .locals 2

    const/4 v0, 0x0

    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x1

    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x2

    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x3

    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x4

    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x5

    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x6

    aget p0, p0, v0

    aput p0, p1, v0

    return-void
.end method

.method public static zta([II[II[II)Z
    .locals 7

    invoke-static {p0, p1, p2, p3}, Lyou/zta/sis/sis/tsu;->sis([II[II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static/range {p0 .. p5}, Lyou/zta/sis/sis/tsu;->tsu([II[II[II)I

    goto :goto_0

    :cond_0
    move-object v1, p2

    move v2, p3

    move-object v3, p0

    move v4, p1

    move-object v5, p4

    move v6, p5

    invoke-static/range {v1 .. v6}, Lyou/zta/sis/sis/tsu;->tsu([II[II[II)I

    :goto_0
    return v0
.end method
