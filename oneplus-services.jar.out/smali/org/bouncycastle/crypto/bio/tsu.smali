.class public Lorg/bouncycastle/crypto/bio/tsu;
.super Lorg/bouncycastle/crypto/cjf;
.source ""


# instance fields
.field private Dza:I

.field private Rpa:Lorg/bouncycastle/crypto/rtg;

.field private Vza:[B

.field private Wza:[B

.field private Xza:[B

.field private Yza:[B

.field private Zza:Z

.field private _za:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/rtg;I)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/cjf;-><init>(Lorg/bouncycastle/crypto/rtg;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/bio/tsu;->Rpa:Lorg/bouncycastle/crypto/rtg;

    iput-object p1, p0, Lorg/bouncycastle/crypto/bio/tsu;->Rpa:Lorg/bouncycastle/crypto/rtg;

    div-int/lit8 p2, p2, 0x8

    iput p2, p0, Lorg/bouncycastle/crypto/bio/tsu;->Dza:I

    invoke-interface {p1}, Lorg/bouncycastle/crypto/rtg;->getBlockSize()I

    move-result p2

    new-array p2, p2, [B

    iput-object p2, p0, Lorg/bouncycastle/crypto/bio/tsu;->Vza:[B

    invoke-interface {p1}, Lorg/bouncycastle/crypto/rtg;->getBlockSize()I

    move-result p2

    new-array p2, p2, [B

    iput-object p2, p0, Lorg/bouncycastle/crypto/bio/tsu;->Wza:[B

    invoke-interface {p1}, Lorg/bouncycastle/crypto/rtg;->getBlockSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/bio/tsu;->Xza:[B

    iget p1, p0, Lorg/bouncycastle/crypto/bio/tsu;->Dza:I

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/bio/tsu;->Yza:[B

    return-void
.end method

.method private rtg(B)B
    .locals 4

    iget v0, p0, Lorg/bouncycastle/crypto/bio/tsu;->_za:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/tsu;->Rpa:Lorg/bouncycastle/crypto/rtg;

    iget-object v2, p0, Lorg/bouncycastle/crypto/bio/tsu;->Wza:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/bio/tsu;->Xza:[B

    invoke-interface {v0, v2, v1, v3, v1}, Lorg/bouncycastle/crypto/rtg;->zta([BI[BI)I

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/tsu;->Yza:[B

    iget v2, p0, Lorg/bouncycastle/crypto/bio/tsu;->_za:I

    aput-byte p1, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/tsu;->Xza:[B

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/bouncycastle/crypto/bio/tsu;->_za:I

    aget-byte v0, v0, v2

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    iget v0, p0, Lorg/bouncycastle/crypto/bio/tsu;->_za:I

    iget v2, p0, Lorg/bouncycastle/crypto/bio/tsu;->Dza:I

    if-ne v0, v2, :cond_1

    iput v1, p0, Lorg/bouncycastle/crypto/bio/tsu;->_za:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/tsu;->Wza:[B

    array-length v3, v0

    sub-int/2addr v3, v2

    invoke-static {v0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/tsu;->Yza:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/bio/tsu;->Wza:[B

    array-length v3, v2

    iget p0, p0, Lorg/bouncycastle/crypto/bio/tsu;->Dza:I

    sub-int/2addr v3, p0

    invoke-static {v0, v1, v2, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return p1
.end method

.method private ssp(B)B
    .locals 4

    iget v0, p0, Lorg/bouncycastle/crypto/bio/tsu;->_za:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/tsu;->Rpa:Lorg/bouncycastle/crypto/rtg;

    iget-object v2, p0, Lorg/bouncycastle/crypto/bio/tsu;->Wza:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/bio/tsu;->Xza:[B

    invoke-interface {v0, v2, v1, v3, v1}, Lorg/bouncycastle/crypto/rtg;->zta([BI[BI)I

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/tsu;->Xza:[B

    iget v2, p0, Lorg/bouncycastle/crypto/bio/tsu;->_za:I

    aget-byte v0, v0, v2

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/tsu;->Yza:[B

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/bouncycastle/crypto/bio/tsu;->_za:I

    aput-byte p1, v0, v2

    iget v0, p0, Lorg/bouncycastle/crypto/bio/tsu;->_za:I

    iget v2, p0, Lorg/bouncycastle/crypto/bio/tsu;->Dza:I

    if-ne v0, v2, :cond_1

    iput v1, p0, Lorg/bouncycastle/crypto/bio/tsu;->_za:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/tsu;->Wza:[B

    array-length v3, v0

    sub-int/2addr v3, v2

    invoke-static {v0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/tsu;->Yza:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/bio/tsu;->Wza:[B

    array-length v3, v2

    iget p0, p0, Lorg/bouncycastle/crypto/bio/tsu;->Dza:I

    sub-int/2addr v3, p0

    invoke-static {v0, v1, v2, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return p1
.end method


# virtual methods
.method public getBlockSize()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/crypto/bio/tsu;->Dza:I

    return p0
.end method

.method public jj()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/bio/tsu;->Wza:[B

    invoke-static {p0}, Lorg/bouncycastle/util/zta;->vdb([B)[B

    move-result-object p0

    return-object p0
.end method

.method public reset()V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/tsu;->Vza:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/bio/tsu;->Wza:[B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/tsu;->Yza:[B

    invoke-static {v0, v3}, Lorg/bouncycastle/util/zta;->fill([BB)V

    iput v3, p0, Lorg/bouncycastle/crypto/bio/tsu;->_za:I

    iget-object p0, p0, Lorg/bouncycastle/crypto/bio/tsu;->Rpa:Lorg/bouncycastle/crypto/rtg;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/rtg;->reset()V

    return-void
.end method

.method protected sis(B)B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/bio/tsu;->Zza:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/bio/tsu;->ssp(B)B

    move-result p0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/bio/tsu;->rtg(B)B

    move-result p0

    :goto_0
    return p0
.end method

.method public sis([BI[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget v3, p0, Lorg/bouncycastle/crypto/bio/tsu;->Dza:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/cjf;->zta([BII[BI)I

    iget p0, p0, Lorg/bouncycastle/crypto/bio/tsu;->Dza:I

    return p0
.end method

.method public vju()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/bio/tsu;->Rpa:Lorg/bouncycastle/crypto/rtg;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/rtg;->vju()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/CFB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/bouncycastle/crypto/bio/tsu;->Dza:I

    mul-int/lit8 p0, p0, 0x8

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public you([BI[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget v3, p0, Lorg/bouncycastle/crypto/bio/tsu;->Dza:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/cjf;->zta([BII[BI)I

    iget p0, p0, Lorg/bouncycastle/crypto/bio/tsu;->Dza:I

    return p0
.end method

.method public zta([BI[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget v3, p0, Lorg/bouncycastle/crypto/bio/tsu;->Dza:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/cjf;->zta([BII[BI)I

    iget p0, p0, Lorg/bouncycastle/crypto/bio/tsu;->Dza:I

    return p0
.end method

.method public zta(ZLorg/bouncycastle/crypto/kth;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/bio/tsu;->Zza:Z

    instance-of p1, p2, Lorg/bouncycastle/crypto/wtn/ire;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    check-cast p2, Lorg/bouncycastle/crypto/wtn/ire;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/ire;->getIV()[B

    move-result-object p1

    array-length v1, p1

    iget-object v2, p0, Lorg/bouncycastle/crypto/bio/tsu;->Vza:[B

    array-length v3, v2

    const/4 v4, 0x0

    if-ge v1, v3, :cond_0

    array-length v1, v2

    array-length v3, p1

    sub-int/2addr v1, v3

    array-length v3, p1

    invoke-static {p1, v4, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v4

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/bio/tsu;->Vza:[B

    array-length v3, v2

    array-length v5, p1

    sub-int/2addr v3, v5

    if-ge v1, v3, :cond_1

    aput-byte v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    array-length v1, v2

    invoke-static {p1, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/bio/tsu;->reset()V

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/ire;->getParameters()Lorg/bouncycastle/crypto/kth;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lorg/bouncycastle/crypto/bio/tsu;->Rpa:Lorg/bouncycastle/crypto/rtg;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/ire;->getParameters()Lorg/bouncycastle/crypto/kth;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lorg/bouncycastle/crypto/rtg;->zta(ZLorg/bouncycastle/crypto/kth;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/bio/tsu;->reset()V

    if-eqz p2, :cond_3

    iget-object p0, p0, Lorg/bouncycastle/crypto/bio/tsu;->Rpa:Lorg/bouncycastle/crypto/rtg;

    invoke-interface {p0, v0, p2}, Lorg/bouncycastle/crypto/rtg;->zta(ZLorg/bouncycastle/crypto/kth;)V

    :cond_3
    :goto_1
    return-void
.end method
