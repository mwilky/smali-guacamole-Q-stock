.class public Lorg/bouncycastle/crypto/kth/zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/ibl;


# instance fields
.field private axa:I

.field private buf:[B

.field private jia:[B

.field private padding:Lorg/bouncycastle/crypto/igw/zta;

.field private rna:Lorg/bouncycastle/crypto/rtg;

.field private sAa:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/rtg;)V
    .locals 2

    invoke-interface {p1}, Lorg/bouncycastle/crypto/rtg;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/crypto/kth/zta;-><init>(Lorg/bouncycastle/crypto/rtg;ILorg/bouncycastle/crypto/igw/zta;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/rtg;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/kth/zta;-><init>(Lorg/bouncycastle/crypto/rtg;ILorg/bouncycastle/crypto/igw/zta;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/rtg;ILorg/bouncycastle/crypto/igw/zta;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    rem-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/bio/you;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/bio/you;-><init>(Lorg/bouncycastle/crypto/rtg;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/kth/zta;->rna:Lorg/bouncycastle/crypto/rtg;

    iput-object p3, p0, Lorg/bouncycastle/crypto/kth/zta;->padding:Lorg/bouncycastle/crypto/igw/zta;

    div-int/lit8 p2, p2, 0x8

    iput p2, p0, Lorg/bouncycastle/crypto/kth/zta;->sAa:I

    invoke-interface {p1}, Lorg/bouncycastle/crypto/rtg;->getBlockSize()I

    move-result p2

    new-array p2, p2, [B

    iput-object p2, p0, Lorg/bouncycastle/crypto/kth/zta;->jia:[B

    invoke-interface {p1}, Lorg/bouncycastle/crypto/rtg;->getBlockSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/kth/zta;->buf:[B

    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/crypto/kth/zta;->axa:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "MAC size must be multiple of 8"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/rtg;Lorg/bouncycastle/crypto/igw/zta;)V
    .locals 1

    invoke-interface {p1}, Lorg/bouncycastle/crypto/rtg;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1, v0, p2}, Lorg/bouncycastle/crypto/kth/zta;-><init>(Lorg/bouncycastle/crypto/rtg;ILorg/bouncycastle/crypto/igw/zta;)V

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/kth/zta;->rna:Lorg/bouncycastle/crypto/rtg;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/rtg;->getBlockSize()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/kth/zta;->padding:Lorg/bouncycastle/crypto/igw/zta;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/kth/zta;->axa:I

    if-ge v1, v0, :cond_2

    iget-object v3, p0, Lorg/bouncycastle/crypto/kth/zta;->buf:[B

    aput-byte v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/crypto/kth/zta;->axa:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/bouncycastle/crypto/kth/zta;->axa:I

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/kth/zta;->rna:Lorg/bouncycastle/crypto/rtg;

    iget-object v1, p0, Lorg/bouncycastle/crypto/kth/zta;->buf:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/kth/zta;->jia:[B

    invoke-interface {v0, v1, v2, v3, v2}, Lorg/bouncycastle/crypto/rtg;->zta([BI[BI)I

    iput v2, p0, Lorg/bouncycastle/crypto/kth/zta;->axa:I

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/kth/zta;->padding:Lorg/bouncycastle/crypto/igw/zta;

    iget-object v1, p0, Lorg/bouncycastle/crypto/kth/zta;->buf:[B

    iget v3, p0, Lorg/bouncycastle/crypto/kth/zta;->axa:I

    invoke-interface {v0, v1, v3}, Lorg/bouncycastle/crypto/igw/zta;->zta([BI)I

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/kth/zta;->rna:Lorg/bouncycastle/crypto/rtg;

    iget-object v1, p0, Lorg/bouncycastle/crypto/kth/zta;->buf:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/kth/zta;->jia:[B

    invoke-interface {v0, v1, v2, v3, v2}, Lorg/bouncycastle/crypto/rtg;->zta([BI[BI)I

    iget-object v0, p0, Lorg/bouncycastle/crypto/kth/zta;->jia:[B

    iget v1, p0, Lorg/bouncycastle/crypto/kth/zta;->sAa:I

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/kth/zta;->reset()V

    iget p0, p0, Lorg/bouncycastle/crypto/kth/zta;->sAa:I

    return p0
.end method

.method public reset()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/kth/zta;->buf:[B

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lorg/bouncycastle/crypto/kth/zta;->axa:I

    iget-object p0, p0, Lorg/bouncycastle/crypto/kth/zta;->rna:Lorg/bouncycastle/crypto/rtg;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/rtg;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 4

    iget v0, p0, Lorg/bouncycastle/crypto/kth/zta;->axa:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/kth/zta;->buf:[B

    array-length v2, v1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/kth/zta;->rna:Lorg/bouncycastle/crypto/rtg;

    iget-object v2, p0, Lorg/bouncycastle/crypto/kth/zta;->jia:[B

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2, v3}, Lorg/bouncycastle/crypto/rtg;->zta([BI[BI)I

    iput v3, p0, Lorg/bouncycastle/crypto/kth/zta;->axa:I

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/kth/zta;->buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/kth/zta;->axa:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/kth/zta;->axa:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public update([BII)V
    .locals 6

    if-ltz p3, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/kth/zta;->rna:Lorg/bouncycastle/crypto/rtg;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/rtg;->getBlockSize()I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/crypto/kth/zta;->axa:I

    sub-int v2, v0, v1

    if-le p3, v2, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/crypto/kth/zta;->buf:[B

    invoke-static {p1, p2, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/kth/zta;->rna:Lorg/bouncycastle/crypto/rtg;

    iget-object v3, p0, Lorg/bouncycastle/crypto/kth/zta;->buf:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/kth/zta;->jia:[B

    const/4 v5, 0x0

    invoke-interface {v1, v3, v5, v4, v5}, Lorg/bouncycastle/crypto/rtg;->zta([BI[BI)I

    iput v5, p0, Lorg/bouncycastle/crypto/kth/zta;->axa:I

    sub-int/2addr p3, v2

    add-int/2addr p2, v2

    :goto_0
    if-le p3, v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/kth/zta;->rna:Lorg/bouncycastle/crypto/rtg;

    iget-object v2, p0, Lorg/bouncycastle/crypto/kth/zta;->jia:[B

    invoke-interface {v1, p1, p2, v2, v5}, Lorg/bouncycastle/crypto/rtg;->zta([BI[BI)I

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/kth/zta;->buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/kth/zta;->axa:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/crypto/kth/zta;->axa:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/bouncycastle/crypto/kth/zta;->axa:I

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t have a negative input length!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public vju()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/kth/zta;->rna:Lorg/bouncycastle/crypto/rtg;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/rtg;->vju()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public you()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/crypto/kth/zta;->sAa:I

    return p0
.end method

.method public you(Lorg/bouncycastle/crypto/kth;)V
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/kth/zta;->reset()V

    iget-object p0, p0, Lorg/bouncycastle/crypto/kth/zta;->rna:Lorg/bouncycastle/crypto/rtg;

    const/4 v0, 0x1

    invoke-interface {p0, v0, p1}, Lorg/bouncycastle/crypto/rtg;->zta(ZLorg/bouncycastle/crypto/kth;)V

    return-void
.end method
