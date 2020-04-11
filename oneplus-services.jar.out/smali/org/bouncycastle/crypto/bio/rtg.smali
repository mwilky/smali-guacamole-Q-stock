.class public Lorg/bouncycastle/crypto/bio/rtg;
.super Lorg/bouncycastle/crypto/ssp;
.source ""


# instance fields
.field private exa:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/rtg;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/ssp;-><init>()V

    instance-of v0, p1, Lorg/bouncycastle/crypto/cjf;

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/crypto/ssp;->rna:Lorg/bouncycastle/crypto/rtg;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/rtg;->getBlockSize()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/crypto/bio/rtg;->exa:I

    iget p1, p0, Lorg/bouncycastle/crypto/bio/rtg;->exa:I

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/ssp;->buf:[B

    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/crypto/ssp;->axa:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "CTSBlockCipher can only accept ECB, or CBC ciphers"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/ssp;->axa:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-gt v0, v1, :cond_a

    iget-object v0, p0, Lorg/bouncycastle/crypto/ssp;->rna:Lorg/bouncycastle/crypto/rtg;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/rtg;->getBlockSize()I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/crypto/ssp;->axa:I

    sub-int v2, v1, v0

    new-array v3, v0, [B

    iget-boolean v4, p0, Lorg/bouncycastle/crypto/ssp;->bxa:Z

    const-string v5, "need at least one block of input for CTS"

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    if-lt v1, v0, :cond_3

    iget-object v1, p0, Lorg/bouncycastle/crypto/ssp;->rna:Lorg/bouncycastle/crypto/rtg;

    iget-object v4, p0, Lorg/bouncycastle/crypto/ssp;->buf:[B

    invoke-interface {v1, v4, v6, v3, v6}, Lorg/bouncycastle/crypto/rtg;->zta([BI[BI)I

    iget v1, p0, Lorg/bouncycastle/crypto/ssp;->axa:I

    if-le v1, v0, :cond_8

    :goto_0
    iget-object v4, p0, Lorg/bouncycastle/crypto/ssp;->buf:[B

    array-length v5, v4

    if-eq v1, v5, :cond_0

    sub-int v5, v1, v0

    aget-byte v5, v3, v5

    aput-byte v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    iget v4, p0, Lorg/bouncycastle/crypto/ssp;->axa:I

    if-eq v1, v4, :cond_1

    iget-object v4, p0, Lorg/bouncycastle/crypto/ssp;->buf:[B

    aget-byte v5, v4, v1

    sub-int v7, v1, v0

    aget-byte v7, v3, v7

    xor-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/ssp;->rna:Lorg/bouncycastle/crypto/rtg;

    instance-of v4, v1, Lorg/bouncycastle/crypto/bio/you;

    if-eqz v4, :cond_2

    check-cast v1, Lorg/bouncycastle/crypto/bio/you;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/bio/you;->b()Lorg/bouncycastle/crypto/rtg;

    move-result-object v1

    :cond_2
    iget-object v4, p0, Lorg/bouncycastle/crypto/ssp;->buf:[B

    invoke-interface {v1, v4, v0, p1, p2}, Lorg/bouncycastle/crypto/rtg;->zta([BI[BI)I

    add-int/2addr p2, v0

    invoke-static {v3, v6, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_3
    new-instance p0, Lorg/bouncycastle/crypto/DataLengthException;

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    if-lt v1, v0, :cond_9

    new-array v4, v0, [B

    if-le v1, v0, :cond_7

    iget-object v1, p0, Lorg/bouncycastle/crypto/ssp;->rna:Lorg/bouncycastle/crypto/rtg;

    instance-of v5, v1, Lorg/bouncycastle/crypto/bio/you;

    if-eqz v5, :cond_5

    check-cast v1, Lorg/bouncycastle/crypto/bio/you;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/bio/you;->b()Lorg/bouncycastle/crypto/rtg;

    move-result-object v1

    :cond_5
    iget-object v5, p0, Lorg/bouncycastle/crypto/ssp;->buf:[B

    invoke-interface {v1, v5, v6, v3, v6}, Lorg/bouncycastle/crypto/rtg;->zta([BI[BI)I

    move v1, v0

    :goto_2
    iget v5, p0, Lorg/bouncycastle/crypto/ssp;->axa:I

    if-eq v1, v5, :cond_6

    sub-int v5, v1, v0

    aget-byte v7, v3, v5

    iget-object v8, p0, Lorg/bouncycastle/crypto/ssp;->buf:[B

    aget-byte v8, v8, v1

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lorg/bouncycastle/crypto/ssp;->buf:[B

    invoke-static {v1, v0, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/ssp;->rna:Lorg/bouncycastle/crypto/rtg;

    invoke-interface {v1, v3, v6, p1, p2}, Lorg/bouncycastle/crypto/rtg;->zta([BI[BI)I

    add-int/2addr p2, v0

    invoke-static {v4, v6, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lorg/bouncycastle/crypto/ssp;->rna:Lorg/bouncycastle/crypto/rtg;

    iget-object v2, p0, Lorg/bouncycastle/crypto/ssp;->buf:[B

    invoke-interface {v1, v2, v6, v3, v6}, Lorg/bouncycastle/crypto/rtg;->zta([BI[BI)I

    :cond_8
    invoke-static {v3, v6, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3
    iget p1, p0, Lorg/bouncycastle/crypto/ssp;->axa:I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/ssp;->reset()V

    return p1

    :cond_9
    new-instance p0, Lorg/bouncycastle/crypto/DataLengthException;

    invoke-direct {p0, v5}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p1, "output buffer to small in doFinal"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getOutputSize(I)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/crypto/ssp;->axa:I

    add-int/2addr p1, p0

    return p1
.end method

.method public you(I)I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/ssp;->axa:I

    add-int/2addr p1, v0

    iget-object p0, p0, Lorg/bouncycastle/crypto/ssp;->buf:[B

    array-length v0, p0

    rem-int v0, p1, v0

    if-nez v0, :cond_0

    array-length p0, p0

    sub-int/2addr p1, p0

    return p1

    :cond_0
    sub-int/2addr p1, v0

    return p1
.end method

.method public zta(B[BI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/ssp;->axa:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/ssp;->buf:[B

    array-length v2, v1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/ssp;->rna:Lorg/bouncycastle/crypto/rtg;

    invoke-interface {v0, v1, v3, p2, p3}, Lorg/bouncycastle/crypto/rtg;->zta([BI[BI)I

    move-result p2

    iget-object p3, p0, Lorg/bouncycastle/crypto/ssp;->buf:[B

    iget v0, p0, Lorg/bouncycastle/crypto/bio/rtg;->exa:I

    invoke-static {p3, v0, p3, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p3, p0, Lorg/bouncycastle/crypto/bio/rtg;->exa:I

    iput p3, p0, Lorg/bouncycastle/crypto/ssp;->axa:I

    goto :goto_0

    :cond_0
    move p2, v3

    :goto_0
    iget-object p3, p0, Lorg/bouncycastle/crypto/ssp;->buf:[B

    iget v0, p0, Lorg/bouncycastle/crypto/ssp;->axa:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/bouncycastle/crypto/ssp;->axa:I

    aput-byte p1, p3, v0

    return p2
.end method

.method public zta([BII[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-ltz p3, :cond_4

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/ssp;->getBlockSize()I

    move-result v0

    invoke-virtual {p0, p3}, Lorg/bouncycastle/crypto/bio/rtg;->you(I)I

    move-result v1

    if-lez v1, :cond_1

    add-int/2addr v1, p5

    array-length v2, p4

    if-gt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p1, "output buffer too short"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/ssp;->buf:[B

    array-length v2, v1

    iget v3, p0, Lorg/bouncycastle/crypto/ssp;->axa:I

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    if-le p3, v2, :cond_2

    invoke-static {p1, p2, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/ssp;->rna:Lorg/bouncycastle/crypto/rtg;

    iget-object v3, p0, Lorg/bouncycastle/crypto/ssp;->buf:[B

    invoke-interface {v1, v3, v4, p4, p5}, Lorg/bouncycastle/crypto/rtg;->zta([BI[BI)I

    move-result v1

    add-int/2addr v1, v4

    iget-object v3, p0, Lorg/bouncycastle/crypto/ssp;->buf:[B

    invoke-static {v3, v0, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lorg/bouncycastle/crypto/ssp;->axa:I

    sub-int/2addr p3, v2

    add-int/2addr p2, v2

    :goto_1
    if-le p3, v0, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/crypto/ssp;->buf:[B

    iget v3, p0, Lorg/bouncycastle/crypto/ssp;->axa:I

    invoke-static {p1, p2, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/ssp;->rna:Lorg/bouncycastle/crypto/rtg;

    iget-object v3, p0, Lorg/bouncycastle/crypto/ssp;->buf:[B

    add-int v5, p5, v1

    invoke-interface {v2, v3, v4, p4, v5}, Lorg/bouncycastle/crypto/rtg;->zta([BI[BI)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/ssp;->buf:[B

    invoke-static {v2, v0, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_1

    :cond_2
    move v1, v4

    :cond_3
    iget-object p4, p0, Lorg/bouncycastle/crypto/ssp;->buf:[B

    iget p5, p0, Lorg/bouncycastle/crypto/ssp;->axa:I

    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/crypto/ssp;->axa:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/bouncycastle/crypto/ssp;->axa:I

    return v1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t have a negative input length!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
