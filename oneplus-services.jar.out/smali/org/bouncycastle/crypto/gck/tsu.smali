.class public Lorg/bouncycastle/crypto/gck/tsu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lyou/zta/sis/zta/sis;
.implements Lorg/bouncycastle/crypto/gck;


# instance fields
.field private final CDa:Lorg/bouncycastle/crypto/gck/you;

.field private Moa:Ljava/security/SecureRandom;

.field private key:Lorg/bouncycastle/crypto/wtn/ugm;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/gck/cno;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/gck/cno;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/gck/tsu;->CDa:Lorg/bouncycastle/crypto/gck/you;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/gck/you;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/gck/tsu;->CDa:Lorg/bouncycastle/crypto/gck/you;

    return-void
.end method


# virtual methods
.method public getOrder()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/gck/tsu;->key:Lorg/bouncycastle/crypto/wtn/ugm;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/wtn/ugm;->getParameters()Lorg/bouncycastle/crypto/wtn/ibl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/wtn/ibl;->Qi()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method protected kj()Lyou/zta/sis/zta/bio;
    .locals 0

    new-instance p0, Lyou/zta/sis/zta/dma;

    invoke-direct {p0}, Lyou/zta/sis/zta/dma;-><init>()V

    return-object p0
.end method

.method protected you(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;
    .locals 2

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    array-length p1, p2

    mul-int/lit8 p1, p1, 0x8

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    if-ge p0, p1, :cond_0

    sub-int/2addr p1, p0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public you([B)[Ljava/math/BigInteger;
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/crypto/gck/tsu;->key:Lorg/bouncycastle/crypto/wtn/ugm;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/ugm;->getParameters()Lorg/bouncycastle/crypto/wtn/ibl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/ibl;->Qi()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/bouncycastle/crypto/gck/tsu;->you(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/gck/tsu;->key:Lorg/bouncycastle/crypto/wtn/ugm;

    check-cast v3, Lorg/bouncycastle/crypto/wtn/zgw;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/wtn/zgw;->tsu()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/gck/tsu;->CDa:Lorg/bouncycastle/crypto/gck/you;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/gck/you;->oif()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/bouncycastle/crypto/gck/tsu;->CDa:Lorg/bouncycastle/crypto/gck/you;

    invoke-interface {v4, v1, v3, p1}, Lorg/bouncycastle/crypto/gck/you;->zta(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/gck/tsu;->CDa:Lorg/bouncycastle/crypto/gck/you;

    iget-object v4, p0, Lorg/bouncycastle/crypto/gck/tsu;->Moa:Ljava/security/SecureRandom;

    invoke-interface {p1, v1, v4}, Lorg/bouncycastle/crypto/gck/you;->zta(Ljava/math/BigInteger;Ljava/security/SecureRandom;)V

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/gck/tsu;->kj()Lyou/zta/sis/zta/bio;

    move-result-object p1

    :cond_1
    iget-object v4, p0, Lorg/bouncycastle/crypto/gck/tsu;->CDa:Lorg/bouncycastle/crypto/gck/you;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/gck/you;->dma()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/ibl;->getG()Lyou/zta/sis/zta/wtn;

    move-result-object v5

    invoke-interface {p1, v5, v4}, Lyou/zta/sis/zta/bio;->zta(Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;)Lyou/zta/sis/zta/wtn;

    move-result-object v5

    invoke-virtual {v5}, Lyou/zta/sis/zta/wtn;->normalize()Lyou/zta/sis/zta/wtn;

    move-result-object v5

    invoke-virtual {v5}, Lyou/zta/sis/zta/wtn;->ok()Lyou/zta/sis/zta/cno;

    move-result-object v5

    invoke-virtual {v5}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    sget-object v6, Lyou/zta/sis/zta/sis;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    sget-object v6, Lyou/zta/sis/zta/sis;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/math/BigInteger;

    const/4 p1, 0x0

    aput-object v5, p0, p1

    const/4 p1, 0x1

    aput-object v4, p0, p1

    return-object p0
.end method

.method protected zta(ZLjava/security/SecureRandom;)Ljava/security/SecureRandom;
    .locals 0

    if-nez p1, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/bouncycastle/crypto/igw;->fj()Ljava/security/SecureRandom;

    move-result-object p2

    :goto_0
    return-object p2
.end method

.method protected zta(ILyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/cno;
    .locals 1

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const/4 p0, 0x6

    if-eq p1, p0, :cond_1

    const/4 p0, 0x7

    if-eq p1, p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p2, v0}, Lyou/zta/sis/zta/wtn;->sa(I)Lyou/zta/sis/zta/cno;

    move-result-object p0

    invoke-virtual {p0}, Lyou/zta/sis/zta/cno;->square()Lyou/zta/sis/zta/cno;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p2, v0}, Lyou/zta/sis/zta/wtn;->sa(I)Lyou/zta/sis/zta/cno;

    move-result-object p0

    return-object p0
.end method

.method public zta(ZLorg/bouncycastle/crypto/kth;)V
    .locals 1

    if-eqz p1, :cond_1

    instance-of v0, p2, Lorg/bouncycastle/crypto/wtn/hmo;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/bouncycastle/crypto/wtn/hmo;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/hmo;->getParameters()Lorg/bouncycastle/crypto/kth;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/wtn/zgw;

    iput-object v0, p0, Lorg/bouncycastle/crypto/gck/tsu;->key:Lorg/bouncycastle/crypto/wtn/ugm;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/hmo;->gj()Ljava/security/SecureRandom;

    move-result-object p2

    goto :goto_1

    :cond_0
    check-cast p2, Lorg/bouncycastle/crypto/wtn/zgw;

    goto :goto_0

    :cond_1
    check-cast p2, Lorg/bouncycastle/crypto/wtn/obl;

    :goto_0
    iput-object p2, p0, Lorg/bouncycastle/crypto/gck/tsu;->key:Lorg/bouncycastle/crypto/wtn/ugm;

    const/4 p2, 0x0

    :goto_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/bouncycastle/crypto/gck/tsu;->CDa:Lorg/bouncycastle/crypto/gck/you;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/gck/you;->oif()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/gck/tsu;->zta(ZLjava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/gck/tsu;->Moa:Ljava/security/SecureRandom;

    return-void
.end method

.method public zta([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/gck/tsu;->key:Lorg/bouncycastle/crypto/wtn/ugm;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/ugm;->getParameters()Lorg/bouncycastle/crypto/wtn/ibl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/ibl;->Qi()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/bouncycastle/crypto/gck/tsu;->you(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    move-result-object p1

    sget-object v2, Lyou/zta/sis/zta/sis;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p2, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_6

    invoke-virtual {p2, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v2, Lyou/zta/sis/zta/sis;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p3, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_6

    invoke-virtual {p3, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p3, v1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2, p3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/ibl;->getG()Lyou/zta/sis/zta/wtn;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/gck/tsu;->key:Lorg/bouncycastle/crypto/wtn/ugm;

    check-cast v2, Lorg/bouncycastle/crypto/wtn/obl;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/wtn/obl;->getQ()Lyou/zta/sis/zta/wtn;

    move-result-object v2

    invoke-static {v0, p1, v2, p3}, Lyou/zta/sis/zta/you;->tsu(Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;)Lyou/zta/sis/zta/wtn;

    move-result-object p1

    invoke-virtual {p1}, Lyou/zta/sis/zta/wtn;->Ak()Z

    move-result p3

    if-eqz p3, :cond_2

    return v3

    :cond_2
    invoke-virtual {p1}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object p3

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Lyou/zta/sis/zta/rtg;->getCofactor()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object v2, Lyou/zta/sis/zta/sis;->GRa:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_5

    invoke-virtual {p3}, Lyou/zta/sis/zta/rtg;->Yj()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/crypto/gck/tsu;->zta(ILyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/cno;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lyou/zta/sis/zta/cno;->isZero()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lyou/zta/sis/zta/wtn;->wk()Lyou/zta/sis/zta/cno;

    move-result-object p1

    :goto_0
    invoke-virtual {p3, p2}, Lyou/zta/sis/zta/rtg;->ywr(Ljava/math/BigInteger;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p3, p2}, Lyou/zta/sis/zta/rtg;->dma(Ljava/math/BigInteger;)Lyou/zta/sis/zta/cno;

    move-result-object v0

    invoke-virtual {v0, p0}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    invoke-virtual {p2, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    goto :goto_0

    :cond_4
    return v3

    :cond_5
    invoke-virtual {p1}, Lyou/zta/sis/zta/wtn;->normalize()Lyou/zta/sis/zta/wtn;

    move-result-object p0

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->ok()Lyou/zta/sis/zta/cno;

    move-result-object p0

    invoke-virtual {p0}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_6
    :goto_1
    return v3
.end method
