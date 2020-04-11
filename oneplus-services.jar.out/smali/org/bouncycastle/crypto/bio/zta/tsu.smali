.class public abstract Lorg/bouncycastle/crypto/bio/zta/tsu;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final Zza:I = -0x1f000000

.field private static final _za:J = -0x1f00000000000000L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aj()[B
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static bio([J[J)V
    .locals 18

    const/4 v0, 0x4

    new-array v0, v0, [J

    const/4 v1, 0x0

    aget-wide v2, p0, v1

    invoke-static {v2, v3, v0, v1}, Lyou/zta/sis/sis/zta;->you(J[JI)V

    const/4 v2, 0x1

    aget-wide v3, p0, v2

    const/4 v5, 0x2

    invoke-static {v3, v4, v0, v5}, Lyou/zta/sis/sis/zta;->you(J[JI)V

    aget-wide v3, v0, v1

    aget-wide v6, v0, v2

    aget-wide v8, v0, v5

    const/4 v10, 0x3

    aget-wide v10, v0, v10

    ushr-long v12, v10, v2

    xor-long/2addr v12, v10

    ushr-long v14, v10, v5

    xor-long/2addr v12, v14

    const/4 v0, 0x7

    ushr-long v14, v10, v0

    xor-long/2addr v12, v14

    xor-long/2addr v6, v12

    const/16 v12, 0x3f

    shl-long v13, v10, v12

    const/16 v15, 0x3e

    shl-long v16, v10, v15

    xor-long v13, v13, v16

    const/16 v16, 0x39

    shl-long v10, v10, v16

    xor-long/2addr v10, v13

    xor-long/2addr v8, v10

    ushr-long v10, v8, v2

    xor-long/2addr v10, v8

    ushr-long v13, v8, v5

    xor-long/2addr v10, v13

    ushr-long v13, v8, v0

    xor-long/2addr v10, v13

    xor-long/2addr v3, v10

    shl-long v10, v8, v12

    shl-long v12, v8, v15

    xor-long/2addr v10, v12

    shl-long v8, v8, v16

    xor-long/2addr v8, v10

    xor-long v5, v6, v8

    aput-wide v3, p1, v1

    aput-wide v5, p1, v2

    return-void
.end method

.method public static bj()[I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    return-object v0
.end method

.method public static cj()[J
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/high16 v2, -0x8000000000000000L

    aput-wide v2, v0, v1

    return-object v0
.end method

.method public static cno([J[J)V
    .locals 13

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    const/16 p0, 0x39

    shl-long v6, v4, p0

    const/4 v8, 0x7

    ushr-long v9, v1, v8

    xor-long/2addr v9, v6

    ushr-long v11, v6, v3

    xor-long/2addr v9, v11

    const/4 v11, 0x2

    ushr-long v11, v6, v11

    xor-long/2addr v9, v11

    ushr-long/2addr v6, v8

    xor-long/2addr v6, v9

    aput-wide v6, p1, v0

    ushr-long/2addr v4, v8

    shl-long v0, v1, p0

    or-long/2addr v0, v4

    aput-wide v0, p1, v3

    return-void
.end method

.method public static dj()[J
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    aput-wide v2, v0, v1

    return-object v0
.end method

.method public static igw([J[J)V
    .locals 5

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p0, v0

    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p0, v0

    return-void
.end method

.method public static kth([J[J)V
    .locals 13

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    const/16 p0, 0x38

    shl-long v6, v4, p0

    const/16 v8, 0x8

    ushr-long v9, v1, v8

    xor-long/2addr v9, v6

    ushr-long v11, v6, v3

    xor-long/2addr v9, v11

    const/4 v11, 0x2

    ushr-long v11, v6, v11

    xor-long/2addr v9, v11

    const/4 v11, 0x7

    ushr-long/2addr v6, v11

    xor-long/2addr v6, v9

    aput-wide v6, p1, v0

    ushr-long/2addr v4, v8

    shl-long v0, v1, p0

    or-long/2addr v0, v4

    aput-wide v0, p1, v3

    return-void
.end method

.method public static oif([B)[J
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/bouncycastle/util/igw;->zta([BI[J)V

    return-object v0
.end method

.method public static qbh([B)[I
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/bouncycastle/util/igw;->zta([BI[I)V

    return-object v0
.end method

.method public static rtg([I)V
    .locals 11

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    const/4 v4, 0x2

    aget v5, p0, v4

    const/4 v6, 0x3

    aget v7, p0, v6

    shl-int/lit8 v8, v7, 0x18

    ushr-int/lit8 v9, v1, 0x8

    xor-int/2addr v9, v8

    ushr-int/lit8 v10, v8, 0x1

    xor-int/2addr v9, v10

    ushr-int/lit8 v10, v8, 0x2

    xor-int/2addr v9, v10

    ushr-int/lit8 v8, v8, 0x7

    xor-int/2addr v8, v9

    aput v8, p0, v0

    ushr-int/lit8 v0, v3, 0x8

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    aput v0, p0, v2

    ushr-int/lit8 v0, v5, 0x8

    shl-int/lit8 v1, v3, 0x18

    or-int/2addr v0, v1

    aput v0, p0, v4

    ushr-int/lit8 v0, v7, 0x8

    shl-int/lit8 v1, v5, 0x18

    or-int/2addr v0, v1

    aput v0, p0, v6

    return-void
.end method

.method public static rtg([I[I)V
    .locals 3

    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p0, v0

    const/4 v0, 0x1

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p0, v0

    const/4 v0, 0x2

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p0, v0

    const/4 v0, 0x3

    aget v1, p0, v0

    aget p1, p1, v0

    xor-int/2addr p1, v1

    aput p1, p0, v0

    return-void
.end method

.method public static rtg([J[J)V
    .locals 13

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    const/16 p0, 0x3d

    shl-long v6, v4, p0

    const/4 v8, 0x3

    ushr-long v9, v1, v8

    xor-long/2addr v9, v6

    ushr-long v11, v6, v3

    xor-long/2addr v9, v11

    const/4 v11, 0x2

    ushr-long v11, v6, v11

    xor-long/2addr v9, v11

    const/4 v11, 0x7

    ushr-long/2addr v6, v11

    xor-long/2addr v6, v9

    aput-wide v6, p1, v0

    ushr-long/2addr v4, v8

    shl-long v0, v1, p0

    or-long/2addr v0, v4

    aput-wide v0, p1, v3

    return-void
.end method

.method public static sis([I[I)V
    .locals 10

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    const/4 v4, 0x2

    aget v5, p0, v4

    const/4 v6, 0x3

    aget p0, p0, v6

    shl-int/lit8 v7, p0, 0x1f

    shr-int/lit8 v7, v7, 0x1f

    ushr-int/lit8 v8, v1, 0x1

    const/high16 v9, -0x1f000000

    and-int/2addr v7, v9

    xor-int/2addr v7, v8

    aput v7, p1, v0

    ushr-int/lit8 v0, v3, 0x1

    shl-int/lit8 v1, v1, 0x1f

    or-int/2addr v0, v1

    aput v0, p1, v2

    ushr-int/lit8 v0, v5, 0x1

    shl-int/lit8 v1, v3, 0x1f

    or-int/2addr v0, v1

    aput v0, p1, v4

    ushr-int/2addr p0, v2

    shl-int/lit8 v0, v5, 0x1f

    or-int/2addr p0, v0

    aput p0, p1, v6

    return-void
.end method

.method public static sis([J)V
    .locals 14

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    const/16 v6, 0x38

    shl-long v7, v4, v6

    const/16 v9, 0x8

    ushr-long v10, v1, v9

    xor-long/2addr v10, v7

    ushr-long v12, v7, v3

    xor-long/2addr v10, v12

    const/4 v12, 0x2

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    const/4 v12, 0x7

    ushr-long/2addr v7, v12

    xor-long/2addr v7, v10

    aput-wide v7, p0, v0

    ushr-long/2addr v4, v9

    shl-long v0, v1, v6

    or-long/2addr v0, v4

    aput-wide v0, p0, v3

    return-void
.end method

.method public static sis([J[J)V
    .locals 23

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    aget-wide v6, p1, v0

    aget-wide v8, p1, v3

    const-wide/16 v10, 0x0

    move-wide/from16 v16, v4

    move-wide v12, v6

    move-wide v14, v8

    move-wide v4, v10

    move-wide v6, v4

    move-wide v8, v1

    move v1, v0

    :goto_0
    const/16 v2, 0x40

    const/16 v18, 0x3f

    if-ge v1, v2, :cond_0

    shr-long v19, v8, v18

    shl-long/2addr v8, v3

    and-long v21, v12, v19

    xor-long v10, v10, v21

    and-long v19, v14, v19

    xor-long v6, v6, v19

    shr-long v19, v16, v18

    shl-long v16, v16, v3

    and-long v21, v12, v19

    xor-long v6, v6, v21

    and-long v19, v14, v19

    xor-long v4, v4, v19

    shl-long v19, v14, v18

    const/16 v2, 0x8

    shr-long v19, v19, v2

    ushr-long/2addr v14, v3

    shl-long v21, v12, v18

    or-long v14, v14, v21

    ushr-long/2addr v12, v3

    const-wide/high16 v21, -0x1f00000000000000L    # -1.757388200993436E159

    and-long v18, v19, v21

    xor-long v12, v12, v18

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    ushr-long v1, v4, v3

    xor-long/2addr v1, v4

    const/4 v8, 0x2

    ushr-long v8, v4, v8

    xor-long/2addr v1, v8

    const/4 v8, 0x7

    ushr-long v8, v4, v8

    xor-long/2addr v1, v8

    xor-long/2addr v1, v10

    shl-long v8, v4, v18

    const/16 v10, 0x3e

    shl-long v10, v4, v10

    xor-long/2addr v8, v10

    const/16 v10, 0x39

    shl-long/2addr v4, v10

    xor-long/2addr v4, v8

    xor-long/2addr v4, v6

    aput-wide v1, p0, v0

    aput-wide v4, p0, v3

    return-void
.end method

.method public static sis([I)[B
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/util/igw;->zta([I[BI)V

    return-object v0
.end method

.method public static ssp([J[J)V
    .locals 13

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    const/16 p0, 0x3c

    shl-long v6, v4, p0

    const/4 v8, 0x4

    ushr-long v9, v1, v8

    xor-long/2addr v9, v6

    ushr-long v11, v6, v3

    xor-long/2addr v9, v11

    const/4 v11, 0x2

    ushr-long v11, v6, v11

    xor-long/2addr v9, v11

    const/4 v11, 0x7

    ushr-long/2addr v6, v11

    xor-long/2addr v6, v9

    aput-wide v6, p1, v0

    ushr-long/2addr v4, v8

    shl-long v0, v1, p0

    or-long/2addr v0, v4

    aput-wide v0, p1, v3

    return-void
.end method

.method public static tsu([I)V
    .locals 11

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    const/4 v4, 0x2

    aget v5, p0, v4

    const/4 v6, 0x3

    aget v7, p0, v6

    shl-int/lit8 v8, v7, 0x1f

    shr-int/lit8 v8, v8, 0x1f

    ushr-int/lit8 v9, v1, 0x1

    const/high16 v10, -0x1f000000

    and-int/2addr v8, v10

    xor-int/2addr v8, v9

    aput v8, p0, v0

    ushr-int/lit8 v0, v3, 0x1

    shl-int/lit8 v1, v1, 0x1f

    or-int/2addr v0, v1

    aput v0, p0, v2

    ushr-int/lit8 v0, v5, 0x1

    shl-int/lit8 v1, v3, 0x1f

    or-int/2addr v0, v1

    aput v0, p0, v4

    ushr-int/lit8 v0, v7, 0x1

    shl-int/lit8 v1, v5, 0x1f

    or-int/2addr v0, v1

    aput v0, p0, v6

    return-void
.end method

.method public static tsu([I[I)V
    .locals 10

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    const/4 v4, 0x2

    aget v5, p0, v4

    const/4 v6, 0x3

    aget p0, p0, v6

    shl-int/lit8 v7, p0, 0x18

    ushr-int/lit8 v8, v1, 0x8

    xor-int/2addr v8, v7

    ushr-int/lit8 v9, v7, 0x1

    xor-int/2addr v8, v9

    ushr-int/lit8 v9, v7, 0x2

    xor-int/2addr v8, v9

    ushr-int/lit8 v7, v7, 0x7

    xor-int/2addr v7, v8

    aput v7, p1, v0

    ushr-int/lit8 v0, v3, 0x8

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    aput v0, p1, v2

    ushr-int/lit8 v0, v5, 0x8

    shl-int/lit8 v1, v3, 0x18

    or-int/2addr v0, v1

    aput v0, p1, v4

    ushr-int/lit8 p0, p0, 0x8

    shl-int/lit8 v0, v5, 0x18

    or-int/2addr p0, v0

    aput p0, p1, v6

    return-void
.end method

.method public static tsu([J[J)V
    .locals 12

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    const/16 p0, 0x3f

    shl-long v6, v4, p0

    shr-long/2addr v6, p0

    ushr-long v8, v1, v3

    const-wide/high16 v10, -0x1f00000000000000L    # -1.757388200993436E159

    and-long/2addr v6, v10

    xor-long/2addr v6, v8

    aput-wide v6, p1, v0

    ushr-long/2addr v4, v3

    shl-long v0, v1, p0

    or-long/2addr v0, v4

    aput-wide v0, p1, v3

    return-void
.end method

.method public static you([B[B)V
    .locals 3

    const/4 v0, 0x0

    :cond_0
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    return-void
.end method

.method public static you([B[BI)V
    .locals 3

    const/4 v0, 0x0

    :cond_0
    aget-byte v1, p0, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    aget-byte v1, p0, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    aget-byte v1, p0, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    aget-byte v1, p0, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    return-void
.end method

.method public static you([I[I)V
    .locals 17

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    const/4 v4, 0x2

    aget v5, p1, v4

    const/4 v6, 0x3

    aget v7, p1, v6

    move v8, v0

    move v9, v1

    move v10, v3

    move v11, v5

    move v12, v7

    move v1, v8

    move v3, v1

    move v5, v3

    move v7, v5

    :goto_0
    const/4 v13, 0x4

    if-ge v1, v13, :cond_1

    aget v13, p0, v1

    move v14, v12

    move v12, v11

    move v11, v10

    move v10, v9

    move v9, v8

    move v8, v7

    move v7, v5

    move v5, v3

    move v3, v0

    :goto_1
    const/16 v15, 0x20

    if-ge v3, v15, :cond_0

    shr-int/lit8 v15, v13, 0x1f

    shl-int/2addr v13, v2

    and-int v16, v10, v15

    xor-int v5, v5, v16

    and-int v16, v11, v15

    xor-int v7, v7, v16

    and-int v16, v12, v15

    xor-int v8, v8, v16

    and-int/2addr v15, v14

    xor-int/2addr v9, v15

    shl-int/lit8 v15, v14, 0x1f

    shr-int/lit8 v15, v15, 0x8

    ushr-int/lit8 v14, v14, 0x1

    shl-int/lit8 v16, v12, 0x1f

    or-int v14, v14, v16

    ushr-int/lit8 v12, v12, 0x1

    shl-int/lit8 v16, v11, 0x1f

    or-int v12, v12, v16

    ushr-int/lit8 v11, v11, 0x1

    shl-int/lit8 v16, v10, 0x1f

    or-int v11, v11, v16

    ushr-int/lit8 v10, v10, 0x1

    const/high16 v16, -0x1f000000

    and-int v15, v15, v16

    xor-int/2addr v10, v15

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    move v3, v5

    move v5, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v14

    goto :goto_0

    :cond_1
    aput v3, p0, v0

    aput v5, p0, v2

    aput v7, p0, v4

    aput v8, p0, v6

    return-void
.end method

.method public static you([J)V
    .locals 13

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    const/16 v6, 0x3f

    shl-long v7, v4, v6

    shr-long/2addr v7, v6

    ushr-long v9, v1, v3

    const-wide/high16 v11, -0x1f00000000000000L    # -1.757388200993436E159

    and-long/2addr v7, v11

    xor-long/2addr v7, v9

    aput-wide v7, p0, v0

    ushr-long/2addr v4, v3

    shl-long v0, v1, v6

    or-long/2addr v0, v4

    aput-wide v0, p0, v3

    return-void
.end method

.method public static you([J[J)V
    .locals 10

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    const/16 p0, 0x3f

    shr-long v6, v1, p0

    const-wide/high16 v8, -0x1f00000000000000L    # -1.757388200993436E159

    and-long/2addr v8, v6

    xor-long/2addr v1, v8

    shl-long/2addr v1, v3

    ushr-long v8, v4, p0

    or-long/2addr v1, v8

    aput-wide v1, p1, v0

    shl-long v0, v4, v3

    neg-long v4, v6

    or-long/2addr v0, v4

    aput-wide v0, p1, v3

    return-void
.end method

.method public static zta([BI[BII)V
    .locals 3

    :goto_0
    add-int/lit8 p4, p4, -0x1

    if-ltz p4, :cond_0

    add-int v0, p1, p4

    aget-byte v1, p0, v0

    add-int v2, p3, p4

    aget-byte v2, p2, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static zta([BI[BI[BI)V
    .locals 4

    const/4 v0, 0x0

    :cond_0
    add-int v1, p5, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    add-int v3, p3, v0

    aget-byte v3, p2, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    add-int v1, p5, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    add-int v3, p3, v0

    aget-byte v3, p2, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    add-int v1, p5, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    add-int v3, p3, v0

    aget-byte v3, p2, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    add-int v1, p5, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    add-int v3, p3, v0

    aget-byte v3, p2, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    return-void
.end method

.method public static zta([B[B)V
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/crypto/bio/zta/tsu;->oif([B)[J

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/crypto/bio/zta/tsu;->oif([B)[J

    move-result-object p1

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/bio/zta/tsu;->sis([J[J)V

    invoke-static {v0, p0}, Lorg/bouncycastle/crypto/bio/zta/tsu;->zta([J[B)V

    return-void
.end method

.method public static zta([B[BII)V
    .locals 2

    :goto_0
    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_0

    aget-byte v0, p0, p3

    add-int v1, p2, p3

    aget-byte v1, p1, v1

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p0, p3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static zta([B[B[B)V
    .locals 3

    const/4 v0, 0x0

    :cond_0
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    return-void
.end method

.method public static zta([B[I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/util/igw;->zta([BI[I)V

    return-void
.end method

.method public static zta([B[J)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/util/igw;->zta([BI[J)V

    return-void
.end method

.method public static zta([I[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/util/igw;->zta([I[BI)V

    return-void
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

    aget p0, p0, v0

    aput p0, p1, v0

    return-void
.end method

.method public static zta([I[I[I)V
    .locals 3

    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p2, v0

    const/4 v0, 0x1

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p2, v0

    const/4 v0, 0x2

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p2, v0

    const/4 v0, 0x3

    aget p0, p0, v0

    aget p1, p1, v0

    xor-int/2addr p0, p1

    aput p0, p2, v0

    return-void
.end method

.method public static zta([J[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/util/igw;->zta([J[BI)V

    return-void
.end method

.method public static zta([J[J)V
    .locals 3

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    return-void
.end method

.method public static zta([J[J[J)V
    .locals 5

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide p0, p1, v0

    xor-long/2addr p0, v1

    aput-wide p0, p2, v0

    return-void
.end method

.method public static zta([J)[B
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/util/igw;->zta([J[BI)V

    return-object v0
.end method
