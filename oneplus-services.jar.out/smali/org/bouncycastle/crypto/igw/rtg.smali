.class public Lorg/bouncycastle/crypto/igw/rtg;
.super Lorg/bouncycastle/crypto/ssp;
.source ""


# instance fields
.field padding:Lorg/bouncycastle/crypto/igw/zta;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/rtg;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/igw/tsu;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/igw/tsu;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/igw/rtg;-><init>(Lorg/bouncycastle/crypto/rtg;Lorg/bouncycastle/crypto/igw/zta;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/rtg;Lorg/bouncycastle/crypto/igw/zta;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/ssp;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/ssp;->tma:Lorg/bouncycastle/crypto/rtg;

    iput-object p2, p0, Lorg/bouncycastle/crypto/igw/rtg;->padding:Lorg/bouncycastle/crypto/igw/zta;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/rtg;->getBlockSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/ssp;->buf:[B

    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/crypto/ssp;->cwa:I

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/ssp;->tma:Lorg/bouncycastle/crypto/rtg;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/rtg;->getBlockSize()I

    move-result v0

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/ssp;->dwa:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/bouncycastle/crypto/ssp;->cwa:I

    if-ne v1, v0, :cond_1

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    array-length v1, p1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/ssp;->tma:Lorg/bouncycastle/crypto/rtg;

    iget-object v1, p0, Lorg/bouncycastle/crypto/ssp;->buf:[B

    invoke-interface {v0, v1, v2, p1, p2}, Lorg/bouncycastle/crypto/rtg;->zta([BI[BI)I

    move-result v0

    iput v2, p0, Lorg/bouncycastle/crypto/ssp;->cwa:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/ssp;->reset()V

    new-instance p0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p1, "output buffer too short"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    move v0, v2

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/igw/rtg;->padding:Lorg/bouncycastle/crypto/igw/zta;

    iget-object v3, p0, Lorg/bouncycastle/crypto/ssp;->buf:[B

    iget v4, p0, Lorg/bouncycastle/crypto/ssp;->cwa:I

    invoke-interface {v1, v3, v4}, Lorg/bouncycastle/crypto/igw/zta;->zta([BI)I

    iget-object v1, p0, Lorg/bouncycastle/crypto/ssp;->tma:Lorg/bouncycastle/crypto/rtg;

    iget-object v3, p0, Lorg/bouncycastle/crypto/ssp;->buf:[B

    add-int/2addr p2, v0

    invoke-interface {v1, v3, v2, p1, p2}, Lorg/bouncycastle/crypto/rtg;->zta([BI[BI)I

    move-result p1

    add-int/2addr v0, p1

    :goto_1
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/ssp;->reset()V

    goto :goto_2

    :cond_2
    iget v1, p0, Lorg/bouncycastle/crypto/ssp;->cwa:I

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/crypto/ssp;->tma:Lorg/bouncycastle/crypto/rtg;

    iget-object v1, p0, Lorg/bouncycastle/crypto/ssp;->buf:[B

    invoke-interface {v0, v1, v2, v1, v2}, Lorg/bouncycastle/crypto/rtg;->zta([BI[BI)I

    move-result v0

    iput v2, p0, Lorg/bouncycastle/crypto/ssp;->cwa:I

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/igw/rtg;->padding:Lorg/bouncycastle/crypto/igw/zta;

    iget-object v3, p0, Lorg/bouncycastle/crypto/ssp;->buf:[B

    invoke-interface {v1, v3}, Lorg/bouncycastle/crypto/igw/zta;->rtg([B)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/ssp;->buf:[B

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_2
    return v0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/ssp;->reset()V

    throw p1

    :cond_3
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/ssp;->reset()V

    new-instance p0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p1, "last block incomplete in decryption"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getOutputSize(I)I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/crypto/ssp;->cwa:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/ssp;->buf:[B

    array-length v1, v0

    rem-int v1, p1, v1

    if-nez v1, :cond_1

    iget-boolean p0, p0, Lorg/bouncycastle/crypto/ssp;->dwa:Z

    if-eqz p0, :cond_0

    :goto_0
    array-length p0, v0

    add-int/2addr p1, p0

    :cond_0
    return p1

    :cond_1
    sub-int/2addr p1, v1

    goto :goto_0
.end method

.method public you(I)I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/ssp;->cwa:I

    add-int/2addr p1, v0

    iget-object p0, p0, Lorg/bouncycastle/crypto/ssp;->buf:[B

    array-length v0, p0

    rem-int v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    array-length p0, p0

    sub-int/2addr p1, p0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

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

    iget v0, p0, Lorg/bouncycastle/crypto/ssp;->cwa:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/ssp;->buf:[B

    array-length v2, v1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/ssp;->tma:Lorg/bouncycastle/crypto/rtg;

    invoke-interface {v0, v1, v3, p2, p3}, Lorg/bouncycastle/crypto/rtg;->zta([BI[BI)I

    move-result p2

    iput v3, p0, Lorg/bouncycastle/crypto/ssp;->cwa:I

    goto :goto_0

    :cond_0
    move p2, v3

    :goto_0
    iget-object p3, p0, Lorg/bouncycastle/crypto/ssp;->buf:[B

    iget v0, p0, Lorg/bouncycastle/crypto/ssp;->cwa:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/bouncycastle/crypto/ssp;->cwa:I

    aput-byte p1, p3, v0

    return p2
.end method

.method public zta([BII[BI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-ltz p3, :cond_3

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/ssp;->getBlockSize()I

    move-result v0

    invoke-virtual {p0, p3}, Lorg/bouncycastle/crypto/igw/rtg;->you(I)I

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

    iget v3, p0, Lorg/bouncycastle/crypto/ssp;->cwa:I

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    if-le p3, v2, :cond_2

    invoke-static {p1, p2, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/ssp;->tma:Lorg/bouncycastle/crypto/rtg;

    iget-object v3, p0, Lorg/bouncycastle/crypto/ssp;->buf:[B

    invoke-interface {v1, v3, v4, p4, p5}, Lorg/bouncycastle/crypto/rtg;->zta([BI[BI)I

    move-result v1

    add-int/2addr v1, v4

    iput v4, p0, Lorg/bouncycastle/crypto/ssp;->cwa:I

    sub-int/2addr p3, v2

    add-int/2addr p2, v2

    move v4, v1

    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/ssp;->buf:[B

    array-length v1, v1

    if-le p3, v1, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/crypto/ssp;->tma:Lorg/bouncycastle/crypto/rtg;

    add-int v2, p5, v4

    invoke-interface {v1, p1, p2, p4, v2}, Lorg/bouncycastle/crypto/rtg;->zta([BI[BI)I

    move-result v1

    add-int/2addr v4, v1

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_1

    :cond_2
    iget-object p4, p0, Lorg/bouncycastle/crypto/ssp;->buf:[B

    iget p5, p0, Lorg/bouncycastle/crypto/ssp;->cwa:I

    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/crypto/ssp;->cwa:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/bouncycastle/crypto/ssp;->cwa:I

    return v4

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t have a negative input length!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public zta(ZLorg/bouncycastle/crypto/kth;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/ssp;->dwa:Z

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/ssp;->reset()V

    instance-of v0, p2, Lorg/bouncycastle/crypto/wtn/hmo;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/bouncycastle/crypto/wtn/hmo;

    iget-object v0, p0, Lorg/bouncycastle/crypto/igw/rtg;->padding:Lorg/bouncycastle/crypto/igw/zta;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/hmo;->Vi()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/igw/zta;->init(Ljava/security/SecureRandom;)V

    iget-object p0, p0, Lorg/bouncycastle/crypto/ssp;->tma:Lorg/bouncycastle/crypto/rtg;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/hmo;->getParameters()Lorg/bouncycastle/crypto/kth;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/igw/rtg;->padding:Lorg/bouncycastle/crypto/igw/zta;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/igw/zta;->init(Ljava/security/SecureRandom;)V

    iget-object p0, p0, Lorg/bouncycastle/crypto/ssp;->tma:Lorg/bouncycastle/crypto/rtg;

    :goto_0
    invoke-interface {p0, p1, p2}, Lorg/bouncycastle/crypto/rtg;->zta(ZLorg/bouncycastle/crypto/kth;)V

    return-void
.end method
