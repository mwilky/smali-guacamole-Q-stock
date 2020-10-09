.class public Lorg/bouncycastle/crypto/zta/zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/tsu;


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field private dAa:Lorg/bouncycastle/crypto/wtn/cno;

.field private key:Lorg/bouncycastle/crypto/wtn/kth;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/zta/zta;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFieldSize()I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/zta/zta;->key:Lorg/bouncycastle/crypto/wtn/kth;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/wtn/ssp;->getParameters()Lorg/bouncycastle/crypto/wtn/cno;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/wtn/cno;->getP()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    add-int/lit8 p0, p0, 0x7

    div-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public you(Lorg/bouncycastle/crypto/kth;)V
    .locals 1

    instance-of v0, p1, Lorg/bouncycastle/crypto/wtn/hmo;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/crypto/wtn/hmo;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/hmo;->getParameters()Lorg/bouncycastle/crypto/kth;

    move-result-object p1

    :cond_0
    check-cast p1, Lorg/bouncycastle/crypto/wtn/you;

    instance-of v0, p1, Lorg/bouncycastle/crypto/wtn/kth;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/bouncycastle/crypto/wtn/kth;

    iput-object p1, p0, Lorg/bouncycastle/crypto/zta/zta;->key:Lorg/bouncycastle/crypto/wtn/kth;

    iget-object p1, p0, Lorg/bouncycastle/crypto/zta/zta;->key:Lorg/bouncycastle/crypto/wtn/kth;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/ssp;->getParameters()Lorg/bouncycastle/crypto/wtn/cno;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/zta/zta;->dAa:Lorg/bouncycastle/crypto/wtn/cno;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DHEngine expects DHPrivateKeyParameters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public zta(Lorg/bouncycastle/crypto/kth;)Ljava/math/BigInteger;
    .locals 2

    check-cast p1, Lorg/bouncycastle/crypto/wtn/bio;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/ssp;->getParameters()Lorg/bouncycastle/crypto/wtn/cno;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/zta/zta;->dAa:Lorg/bouncycastle/crypto/wtn/cno;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/wtn/cno;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/zta/zta;->dAa:Lorg/bouncycastle/crypto/wtn/cno;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/cno;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/bio;->getY()Ljava/math/BigInteger;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v1, Lorg/bouncycastle/crypto/zta/zta;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-lez v1, :cond_1

    sget-object v1, Lorg/bouncycastle/crypto/zta/zta;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_1

    iget-object p0, p0, Lorg/bouncycastle/crypto/zta/zta;->key:Lorg/bouncycastle/crypto/wtn/kth;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/wtn/kth;->getX()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    sget-object p1, Lorg/bouncycastle/crypto/zta/zta;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Shared key can\'t be 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Diffie-Hellman public key is weak"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Diffie-Hellman public key has wrong parameters."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
