.class public Lorg/bouncycastle/crypto/you/kth;
.super Lorg/bouncycastle/crypto/you/ssp;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/you/rtg;


# static fields
.field private static final Pwa:I = 0x10

.field private static final Qwa:I = 0x7

.field private static final Rwa:I = 0xc

.field private static final Swa:I = 0x11

.field private static final Twa:I = 0x16

.field private static final Uwa:I = 0x5

.field private static final Vwa:I = 0x9

.field private static final Wwa:I = 0xe

.field private static final Xwa:I = 0x14

.field private static final Ywa:I = 0x4

.field private static final Zwa:I = 0xb

.field private static final _wa:I = 0x10

.field private static final axa:I = 0x17

.field private static final bxa:I = 0x6

.field private static final cxa:I = 0xa

.field private static final dxa:I = 0xf

.field private static final exa:I = 0x15


# instance fields
.field private H2:I

.field private H3:I

.field private Mwa:I

.field private Nwa:I

.field private Owa:I

.field private X:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/you/ssp;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/you/kth;->reset()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/you/kth;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/you/ssp;-><init>(Lorg/bouncycastle/crypto/you/ssp;)V

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/you/kth;->zta(Lorg/bouncycastle/crypto/you/kth;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/you/ssp;-><init>([B)V

    const/16 v0, 0x10

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    invoke-static {p1, v0}, Lorg/bouncycastle/util/igw;->igw([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/you/kth;->Mwa:I

    const/16 v0, 0x14

    invoke-static {p1, v0}, Lorg/bouncycastle/util/igw;->igw([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/you/kth;->H2:I

    const/16 v0, 0x18

    invoke-static {p1, v0}, Lorg/bouncycastle/util/igw;->igw([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/you/kth;->H3:I

    const/16 v0, 0x1c

    invoke-static {p1, v0}, Lorg/bouncycastle/util/igw;->igw([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/you/kth;->Nwa:I

    const/16 v0, 0x20

    invoke-static {p1, v0}, Lorg/bouncycastle/util/igw;->igw([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/you/kth;->Owa:I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/you/kth;->Owa:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x24

    invoke-static {p1, v2}, Lorg/bouncycastle/util/igw;->igw([BI)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dma(III)I
    .locals 0

    xor-int p0, p1, p2

    xor-int/2addr p0, p3

    return p0
.end method

.method private gck(III)I
    .locals 0

    and-int p0, p1, p3

    not-int p1, p3

    and-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0
.end method

.method private rotateLeft(II)I
    .locals 0

    shl-int p0, p1, p2

    rsub-int/lit8 p2, p2, 0x20

    ushr-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0
.end method

.method private tsu(I[BI)V
    .locals 1

    int-to-byte p0, p1

    aput-byte p0, p2, p3

    add-int/lit8 p0, p3, 0x1

    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    aput-byte v0, p2, p0

    add-int/lit8 p0, p3, 0x2

    ushr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    aput-byte v0, p2, p0

    add-int/lit8 p3, p3, 0x3

    ushr-int/lit8 p0, p1, 0x18

    int-to-byte p0, p0

    aput-byte p0, p2, p3

    return-void
.end method

.method private wtn(III)I
    .locals 0

    and-int p0, p1, p2

    not-int p1, p1

    and-int/2addr p1, p3

    or-int/2addr p0, p1

    return p0
.end method

.method private ywr(III)I
    .locals 0

    not-int p0, p3

    or-int/2addr p0, p1

    xor-int/2addr p0, p2

    return p0
.end method

.method private zta(Lorg/bouncycastle/crypto/you/kth;)V
    .locals 4

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/you/ssp;->zta(Lorg/bouncycastle/crypto/you/ssp;)V

    iget v0, p1, Lorg/bouncycastle/crypto/you/kth;->Mwa:I

    iput v0, p0, Lorg/bouncycastle/crypto/you/kth;->Mwa:I

    iget v0, p1, Lorg/bouncycastle/crypto/you/kth;->H2:I

    iput v0, p0, Lorg/bouncycastle/crypto/you/kth;->H2:I

    iget v0, p1, Lorg/bouncycastle/crypto/you/kth;->H3:I

    iput v0, p0, Lorg/bouncycastle/crypto/you/kth;->H3:I

    iget v0, p1, Lorg/bouncycastle/crypto/you/kth;->Nwa:I

    iput v0, p0, Lorg/bouncycastle/crypto/you/kth;->Nwa:I

    iget-object v0, p1, Lorg/bouncycastle/crypto/you/kth;->X:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p1, Lorg/bouncycastle/crypto/you/kth;->Owa:I

    iput p1, p0, Lorg/bouncycastle/crypto/you/kth;->Owa:I

    return-void
.end method


# virtual methods
.method protected Xi()V
    .locals 21

    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/crypto/you/kth;->Mwa:I

    iget v2, v0, Lorg/bouncycastle/crypto/you/kth;->H2:I

    iget v3, v0, Lorg/bouncycastle/crypto/you/kth;->H3:I

    iget v4, v0, Lorg/bouncycastle/crypto/you/kth;->Nwa:I

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/you/kth;->wtn(III)I

    move-result v5

    add-int/2addr v1, v5

    iget-object v5, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    add-int/2addr v1, v5

    const v5, -0x28955b88

    add-int/2addr v1, v5

    const/4 v5, 0x7

    invoke-direct {v0, v1, v5}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/you/kth;->wtn(III)I

    move-result v7

    add-int/2addr v4, v7

    iget-object v7, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    add-int/2addr v4, v7

    const v7, -0x173848aa

    add-int/2addr v4, v7

    const/16 v7, 0xc

    invoke-direct {v0, v4, v7}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/you/kth;->wtn(III)I

    move-result v9

    add-int/2addr v3, v9

    iget-object v9, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    const/4 v10, 0x2

    aget v9, v9, v10

    add-int/2addr v3, v9

    const v9, 0x242070db

    add-int/2addr v3, v9

    const/16 v9, 0x11

    invoke-direct {v0, v3, v9}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/you/kth;->wtn(III)I

    move-result v11

    add-int/2addr v2, v11

    iget-object v11, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    const/4 v12, 0x3

    aget v11, v11, v12

    add-int/2addr v2, v11

    const v11, -0x3e423112

    add-int/2addr v2, v11

    const/16 v11, 0x16

    invoke-direct {v0, v2, v11}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/you/kth;->wtn(III)I

    move-result v11

    add-int/2addr v1, v11

    iget-object v11, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    const/4 v13, 0x4

    aget v11, v11, v13

    add-int/2addr v1, v11

    const v11, -0xa83f051

    add-int/2addr v1, v11

    invoke-direct {v0, v1, v5}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/you/kth;->wtn(III)I

    move-result v11

    add-int/2addr v4, v11

    iget-object v11, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    const/4 v14, 0x5

    aget v11, v11, v14

    add-int/2addr v4, v11

    const v11, 0x4787c62a

    add-int/2addr v4, v11

    invoke-direct {v0, v4, v7}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/you/kth;->wtn(III)I

    move-result v11

    add-int/2addr v3, v11

    iget-object v11, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    const/4 v15, 0x6

    aget v11, v11, v15

    add-int/2addr v3, v11

    const v11, -0x57cfb9ed

    add-int/2addr v3, v11

    invoke-direct {v0, v3, v9}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/you/kth;->wtn(III)I

    move-result v11

    add-int/2addr v2, v11

    iget-object v11, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    aget v11, v11, v5

    add-int/2addr v2, v11

    const v11, -0x2b96aff

    add-int/2addr v2, v11

    const/16 v11, 0x16

    invoke-direct {v0, v2, v11}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/you/kth;->wtn(III)I

    move-result v11

    add-int/2addr v1, v11

    iget-object v11, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    const/16 v16, 0x8

    aget v11, v11, v16

    add-int/2addr v1, v11

    const v11, 0x698098d8

    add-int/2addr v1, v11

    invoke-direct {v0, v1, v5}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/you/kth;->wtn(III)I

    move-result v11

    add-int/2addr v4, v11

    iget-object v11, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    const/16 v10, 0x9

    aget v11, v11, v10

    add-int/2addr v4, v11

    const v11, -0x74bb0851

    add-int/2addr v4, v11

    invoke-direct {v0, v4, v7}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/you/kth;->wtn(III)I

    move-result v11

    add-int/2addr v3, v11

    iget-object v11, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    const/16 v12, 0xa

    aget v11, v11, v12

    add-int/2addr v3, v11

    const v11, -0xa44f

    add-int/2addr v3, v11

    invoke-direct {v0, v3, v9}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/you/kth;->wtn(III)I

    move-result v11

    add-int/2addr v2, v11

    iget-object v11, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    const/16 v13, 0xb

    aget v11, v11, v13

    add-int/2addr v2, v11

    const v11, -0x76a32842

    add-int/2addr v2, v11

    const/16 v11, 0x16

    invoke-direct {v0, v2, v11}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/you/kth;->wtn(III)I

    move-result v11

    add-int/2addr v1, v11

    iget-object v11, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    aget v11, v11, v7

    add-int/2addr v1, v11

    const v11, 0x6b901122

    add-int/2addr v1, v11

    invoke-direct {v0, v1, v5}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/you/kth;->wtn(III)I

    move-result v11

    add-int/2addr v4, v11

    iget-object v11, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    const/16 v19, 0xd

    aget v11, v11, v19

    add-int/2addr v4, v11

    const v11, -0x2678e6d

    add-int/2addr v4, v11

    invoke-direct {v0, v4, v7}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/you/kth;->wtn(III)I

    move-result v11

    add-int/2addr v3, v11

    iget-object v11, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    const/16 v7, 0xe

    aget v11, v11, v7

    add-int/2addr v3, v11

    const v11, -0x5986bc72

    add-int/2addr v3, v11

    invoke-direct {v0, v3, v9}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/you/kth;->wtn(III)I

    move-result v9

    add-int/2addr v2, v9

    iget-object v9, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    const/16 v11, 0xf

    aget v9, v9, v11

    add-int/2addr v2, v9

    const v9, 0x49b40821

    add-int/2addr v2, v9

    const/16 v9, 0x16

    invoke-direct {v0, v2, v9}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/you/kth;->gck(III)I

    move-result v9

    add-int/2addr v1, v9

    iget-object v9, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    aget v9, v9, v8

    add-int/2addr v1, v9

    const v9, -0x9e1da9e

    add-int/2addr v1, v9

    invoke-direct {v0, v1, v14}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/you/kth;->gck(III)I

    move-result v9

    add-int/2addr v4, v9

    iget-object v9, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    aget v9, v9, v15

    add-int/2addr v4, v9

    const v9, -0x3fbf4cc0

    add-int/2addr v4, v9

    invoke-direct {v0, v4, v10}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/you/kth;->gck(III)I

    move-result v9

    add-int/2addr v3, v9

    iget-object v9, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    aget v9, v9, v13

    add-int/2addr v3, v9

    const v9, 0x265e5a51

    add-int/2addr v3, v9

    invoke-direct {v0, v3, v7}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/you/kth;->gck(III)I

    move-result v9

    add-int/2addr v2, v9

    iget-object v9, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    aget v9, v9, v6

    add-int/2addr v2, v9

    const v9, -0x16493856

    add-int/2addr v2, v9

    const/16 v9, 0x14

    invoke-direct {v0, v2, v9}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/you/kth;->gck(III)I

    move-result v9

    add-int/2addr v1, v9

    iget-object v9, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    aget v9, v9, v14

    add-int/2addr v1, v9

    const v9, -0x29d0efa3

    add-int/2addr v1, v9

    invoke-direct {v0, v1, v14}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/you/kth;->gck(III)I

    move-result v9

    add-int/2addr v4, v9

    iget-object v9, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    aget v9, v9, v12

    add-int/2addr v4, v9

    const v9, 0x2441453

    add-int/2addr v4, v9

    invoke-direct {v0, v4, v10}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/you/kth;->gck(III)I

    move-result v9

    add-int/2addr v3, v9

    iget-object v9, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    aget v9, v9, v11

    add-int/2addr v3, v9

    const v9, -0x275e197f

    add-int/2addr v3, v9

    invoke-direct {v0, v3, v7}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/you/kth;->gck(III)I

    move-result v9

    add-int/2addr v2, v9

    iget-object v9, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    const/16 v18, 0x4

    aget v9, v9, v18

    add-int/2addr v2, v9

    const v9, -0x182c0438

    add-int/2addr v2, v9

    const/16 v9, 0x14

    invoke-direct {v0, v2, v9}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/you/kth;->gck(III)I

    move-result v9

    add-int/2addr v1, v9

    iget-object v9, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    aget v9, v9, v10

    add-int/2addr v1, v9

    const v9, 0x21e1cde6

    add-int/2addr v1, v9

    invoke-direct {v0, v1, v14}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/you/kth;->gck(III)I

    move-result v9

    add-int/2addr v4, v9

    iget-object v9, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    aget v9, v9, v7

    add-int/2addr v4, v9

    const v9, -0x3cc8f82a

    add-int/2addr v4, v9

    invoke-direct {v0, v4, v10}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/you/kth;->gck(III)I

    move-result v9

    add-int/2addr v3, v9

    iget-object v9, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    const/16 v17, 0x3

    aget v9, v9, v17

    add-int/2addr v3, v9

    const v9, -0xb2af279

    add-int/2addr v3, v9

    invoke-direct {v0, v3, v7}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/you/kth;->gck(III)I

    move-result v9

    add-int/2addr v2, v9

    iget-object v9, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    const/16 v20, 0x8

    aget v9, v9, v20

    add-int/2addr v2, v9

    const v9, 0x455a14ed

    add-int/2addr v2, v9

    const/16 v9, 0x14

    invoke-direct {v0, v2, v9}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/you/kth;->gck(III)I

    move-result v9

    add-int/2addr v1, v9

    iget-object v9, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    const/16 v20, 0xd

    aget v9, v9, v20

    add-int/2addr v1, v9

    const v9, -0x561c16fb

    add-int/2addr v1, v9

    invoke-direct {v0, v1, v14}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/you/kth;->gck(III)I

    move-result v9

    add-int/2addr v4, v9

    iget-object v9, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    const/16 v16, 0x2

    aget v9, v9, v16

    add-int/2addr v4, v9

    const v9, -0x3105c08

    add-int/2addr v4, v9

    invoke-direct {v0, v4, v10}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/you/kth;->gck(III)I

    move-result v9

    add-int/2addr v3, v9

    iget-object v9, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    aget v9, v9, v5

    add-int/2addr v3, v9

    const v9, 0x676f02d9

    add-int/2addr v3, v9

    invoke-direct {v0, v3, v7}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/you/kth;->gck(III)I

    move-result v9

    add-int/2addr v2, v9

    iget-object v9, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    const/16 v19, 0xc

    aget v9, v9, v19

    add-int/2addr v2, v9

    const v9, -0x72d5b376

    add-int/2addr v2, v9

    const/16 v9, 0x14

    invoke-direct {v0, v2, v9}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/you/kth;->dma(III)I

    move-result v9

    add-int/2addr v1, v9

    iget-object v9, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    aget v9, v9, v14

    add-int/2addr v1, v9

    const v9, -0x5c6be

    add-int/2addr v1, v9

    const/4 v9, 0x4

    invoke-direct {v0, v1, v9}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/you/kth;->dma(III)I

    move-result v9

    add-int/2addr v4, v9

    iget-object v9, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    const/16 v20, 0x8

    aget v9, v9, v20

    add-int/2addr v4, v9

    const v9, -0x788e097f

    add-int/2addr v4, v9

    invoke-direct {v0, v4, v13}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/you/kth;->dma(III)I

    move-result v9

    add-int/2addr v3, v9

    iget-object v9, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    aget v9, v9, v13

    add-int/2addr v3, v9

    const v9, 0x6d9d6122

    add-int/2addr v3, v9

    const/16 v9, 0x10

    invoke-direct {v0, v3, v9}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/you/kth;->dma(III)I

    move-result v9

    add-int/2addr v2, v9

    iget-object v9, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    aget v9, v9, v7

    add-int/2addr v2, v9

    const v9, -0x21ac7f4

    add-int/2addr v2, v9

    const/16 v9, 0x17

    invoke-direct {v0, v2, v9}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/you/kth;->dma(III)I

    move-result v9

    add-int/2addr v1, v9

    iget-object v9, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    aget v9, v9, v8

    add-int/2addr v1, v9

    const v9, -0x5b4115bc

    add-int/2addr v1, v9

    const/4 v9, 0x4

    invoke-direct {v0, v1, v9}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/you/kth;->dma(III)I

    move-result v18

    add-int v4, v4, v18

    iget-object v8, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    aget v8, v8, v9

    add-int/2addr v4, v8

    const v8, 0x4bdecfa9    # 2.9204306E7f

    add-int/2addr v4, v8

    invoke-direct {v0, v4, v13}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/you/kth;->dma(III)I

    move-result v8

    add-int/2addr v3, v8

    iget-object v8, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    aget v8, v8, v5

    add-int/2addr v3, v8

    const v8, -0x944b4a0

    add-int/2addr v3, v8

    const/16 v8, 0x10

    invoke-direct {v0, v3, v8}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/you/kth;->dma(III)I

    move-result v8

    add-int/2addr v2, v8

    iget-object v8, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    aget v8, v8, v12

    add-int/2addr v2, v8

    const v8, -0x41404390

    add-int/2addr v2, v8

    const/16 v8, 0x17

    invoke-direct {v0, v2, v8}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/you/kth;->dma(III)I

    move-result v8

    add-int/2addr v1, v8

    iget-object v8, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    const/16 v9, 0xd

    aget v8, v8, v9

    add-int/2addr v1, v8

    const v8, 0x289b7ec6

    add-int/2addr v1, v8

    const/4 v8, 0x4

    invoke-direct {v0, v1, v8}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/you/kth;->dma(III)I

    move-result v8

    add-int/2addr v4, v8

    iget-object v8, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    aget v8, v8, v6

    add-int/2addr v4, v8

    const v8, -0x155ed806

    add-int/2addr v4, v8

    invoke-direct {v0, v4, v13}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/you/kth;->dma(III)I

    move-result v8

    add-int/2addr v3, v8

    iget-object v8, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    const/4 v9, 0x3

    aget v8, v8, v9

    add-int/2addr v3, v8

    const v8, -0x2b10cf7b

    add-int/2addr v3, v8

    const/16 v8, 0x10

    invoke-direct {v0, v3, v8}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/you/kth;->dma(III)I

    move-result v8

    add-int/2addr v2, v8

    iget-object v8, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    aget v8, v8, v15

    add-int/2addr v2, v8

    const v8, 0x4881d05    # 3.2000097E-36f

    add-int/2addr v2, v8

    const/16 v8, 0x17

    invoke-direct {v0, v2, v8}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/you/kth;->dma(III)I

    move-result v8

    add-int/2addr v1, v8

    iget-object v8, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    aget v8, v8, v10

    add-int/2addr v1, v8

    const v8, -0x262b2fc7

    add-int/2addr v1, v8

    const/4 v8, 0x4

    invoke-direct {v0, v1, v8}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/you/kth;->dma(III)I

    move-result v8

    add-int/2addr v4, v8

    iget-object v8, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    const/16 v9, 0xc

    aget v8, v8, v9

    add-int/2addr v4, v8

    const v8, -0x1924661b

    add-int/2addr v4, v8

    invoke-direct {v0, v4, v13}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/you/kth;->dma(III)I

    move-result v8

    add-int/2addr v3, v8

    iget-object v8, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    aget v8, v8, v11

    add-int/2addr v3, v8

    const v8, 0x1fa27cf8

    add-int/2addr v3, v8

    const/16 v8, 0x10

    invoke-direct {v0, v3, v8}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/you/kth;->dma(III)I

    move-result v8

    add-int/2addr v2, v8

    iget-object v8, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    const/4 v9, 0x2

    aget v8, v8, v9

    add-int/2addr v2, v8

    const v8, -0x3b53a99b

    add-int/2addr v2, v8

    const/16 v8, 0x17

    invoke-direct {v0, v2, v8}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/you/kth;->ywr(III)I

    move-result v8

    add-int/2addr v1, v8

    iget-object v8, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    aget v8, v8, v6

    add-int/2addr v1, v8

    const v8, -0xbd6ddbc

    add-int/2addr v1, v8

    invoke-direct {v0, v1, v15}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/you/kth;->ywr(III)I

    move-result v8

    add-int/2addr v4, v8

    iget-object v8, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    aget v5, v8, v5

    add-int/2addr v4, v5

    const v5, 0x432aff97

    add-int/2addr v4, v5

    invoke-direct {v0, v4, v12}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/you/kth;->ywr(III)I

    move-result v5

    add-int/2addr v3, v5

    iget-object v5, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    aget v5, v5, v7

    add-int/2addr v3, v5

    const v5, -0x546bdc59

    add-int/2addr v3, v5

    invoke-direct {v0, v3, v11}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/you/kth;->ywr(III)I

    move-result v5

    add-int/2addr v2, v5

    iget-object v5, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    aget v5, v5, v14

    add-int/2addr v2, v5

    const v5, -0x36c5fc7

    add-int/2addr v2, v5

    const/16 v5, 0x15

    invoke-direct {v0, v2, v5}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/you/kth;->ywr(III)I

    move-result v5

    add-int/2addr v1, v5

    iget-object v5, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    const/16 v7, 0xc

    aget v5, v5, v7

    add-int/2addr v1, v5

    const v5, 0x655b59c3

    add-int/2addr v1, v5

    invoke-direct {v0, v1, v15}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/you/kth;->ywr(III)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    const/4 v7, 0x3

    aget v5, v5, v7

    add-int/2addr v4, v5

    const v5, -0x70f3336e

    add-int/2addr v4, v5

    invoke-direct {v0, v4, v12}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/you/kth;->ywr(III)I

    move-result v5

    add-int/2addr v3, v5

    iget-object v5, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    aget v5, v5, v12

    add-int/2addr v3, v5

    const v5, -0x100b83

    add-int/2addr v3, v5

    invoke-direct {v0, v3, v11}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/you/kth;->ywr(III)I

    move-result v5

    add-int/2addr v2, v5

    iget-object v5, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    const/4 v7, 0x1

    aget v5, v5, v7

    add-int/2addr v2, v5

    const v5, -0x7a7ba22f

    add-int/2addr v2, v5

    const/16 v5, 0x15

    invoke-direct {v0, v2, v5}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/you/kth;->ywr(III)I

    move-result v5

    add-int/2addr v1, v5

    iget-object v5, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    const/16 v7, 0x8

    aget v5, v5, v7

    add-int/2addr v1, v5

    const v5, 0x6fa87e4f

    add-int/2addr v1, v5

    invoke-direct {v0, v1, v15}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/you/kth;->ywr(III)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    aget v5, v5, v11

    add-int/2addr v4, v5

    const v5, -0x1d31920

    add-int/2addr v4, v5

    invoke-direct {v0, v4, v12}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/you/kth;->ywr(III)I

    move-result v5

    add-int/2addr v3, v5

    iget-object v5, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    aget v5, v5, v15

    add-int/2addr v3, v5

    const v5, -0x5cfebcec

    add-int/2addr v3, v5

    invoke-direct {v0, v3, v11}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/you/kth;->ywr(III)I

    move-result v5

    add-int/2addr v2, v5

    iget-object v5, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    const/16 v7, 0xd

    aget v5, v5, v7

    add-int/2addr v2, v5

    const v5, 0x4e0811a1    # 5.7071418E8f

    add-int/2addr v2, v5

    const/16 v5, 0x15

    invoke-direct {v0, v2, v5}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/you/kth;->ywr(III)I

    move-result v5

    add-int/2addr v1, v5

    iget-object v5, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    const/4 v7, 0x4

    aget v5, v5, v7

    add-int/2addr v1, v5

    const v5, -0x8ac817e

    add-int/2addr v1, v5

    invoke-direct {v0, v1, v15}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/you/kth;->ywr(III)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    aget v5, v5, v13

    add-int/2addr v4, v5

    const v5, -0x42c50dcb

    add-int/2addr v4, v5

    invoke-direct {v0, v4, v12}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/you/kth;->ywr(III)I

    move-result v5

    add-int/2addr v3, v5

    iget-object v5, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    const/4 v7, 0x2

    aget v5, v5, v7

    add-int/2addr v3, v5

    const v5, 0x2ad7d2bb

    add-int/2addr v3, v5

    invoke-direct {v0, v3, v11}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/you/kth;->ywr(III)I

    move-result v5

    add-int/2addr v2, v5

    iget-object v5, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    aget v5, v5, v10

    add-int/2addr v2, v5

    const v5, -0x14792c6f

    add-int/2addr v2, v5

    const/16 v5, 0x15

    invoke-direct {v0, v2, v5}, Lorg/bouncycastle/crypto/you/kth;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    iget v5, v0, Lorg/bouncycastle/crypto/you/kth;->Mwa:I

    add-int/2addr v5, v1

    iput v5, v0, Lorg/bouncycastle/crypto/you/kth;->Mwa:I

    iget v1, v0, Lorg/bouncycastle/crypto/you/kth;->H2:I

    add-int/2addr v1, v2

    iput v1, v0, Lorg/bouncycastle/crypto/you/kth;->H2:I

    iget v1, v0, Lorg/bouncycastle/crypto/you/kth;->H3:I

    add-int/2addr v1, v3

    iput v1, v0, Lorg/bouncycastle/crypto/you/kth;->H3:I

    iget v1, v0, Lorg/bouncycastle/crypto/you/kth;->Nwa:I

    add-int/2addr v1, v4

    iput v1, v0, Lorg/bouncycastle/crypto/you/kth;->Nwa:I

    iput v6, v0, Lorg/bouncycastle/crypto/you/kth;->Owa:I

    move v1, v6

    :goto_0
    iget-object v2, v0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    array-length v3, v2

    if-eq v1, v3, :cond_0

    aput v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected cjf(J)V
    .locals 4

    iget v0, p0, Lorg/bouncycastle/crypto/you/kth;->Owa:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/you/kth;->Xi()V

    :cond_0
    iget-object p0, p0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    const-wide/16 v2, -0x1

    and-long/2addr v2, p1

    long-to-int v0, v2

    aput v0, p0, v1

    const/16 v0, 0xf

    const/16 v1, 0x20

    ushr-long/2addr p1, v1

    long-to-int p1, p1

    aput p1, p0, v0

    return-void
.end method

.method public copy()Lorg/bouncycastle/util/bio;
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/you/kth;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/you/kth;-><init>(Lorg/bouncycastle/crypto/you/kth;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/you/ssp;->finish()V

    iget v0, p0, Lorg/bouncycastle/crypto/you/kth;->Mwa:I

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/crypto/you/kth;->tsu(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/you/kth;->H2:I

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, v0, p1, v1}, Lorg/bouncycastle/crypto/you/kth;->tsu(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/you/kth;->H3:I

    add-int/lit8 v1, p2, 0x8

    invoke-direct {p0, v0, p1, v1}, Lorg/bouncycastle/crypto/you/kth;->tsu(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/you/kth;->Nwa:I

    add-int/lit8 p2, p2, 0xc

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/crypto/you/kth;->tsu(I[BI)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/you/kth;->reset()V

    const/16 p0, 0x10

    return p0
.end method

.method public ire()[B
    .locals 4

    iget v0, p0, Lorg/bouncycastle/crypto/you/kth;->Owa:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x24

    new-array v0, v0, [B

    invoke-super {p0, v0}, Lorg/bouncycastle/crypto/you/ssp;->dma([B)V

    iget v1, p0, Lorg/bouncycastle/crypto/you/kth;->Mwa:I

    const/16 v2, 0x10

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/igw;->you(I[BI)V

    iget v1, p0, Lorg/bouncycastle/crypto/you/kth;->H2:I

    const/16 v2, 0x14

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/igw;->you(I[BI)V

    iget v1, p0, Lorg/bouncycastle/crypto/you/kth;->H3:I

    const/16 v2, 0x18

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/igw;->you(I[BI)V

    iget v1, p0, Lorg/bouncycastle/crypto/you/kth;->Nwa:I

    const/16 v2, 0x1c

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/igw;->you(I[BI)V

    iget v1, p0, Lorg/bouncycastle/crypto/you/kth;->Owa:I

    const/16 v2, 0x20

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/igw;->you(I[BI)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/crypto/you/kth;->Owa:I

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    aget v2, v2, v1

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x24

    invoke-static {v2, v0, v3}, Lorg/bouncycastle/util/igw;->you(I[BI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public les()I
    .locals 0

    const/16 p0, 0x10

    return p0
.end method

.method public reset()V
    .locals 4

    invoke-super {p0}, Lorg/bouncycastle/crypto/you/ssp;->reset()V

    const v0, 0x67452301

    iput v0, p0, Lorg/bouncycastle/crypto/you/kth;->Mwa:I

    const v0, -0x10325477

    iput v0, p0, Lorg/bouncycastle/crypto/you/kth;->H2:I

    const v0, -0x67452302

    iput v0, p0, Lorg/bouncycastle/crypto/you/kth;->H3:I

    const v0, 0x10325476

    iput v0, p0, Lorg/bouncycastle/crypto/you/kth;->Nwa:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/you/kth;->Owa:I

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    array-length v3, v2

    if-eq v1, v3, :cond_0

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected rtg([BI)V
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/you/kth;->X:[I

    iget v1, p0, Lorg/bouncycastle/crypto/you/kth;->Owa:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/you/kth;->Owa:I

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, v2

    aput p1, v0, v1

    iget p1, p0, Lorg/bouncycastle/crypto/you/kth;->Owa:I

    if-ne p1, v4, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/you/kth;->Xi()V

    :cond_0
    return-void
.end method

.method public vju()Ljava/lang/String;
    .locals 0

    const-string p0, "MD5"

    return-object p0
.end method

.method public zta(Lorg/bouncycastle/util/bio;)V
    .locals 0

    check-cast p1, Lorg/bouncycastle/crypto/you/kth;

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/you/kth;->zta(Lorg/bouncycastle/crypto/you/kth;)V

    return-void
.end method
