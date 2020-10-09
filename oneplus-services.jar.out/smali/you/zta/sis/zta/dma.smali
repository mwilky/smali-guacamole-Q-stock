.class public Lyou/zta/sis/zta/dma;
.super Lyou/zta/sis/zta/zta;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyou/zta/sis/zta/zta;-><init>()V

    return-void
.end method


# virtual methods
.method protected you(Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;)Lyou/zta/sis/zta/wtn;
    .locals 9

    invoke-virtual {p1}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object p0

    invoke-static {p0}, Lyou/zta/sis/zta/oif;->cno(Lyou/zta/sis/zta/rtg;)I

    move-result v0

    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    if-gt v1, v0, :cond_2

    invoke-static {p1}, Lyou/zta/sis/zta/oif;->dma(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/ywr;

    move-result-object p1

    invoke-virtual {p1}, Lyou/zta/sis/zta/ywr;->Lk()Lyou/zta/sis/zta/kth;

    move-result-object v1

    invoke-virtual {p1}, Lyou/zta/sis/zta/ywr;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, v2

    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg;->getInfinity()Lyou/zta/sis/zta/wtn;

    move-result-object p0

    mul-int/2addr v2, v0

    invoke-static {v2, p2}, Lyou/zta/sis/sis/kth;->tsu(ILjava/math/BigInteger;)[I

    move-result-object p2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    move-object v4, p0

    move p0, v3

    :goto_0
    if-ge p0, v0, :cond_1

    sub-int v5, v2, p0

    move v6, v3

    :goto_1
    if-ltz v5, :cond_0

    ushr-int/lit8 v7, v5, 0x5

    aget v7, p2, v7

    and-int/lit8 v8, v5, 0x1f

    ushr-int/2addr v7, v8

    ushr-int/lit8 v8, v7, 0x1

    xor-int/2addr v6, v8

    shl-int/lit8 v6, v6, 0x1

    xor-int/2addr v6, v7

    sub-int/2addr v5, v0

    goto :goto_1

    :cond_0
    invoke-interface {v1, v6}, Lyou/zta/sis/zta/kth;->rtg(I)Lyou/zta/sis/zta/wtn;

    move-result-object v5

    invoke-virtual {v4, v5}, Lyou/zta/sis/zta/wtn;->wtn(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;

    move-result-object v4

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lyou/zta/sis/zta/ywr;->getOffset()Lyou/zta/sis/zta/wtn;

    move-result-object p0

    invoke-virtual {v4, p0}, Lyou/zta/sis/zta/wtn;->kth(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "fixed-point comb doesn\'t support scalars larger than the curve order"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
