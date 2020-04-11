.class public Lorg/bouncycastle/crypto/bio/you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/rtg;


# instance fields
.field private Cwa:Z

.field private Eza:[B

.field private Fza:[B

.field private gwa:I

.field private tma:Lorg/bouncycastle/crypto/rtg;

.field private ywa:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/rtg;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/bio/you;->tma:Lorg/bouncycastle/crypto/rtg;

    iput-object p1, p0, Lorg/bouncycastle/crypto/bio/you;->tma:Lorg/bouncycastle/crypto/rtg;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/rtg;->getBlockSize()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/crypto/bio/you;->gwa:I

    iget p1, p0, Lorg/bouncycastle/crypto/bio/you;->gwa:I

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/bio/you;->ywa:[B

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/bio/you;->Eza:[B

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/bio/you;->Fza:[B

    return-void
.end method

.method private sis([BI[BI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/bio/you;->gwa:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-gt v0, v1, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/crypto/bio/you;->gwa:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/bio/you;->Eza:[B

    aget-byte v3, v2, v1

    add-int v4, p2, v1

    aget-byte v4, p1, v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/bio/you;->tma:Lorg/bouncycastle/crypto/rtg;

    iget-object p2, p0, Lorg/bouncycastle/crypto/bio/you;->Eza:[B

    invoke-interface {p1, p2, v0, p3, p4}, Lorg/bouncycastle/crypto/rtg;->zta([BI[BI)I

    move-result p1

    iget-object p0, p0, Lorg/bouncycastle/crypto/bio/you;->Eza:[B

    array-length p2, p0

    invoke-static {p3, p4, p0, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return p1

    :cond_1
    new-instance p0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p1, "input buffer too short"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private you([BI[BI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/bio/you;->gwa:I

    add-int v1, p2, v0

    array-length v2, p1

    if-gt v1, v2, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/crypto/bio/you;->Fza:[B

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/you;->tma:Lorg/bouncycastle/crypto/rtg;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/rtg;->zta([BI[BI)I

    move-result p1

    :goto_0
    iget p2, p0, Lorg/bouncycastle/crypto/bio/you;->gwa:I

    if-ge v2, p2, :cond_0

    add-int p2, p4, v2

    aget-byte v0, p3, p2

    iget-object v1, p0, Lorg/bouncycastle/crypto/bio/you;->Eza:[B

    aget-byte v1, v1, v2

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p3, p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/bouncycastle/crypto/bio/you;->Eza:[B

    iget-object p3, p0, Lorg/bouncycastle/crypto/bio/you;->Fza:[B

    iput-object p3, p0, Lorg/bouncycastle/crypto/bio/you;->Eza:[B

    iput-object p2, p0, Lorg/bouncycastle/crypto/bio/you;->Fza:[B

    return p1

    :cond_1
    new-instance p0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p1, "input buffer too short"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public b()Lorg/bouncycastle/crypto/rtg;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/bio/you;->tma:Lorg/bouncycastle/crypto/rtg;

    return-object p0
.end method

.method public getBlockSize()I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/bio/you;->tma:Lorg/bouncycastle/crypto/rtg;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/rtg;->getBlockSize()I

    move-result p0

    return p0
.end method

.method public reset()V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/you;->ywa:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/bio/you;->Eza:[B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/you;->Fza:[B

    invoke-static {v0, v3}, Lorg/bouncycastle/util/zta;->fill([BB)V

    iget-object p0, p0, Lorg/bouncycastle/crypto/bio/you;->tma:Lorg/bouncycastle/crypto/rtg;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/rtg;->reset()V

    return-void
.end method

.method public vju()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lorg/bouncycastle/crypto/bio/you;->tma:Lorg/bouncycastle/crypto/rtg;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/rtg;->vju()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/CBC"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public zta([BI[BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/bio/you;->Cwa:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/bio/you;->sis([BI[BI)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/bio/you;->you([BI[BI)I

    move-result p0

    :goto_0
    return p0
.end method

.method public zta(ZLorg/bouncycastle/crypto/kth;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/bio/you;->Cwa:Z

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/bio/you;->Cwa:Z

    instance-of v1, p2, Lorg/bouncycastle/crypto/wtn/ire;

    const-string v2, "cannot change encrypting state without providing key."

    if-eqz v1, :cond_3

    check-cast p2, Lorg/bouncycastle/crypto/wtn/ire;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/ire;->getIV()[B

    move-result-object v1

    array-length v3, v1

    iget v4, p0, Lorg/bouncycastle/crypto/bio/you;->gwa:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lorg/bouncycastle/crypto/bio/you;->ywa:[B

    array-length v4, v1

    const/4 v5, 0x0

    invoke-static {v1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/bio/you;->reset()V

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/ire;->getParameters()Lorg/bouncycastle/crypto/kth;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lorg/bouncycastle/crypto/bio/you;->tma:Lorg/bouncycastle/crypto/rtg;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/ire;->getParameters()Lorg/bouncycastle/crypto/kth;

    move-result-object p2

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "initialisation vector must be the same length as block size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/bio/you;->reset()V

    if-eqz p2, :cond_4

    iget-object p0, p0, Lorg/bouncycastle/crypto/bio/you;->tma:Lorg/bouncycastle/crypto/rtg;

    :goto_0
    invoke-interface {p0, p1, p2}, Lorg/bouncycastle/crypto/rtg;->zta(ZLorg/bouncycastle/crypto/kth;)V

    goto :goto_1

    :cond_4
    if-ne v0, p1, :cond_5

    :goto_1
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
