.class public Lorg/bouncycastle/crypto/you/gck;
.super Lorg/bouncycastle/crypto/you/ssp;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/you/rtg;


# static fields
.field private static final Nxa:I = 0x14

.field private static final eya:I = 0x5a827999

.field private static final fya:I = 0x6ed9eba1

.field private static final gya:I = -0x70e44324

.field private static final hya:I = -0x359d3e2a


# instance fields
.field private H2:I

.field private H3:I

.field private Kxa:I

.field private Lxa:I

.field private Mxa:I

.field private X:[I

.field private dya:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/you/ssp;-><init>()V

    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/you/gck;->X:[I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/you/gck;->reset()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/you/gck;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/you/ssp;-><init>(Lorg/bouncycastle/crypto/you/ssp;)V

    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/you/gck;->X:[I

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/you/gck;->zta(Lorg/bouncycastle/crypto/you/gck;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/you/ssp;-><init>([B)V

    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/you/gck;->X:[I

    const/16 v0, 0x10

    invoke-static {p1, v0}, Lorg/bouncycastle/util/igw;->igw([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/you/gck;->Kxa:I

    const/16 v0, 0x14

    invoke-static {p1, v0}, Lorg/bouncycastle/util/igw;->igw([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/you/gck;->H2:I

    const/16 v0, 0x18

    invoke-static {p1, v0}, Lorg/bouncycastle/util/igw;->igw([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/you/gck;->H3:I

    const/16 v0, 0x1c

    invoke-static {p1, v0}, Lorg/bouncycastle/util/igw;->igw([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/you/gck;->Lxa:I

    const/16 v0, 0x20

    invoke-static {p1, v0}, Lorg/bouncycastle/util/igw;->igw([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/you/gck;->dya:I

    const/16 v0, 0x24

    invoke-static {p1, v0}, Lorg/bouncycastle/util/igw;->igw([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/you/gck;->Mxa:I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/you/gck;->Mxa:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/you/gck;->X:[I

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x28

    invoke-static {p1, v2}, Lorg/bouncycastle/util/igw;->igw([BI)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private bvj(III)I
    .locals 0

    xor-int p0, p1, p2

    xor-int/2addr p0, p3

    return p0
.end method

.method private oif(III)I
    .locals 0

    and-int p0, p1, p2

    and-int/2addr p1, p3

    or-int/2addr p0, p1

    and-int p1, p2, p3

    or-int/2addr p0, p1

    return p0
.end method

.method private qbh(III)I
    .locals 0

    and-int p0, p1, p2

    not-int p1, p1

    and-int/2addr p1, p3

    or-int/2addr p0, p1

    return p0
.end method

.method private zta(Lorg/bouncycastle/crypto/you/gck;)V
    .locals 4

    iget v0, p1, Lorg/bouncycastle/crypto/you/gck;->Kxa:I

    iput v0, p0, Lorg/bouncycastle/crypto/you/gck;->Kxa:I

    iget v0, p1, Lorg/bouncycastle/crypto/you/gck;->H2:I

    iput v0, p0, Lorg/bouncycastle/crypto/you/gck;->H2:I

    iget v0, p1, Lorg/bouncycastle/crypto/you/gck;->H3:I

    iput v0, p0, Lorg/bouncycastle/crypto/you/gck;->H3:I

    iget v0, p1, Lorg/bouncycastle/crypto/you/gck;->Lxa:I

    iput v0, p0, Lorg/bouncycastle/crypto/you/gck;->Lxa:I

    iget v0, p1, Lorg/bouncycastle/crypto/you/gck;->dya:I

    iput v0, p0, Lorg/bouncycastle/crypto/you/gck;->dya:I

    iget-object v0, p1, Lorg/bouncycastle/crypto/you/gck;->X:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/you/gck;->X:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p1, Lorg/bouncycastle/crypto/you/gck;->Mxa:I

    iput p1, p0, Lorg/bouncycastle/crypto/you/gck;->Mxa:I

    return-void
.end method


# virtual methods
.method protected aj()V
    .locals 14

    const/16 v0, 0x10

    move v1, v0

    :goto_0
    const/16 v2, 0x50

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/you/gck;->X:[I

    add-int/lit8 v3, v1, -0x3

    aget v3, v2, v3

    add-int/lit8 v4, v1, -0x8

    aget v4, v2, v4

    xor-int/2addr v3, v4

    add-int/lit8 v4, v1, -0xe

    aget v4, v2, v4

    xor-int/2addr v3, v4

    add-int/lit8 v4, v1, -0x10

    aget v4, v2, v4

    xor-int/2addr v3, v4

    shl-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v3, v3, 0x1f

    or-int/2addr v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/bouncycastle/crypto/you/gck;->Kxa:I

    iget v2, p0, Lorg/bouncycastle/crypto/you/gck;->H2:I

    iget v3, p0, Lorg/bouncycastle/crypto/you/gck;->H3:I

    iget v4, p0, Lorg/bouncycastle/crypto/you/gck;->Lxa:I

    iget v5, p0, Lorg/bouncycastle/crypto/you/gck;->dya:I

    const/4 v6, 0x0

    move v7, v4

    move v8, v6

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v8

    :goto_1
    const/4 v9, 0x4

    if-ge v1, v9, :cond_1

    shl-int/lit8 v9, v2, 0x5

    ushr-int/lit8 v10, v2, 0x1b

    or-int/2addr v9, v10

    invoke-direct {p0, v3, v4, v7}, Lorg/bouncycastle/crypto/you/gck;->qbh(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/you/gck;->X:[I

    add-int/lit8 v11, v8, 0x1

    aget v8, v10, v8

    add-int/2addr v9, v8

    const v8, 0x5a827999

    add-int/2addr v9, v8

    add-int/2addr v5, v9

    shl-int/lit8 v9, v3, 0x1e

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v9

    shl-int/lit8 v9, v5, 0x5

    ushr-int/lit8 v10, v5, 0x1b

    or-int/2addr v9, v10

    invoke-direct {p0, v2, v3, v4}, Lorg/bouncycastle/crypto/you/gck;->qbh(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/you/gck;->X:[I

    add-int/lit8 v12, v11, 0x1

    aget v10, v10, v11

    add-int/2addr v9, v10

    add-int/2addr v9, v8

    add-int/2addr v7, v9

    shl-int/lit8 v9, v2, 0x1e

    ushr-int/lit8 v2, v2, 0x2

    or-int/2addr v2, v9

    shl-int/lit8 v9, v7, 0x5

    ushr-int/lit8 v10, v7, 0x1b

    or-int/2addr v9, v10

    invoke-direct {p0, v5, v2, v3}, Lorg/bouncycastle/crypto/you/gck;->qbh(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/you/gck;->X:[I

    add-int/lit8 v11, v12, 0x1

    aget v10, v10, v12

    add-int/2addr v9, v10

    add-int/2addr v9, v8

    add-int/2addr v4, v9

    shl-int/lit8 v9, v5, 0x1e

    ushr-int/lit8 v5, v5, 0x2

    or-int/2addr v5, v9

    shl-int/lit8 v9, v4, 0x5

    ushr-int/lit8 v10, v4, 0x1b

    or-int/2addr v9, v10

    invoke-direct {p0, v7, v5, v2}, Lorg/bouncycastle/crypto/you/gck;->qbh(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/you/gck;->X:[I

    add-int/lit8 v12, v11, 0x1

    aget v10, v10, v11

    add-int/2addr v9, v10

    add-int/2addr v9, v8

    add-int/2addr v3, v9

    shl-int/lit8 v9, v7, 0x1e

    ushr-int/lit8 v7, v7, 0x2

    or-int/2addr v7, v9

    shl-int/lit8 v9, v3, 0x5

    ushr-int/lit8 v10, v3, 0x1b

    or-int/2addr v9, v10

    invoke-direct {p0, v4, v7, v5}, Lorg/bouncycastle/crypto/you/gck;->qbh(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/you/gck;->X:[I

    add-int/lit8 v11, v12, 0x1

    aget v10, v10, v12

    add-int/2addr v9, v10

    add-int/2addr v9, v8

    add-int/2addr v2, v9

    shl-int/lit8 v8, v4, 0x1e

    ushr-int/lit8 v4, v4, 0x2

    or-int/2addr v4, v8

    add-int/lit8 v1, v1, 0x1

    move v8, v11

    goto/16 :goto_1

    :cond_1
    move v1, v6

    :goto_2
    if-ge v1, v9, :cond_2

    shl-int/lit8 v10, v2, 0x5

    ushr-int/lit8 v11, v2, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v3, v4, v7}, Lorg/bouncycastle/crypto/you/gck;->bvj(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/you/gck;->X:[I

    add-int/lit8 v12, v8, 0x1

    aget v8, v11, v8

    add-int/2addr v10, v8

    const v8, 0x6ed9eba1

    add-int/2addr v10, v8

    add-int/2addr v5, v10

    shl-int/lit8 v10, v3, 0x1e

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v10

    shl-int/lit8 v10, v5, 0x5

    ushr-int/lit8 v11, v5, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v2, v3, v4}, Lorg/bouncycastle/crypto/you/gck;->bvj(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/you/gck;->X:[I

    add-int/lit8 v13, v12, 0x1

    aget v11, v11, v12

    add-int/2addr v10, v11

    add-int/2addr v10, v8

    add-int/2addr v7, v10

    shl-int/lit8 v10, v2, 0x1e

    ushr-int/lit8 v2, v2, 0x2

    or-int/2addr v2, v10

    shl-int/lit8 v10, v7, 0x5

    ushr-int/lit8 v11, v7, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v5, v2, v3}, Lorg/bouncycastle/crypto/you/gck;->bvj(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/you/gck;->X:[I

    add-int/lit8 v12, v13, 0x1

    aget v11, v11, v13

    add-int/2addr v10, v11

    add-int/2addr v10, v8

    add-int/2addr v4, v10

    shl-int/lit8 v10, v5, 0x1e

    ushr-int/lit8 v5, v5, 0x2

    or-int/2addr v5, v10

    shl-int/lit8 v10, v4, 0x5

    ushr-int/lit8 v11, v4, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v7, v5, v2}, Lorg/bouncycastle/crypto/you/gck;->bvj(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/you/gck;->X:[I

    add-int/lit8 v13, v12, 0x1

    aget v11, v11, v12

    add-int/2addr v10, v11

    add-int/2addr v10, v8

    add-int/2addr v3, v10

    shl-int/lit8 v10, v7, 0x1e

    ushr-int/lit8 v7, v7, 0x2

    or-int/2addr v7, v10

    shl-int/lit8 v10, v3, 0x5

    ushr-int/lit8 v11, v3, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v4, v7, v5}, Lorg/bouncycastle/crypto/you/gck;->bvj(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/you/gck;->X:[I

    add-int/lit8 v12, v13, 0x1

    aget v11, v11, v13

    add-int/2addr v10, v11

    add-int/2addr v10, v8

    add-int/2addr v2, v10

    shl-int/lit8 v8, v4, 0x1e

    ushr-int/lit8 v4, v4, 0x2

    or-int/2addr v4, v8

    add-int/lit8 v1, v1, 0x1

    move v8, v12

    goto/16 :goto_2

    :cond_2
    move v1, v6

    :goto_3
    if-ge v1, v9, :cond_3

    shl-int/lit8 v10, v2, 0x5

    ushr-int/lit8 v11, v2, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v3, v4, v7}, Lorg/bouncycastle/crypto/you/gck;->oif(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/you/gck;->X:[I

    add-int/lit8 v12, v8, 0x1

    aget v8, v11, v8

    add-int/2addr v10, v8

    const v8, -0x70e44324

    add-int/2addr v10, v8

    add-int/2addr v5, v10

    shl-int/lit8 v10, v3, 0x1e

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v10

    shl-int/lit8 v10, v5, 0x5

    ushr-int/lit8 v11, v5, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v2, v3, v4}, Lorg/bouncycastle/crypto/you/gck;->oif(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/you/gck;->X:[I

    add-int/lit8 v13, v12, 0x1

    aget v11, v11, v12

    add-int/2addr v10, v11

    add-int/2addr v10, v8

    add-int/2addr v7, v10

    shl-int/lit8 v10, v2, 0x1e

    ushr-int/lit8 v2, v2, 0x2

    or-int/2addr v2, v10

    shl-int/lit8 v10, v7, 0x5

    ushr-int/lit8 v11, v7, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v5, v2, v3}, Lorg/bouncycastle/crypto/you/gck;->oif(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/you/gck;->X:[I

    add-int/lit8 v12, v13, 0x1

    aget v11, v11, v13

    add-int/2addr v10, v11

    add-int/2addr v10, v8

    add-int/2addr v4, v10

    shl-int/lit8 v10, v5, 0x1e

    ushr-int/lit8 v5, v5, 0x2

    or-int/2addr v5, v10

    shl-int/lit8 v10, v4, 0x5

    ushr-int/lit8 v11, v4, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v7, v5, v2}, Lorg/bouncycastle/crypto/you/gck;->oif(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/you/gck;->X:[I

    add-int/lit8 v13, v12, 0x1

    aget v11, v11, v12

    add-int/2addr v10, v11

    add-int/2addr v10, v8

    add-int/2addr v3, v10

    shl-int/lit8 v10, v7, 0x1e

    ushr-int/lit8 v7, v7, 0x2

    or-int/2addr v7, v10

    shl-int/lit8 v10, v3, 0x5

    ushr-int/lit8 v11, v3, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v4, v7, v5}, Lorg/bouncycastle/crypto/you/gck;->oif(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/you/gck;->X:[I

    add-int/lit8 v12, v13, 0x1

    aget v11, v11, v13

    add-int/2addr v10, v11

    add-int/2addr v10, v8

    add-int/2addr v2, v10

    shl-int/lit8 v8, v4, 0x1e

    ushr-int/lit8 v4, v4, 0x2

    or-int/2addr v4, v8

    add-int/lit8 v1, v1, 0x1

    move v8, v12

    goto/16 :goto_3

    :cond_3
    move v1, v6

    :goto_4
    const/4 v9, 0x3

    if-gt v1, v9, :cond_4

    shl-int/lit8 v9, v2, 0x5

    ushr-int/lit8 v10, v2, 0x1b

    or-int/2addr v9, v10

    invoke-direct {p0, v3, v4, v7}, Lorg/bouncycastle/crypto/you/gck;->bvj(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/you/gck;->X:[I

    add-int/lit8 v11, v8, 0x1

    aget v8, v10, v8

    add-int/2addr v9, v8

    const v8, -0x359d3e2a    # -3715189.5f

    add-int/2addr v9, v8

    add-int/2addr v5, v9

    shl-int/lit8 v9, v3, 0x1e

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v9

    shl-int/lit8 v9, v5, 0x5

    ushr-int/lit8 v10, v5, 0x1b

    or-int/2addr v9, v10

    invoke-direct {p0, v2, v3, v4}, Lorg/bouncycastle/crypto/you/gck;->bvj(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/you/gck;->X:[I

    add-int/lit8 v12, v11, 0x1

    aget v10, v10, v11

    add-int/2addr v9, v10

    add-int/2addr v9, v8

    add-int/2addr v7, v9

    shl-int/lit8 v9, v2, 0x1e

    ushr-int/lit8 v2, v2, 0x2

    or-int/2addr v2, v9

    shl-int/lit8 v9, v7, 0x5

    ushr-int/lit8 v10, v7, 0x1b

    or-int/2addr v9, v10

    invoke-direct {p0, v5, v2, v3}, Lorg/bouncycastle/crypto/you/gck;->bvj(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/you/gck;->X:[I

    add-int/lit8 v11, v12, 0x1

    aget v10, v10, v12

    add-int/2addr v9, v10

    add-int/2addr v9, v8

    add-int/2addr v4, v9

    shl-int/lit8 v9, v5, 0x1e

    ushr-int/lit8 v5, v5, 0x2

    or-int/2addr v5, v9

    shl-int/lit8 v9, v4, 0x5

    ushr-int/lit8 v10, v4, 0x1b

    or-int/2addr v9, v10

    invoke-direct {p0, v7, v5, v2}, Lorg/bouncycastle/crypto/you/gck;->bvj(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/you/gck;->X:[I

    add-int/lit8 v12, v11, 0x1

    aget v10, v10, v11

    add-int/2addr v9, v10

    add-int/2addr v9, v8

    add-int/2addr v3, v9

    shl-int/lit8 v9, v7, 0x1e

    ushr-int/lit8 v7, v7, 0x2

    or-int/2addr v7, v9

    shl-int/lit8 v9, v3, 0x5

    ushr-int/lit8 v10, v3, 0x1b

    or-int/2addr v9, v10

    invoke-direct {p0, v4, v7, v5}, Lorg/bouncycastle/crypto/you/gck;->bvj(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/you/gck;->X:[I

    add-int/lit8 v11, v12, 0x1

    aget v10, v10, v12

    add-int/2addr v9, v10

    add-int/2addr v9, v8

    add-int/2addr v2, v9

    shl-int/lit8 v8, v4, 0x1e

    ushr-int/lit8 v4, v4, 0x2

    or-int/2addr v4, v8

    add-int/lit8 v1, v1, 0x1

    move v8, v11

    goto/16 :goto_4

    :cond_4
    iget v1, p0, Lorg/bouncycastle/crypto/you/gck;->Kxa:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/bouncycastle/crypto/you/gck;->Kxa:I

    iget v1, p0, Lorg/bouncycastle/crypto/you/gck;->H2:I

    add-int/2addr v1, v3

    iput v1, p0, Lorg/bouncycastle/crypto/you/gck;->H2:I

    iget v1, p0, Lorg/bouncycastle/crypto/you/gck;->H3:I

    add-int/2addr v1, v4

    iput v1, p0, Lorg/bouncycastle/crypto/you/gck;->H3:I

    iget v1, p0, Lorg/bouncycastle/crypto/you/gck;->Lxa:I

    add-int/2addr v1, v7

    iput v1, p0, Lorg/bouncycastle/crypto/you/gck;->Lxa:I

    iget v1, p0, Lorg/bouncycastle/crypto/you/gck;->dya:I

    add-int/2addr v1, v5

    iput v1, p0, Lorg/bouncycastle/crypto/you/gck;->dya:I

    iput v6, p0, Lorg/bouncycastle/crypto/you/gck;->Mxa:I

    move v1, v6

    :goto_5
    if-ge v1, v0, :cond_5

    iget-object v2, p0, Lorg/bouncycastle/crypto/you/gck;->X:[I

    aput v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method protected cjf(J)V
    .locals 4

    iget v0, p0, Lorg/bouncycastle/crypto/you/gck;->Mxa:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/you/gck;->aj()V

    :cond_0
    iget-object p0, p0, Lorg/bouncycastle/crypto/you/gck;->X:[I

    const/16 v0, 0x20

    ushr-long v2, p1, v0

    long-to-int v0, v2

    aput v0, p0, v1

    const/16 v0, 0xf

    long-to-int p1, p1

    aput p1, p0, v0

    return-void
.end method

.method public copy()Lorg/bouncycastle/util/bio;
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/you/gck;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/you/gck;-><init>(Lorg/bouncycastle/crypto/you/gck;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/you/ssp;->finish()V

    iget v0, p0, Lorg/bouncycastle/crypto/you/gck;->Kxa:I

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/util/igw;->you(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/you/gck;->H2:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/igw;->you(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/you/gck;->H3:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/igw;->you(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/you/gck;->Lxa:I

    add-int/lit8 v1, p2, 0xc

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/igw;->you(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/you/gck;->dya:I

    add-int/lit8 p2, p2, 0x10

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/util/igw;->you(I[BI)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/you/gck;->reset()V

    const/16 p0, 0x14

    return p0
.end method

.method public ire()[B
    .locals 4

    iget v0, p0, Lorg/bouncycastle/crypto/you/gck;->Mxa:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x28

    new-array v0, v0, [B

    invoke-super {p0, v0}, Lorg/bouncycastle/crypto/you/ssp;->dma([B)V

    iget v1, p0, Lorg/bouncycastle/crypto/you/gck;->Kxa:I

    const/16 v2, 0x10

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/igw;->you(I[BI)V

    iget v1, p0, Lorg/bouncycastle/crypto/you/gck;->H2:I

    const/16 v2, 0x14

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/igw;->you(I[BI)V

    iget v1, p0, Lorg/bouncycastle/crypto/you/gck;->H3:I

    const/16 v2, 0x18

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/igw;->you(I[BI)V

    iget v1, p0, Lorg/bouncycastle/crypto/you/gck;->Lxa:I

    const/16 v2, 0x1c

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/igw;->you(I[BI)V

    iget v1, p0, Lorg/bouncycastle/crypto/you/gck;->dya:I

    const/16 v2, 0x20

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/igw;->you(I[BI)V

    iget v1, p0, Lorg/bouncycastle/crypto/you/gck;->Mxa:I

    const/16 v2, 0x24

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/igw;->you(I[BI)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/crypto/you/gck;->Mxa:I

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/you/gck;->X:[I

    aget v2, v2, v1

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x28

    invoke-static {v2, v0, v3}, Lorg/bouncycastle/util/igw;->you(I[BI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public les()I
    .locals 0

    const/16 p0, 0x14

    return p0
.end method

.method public reset()V
    .locals 4

    invoke-super {p0}, Lorg/bouncycastle/crypto/you/ssp;->reset()V

    const v0, 0x67452301

    iput v0, p0, Lorg/bouncycastle/crypto/you/gck;->Kxa:I

    const v0, -0x10325477

    iput v0, p0, Lorg/bouncycastle/crypto/you/gck;->H2:I

    const v0, -0x67452302

    iput v0, p0, Lorg/bouncycastle/crypto/you/gck;->H3:I

    const v0, 0x10325476

    iput v0, p0, Lorg/bouncycastle/crypto/you/gck;->Lxa:I

    const v0, -0x3c2d1e10

    iput v0, p0, Lorg/bouncycastle/crypto/you/gck;->dya:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/you/gck;->Mxa:I

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/you/gck;->X:[I

    array-length v3, v2

    if-eq v1, v3, :cond_0

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected rtg([BI)V
    .locals 3

    aget-byte v0, p1, p2

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x10

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x1

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    iget-object p2, p0, Lorg/bouncycastle/crypto/you/gck;->X:[I

    iget v0, p0, Lorg/bouncycastle/crypto/you/gck;->Mxa:I

    aput p1, p2, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/you/gck;->Mxa:I

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/you/gck;->aj()V

    :cond_0
    return-void
.end method

.method public vju()Ljava/lang/String;
    .locals 0

    const-string p0, "SHA-1"

    return-object p0
.end method

.method public zta(Lorg/bouncycastle/util/bio;)V
    .locals 0

    check-cast p1, Lorg/bouncycastle/crypto/you/gck;

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/you/ssp;->zta(Lorg/bouncycastle/crypto/you/ssp;)V

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/you/gck;->zta(Lorg/bouncycastle/crypto/you/gck;)V

    return-void
.end method
