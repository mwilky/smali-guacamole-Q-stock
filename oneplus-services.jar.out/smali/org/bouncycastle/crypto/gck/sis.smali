.class public Lorg/bouncycastle/crypto/gck/sis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/gck;


# instance fields
.field private final CDa:Lorg/bouncycastle/crypto/gck/you;

.field private Moa:Ljava/security/SecureRandom;

.field private key:Lorg/bouncycastle/crypto/wtn/gck;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/gck/cno;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/gck/cno;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/gck/sis;->CDa:Lorg/bouncycastle/crypto/gck/you;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/gck/you;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/gck/sis;->CDa:Lorg/bouncycastle/crypto/gck/you;

    return-void
.end method

.method private sis(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/bouncycastle/crypto/igw;->fj()Ljava/security/SecureRandom;

    move-result-object p2

    :goto_0
    const/4 p0, 0x7

    invoke-static {p0, p2}, Lorg/bouncycastle/util/you;->zta(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object p0

    const-wide/16 v0, 0x80

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method private you(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;
    .locals 2

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    array-length v0, p2

    mul-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    if-lt p0, v0, :cond_0

    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v1, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    div-int/lit8 p0, p0, 0x8

    new-array p0, p0, [B

    array-length p1, p0

    const/4 v0, 0x0

    invoke-static {p2, v0, p0, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p1
.end method


# virtual methods
.method public getOrder()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/gck/sis;->key:Lorg/bouncycastle/crypto/wtn/gck;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/wtn/gck;->getParameters()Lorg/bouncycastle/crypto/wtn/ywr;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/wtn/ywr;->getQ()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public you([B)[Ljava/math/BigInteger;
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/crypto/gck/sis;->key:Lorg/bouncycastle/crypto/wtn/gck;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/gck;->getParameters()Lorg/bouncycastle/crypto/wtn/ywr;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/ywr;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lorg/bouncycastle/crypto/gck/sis;->you(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/gck/sis;->key:Lorg/bouncycastle/crypto/wtn/gck;

    check-cast v3, Lorg/bouncycastle/crypto/wtn/qbh;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/wtn/qbh;->getX()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/gck/sis;->CDa:Lorg/bouncycastle/crypto/gck/you;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/gck/you;->oif()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/bouncycastle/crypto/gck/sis;->CDa:Lorg/bouncycastle/crypto/gck/you;

    invoke-interface {v4, v1, v3, p1}, Lorg/bouncycastle/crypto/gck/you;->zta(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/gck/sis;->CDa:Lorg/bouncycastle/crypto/gck/you;

    iget-object v4, p0, Lorg/bouncycastle/crypto/gck/sis;->Moa:Ljava/security/SecureRandom;

    invoke-interface {p1, v1, v4}, Lorg/bouncycastle/crypto/gck/you;->zta(Ljava/math/BigInteger;Ljava/security/SecureRandom;)V

    :goto_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/gck/sis;->CDa:Lorg/bouncycastle/crypto/gck/you;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/gck/you;->dma()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/ywr;->getG()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/crypto/gck/sis;->Moa:Ljava/security/SecureRandom;

    invoke-direct {p0, v1, v5}, Lorg/bouncycastle/crypto/gck/sis;->sis(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/ywr;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v4, p0, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v3, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/math/BigInteger;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    return-object v0
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

.method public zta(ZLorg/bouncycastle/crypto/kth;)V
    .locals 1

    if-eqz p1, :cond_1

    instance-of v0, p2, Lorg/bouncycastle/crypto/wtn/hmo;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/bouncycastle/crypto/wtn/hmo;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/hmo;->getParameters()Lorg/bouncycastle/crypto/kth;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/wtn/qbh;

    iput-object v0, p0, Lorg/bouncycastle/crypto/gck/sis;->key:Lorg/bouncycastle/crypto/wtn/gck;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/hmo;->gj()Ljava/security/SecureRandom;

    move-result-object p2

    goto :goto_1

    :cond_0
    check-cast p2, Lorg/bouncycastle/crypto/wtn/qbh;

    goto :goto_0

    :cond_1
    check-cast p2, Lorg/bouncycastle/crypto/wtn/oif;

    :goto_0
    iput-object p2, p0, Lorg/bouncycastle/crypto/gck/sis;->key:Lorg/bouncycastle/crypto/wtn/gck;

    const/4 p2, 0x0

    :goto_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/bouncycastle/crypto/gck/sis;->CDa:Lorg/bouncycastle/crypto/gck/you;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/gck/you;->oif()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/gck/sis;->zta(ZLjava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/gck/sis;->Moa:Ljava/security/SecureRandom;

    return-void
.end method

.method public zta([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/gck/sis;->key:Lorg/bouncycastle/crypto/wtn/gck;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/gck;->getParameters()Lorg/bouncycastle/crypto/wtn/ywr;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/ywr;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lorg/bouncycastle/crypto/gck/sis;->you(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    move-result-object p1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    const/4 v4, 0x0

    if-gez v3, :cond_2

    invoke-virtual {v1, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_2

    invoke-virtual {v1, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gtz v2, :cond_1

    goto :goto_0

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

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/ywr;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/ywr;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object p0, p0, Lorg/bouncycastle/crypto/gck/sis;->key:Lorg/bouncycastle/crypto/wtn/gck;

    check-cast p0, Lorg/bouncycastle/crypto/wtn/oif;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/wtn/oif;->getY()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p3, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v4
.end method
