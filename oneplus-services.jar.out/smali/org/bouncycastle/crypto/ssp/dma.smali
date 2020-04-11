.class public Lorg/bouncycastle/crypto/ssp/dma;
.super Lorg/bouncycastle/crypto/gwm;
.source ""


# instance fields
.field private state:[B

.field private vxa:Lorg/bouncycastle/crypto/ibl;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/crypto/you/zta;->e()Lorg/bouncycastle/crypto/qbh;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/ssp/dma;-><init>(Lorg/bouncycastle/crypto/qbh;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/qbh;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/gwm;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/kth/you;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/kth/you;-><init>(Lorg/bouncycastle/crypto/qbh;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/ssp/dma;->vxa:Lorg/bouncycastle/crypto/ibl;

    iget-object p1, p0, Lorg/bouncycastle/crypto/ssp/dma;->vxa:Lorg/bouncycastle/crypto/ibl;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/ibl;->you()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/ssp/dma;->state:[B

    return-void
.end method

.method private nc(I)[B
    .locals 12

    iget-object v0, p0, Lorg/bouncycastle/crypto/ssp/dma;->vxa:Lorg/bouncycastle/crypto/ibl;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/ibl;->you()I

    move-result v0

    add-int/2addr p1, v0

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    div-int/2addr p1, v0

    const/4 v2, 0x4

    new-array v2, v2, [B

    mul-int v3, p1, v0

    new-array v9, v3, [B

    new-instance v3, Lorg/bouncycastle/crypto/wtn/cjf;

    iget-object v4, p0, Lorg/bouncycastle/crypto/gwm;->password:[B

    invoke-direct {v3, v4}, Lorg/bouncycastle/crypto/wtn/cjf;-><init>([B)V

    iget-object v4, p0, Lorg/bouncycastle/crypto/ssp/dma;->vxa:Lorg/bouncycastle/crypto/ibl;

    invoke-interface {v4, v3}, Lorg/bouncycastle/crypto/ibl;->you(Lorg/bouncycastle/crypto/kth;)V

    const/4 v3, 0x0

    move v10, v1

    move v11, v3

    :goto_0
    if-gt v10, p1, :cond_1

    const/4 v3, 0x3

    :goto_1
    aget-byte v4, v2, v3

    add-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lorg/bouncycastle/crypto/gwm;->salt:[B

    iget v5, p0, Lorg/bouncycastle/crypto/gwm;->iterationCount:I

    move-object v3, p0

    move-object v6, v2

    move-object v7, v9

    move v8, v11

    invoke-direct/range {v3 .. v8}, Lorg/bouncycastle/crypto/ssp/dma;->zta([BI[B[BI)V

    add-int/2addr v11, v0

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    return-object v9
.end method

.method private zta([BI[B[BI)V
    .locals 4

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/ssp/dma;->vxa:Lorg/bouncycastle/crypto/ibl;

    array-length v2, p1

    invoke-interface {v1, p1, v0, v2}, Lorg/bouncycastle/crypto/ibl;->update([BII)V

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/ssp/dma;->vxa:Lorg/bouncycastle/crypto/ibl;

    array-length v1, p3

    invoke-interface {p1, p3, v0, v1}, Lorg/bouncycastle/crypto/ibl;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/ssp/dma;->vxa:Lorg/bouncycastle/crypto/ibl;

    iget-object p3, p0, Lorg/bouncycastle/crypto/ssp/dma;->state:[B

    invoke-interface {p1, p3, v0}, Lorg/bouncycastle/crypto/ibl;->doFinal([BI)I

    iget-object p1, p0, Lorg/bouncycastle/crypto/ssp/dma;->state:[B

    array-length p3, p1

    invoke-static {p1, v0, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x1

    :goto_0
    if-ge p1, p2, :cond_2

    iget-object p3, p0, Lorg/bouncycastle/crypto/ssp/dma;->vxa:Lorg/bouncycastle/crypto/ibl;

    iget-object v1, p0, Lorg/bouncycastle/crypto/ssp/dma;->state:[B

    array-length v2, v1

    invoke-interface {p3, v1, v0, v2}, Lorg/bouncycastle/crypto/ibl;->update([BII)V

    iget-object p3, p0, Lorg/bouncycastle/crypto/ssp/dma;->vxa:Lorg/bouncycastle/crypto/ibl;

    iget-object v1, p0, Lorg/bouncycastle/crypto/ssp/dma;->state:[B

    invoke-interface {p3, v1, v0}, Lorg/bouncycastle/crypto/ibl;->doFinal([BI)I

    move p3, v0

    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/ssp/dma;->state:[B

    array-length v2, v1

    if-eq p3, v2, :cond_1

    add-int v2, p5, p3

    aget-byte v3, p4, v2

    aget-byte v1, v1, p3

    xor-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p4, v2

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "iteration count must be at least 1."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public ga(I)Lorg/bouncycastle/crypto/kth;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/ssp/dma;->generateDerivedParameters(I)Lorg/bouncycastle/crypto/kth;

    move-result-object p0

    return-object p0
.end method

.method public generateDerivedParameters(I)Lorg/bouncycastle/crypto/kth;
    .locals 2

    div-int/lit8 p1, p1, 0x8

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/ssp/dma;->nc(I)[B

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/util/zta;->copyOfRange([BII)[B

    move-result-object p0

    new-instance v1, Lorg/bouncycastle/crypto/wtn/cjf;

    invoke-direct {v1, p0, v0, p1}, Lorg/bouncycastle/crypto/wtn/cjf;-><init>([BII)V

    return-object v1
.end method

.method public ugm(II)Lorg/bouncycastle/crypto/kth;
    .locals 3

    div-int/lit8 p1, p1, 0x8

    div-int/lit8 p2, p2, 0x8

    add-int v0, p1, p2

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/ssp/dma;->nc(I)[B

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/crypto/wtn/ire;

    new-instance v1, Lorg/bouncycastle/crypto/wtn/cjf;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1}, Lorg/bouncycastle/crypto/wtn/cjf;-><init>([BII)V

    invoke-direct {v0, v1, p0, p1, p2}, Lorg/bouncycastle/crypto/wtn/ire;-><init>(Lorg/bouncycastle/crypto/kth;[BII)V

    return-object v0
.end method
