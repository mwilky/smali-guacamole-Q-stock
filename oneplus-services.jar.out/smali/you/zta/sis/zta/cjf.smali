.class public Lyou/zta/sis/zta/cjf;
.super Lyou/zta/sis/zta/zta;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyou/zta/sis/zta/zta;-><init>()V

    return-void
.end method


# virtual methods
.method protected oa(I)I
    .locals 0

    invoke-static {p1}, Lyou/zta/sis/zta/fto;->oa(I)I

    move-result p0

    return p0
.end method

.method protected you(Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;)Lyou/zta/sis/zta/wtn;
    .locals 9

    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-virtual {p0, v0}, Lyou/zta/sis/zta/cjf;->oa(I)I

    move-result p0

    const/16 v0, 0x10

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v0, 0x2

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lyou/zta/sis/zta/fto;->zta(Lyou/zta/sis/zta/wtn;IZ)Lyou/zta/sis/zta/ear;

    move-result-object v1

    invoke-virtual {v1}, Lyou/zta/sis/zta/ear;->Vk()[Lyou/zta/sis/zta/wtn;

    move-result-object v2

    invoke-virtual {v1}, Lyou/zta/sis/zta/ear;->Wk()[Lyou/zta/sis/zta/wtn;

    move-result-object v1

    invoke-static {p0, p2}, Lyou/zta/sis/zta/fto;->you(ILjava/math/BigInteger;)[I

    move-result-object p2

    invoke-virtual {p1}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object p1

    invoke-virtual {p1}, Lyou/zta/sis/zta/rtg;->getInfinity()Lyou/zta/sis/zta/wtn;

    move-result-object p1

    array-length v3, p2

    const v4, 0xffff

    if-le v3, v0, :cond_2

    add-int/lit8 v3, v3, -0x1

    aget p1, p2, v3

    shr-int/lit8 v5, p1, 0x10

    and-int/2addr p1, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-gez v5, :cond_0

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, v2

    :goto_0
    shl-int/lit8 v7, v6, 0x2

    shl-int v8, v0, p0

    if-ge v7, v8, :cond_1

    sget-object v7, Lyou/zta/sis/zta/ibl;->hHa:[B

    aget-byte v7, v7, v6

    sub-int v8, p0, v7

    sub-int/2addr v7, v0

    shl-int v7, v0, v7

    xor-int/2addr v6, v7

    sub-int/2addr p0, v0

    shl-int p0, v0, p0

    sub-int/2addr p0, v0

    shl-int/2addr v6, v8

    add-int/2addr v6, v0

    ushr-int/2addr p0, v0

    aget-object p0, v5, p0

    ushr-int/2addr v6, v0

    aget-object v5, v5, v6

    invoke-virtual {p0, v5}, Lyou/zta/sis/zta/wtn;->kth(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    sub-int/2addr p1, v8

    goto :goto_1

    :cond_1
    ushr-int/lit8 p0, v6, 0x1

    aget-object p0, v5, p0

    :goto_1
    invoke-virtual {p0, p1}, Lyou/zta/sis/zta/wtn;->ta(I)Lyou/zta/sis/zta/wtn;

    move-result-object p1

    :cond_2
    :goto_2
    if-lez v3, :cond_4

    add-int/lit8 v3, v3, -0x1

    aget p0, p2, v3

    shr-int/lit8 v5, p0, 0x10

    and-int/2addr p0, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-gez v5, :cond_3

    move-object v5, v1

    goto :goto_3

    :cond_3
    move-object v5, v2

    :goto_3
    ushr-int/2addr v6, v0

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Lyou/zta/sis/zta/wtn;->wtn(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;

    move-result-object p1

    invoke-virtual {p1, p0}, Lyou/zta/sis/zta/wtn;->ta(I)Lyou/zta/sis/zta/wtn;

    move-result-object p1

    goto :goto_2

    :cond_4
    return-object p1
.end method
