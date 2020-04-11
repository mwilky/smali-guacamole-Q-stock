.class public abstract Lyou/zta/sis/zta/fto;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final EMPTY_BYTES:[B

.field public static final VDa:Ljava/lang/String; = "bc_wnaf"

.field private static final mFa:[I

.field private static final nFa:[I

.field private static final oFa:[Lyou/zta/sis/zta/wtn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lyou/zta/sis/zta/fto;->mFa:[I

    const/4 v0, 0x0

    new-array v1, v0, [B

    sput-object v1, Lyou/zta/sis/zta/fto;->EMPTY_BYTES:[B

    new-array v1, v0, [I

    sput-object v1, Lyou/zta/sis/zta/fto;->nFa:[I

    new-array v0, v0, [Lyou/zta/sis/zta/wtn;

    sput-object v0, Lyou/zta/sis/zta/fto;->oFa:[Lyou/zta/sis/zta/wtn;

    return-void

    :array_0
    .array-data 4
        0xd
        0x29
        0x79
        0x151
        0x381
        0x901
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Lyou/zta/sis/zta/wtn;
    .locals 1

    sget-object v0, Lyou/zta/sis/zta/fto;->oFa:[Lyou/zta/sis/zta/wtn;

    return-object v0
.end method

.method public static la(I)I
    .locals 1

    sget-object v0, Lyou/zta/sis/zta/fto;->mFa:[I

    invoke-static {p0, v0}, Lyou/zta/sis/zta/fto;->ssp(I[I)I

    move-result p0

    return p0
.end method

.method public static obl(Ljava/math/BigInteger;)I
    .locals 1

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitCount()I

    move-result p0

    return p0
.end method

.method private static oxb([BI)[B
    .locals 2

    new-array p1, p1, [B

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public static qbh(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/ear;
    .locals 2

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v0

    const-string v1, "bc_wnaf"

    invoke-virtual {v0, p0, v1}, Lyou/zta/sis/zta/rtg;->zta(Lyou/zta/sis/zta/wtn;Ljava/lang/String;)Lyou/zta/sis/zta/ugm;

    move-result-object p0

    invoke-static {p0}, Lyou/zta/sis/zta/fto;->sis(Lyou/zta/sis/zta/ugm;)Lyou/zta/sis/zta/ear;

    move-result-object p0

    return-object p0
.end method

.method private static rtg([II)[I
    .locals 2

    new-array p1, p1, [I

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public static sis(Lyou/zta/sis/zta/ugm;)Lyou/zta/sis/zta/ear;
    .locals 1

    instance-of v0, p0, Lyou/zta/sis/zta/ear;

    if-eqz v0, :cond_0

    check-cast p0, Lyou/zta/sis/zta/ear;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static sis(ILjava/math/BigInteger;)[B
    .locals 10

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lyou/zta/sis/zta/fto;->zgw(Ljava/math/BigInteger;)[B

    move-result-object p0

    return-object p0

    :cond_0
    if-lt p0, v0, :cond_9

    const/16 v0, 0x8

    if-gt p0, v0, :cond_9

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lyou/zta/sis/zta/fto;->EMPTY_BYTES:[B

    return-object p0

    :cond_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    shl-int v2, v1, p0

    add-int/lit8 v3, v2, -0x1

    ushr-int/lit8 v4, v2, 0x1

    const/4 v5, 0x0

    move-object v6, p1

    move p1, v5

    move v7, p1

    move v8, v7

    :goto_0
    invoke-virtual {v6}, Ljava/math/BigInteger;->bitLength()I

    move-result v9

    if-gt p1, v9, :cond_7

    invoke-virtual {v6, p1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v9

    if-ne v9, v8, :cond_2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v6, p1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v9

    and-int/2addr v9, v3

    if-eqz v8, :cond_3

    add-int/lit8 v9, v9, 0x1

    :cond_3
    and-int v8, v9, v4

    if-eqz v8, :cond_4

    move v8, v1

    goto :goto_1

    :cond_4
    move v8, v5

    :goto_1
    if-eqz v8, :cond_5

    sub-int/2addr v9, v2

    :cond_5
    if-lez v7, :cond_6

    add-int/lit8 p1, p1, -0x1

    :cond_6
    add-int/2addr v7, p1

    add-int/lit8 p1, v7, 0x1

    int-to-byte v9, v9

    aput-byte v9, v0, v7

    move v7, p1

    move p1, p0

    goto :goto_0

    :cond_7
    array-length p0, v0

    if-le p0, v7, :cond_8

    invoke-static {v0, v7}, Lyou/zta/sis/zta/fto;->oxb([BI)[B

    move-result-object v0

    :cond_8
    return-object v0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'width\' must be in the range [2, 8]"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static sis([Lyou/zta/sis/zta/wtn;I)[Lyou/zta/sis/zta/wtn;
    .locals 2

    new-array p1, p1, [Lyou/zta/sis/zta/wtn;

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public static ssp(I[I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget v1, p1, v0

    if-ge p0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static vdb(Ljava/math/BigInteger;)[I
    .locals 9

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_5

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lyou/zta/sis/zta/fto;->nFa:[I

    return-object p0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    shr-int/lit8 v3, v2, 0x1

    new-array v3, v3, [I

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sub-int/2addr v2, v0

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    move v4, v0

    :goto_0
    if-ge v4, v2, :cond_3

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v7

    if-nez v7, :cond_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v4}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, -0x1

    goto :goto_1

    :cond_2
    move v7, v0

    :goto_1
    add-int/lit8 v8, v5, 0x1

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    aput v6, v3, v5

    add-int/lit8 v4, v4, 0x1

    move v6, v0

    move v5, v8

    :goto_2
    add-int/2addr v4, v0

    goto :goto_0

    :cond_3
    add-int/lit8 p0, v5, 0x1

    const/high16 v0, 0x10000

    or-int/2addr v0, v6

    aput v0, v3, v5

    array-length v0, v3

    if-le v0, p0, :cond_4

    invoke-static {v3, p0}, Lyou/zta/sis/zta/fto;->rtg([II)[I

    move-result-object v3

    :cond_4
    return-object v3

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'k\' must have bitlength < 2^16"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static wtn(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    .locals 13

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    move-object v2, p0

    move-object v4, p1

    move p0, v1

    move p1, p0

    move v3, p1

    move v5, v3

    :goto_0
    or-int v6, p0, p1

    if-nez v6, :cond_2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    if-gt v6, v3, :cond_2

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    if-le v6, v3, :cond_0

    goto :goto_1

    :cond_0
    array-length p0, v0

    if-le p0, v5, :cond_1

    invoke-static {v0, v5}, Lyou/zta/sis/zta/fto;->oxb([BI)[B

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    ushr-int/2addr v6, v3

    add-int/2addr v6, p0

    and-int/lit8 v6, v6, 0x7

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    ushr-int/2addr v7, v3

    add-int/2addr v7, p1

    and-int/lit8 v7, v7, 0x7

    and-int/lit8 v8, v6, 0x1

    const/4 v9, 0x4

    const/4 v10, 0x2

    if-eqz v8, :cond_3

    and-int/lit8 v11, v6, 0x2

    sub-int/2addr v8, v11

    add-int v11, v6, v8

    if-ne v11, v9, :cond_3

    and-int/lit8 v11, v7, 0x3

    if-ne v11, v10, :cond_3

    neg-int v8, v8

    :cond_3
    and-int/lit8 v11, v7, 0x1

    if-eqz v11, :cond_4

    and-int/lit8 v12, v7, 0x2

    sub-int/2addr v11, v12

    add-int/2addr v7, v11

    if-ne v7, v9, :cond_4

    and-int/lit8 v6, v6, 0x3

    if-ne v6, v10, :cond_4

    neg-int v11, v11

    :cond_4
    shl-int/lit8 v6, p0, 0x1

    add-int/lit8 v7, v8, 0x1

    if-ne v6, v7, :cond_5

    xor-int/lit8 p0, p0, 0x1

    :cond_5
    shl-int/lit8 v6, p1, 0x1

    add-int/lit8 v7, v11, 0x1

    if-ne v6, v7, :cond_6

    xor-int/lit8 p1, p1, 0x1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    const/16 v6, 0x1e

    if-ne v3, v6, :cond_7

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    move-object v4, v3

    move v3, v1

    :cond_7
    add-int/lit8 v6, v5, 0x1

    shl-int/lit8 v7, v8, 0x4

    and-int/lit8 v8, v11, 0xf

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v0, v5

    move v5, v6

    goto :goto_0
.end method

.method public static you(ILjava/math/BigInteger;)[I
    .locals 12

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lyou/zta/sis/zta/fto;->vdb(Ljava/math/BigInteger;)[I

    move-result-object p0

    return-object p0

    :cond_0
    if-lt p0, v0, :cond_a

    const/16 v0, 0x10

    if-gt p0, v0, :cond_a

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    ushr-int/2addr v1, v0

    if-nez v1, :cond_9

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-nez v1, :cond_1

    sget-object p0, Lyou/zta/sis/zta/fto;->nFa:[I

    return-object p0

    :cond_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    div-int/2addr v1, p0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [I

    shl-int v3, v2, p0

    add-int/lit8 v4, v3, -0x1

    ushr-int/lit8 v5, v3, 0x1

    const/4 v6, 0x0

    move-object v7, p1

    move p1, v6

    move v8, p1

    move v9, v8

    :goto_0
    invoke-virtual {v7}, Ljava/math/BigInteger;->bitLength()I

    move-result v10

    if-gt p1, v10, :cond_7

    invoke-virtual {v7, p1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v10

    if-ne v10, v9, :cond_2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v7, p1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v10

    and-int/2addr v10, v4

    if-eqz v9, :cond_3

    add-int/lit8 v10, v10, 0x1

    :cond_3
    and-int v9, v10, v5

    if-eqz v9, :cond_4

    move v9, v2

    goto :goto_1

    :cond_4
    move v9, v6

    :goto_1
    if-eqz v9, :cond_5

    sub-int/2addr v10, v3

    :cond_5
    if-lez v8, :cond_6

    add-int/lit8 p1, p1, -0x1

    :cond_6
    add-int/lit8 v11, v8, 0x1

    shl-int/2addr v10, v0

    or-int/2addr p1, v10

    aput p1, v1, v8

    move p1, p0

    move v8, v11

    goto :goto_0

    :cond_7
    array-length p0, v1

    if-le p0, v8, :cond_8

    invoke-static {v1, v8}, Lyou/zta/sis/zta/fto;->rtg([II)[I

    move-result-object v1

    :cond_8
    return-object v1

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'k\' must have bitlength < 2^16"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'width\' must be in the range [2, 16]"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zgw(Ljava/math/BigInteger;)[B
    .locals 7

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lyou/zta/sis/zta/fto;->EMPTY_BYTES:[B

    return-object p0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    sub-int/2addr v2, v0

    new-array v3, v2, [B

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    move v4, v0

    :goto_0
    if-ge v4, v2, :cond_3

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v5, v4, -0x1

    invoke-virtual {p0, v4}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, -0x1

    goto :goto_1

    :cond_1
    move v6, v0

    :goto_1
    int-to-byte v6, v6

    aput-byte v6, v3, v5

    add-int/lit8 v4, v4, 0x1

    :cond_2
    add-int/2addr v4, v0

    goto :goto_0

    :cond_3
    sub-int/2addr v2, v0

    aput-byte v0, v3, v2

    return-object v3
.end method

.method public static zta(Lyou/zta/sis/zta/wtn;IZ)Lyou/zta/sis/zta/ear;
    .locals 2

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v0

    new-instance v1, Lyou/zta/sis/zta/hmo;

    invoke-direct {v1, p1, p2, p0, v0}, Lyou/zta/sis/zta/hmo;-><init>(IZLyou/zta/sis/zta/wtn;Lyou/zta/sis/zta/rtg;)V

    const-string p1, "bc_wnaf"

    invoke-virtual {v0, p0, p1, v1}, Lyou/zta/sis/zta/rtg;->zta(Lyou/zta/sis/zta/wtn;Ljava/lang/String;Lyou/zta/sis/zta/gwm;)Lyou/zta/sis/zta/ugm;

    move-result-object p0

    check-cast p0, Lyou/zta/sis/zta/ear;

    return-object p0
.end method

.method public static zta(Lyou/zta/sis/zta/wtn;IZLyou/zta/sis/zta/gck;)Lyou/zta/sis/zta/wtn;
    .locals 2

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lyou/zta/sis/zta/fto;->zta(Lyou/zta/sis/zta/wtn;IZ)Lyou/zta/sis/zta/ear;

    move-result-object p1

    invoke-interface {p3, p0}, Lyou/zta/sis/zta/gck;->zta(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    new-instance v1, Lyou/zta/sis/zta/ire;

    invoke-direct {v1, p1, p3, p2}, Lyou/zta/sis/zta/ire;-><init>(Lyou/zta/sis/zta/ear;Lyou/zta/sis/zta/gck;Z)V

    const-string p1, "bc_wnaf"

    invoke-virtual {v0, p0, p1, v1}, Lyou/zta/sis/zta/rtg;->zta(Lyou/zta/sis/zta/wtn;Ljava/lang/String;Lyou/zta/sis/zta/gwm;)Lyou/zta/sis/zta/ugm;

    return-object p0
.end method

.method static synthetic zta([Lyou/zta/sis/zta/wtn;I)[Lyou/zta/sis/zta/wtn;
    .locals 0

    invoke-static {p0, p1}, Lyou/zta/sis/zta/fto;->sis([Lyou/zta/sis/zta/wtn;I)[Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0
.end method
