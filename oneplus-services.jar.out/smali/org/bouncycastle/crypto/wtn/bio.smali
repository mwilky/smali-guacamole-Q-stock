.class public Lorg/bouncycastle/crypto/wtn/bio;
.super Lorg/bouncycastle/crypto/wtn/ssp;
.source ""


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static final lra:Ljava/math/BigInteger;


# instance fields
.field private y:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/wtn/bio;->ONE:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/wtn/bio;->lra:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/wtn/cno;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/crypto/wtn/ssp;-><init>(ZLorg/bouncycastle/crypto/wtn/cno;)V

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/wtn/bio;->zta(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/wtn/cno;)Ljava/math/BigInteger;

    iput-object p1, p0, Lorg/bouncycastle/crypto/wtn/bio;->y:Ljava/math/BigInteger;

    return-void
.end method

.method private zta(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/wtn/cno;)Ljava/math/BigInteger;
    .locals 1

    if-eqz p1, :cond_3

    sget-object p0, Lorg/bouncycastle/crypto/wtn/bio;->lra:Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-ltz p0, :cond_2

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/cno;->getP()Ljava/math/BigInteger;

    move-result-object p0

    sget-object v0, Lorg/bouncycastle/crypto/wtn/bio;->lra:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gtz p0, :cond_2

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/cno;->getQ()Ljava/math/BigInteger;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p0, Lorg/bouncycastle/crypto/wtn/bio;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/cno;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/cno;->getP()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Y value does not appear to be in correct group"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid DH public key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "y value cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/bouncycastle/crypto/wtn/bio;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/wtn/bio;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/bio;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/wtn/bio;->y:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/wtn/ssp;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getY()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/wtn/bio;->y:Ljava/math/BigInteger;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/wtn/bio;->y:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-super {p0}, Lorg/bouncycastle/crypto/wtn/ssp;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method
