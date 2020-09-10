.class public Lorg/bouncycastle/crypto/bio/sis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/bio/zta;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/bio/sis$zta;
    }
.end annotation


# instance fields
.field private GCa:I

.field private Gpa:Lorg/bouncycastle/crypto/rtg;

.field private SCa:[B

.field private TCa:Lorg/bouncycastle/crypto/kth;

.field private UCa:[B

.field private VCa:Lorg/bouncycastle/crypto/bio/sis$zta;

.field private data:Lorg/bouncycastle/crypto/bio/sis$zta;

.field private nonce:[B

.field private pza:Z

.field private sza:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/rtg;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/bio/sis$zta;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/bio/sis$zta;-><init>(Lorg/bouncycastle/crypto/bio/sis;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/bio/sis;->VCa:Lorg/bouncycastle/crypto/bio/sis$zta;

    new-instance v0, Lorg/bouncycastle/crypto/bio/sis$zta;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/bio/sis$zta;-><init>(Lorg/bouncycastle/crypto/bio/sis;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/bio/sis;->data:Lorg/bouncycastle/crypto/bio/sis$zta;

    iput-object p1, p0, Lorg/bouncycastle/crypto/bio/sis;->Gpa:Lorg/bouncycastle/crypto/rtg;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/rtg;->getBlockSize()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/crypto/bio/sis;->sza:I

    iget p1, p0, Lorg/bouncycastle/crypto/bio/sis;->sza:I

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/bio/sis;->UCa:[B

    const/16 p0, 0x10

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cipher required with a block size of 16."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private St()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/sis;->VCa:Lorg/bouncycastle/crypto/bio/sis$zta;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget-object p0, p0, Lorg/bouncycastle/crypto/bio/sis;->SCa:[B

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    array-length p0, p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method private Tt()Z
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/bio/sis;->St()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private zta([BII[B)I
    .locals 10

    new-instance v0, Lorg/bouncycastle/crypto/kth/zta;

    iget-object v1, p0, Lorg/bouncycastle/crypto/bio/sis;->Gpa:Lorg/bouncycastle/crypto/rtg;

    iget v2, p0, Lorg/bouncycastle/crypto/bio/sis;->GCa:I

    mul-int/lit8 v2, v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/kth/zta;-><init>(Lorg/bouncycastle/crypto/rtg;I)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/bio/sis;->TCa:Lorg/bouncycastle/crypto/kth;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/ibl;->you(Lorg/bouncycastle/crypto/kth;)V

    const/16 v1, 0x10

    new-array v2, v1, [B

    invoke-direct {p0}, Lorg/bouncycastle/crypto/bio/sis;->Tt()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    aget-byte v3, v2, v4

    or-int/lit8 v3, v3, 0x40

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    :cond_0
    aget-byte v3, v2, v4

    invoke-interface {v0}, Lorg/bouncycastle/crypto/ibl;->you()I

    move-result v5

    const/4 v6, 0x2

    sub-int/2addr v5, v6

    div-int/2addr v5, v6

    and-int/lit8 v5, v5, 0x7

    shl-int/lit8 v5, v5, 0x3

    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    aget-byte v3, v2, v4

    iget-object v5, p0, Lorg/bouncycastle/crypto/bio/sis;->nonce:[B

    array-length v7, v5

    rsub-int/lit8 v7, v7, 0xf

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    and-int/lit8 v7, v7, 0x7

    or-int/2addr v3, v7

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    array-length v3, v5

    invoke-static {v5, v4, v2, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v3, p3

    move v5, v8

    :goto_0
    if-lez v3, :cond_1

    array-length v7, v2

    sub-int/2addr v7, v5

    and-int/lit16 v9, v3, 0xff

    int-to-byte v9, v9

    aput-byte v9, v2, v7

    ushr-int/lit8 v3, v3, 0x8

    add-int/2addr v5, v8

    goto :goto_0

    :cond_1
    array-length v3, v2

    invoke-interface {v0, v2, v4, v3}, Lorg/bouncycastle/crypto/ibl;->update([BII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/bio/sis;->Tt()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lorg/bouncycastle/crypto/bio/sis;->St()I

    move-result v2

    const v3, 0xff00

    if-ge v2, v3, :cond_2

    shr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    invoke-interface {v0, v3}, Lorg/bouncycastle/crypto/ibl;->update(B)V

    int-to-byte v3, v2

    invoke-interface {v0, v3}, Lorg/bouncycastle/crypto/ibl;->update(B)V

    goto :goto_1

    :cond_2
    const/4 v3, -0x1

    invoke-interface {v0, v3}, Lorg/bouncycastle/crypto/ibl;->update(B)V

    const/4 v3, -0x2

    invoke-interface {v0, v3}, Lorg/bouncycastle/crypto/ibl;->update(B)V

    shr-int/lit8 v3, v2, 0x18

    int-to-byte v3, v3

    invoke-interface {v0, v3}, Lorg/bouncycastle/crypto/ibl;->update(B)V

    shr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    invoke-interface {v0, v3}, Lorg/bouncycastle/crypto/ibl;->update(B)V

    shr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    invoke-interface {v0, v3}, Lorg/bouncycastle/crypto/ibl;->update(B)V

    int-to-byte v3, v2

    invoke-interface {v0, v3}, Lorg/bouncycastle/crypto/ibl;->update(B)V

    const/4 v6, 0x6

    :goto_1
    iget-object v3, p0, Lorg/bouncycastle/crypto/bio/sis;->SCa:[B

    if-eqz v3, :cond_3

    array-length v5, v3

    invoke-interface {v0, v3, v4, v5}, Lorg/bouncycastle/crypto/ibl;->update([BII)V

    :cond_3
    iget-object v3, p0, Lorg/bouncycastle/crypto/bio/sis;->VCa:Lorg/bouncycastle/crypto/bio/sis$zta;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    if-lez v3, :cond_4

    iget-object v3, p0, Lorg/bouncycastle/crypto/bio/sis;->VCa:Lorg/bouncycastle/crypto/bio/sis$zta;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/bio/sis$zta;->getBuffer()[B

    move-result-object v3

    iget-object p0, p0, Lorg/bouncycastle/crypto/bio/sis;->VCa:Lorg/bouncycastle/crypto/bio/sis$zta;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    invoke-interface {v0, v3, v4, p0}, Lorg/bouncycastle/crypto/ibl;->update([BII)V

    :cond_4
    add-int/2addr v6, v2

    rem-int/2addr v6, v1

    if-eqz v6, :cond_5

    :goto_2
    if-eq v6, v1, :cond_5

    invoke-interface {v0, v4}, Lorg/bouncycastle/crypto/ibl;->update(B)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/ibl;->update([BII)V

    invoke-interface {v0, p4, v4}, Lorg/bouncycastle/crypto/ibl;->doFinal([BI)I

    move-result p0

    return p0
.end method


# virtual methods
.method public b()Lorg/bouncycastle/crypto/rtg;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/bio/sis;->Gpa:Lorg/bouncycastle/crypto/rtg;

    return-object p0
.end method

.method public doFinal([BI)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/sis;->data:Lorg/bouncycastle/crypto/bio/sis$zta;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/bio/sis$zta;->getBuffer()[B

    move-result-object v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/sis;->data:Lorg/bouncycastle/crypto/bio/sis$zta;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    const/4 v3, 0x0

    move-object v1, p0

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/bio/sis;->you([BII[BI)I

    move-result p1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/bio/sis;->reset()V

    return p1
.end method

.method public getMac()[B
    .locals 3

    iget v0, p0, Lorg/bouncycastle/crypto/bio/sis;->GCa:I

    new-array v0, v0, [B

    iget-object p0, p0, Lorg/bouncycastle/crypto/bio/sis;->UCa:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getOutputSize(I)I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/sis;->data:Lorg/bouncycastle/crypto/bio/sis$zta;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    add-int/2addr p1, v0

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/bio/sis;->pza:Z

    iget p0, p0, Lorg/bouncycastle/crypto/bio/sis;->GCa:I

    if-eqz v0, :cond_0

    add-int/2addr p1, p0

    return p1

    :cond_0
    if-ge p1, p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    sub-int p0, p1, p0

    :goto_0
    return p0
.end method

.method public kth([BII)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/bio/sis;->pza:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/crypto/bio/sis;->GCa:I

    add-int/2addr v0, p3

    :goto_0
    new-array v0, v0, [B

    goto :goto_1

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/bio/sis;->GCa:I

    if-lt p3, v0, :cond_1

    sub-int v0, p3, v0

    goto :goto_0

    :goto_1
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/bio/sis;->you([BII[BI)I

    return-object v0

    :cond_1
    new-instance p0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p1, "data too short"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/sis;->Gpa:Lorg/bouncycastle/crypto/rtg;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/rtg;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/sis;->VCa:Lorg/bouncycastle/crypto/bio/sis$zta;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object p0, p0, Lorg/bouncycastle/crypto/bio/sis;->data:Lorg/bouncycastle/crypto/bio/sis$zta;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-void
.end method

.method public sis([BII)V
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/bio/sis;->VCa:Lorg/bouncycastle/crypto/bio/sis$zta;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method

.method public vju()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lorg/bouncycastle/crypto/bio/sis;->Gpa:Lorg/bouncycastle/crypto/rtg;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/rtg;->vju()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/CCM"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public you(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public you([BII[BI)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;,
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/sis;->TCa:Lorg/bouncycastle/crypto/kth;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/sis;->nonce:[B

    array-length v0, v0

    rsub-int/lit8 v0, v0, 0xf

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    mul-int/lit8 v1, v0, 0x8

    shl-int v1, v2, v1

    if-ge p3, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "CCM packet too large for choice of q."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/bio/sis;->sza:I

    new-array v1, v1, [B

    sub-int/2addr v0, v2

    and-int/lit8 v0, v0, 0x7

    int-to-byte v0, v0

    const/4 v3, 0x0

    aput-byte v0, v1, v3

    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/sis;->nonce:[B

    array-length v4, v0

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lorg/bouncycastle/crypto/bio/kth;

    iget-object v2, p0, Lorg/bouncycastle/crypto/bio/sis;->Gpa:Lorg/bouncycastle/crypto/rtg;

    invoke-direct {v0, v2}, Lorg/bouncycastle/crypto/bio/kth;-><init>(Lorg/bouncycastle/crypto/rtg;)V

    iget-boolean v2, p0, Lorg/bouncycastle/crypto/bio/sis;->pza:Z

    new-instance v4, Lorg/bouncycastle/crypto/wtn/ire;

    iget-object v5, p0, Lorg/bouncycastle/crypto/bio/sis;->TCa:Lorg/bouncycastle/crypto/kth;

    invoke-direct {v4, v5, v1}, Lorg/bouncycastle/crypto/wtn/ire;-><init>(Lorg/bouncycastle/crypto/kth;[B)V

    invoke-interface {v0, v2, v4}, Lorg/bouncycastle/crypto/rtg;->zta(ZLorg/bouncycastle/crypto/kth;)V

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/bio/sis;->pza:Z

    const-string v2, "Output buffer too short."

    if-eqz v1, :cond_4

    iget v1, p0, Lorg/bouncycastle/crypto/bio/sis;->GCa:I

    add-int/2addr v1, p3

    array-length v4, p4

    add-int v5, v1, p5

    if-lt v4, v5, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/crypto/bio/sis;->UCa:[B

    invoke-direct {p0, p1, p2, p3, v2}, Lorg/bouncycastle/crypto/bio/sis;->zta([BII[B)I

    iget v2, p0, Lorg/bouncycastle/crypto/bio/sis;->sza:I

    new-array v2, v2, [B

    iget-object v4, p0, Lorg/bouncycastle/crypto/bio/sis;->UCa:[B

    invoke-interface {v0, v4, v3, v2, v3}, Lorg/bouncycastle/crypto/rtg;->zta([BI[BI)I

    move v4, p2

    move v5, p5

    :goto_1
    add-int v6, p2, p3

    iget v7, p0, Lorg/bouncycastle/crypto/bio/sis;->sza:I

    sub-int v8, v6, v7

    if-ge v4, v8, :cond_2

    invoke-interface {v0, p1, v4, p4, v5}, Lorg/bouncycastle/crypto/rtg;->zta([BI[BI)I

    iget v6, p0, Lorg/bouncycastle/crypto/bio/sis;->sza:I

    add-int/2addr v5, v6

    add-int/2addr v4, v6

    goto :goto_1

    :cond_2
    new-array p2, v7, [B

    sub-int/2addr v6, v4

    invoke-static {p1, v4, p2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v0, p2, v3, p2, v3}, Lorg/bouncycastle/crypto/rtg;->zta([BI[BI)I

    invoke-static {p2, v3, p4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p5, p3

    iget p0, p0, Lorg/bouncycastle/crypto/bio/sis;->GCa:I

    invoke-static {v2, v3, p4, p5, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p3, v1

    goto :goto_4

    :cond_3
    new-instance p0, Lorg/bouncycastle/crypto/OutputLengthException;

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    iget v1, p0, Lorg/bouncycastle/crypto/bio/sis;->GCa:I

    if-lt p3, v1, :cond_9

    sub-int/2addr p3, v1

    array-length v4, p4

    add-int v5, p3, p5

    if-lt v4, v5, :cond_8

    add-int v2, p2, p3

    iget-object v4, p0, Lorg/bouncycastle/crypto/bio/sis;->UCa:[B

    invoke-static {p1, v2, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/bio/sis;->UCa:[B

    invoke-interface {v0, v1, v3, v1, v3}, Lorg/bouncycastle/crypto/rtg;->zta([BI[BI)I

    iget v1, p0, Lorg/bouncycastle/crypto/bio/sis;->GCa:I

    :goto_2
    iget-object v4, p0, Lorg/bouncycastle/crypto/bio/sis;->UCa:[B

    array-length v5, v4

    if-eq v1, v5, :cond_5

    aput-byte v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    move v1, p2

    move v4, p5

    :goto_3
    iget v5, p0, Lorg/bouncycastle/crypto/bio/sis;->sza:I

    sub-int v6, v2, v5

    if-ge v1, v6, :cond_6

    invoke-interface {v0, p1, v1, p4, v4}, Lorg/bouncycastle/crypto/rtg;->zta([BI[BI)I

    iget v5, p0, Lorg/bouncycastle/crypto/bio/sis;->sza:I

    add-int/2addr v4, v5

    add-int/2addr v1, v5

    goto :goto_3

    :cond_6
    new-array v2, v5, [B

    sub-int p2, v1, p2

    sub-int p2, p3, p2

    invoke-static {p1, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v0, v2, v3, v2, v3}, Lorg/bouncycastle/crypto/rtg;->zta([BI[BI)I

    invoke-static {v2, v3, p4, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/crypto/bio/sis;->sza:I

    new-array p1, p1, [B

    invoke-direct {p0, p4, p5, p3, p1}, Lorg/bouncycastle/crypto/bio/sis;->zta([BII[B)I

    iget-object p0, p0, Lorg/bouncycastle/crypto/bio/sis;->UCa:[B

    invoke-static {p0, p1}, Lorg/bouncycastle/util/zta;->cno([B[B)Z

    move-result p0

    if-eqz p0, :cond_7

    :goto_4
    return p3

    :cond_7
    new-instance p0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p1, "mac check in CCM failed"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Lorg/bouncycastle/crypto/OutputLengthException;

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p1, "data too short"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "CCM cipher unitialized."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public zta(B[BI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object p0, p0, Lorg/bouncycastle/crypto/bio/sis;->data:Lorg/bouncycastle/crypto/bio/sis$zta;

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public zta([BII[BI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    array-length p4, p1

    add-int p5, p2, p3

    if-lt p4, p5, :cond_0

    iget-object p0, p0, Lorg/bouncycastle/crypto/bio/sis;->data:Lorg/bouncycastle/crypto/bio/sis$zta;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p1, "Input buffer too short"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public zta(B)V
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/bio/sis;->VCa:Lorg/bouncycastle/crypto/bio/sis$zta;

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public zta(ZLorg/bouncycastle/crypto/kth;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/bio/sis;->pza:Z

    instance-of p1, p2, Lorg/bouncycastle/crypto/wtn/zta;

    if-eqz p1, :cond_0

    check-cast p2, Lorg/bouncycastle/crypto/wtn/zta;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/zta;->getNonce()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/bio/sis;->nonce:[B

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/zta;->qj()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/bio/sis;->SCa:[B

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/zta;->you()I

    move-result p1

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lorg/bouncycastle/crypto/bio/sis;->GCa:I

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/zta;->getKey()Lorg/bouncycastle/crypto/wtn/cjf;

    move-result-object p1

    goto :goto_0

    :cond_0
    instance-of p1, p2, Lorg/bouncycastle/crypto/wtn/ire;

    if-eqz p1, :cond_3

    check-cast p2, Lorg/bouncycastle/crypto/wtn/ire;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/ire;->getIV()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/bio/sis;->nonce:[B

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/crypto/bio/sis;->SCa:[B

    iget-object p1, p0, Lorg/bouncycastle/crypto/bio/sis;->UCa:[B

    array-length p1, p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/bouncycastle/crypto/bio/sis;->GCa:I

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/ire;->getParameters()Lorg/bouncycastle/crypto/kth;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    iput-object p1, p0, Lorg/bouncycastle/crypto/bio/sis;->TCa:Lorg/bouncycastle/crypto/kth;

    :cond_1
    iget-object p1, p0, Lorg/bouncycastle/crypto/bio/sis;->nonce:[B

    if-eqz p1, :cond_2

    array-length p2, p1

    const/4 v0, 0x7

    if-lt p2, v0, :cond_2

    array-length p1, p1

    const/16 p2, 0xd

    if-gt p1, p2, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/bio/sis;->reset()V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "nonce must have length from 7 to 13 octets"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid parameters passed to CCM: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
