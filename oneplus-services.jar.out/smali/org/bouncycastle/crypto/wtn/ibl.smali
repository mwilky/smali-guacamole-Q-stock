.class public Lorg/bouncycastle/crypto/wtn/ibl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lyou/zta/sis/zta/sis;


# instance fields
.field private curve:Lyou/zta/sis/zta/rtg;

.field private h:Ljava/math/BigInteger;

.field private jxa:[B

.field private n:Ljava/math/BigInteger;

.field private vDa:Lyou/zta/sis/zta/wtn;

.field private wDa:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;)V
    .locals 6

    sget-object v4, Lyou/zta/sis/zta/sis;->ONE:Ljava/math/BigInteger;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/wtn/ibl;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor <init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/wtn/ibl;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor <init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/wtn/ibl;->wDa:Ljava/math/BigInteger;

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/crypto/wtn/ibl;->curve:Lyou/zta/sis/zta/rtg;

    invoke-static {p1, p2}, Lorg/bouncycastle/crypto/wtn/ibl;->zta(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/wtn/ibl;->vDa:Lyou/zta/sis/zta/wtn;

    iput-object p3, p0, Lorg/bouncycastle/crypto/wtn/ibl;->n:Ljava/math/BigInteger;

    iput-object p4, p0, Lorg/bouncycastle/crypto/wtn/ibl;->h:Ljava/math/BigInteger;

    invoke-static {p5}, Lorg/bouncycastle/util/zta;->vdb([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/wtn/ibl;->jxa:[B

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "n"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "curve"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static zta(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;
    .locals 0

    if-eqz p1, :cond_2

    invoke-static {p0, p1}, Lyou/zta/sis/zta/you;->sis(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->normalize()Lyou/zta/sis/zta/wtn;

    move-result-object p0

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->Bk()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Point not on curve"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Point at infinity"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Point has null value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public Qi()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/wtn/ibl;->h:Ljava/math/BigInteger;

    return-object p0
.end method

.method public Ri()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/wtn/ibl;->n:Ljava/math/BigInteger;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/bouncycastle/crypto/wtn/ibl;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lorg/bouncycastle/crypto/wtn/ibl;

    iget-object v1, p0, Lorg/bouncycastle/crypto/wtn/ibl;->curve:Lyou/zta/sis/zta/rtg;

    iget-object v3, p1, Lorg/bouncycastle/crypto/wtn/ibl;->curve:Lyou/zta/sis/zta/rtg;

    invoke-virtual {v1, v3}, Lyou/zta/sis/zta/rtg;->rtg(Lyou/zta/sis/zta/rtg;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/crypto/wtn/ibl;->vDa:Lyou/zta/sis/zta/wtn;

    iget-object v3, p1, Lorg/bouncycastle/crypto/wtn/ibl;->vDa:Lyou/zta/sis/zta/wtn;

    invoke-virtual {v1, v3}, Lyou/zta/sis/zta/wtn;->bio(Lyou/zta/sis/zta/wtn;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/crypto/wtn/ibl;->n:Ljava/math/BigInteger;

    iget-object v3, p1, Lorg/bouncycastle/crypto/wtn/ibl;->n:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lorg/bouncycastle/crypto/wtn/ibl;->h:Ljava/math/BigInteger;

    iget-object p1, p1, Lorg/bouncycastle/crypto/wtn/ibl;->h:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getCurve()Lyou/zta/sis/zta/rtg;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/wtn/ibl;->curve:Lyou/zta/sis/zta/rtg;

    return-object p0
.end method

.method public getG()Lyou/zta/sis/zta/wtn;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/wtn/ibl;->vDa:Lyou/zta/sis/zta/wtn;

    return-object p0
.end method

.method public getSeed()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/wtn/ibl;->jxa:[B

    invoke-static {p0}, Lorg/bouncycastle/util/zta;->vdb([B)[B

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/wtn/ibl;->curve:Lyou/zta/sis/zta/rtg;

    invoke-virtual {v0}, Lyou/zta/sis/zta/rtg;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/bouncycastle/crypto/wtn/ibl;->vDa:Lyou/zta/sis/zta/wtn;

    invoke-virtual {v1}, Lyou/zta/sis/zta/wtn;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/bouncycastle/crypto/wtn/ibl;->n:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object p0, p0, Lorg/bouncycastle/crypto/wtn/ibl;->h:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public declared-synchronized yj()Ljava/math/BigInteger;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/wtn/ibl;->wDa:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/wtn/ibl;->h:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/bouncycastle/crypto/wtn/ibl;->n:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/wtn/ibl;->wDa:Ljava/math/BigInteger;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/wtn/ibl;->wDa:Ljava/math/BigInteger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
