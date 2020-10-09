.class public Lorg/bouncycastle/crypto/bio/kth;
.super Lorg/bouncycastle/crypto/cjf;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/oxb;


# instance fields
.field private final Dza:I

.field private final Rpa:Lorg/bouncycastle/crypto/rtg;

.field private Vza:[B

.field private _za:I

.field private cAa:[B

.field private counter:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/rtg;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/cjf;-><init>(Lorg/bouncycastle/crypto/rtg;)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/bio/kth;->Rpa:Lorg/bouncycastle/crypto/rtg;

    iget-object p1, p0, Lorg/bouncycastle/crypto/bio/kth;->Rpa:Lorg/bouncycastle/crypto/rtg;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/rtg;->getBlockSize()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/crypto/bio/kth;->Dza:I

    iget p1, p0, Lorg/bouncycastle/crypto/bio/kth;->Dza:I

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/bio/kth;->Vza:[B

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/bio/kth;->counter:[B

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/bio/kth;->cAa:[B

    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/crypto/bio/kth;->_za:I

    return-void
.end method

.method private Hc(I)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/kth;->counter:[B

    array-length v0, v0

    sub-int/2addr v0, p1

    :cond_0
    const/4 p1, -0x1

    add-int/2addr v0, p1

    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/crypto/bio/kth;->counter:[B

    aget-byte v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    if-eq v2, p1, :cond_0

    :cond_1
    return-void
.end method

.method private Ic(I)V
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/kth;->counter:[B

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-byte v1, v0, v1

    array-length v3, v0

    sub-int/2addr v3, v2

    aget-byte v4, v0, v3

    add-int/2addr v4, p1

    int-to-byte p1, v4

    aput-byte p1, v0, v3

    if-eqz v1, :cond_0

    array-length p1, v0

    sub-int/2addr p1, v2

    aget-byte p1, v0, p1

    if-ge p1, v1, :cond_0

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/bio/kth;->Jc(I)V

    :cond_0
    return-void
.end method

.method private Jc(I)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/kth;->counter:[B

    array-length v0, v0

    sub-int/2addr v0, p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    iget-object p1, p0, Lorg/bouncycastle/crypto/bio/kth;->counter:[B

    aget-byte v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    if-eqz v1, :cond_0

    :cond_1
    return-void
.end method

.method private Pt()V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/kth;->Vza:[B

    array-length v0, v0

    iget v1, p0, Lorg/bouncycastle/crypto/bio/kth;->Dza:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/bio/kth;->Vza:[B

    array-length v2, v1

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/crypto/bio/kth;->counter:[B

    aget-byte v2, v2, v0

    aget-byte v1, v1, v0

    if-ne v2, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Counter in CTR/SIC mode out of range."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method private e(J)V
    .locals 13

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, 0x1

    const/4 v4, 0x5

    const-wide/16 v5, 0xff

    const-wide/16 v7, 0x1

    if-ltz v2, :cond_2

    iget v0, p0, Lorg/bouncycastle/crypto/bio/kth;->_za:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    iget v2, p0, Lorg/bouncycastle/crypto/bio/kth;->Dza:I

    int-to-long v9, v2

    div-long/2addr v0, v9

    cmp-long v2, v0, v5

    move-wide v5, v0

    if-lez v2, :cond_1

    :goto_0
    if-lt v4, v3, :cond_1

    mul-int/lit8 v2, v4, 0x8

    shl-long v9, v7, v2

    :goto_1
    cmp-long v2, v5, v9

    if-ltz v2, :cond_0

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/bio/kth;->Jc(I)V

    sub-long/2addr v5, v9

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    long-to-int v2, v5

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/bio/kth;->Ic(I)V

    iget v2, p0, Lorg/bouncycastle/crypto/bio/kth;->_za:I

    int-to-long v2, v2

    add-long/2addr p1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/bio/kth;->Dza:I

    int-to-long v2, v2

    mul-long/2addr v2, v0

    sub-long/2addr p1, v2

    long-to-int p1, p1

    iput p1, p0, Lorg/bouncycastle/crypto/bio/kth;->_za:I

    goto :goto_5

    :cond_2
    neg-long v9, p1

    iget v2, p0, Lorg/bouncycastle/crypto/bio/kth;->_za:I

    int-to-long v11, v2

    sub-long/2addr v9, v11

    iget v2, p0, Lorg/bouncycastle/crypto/bio/kth;->Dza:I

    int-to-long v11, v2

    div-long/2addr v9, v11

    cmp-long v2, v9, v5

    move-wide v5, v9

    if-lez v2, :cond_4

    :goto_2
    if-lt v4, v3, :cond_4

    mul-int/lit8 v2, v4, 0x8

    shl-long v11, v7, v2

    :goto_3
    cmp-long v2, v5, v11

    if-lez v2, :cond_3

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/bio/kth;->Hc(I)V

    sub-long/2addr v5, v11

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_4
    :goto_4
    cmp-long v2, v0, v5

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-direct {p0, v3}, Lorg/bouncycastle/crypto/bio/kth;->Hc(I)V

    add-long/2addr v0, v7

    goto :goto_4

    :cond_5
    iget v0, p0, Lorg/bouncycastle/crypto/bio/kth;->_za:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    iget p1, p0, Lorg/bouncycastle/crypto/bio/kth;->Dza:I

    int-to-long p1, p1

    mul-long/2addr p1, v9

    add-long/2addr v0, p1

    long-to-int p1, v0

    if-ltz p1, :cond_6

    iput v3, p0, Lorg/bouncycastle/crypto/bio/kth;->_za:I

    goto :goto_5

    :cond_6
    invoke-direct {p0, v3}, Lorg/bouncycastle/crypto/bio/kth;->Hc(I)V

    iget p2, p0, Lorg/bouncycastle/crypto/bio/kth;->Dza:I

    add-int/2addr p2, p1

    iput p2, p0, Lorg/bouncycastle/crypto/bio/kth;->_za:I

    :goto_5
    return-void
.end method


# virtual methods
.method public getBlockSize()I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/bio/kth;->Rpa:Lorg/bouncycastle/crypto/rtg;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/rtg;->getBlockSize()I

    move-result p0

    return p0
.end method

.method public getPosition()J
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/kth;->counter:[B

    array-length v1, v0

    new-array v1, v1, [B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v1

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_0
    if-lt v0, v2, :cond_2

    iget-object v3, p0, Lorg/bouncycastle/crypto/bio/kth;->Vza:[B

    array-length v4, v3

    if-ge v0, v4, :cond_0

    aget-byte v4, v1, v0

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v0

    and-int/lit16 v3, v3, 0xff

    sub-int/2addr v4, v3

    goto :goto_1

    :cond_0
    aget-byte v3, v1, v0

    and-int/lit16 v4, v3, 0xff

    :goto_1
    if-gez v4, :cond_1

    add-int/lit8 v3, v0, -0x1

    aget-byte v5, v1, v3

    sub-int/2addr v5, v2

    int-to-byte v5, v5

    aput-byte v5, v1, v3

    add-int/lit16 v4, v4, 0x100

    :cond_1
    int-to-byte v3, v4

    aput-byte v3, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    array-length v0, v1

    add-int/lit8 v0, v0, -0x8

    invoke-static {v1, v0}, Lorg/bouncycastle/util/igw;->wtn([BI)J

    move-result-wide v0

    iget v2, p0, Lorg/bouncycastle/crypto/bio/kth;->Dza:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget p0, p0, Lorg/bouncycastle/crypto/bio/kth;->_za:I

    int-to-long v2, p0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public reset()V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/kth;->counter:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/zta;->fill([BB)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/kth;->Vza:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/bio/kth;->counter:[B

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/kth;->Rpa:Lorg/bouncycastle/crypto/rtg;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/rtg;->reset()V

    iput v1, p0, Lorg/bouncycastle/crypto/bio/kth;->_za:I

    return-void
.end method

.method public seekTo(J)J
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/bio/kth;->reset()V

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/bio/kth;->skip(J)J

    move-result-wide p0

    return-wide p0
.end method

.method protected sis(B)B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/bio/kth;->_za:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/kth;->Rpa:Lorg/bouncycastle/crypto/rtg;

    iget-object v2, p0, Lorg/bouncycastle/crypto/bio/kth;->counter:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/bio/kth;->cAa:[B

    invoke-interface {v0, v2, v1, v3, v1}, Lorg/bouncycastle/crypto/rtg;->zta([BI[BI)I

    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/kth;->cAa:[B

    iget v1, p0, Lorg/bouncycastle/crypto/bio/kth;->_za:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/bio/kth;->_za:I

    aget-byte p0, v0, v1

    xor-int/2addr p0, p1

    int-to-byte p0, p0

    return p0

    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/bio/kth;->cAa:[B

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lorg/bouncycastle/crypto/bio/kth;->_za:I

    aget-byte v0, v2, v0

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    iget v0, p0, Lorg/bouncycastle/crypto/bio/kth;->_za:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/bio/kth;->counter:[B

    array-length v2, v2

    if-ne v0, v2, :cond_1

    iput v1, p0, Lorg/bouncycastle/crypto/bio/kth;->_za:I

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/bio/kth;->Jc(I)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/bio/kth;->Pt()V

    :cond_1
    return p1
.end method

.method public skip(J)J
    .locals 3

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/bio/kth;->e(J)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/bio/kth;->Pt()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/kth;->Rpa:Lorg/bouncycastle/crypto/rtg;

    iget-object v1, p0, Lorg/bouncycastle/crypto/bio/kth;->counter:[B

    iget-object p0, p0, Lorg/bouncycastle/crypto/bio/kth;->cAa:[B

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p0, v2}, Lorg/bouncycastle/crypto/rtg;->zta([BI[BI)I

    return-wide p1
.end method

.method public vju()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lorg/bouncycastle/crypto/bio/kth;->Rpa:Lorg/bouncycastle/crypto/rtg;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/rtg;->vju()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/SIC"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public zta([BI[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget v3, p0, Lorg/bouncycastle/crypto/bio/kth;->Dza:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/cjf;->zta([BII[BI)I

    iget p0, p0, Lorg/bouncycastle/crypto/bio/kth;->Dza:I

    return p0
.end method

.method public zta(ZLorg/bouncycastle/crypto/kth;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    instance-of p1, p2, Lorg/bouncycastle/crypto/wtn/ire;

    if-eqz p1, :cond_4

    check-cast p2, Lorg/bouncycastle/crypto/wtn/ire;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/ire;->getIV()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/zta;->vdb([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/bio/kth;->Vza:[B

    iget p1, p0, Lorg/bouncycastle/crypto/bio/kth;->Dza:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/kth;->Vza:[B

    array-length v0, v0

    const-string v1, " bytes."

    if-lt p1, v0, :cond_3

    div-int/lit8 v0, p1, 0x2

    const/16 v2, 0x8

    if-le v2, v0, :cond_0

    div-int/lit8 v2, p1, 0x2

    :cond_0
    iget p1, p0, Lorg/bouncycastle/crypto/bio/kth;->Dza:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/bio/kth;->Vza:[B

    array-length v0, v0

    sub-int/2addr p1, v0

    if-gt p1, v2, :cond_2

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/ire;->getParameters()Lorg/bouncycastle/crypto/kth;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/bouncycastle/crypto/bio/kth;->Rpa:Lorg/bouncycastle/crypto/rtg;

    const/4 v0, 0x1

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/ire;->getParameters()Lorg/bouncycastle/crypto/kth;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lorg/bouncycastle/crypto/rtg;->zta(ZLorg/bouncycastle/crypto/kth;)V

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/bio/kth;->reset()V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CTR/SIC mode requires IV of at least: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/bouncycastle/crypto/bio/kth;->Dza:I

    sub-int/2addr p0, v2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CTR/SIC mode requires IV no greater than: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/bouncycastle/crypto/bio/kth;->Dza:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "CTR/SIC mode requires ParametersWithIV"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
