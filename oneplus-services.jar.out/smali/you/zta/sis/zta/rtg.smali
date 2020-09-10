.class public abstract Lyou/zta/sis/zta/rtg;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyou/zta/sis/zta/rtg$tsu;,
        Lyou/zta/sis/zta/rtg$zta;,
        Lyou/zta/sis/zta/rtg$rtg;,
        Lyou/zta/sis/zta/rtg$you;,
        Lyou/zta/sis/zta/rtg$sis;
    }
.end annotation


# static fields
.field public static final sGa:I = 0x0

.field public static final tGa:I = 0x1

.field public static final uGa:I = 0x2

.field public static final vGa:I = 0x3

.field public static final wGa:I = 0x4

.field public static final xGa:I = 0x5

.field public static final yGa:I = 0x6

.field public static final zGa:I = 0x7


# instance fields
.field protected WCa:Lyou/zta/sis/zta/bio;

.field protected a:Lyou/zta/sis/zta/cno;

.field protected b:Lyou/zta/sis/zta/cno;

.field protected mGa:I

.field protected nGa:Lyou/zta/sis/zta/you/zta;

.field protected order:Ljava/math/BigInteger;

.field protected qGa:Lyou/zta/sis/you/you;

.field protected rGa:Ljava/math/BigInteger;


# direct methods
.method protected constructor <init>(Lyou/zta/sis/you/you;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lyou/zta/sis/zta/rtg;->mGa:I

    const/4 v0, 0x0

    iput-object v0, p0, Lyou/zta/sis/zta/rtg;->nGa:Lyou/zta/sis/zta/you/zta;

    iput-object v0, p0, Lyou/zta/sis/zta/rtg;->WCa:Lyou/zta/sis/zta/bio;

    iput-object p1, p0, Lyou/zta/sis/zta/rtg;->qGa:Lyou/zta/sis/you/you;

    return-void
.end method

.method public static Xj()[I
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method


# virtual methods
.method protected abstract Uj()Lyou/zta/sis/zta/rtg;
.end method

.method public declared-synchronized Vj()Lyou/zta/sis/zta/rtg$sis;
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Lyou/zta/sis/zta/rtg$sis;

    iget v1, p0, Lyou/zta/sis/zta/rtg;->mGa:I

    iget-object v2, p0, Lyou/zta/sis/zta/rtg;->nGa:Lyou/zta/sis/zta/you/zta;

    iget-object v3, p0, Lyou/zta/sis/zta/rtg;->WCa:Lyou/zta/sis/zta/bio;

    invoke-direct {v0, p0, v1, v2, v3}, Lyou/zta/sis/zta/rtg$sis;-><init>(Lyou/zta/sis/zta/rtg;ILyou/zta/sis/zta/you/zta;Lyou/zta/sis/zta/bio;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected Wj()Lyou/zta/sis/zta/bio;
    .locals 2

    iget-object v0, p0, Lyou/zta/sis/zta/rtg;->nGa:Lyou/zta/sis/zta/you/zta;

    instance-of v1, v0, Lyou/zta/sis/zta/you/you;

    if-eqz v1, :cond_0

    new-instance v1, Lyou/zta/sis/zta/bvj;

    check-cast v0, Lyou/zta/sis/zta/you/you;

    invoke-direct {v1, p0, v0}, Lyou/zta/sis/zta/bvj;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/you/you;)V

    return-object v1

    :cond_0
    new-instance p0, Lyou/zta/sis/zta/cjf;

    invoke-direct {p0}, Lyou/zta/sis/zta/cjf;-><init>()V

    return-object p0
.end method

.method public Yj()I
    .locals 0

    iget p0, p0, Lyou/zta/sis/zta/rtg;->mGa:I

    return p0
.end method

.method public Zj()Lyou/zta/sis/zta/you/zta;
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/rtg;->nGa:Lyou/zta/sis/zta/you/zta;

    return-object p0
.end method

.method public cno(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lyou/zta/sis/zta/wtn;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lyou/zta/sis/zta/rtg;->ssp(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid point coordinates"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public cno(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;
    .locals 2

    invoke-virtual {p1}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v0

    if-ne p0, v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lyou/zta/sis/zta/wtn;->Ak()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg;->getInfinity()Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lyou/zta/sis/zta/wtn;->normalize()Lyou/zta/sis/zta/wtn;

    move-result-object p1

    invoke-virtual {p1}, Lyou/zta/sis/zta/wtn;->wk()Lyou/zta/sis/zta/cno;

    move-result-object v0

    invoke-virtual {v0}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lyou/zta/sis/zta/wtn;->xk()Lyou/zta/sis/zta/cno;

    move-result-object v1

    invoke-virtual {v1}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    iget-boolean p1, p1, Lyou/zta/sis/zta/wtn;->withCompression:Z

    invoke-virtual {p0, v0, v1, p1}, Lyou/zta/sis/zta/rtg;->zta(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0
.end method

.method public abstract dma(Ljava/math/BigInteger;)Lyou/zta/sis/zta/cno;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lyou/zta/sis/zta/rtg;

    if-eqz v0, :cond_0

    check-cast p1, Lyou/zta/sis/zta/rtg;

    invoke-virtual {p0, p1}, Lyou/zta/sis/zta/rtg;->rtg(Lyou/zta/sis/zta/rtg;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public getA()Lyou/zta/sis/zta/cno;
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/rtg;->a:Lyou/zta/sis/zta/cno;

    return-object p0
.end method

.method public getB()Lyou/zta/sis/zta/cno;
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/rtg;->b:Lyou/zta/sis/zta/cno;

    return-object p0
.end method

.method public getCofactor()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/rtg;->rGa:Ljava/math/BigInteger;

    return-object p0
.end method

.method public getField()Lyou/zta/sis/you/you;
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/rtg;->qGa:Lyou/zta/sis/you/you;

    return-object p0
.end method

.method public abstract getFieldSize()I
.end method

.method public abstract getInfinity()Lyou/zta/sis/zta/wtn;
.end method

.method public declared-synchronized getMultiplier()Lyou/zta/sis/zta/bio;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lyou/zta/sis/zta/rtg;->WCa:Lyou/zta/sis/zta/bio;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg;->Wj()Lyou/zta/sis/zta/bio;

    move-result-object v0

    iput-object v0, p0, Lyou/zta/sis/zta/rtg;->WCa:Lyou/zta/sis/zta/bio;

    :cond_0
    iget-object v0, p0, Lyou/zta/sis/zta/rtg;->WCa:Lyou/zta/sis/zta/bio;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getOrder()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/rtg;->order:Ljava/math/BigInteger;

    return-object p0
.end method

.method public gwm([B)Lyou/zta/sis/zta/wtn;
    .locals 7

    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg;->getFieldSize()I

    move-result v0

    const/4 v1, 0x7

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    const/4 v2, 0x0

    aget-byte v3, p1, v2

    const/4 v4, 0x1

    if-eqz v3, :cond_a

    const/4 v5, 0x2

    if-eq v3, v5, :cond_7

    const/4 v5, 0x3

    if-eq v3, v5, :cond_7

    const/4 v5, 0x4

    if-eq v3, v5, :cond_5

    const/4 v5, 0x6

    if-eq v3, v5, :cond_1

    if-ne v3, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid point encoding 0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x10

    invoke-static {v3, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    array-length v5, p1

    mul-int/lit8 v6, v0, 0x2

    add-int/2addr v6, v4

    if-ne v5, v6, :cond_4

    invoke-static {p1, v4, v0}, Lorg/bouncycastle/util/you;->wtn([BII)Ljava/math/BigInteger;

    move-result-object v5

    add-int/lit8 v6, v0, 0x1

    invoke-static {p1, v6, v0}, Lorg/bouncycastle/util/you;->wtn([BII)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-ne v3, v1, :cond_2

    move v2, v4

    :cond_2
    if-ne v0, v2, :cond_3

    invoke-virtual {p0, v5, p1}, Lyou/zta/sis/zta/rtg;->cno(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Inconsistent Y coordinate in hybrid encoding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Incorrect length for hybrid encoding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    array-length v1, p1

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v2, v4

    if-ne v1, v2, :cond_6

    invoke-static {p1, v4, v0}, Lorg/bouncycastle/util/you;->wtn([BII)Ljava/math/BigInteger;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-static {p1, v2, v0}, Lorg/bouncycastle/util/you;->wtn([BII)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lyou/zta/sis/zta/rtg;->cno(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    goto :goto_1

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Incorrect length for uncompressed encoding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    array-length v1, p1

    add-int/lit8 v2, v0, 0x1

    if-ne v1, v2, :cond_9

    and-int/lit8 v1, v3, 0x1

    invoke-static {p1, v4, v0}, Lorg/bouncycastle/util/you;->wtn([BII)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lyou/zta/sis/zta/rtg;->zta(ILjava/math/BigInteger;)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    invoke-virtual {p0, v4, v4}, Lyou/zta/sis/zta/wtn;->you(ZZ)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_1

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid point"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Incorrect length for compressed encoding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    array-length p1, p1

    if-ne p1, v4, :cond_d

    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg;->getInfinity()Lyou/zta/sis/zta/wtn;

    move-result-object p0

    :goto_1
    if-eqz v3, :cond_c

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->Ak()Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_2

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid infinity encoding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    :goto_2
    return-object p0

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Incorrect length for infinity encoding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg;->getField()Lyou/zta/sis/you/you;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg;->getA()Lyou/zta/sis/zta/cno;

    move-result-object v1

    invoke-virtual {v1}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lorg/bouncycastle/util/cno;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg;->getB()Lyou/zta/sis/zta/cno;

    move-result-object p0

    invoke-virtual {p0}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->hashCode()I

    move-result p0

    const/16 v1, 0x10

    invoke-static {p0, v1}, Lorg/bouncycastle/util/cno;->rotateLeft(II)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public qa(I)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public rtg(Lyou/zta/sis/zta/rtg;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg;->getField()Lyou/zta/sis/you/you;

    move-result-object v0

    invoke-virtual {p1}, Lyou/zta/sis/zta/rtg;->getField()Lyou/zta/sis/you/you;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg;->getA()Lyou/zta/sis/zta/cno;

    move-result-object v0

    invoke-virtual {v0}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lyou/zta/sis/zta/rtg;->getA()Lyou/zta/sis/zta/cno;

    move-result-object v1

    invoke-virtual {v1}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg;->getB()Lyou/zta/sis/zta/cno;

    move-result-object p0

    invoke-virtual {p0}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1}, Lyou/zta/sis/zta/rtg;->getB()Lyou/zta/sis/zta/cno;

    move-result-object p1

    invoke-virtual {p1}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public ssp(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lyou/zta/sis/zta/wtn;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lyou/zta/sis/zta/rtg;->zta(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0
.end method

.method protected ssp(Lyou/zta/sis/zta/wtn;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'point\' must be non-null and on this curve"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public you([Lyou/zta/sis/zta/wtn;II)Lyou/zta/sis/zta/kth;
    .locals 12

    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg;->getFieldSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    ushr-int/lit8 v0, v0, 0x3

    mul-int v1, p3, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, p3, :cond_2

    add-int v5, p2, v3

    aget-object v5, p1, v5

    invoke-virtual {v5}, Lyou/zta/sis/zta/wtn;->tk()Lyou/zta/sis/zta/cno;

    move-result-object v6

    invoke-virtual {v6}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v5}, Lyou/zta/sis/zta/wtn;->uk()Lyou/zta/sis/zta/cno;

    move-result-object v5

    invoke-virtual {v5}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    array-length v7, v6

    const/4 v8, 0x1

    if-le v7, v0, :cond_0

    move v7, v8

    goto :goto_1

    :cond_0
    move v7, v2

    :goto_1
    array-length v9, v6

    sub-int/2addr v9, v7

    array-length v10, v5

    if-le v10, v0, :cond_1

    goto :goto_2

    :cond_1
    move v8, v2

    :goto_2
    array-length v10, v5

    sub-int/2addr v10, v8

    add-int/2addr v4, v0

    sub-int v11, v4, v9

    invoke-static {v6, v7, v1, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v0

    sub-int v6, v4, v10

    invoke-static {v5, v8, v1, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Lyou/zta/sis/zta/tsu;

    invoke-direct {p1, p0, p3, v0, v1}, Lyou/zta/sis/zta/tsu;-><init>(Lyou/zta/sis/zta/rtg;II[B)V

    return-object p1
.end method

.method public you(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lyou/zta/sis/zta/wtn;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lyou/zta/sis/zta/rtg;->zta(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid point coordinates"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public you([Lyou/zta/sis/zta/wtn;)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v0, v2}, Lyou/zta/sis/zta/rtg;->zta([Lyou/zta/sis/zta/wtn;IILyou/zta/sis/zta/cno;)V

    return-void
.end method

.method public abstract ywr(Ljava/math/BigInteger;)Z
.end method

.method public zta(Lyou/zta/sis/zta/wtn;Ljava/lang/String;)Lyou/zta/sis/zta/ugm;
    .locals 0

    invoke-virtual {p0, p1}, Lyou/zta/sis/zta/rtg;->ssp(Lyou/zta/sis/zta/wtn;)V

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Lyou/zta/sis/zta/wtn;->XGa:Ljava/util/Hashtable;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyou/zta/sis/zta/ugm;

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public zta(Lyou/zta/sis/zta/wtn;Ljava/lang/String;Lyou/zta/sis/zta/gwm;)Lyou/zta/sis/zta/ugm;
    .locals 1

    invoke-virtual {p0, p1}, Lyou/zta/sis/zta/rtg;->ssp(Lyou/zta/sis/zta/wtn;)V

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Lyou/zta/sis/zta/wtn;->XGa:Ljava/util/Hashtable;

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/Hashtable;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Ljava/util/Hashtable;-><init>(I)V

    iput-object p0, p1, Lyou/zta/sis/zta/wtn;->XGa:Ljava/util/Hashtable;

    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyou/zta/sis/zta/ugm;

    invoke-interface {p3, p1}, Lyou/zta/sis/zta/gwm;->zta(Lyou/zta/sis/zta/ugm;)Lyou/zta/sis/zta/ugm;

    move-result-object p3

    if-eq p3, p1, :cond_1

    invoke-virtual {p0, p2, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit p0

    return-object p3

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method protected abstract zta(ILjava/math/BigInteger;)Lyou/zta/sis/zta/wtn;
.end method

.method public zta(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lyou/zta/sis/zta/wtn;
    .locals 0

    invoke-virtual {p0, p1}, Lyou/zta/sis/zta/rtg;->dma(Ljava/math/BigInteger;)Lyou/zta/sis/zta/cno;

    move-result-object p1

    invoke-virtual {p0, p2}, Lyou/zta/sis/zta/rtg;->dma(Ljava/math/BigInteger;)Lyou/zta/sis/zta/cno;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lyou/zta/sis/zta/rtg;->zta(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Z)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0
.end method

.method protected abstract zta(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Z)Lyou/zta/sis/zta/wtn;
.end method

.method protected abstract zta(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;[Lyou/zta/sis/zta/cno;Z)Lyou/zta/sis/zta/wtn;
.end method

.method protected zta([Lyou/zta/sis/zta/wtn;)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lyou/zta/sis/zta/rtg;->zta([Lyou/zta/sis/zta/wtn;II)V

    return-void
.end method

.method protected zta([Lyou/zta/sis/zta/wtn;II)V
    .locals 2

    if-eqz p1, :cond_4

    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    add-int v1, p2, v0

    aget-object v1, p1, v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v1

    if-ne p0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'points\' entries must be null or on this curve"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid range specified for \'points\'"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'points\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public zta([Lyou/zta/sis/zta/wtn;IILyou/zta/sis/zta/cno;)V
    .locals 7

    invoke-virtual {p0, p1, p2, p3}, Lyou/zta/sis/zta/rtg;->zta([Lyou/zta/sis/zta/wtn;II)V

    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg;->Yj()I

    move-result p0

    if-eqz p0, :cond_5

    const/4 v0, 0x5

    if-eq p0, v0, :cond_5

    new-array p0, p3, [Lyou/zta/sis/zta/cno;

    new-array v0, p3, [I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, p3, :cond_2

    add-int v4, p2, v2

    aget-object v5, p1, v4

    if-eqz v5, :cond_1

    if-nez p4, :cond_0

    invoke-virtual {v5}, Lyou/zta/sis/zta/wtn;->Bk()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    invoke-virtual {v5, v1}, Lyou/zta/sis/zta/wtn;->sa(I)Lyou/zta/sis/zta/cno;

    move-result-object v5

    aput-object v5, p0, v3

    add-int/lit8 v5, v3, 0x1

    aput v4, v0, v3

    move v3, v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    return-void

    :cond_3
    invoke-static {p0, v1, v3, p4}, Lyou/zta/sis/zta/you;->zta([Lyou/zta/sis/zta/cno;IILyou/zta/sis/zta/cno;)V

    :goto_1
    if-ge v1, v3, :cond_4

    aget p2, v0, v1

    aget-object p3, p1, p2

    aget-object p4, p0, v1

    invoke-virtual {p3, p4}, Lyou/zta/sis/zta/wtn;->cno(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/wtn;

    move-result-object p3

    aput-object p3, p1, p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    if-nez p4, :cond_6

    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'iso\' not valid for affine coordinates"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
