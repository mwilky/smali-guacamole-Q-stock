.class Lorg/bouncycastle/crypto/rtg/gck;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private bxa:Z

.field private key:Lorg/bouncycastle/crypto/wtn/veq;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cno([BII)Ljava/math/BigInteger;
    .locals 4

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/rtg/gck;->d()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const-string v2, "input too large for RSA cipher."

    if-gt p3, v0, :cond_5

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/rtg/gck;->d()I

    move-result v0

    add-int/2addr v0, v1

    if-ne p3, v0, :cond_1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/rtg/gck;->bxa:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/bouncycastle/crypto/DataLengthException;

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    array-length v0, p1

    if-eq p3, v0, :cond_3

    :cond_2
    new-array v0, p3, [B

    const/4 v3, 0x0

    invoke-static {p1, p2, v0, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    :cond_3
    new-instance p2, Ljava/math/BigInteger;

    invoke-direct {p2, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    iget-object p0, p0, Lorg/bouncycastle/crypto/rtg/gck;->key:Lorg/bouncycastle/crypto/wtn/veq;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/wtn/veq;->getModulus()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gez p0, :cond_4

    return-object p2

    :cond_4
    new-instance p0, Lorg/bouncycastle/crypto/DataLengthException;

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Lorg/bouncycastle/crypto/DataLengthException;

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/rtg/gck;->key:Lorg/bouncycastle/crypto/wtn/veq;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/veq;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iget-boolean p0, p0, Lorg/bouncycastle/crypto/rtg/gck;->bxa:Z

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method public ivd()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/rtg/gck;->key:Lorg/bouncycastle/crypto/wtn/veq;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/veq;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iget-boolean p0, p0, Lorg/bouncycastle/crypto/rtg/gck;->bxa:Z

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    if-eqz p0, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public rtg(Ljava/math/BigInteger;)[B
    .locals 4

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/rtg/gck;->bxa:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    aget-byte v0, p1, v2

    if-nez v0, :cond_0

    array-length v0, p1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/rtg/gck;->ivd()I

    move-result v3

    if-le v0, v3, :cond_0

    array-length p0, p1

    sub-int/2addr p0, v1

    new-array p0, p0, [B

    array-length v0, p0

    invoke-static {p1, v1, p0, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :cond_0
    array-length v0, p1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/rtg/gck;->ivd()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/rtg/gck;->ivd()I

    move-result p0

    new-array p0, p0, [B

    array-length v0, p0

    array-length v1, p1

    sub-int/2addr v0, v1

    array-length v1, p1

    invoke-static {p1, v2, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :cond_1
    return-object p1

    :cond_2
    aget-byte p0, p1, v2

    if-nez p0, :cond_3

    array-length p0, p1

    sub-int/2addr p0, v1

    new-array p0, p0, [B

    array-length v0, p0

    invoke-static {p1, v1, p0, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_3
    array-length p0, p1

    new-array p0, p0, [B

    array-length v0, p0

    invoke-static {p1, v2, p0, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    invoke-static {p1, v2}, Lorg/bouncycastle/util/zta;->fill([BB)V

    return-object p0
.end method

.method public ssp(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/rtg/gck;->key:Lorg/bouncycastle/crypto/wtn/veq;

    instance-of v1, v0, Lorg/bouncycastle/crypto/wtn/cgv;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/bouncycastle/crypto/wtn/cgv;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/cgv;->getP()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/cgv;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/cgv;->jj()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/cgv;->kj()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/cgv;->lj()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v2, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v3, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/veq;->getExponent()Ljava/math/BigInteger;

    move-result-object v0

    iget-object p0, p0, Lorg/bouncycastle/crypto/rtg/gck;->key:Lorg/bouncycastle/crypto/wtn/veq;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/wtn/veq;->getModulus()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public zta(ZLorg/bouncycastle/crypto/kth;)V
    .locals 1

    instance-of v0, p2, Lorg/bouncycastle/crypto/wtn/hmo;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/bouncycastle/crypto/wtn/hmo;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/hmo;->getParameters()Lorg/bouncycastle/crypto/kth;

    move-result-object p2

    :cond_0
    check-cast p2, Lorg/bouncycastle/crypto/wtn/veq;

    iput-object p2, p0, Lorg/bouncycastle/crypto/rtg/gck;->key:Lorg/bouncycastle/crypto/wtn/veq;

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/rtg/gck;->bxa:Z

    return-void
.end method
