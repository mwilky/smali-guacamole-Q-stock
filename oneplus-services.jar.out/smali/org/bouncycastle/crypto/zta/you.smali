.class public Lorg/bouncycastle/crypto/zta/you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/tsu;


# instance fields
.field private key:Lorg/bouncycastle/crypto/wtn/zgw;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFieldSize()I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/zta/you;->key:Lorg/bouncycastle/crypto/wtn/zgw;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/wtn/ugm;->getParameters()Lorg/bouncycastle/crypto/wtn/ibl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/wtn/ibl;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object p0

    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg;->getFieldSize()I

    move-result p0

    add-int/lit8 p0, p0, 0x7

    div-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public you(Lorg/bouncycastle/crypto/kth;)V
    .locals 0

    check-cast p1, Lorg/bouncycastle/crypto/wtn/zgw;

    iput-object p1, p0, Lorg/bouncycastle/crypto/zta/you;->key:Lorg/bouncycastle/crypto/wtn/zgw;

    return-void
.end method

.method public zta(Lorg/bouncycastle/crypto/kth;)Ljava/math/BigInteger;
    .locals 3

    check-cast p1, Lorg/bouncycastle/crypto/wtn/obl;

    iget-object v0, p0, Lorg/bouncycastle/crypto/zta/you;->key:Lorg/bouncycastle/crypto/wtn/zgw;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/ugm;->getParameters()Lorg/bouncycastle/crypto/wtn/ibl;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/ugm;->getParameters()Lorg/bouncycastle/crypto/wtn/ibl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/wtn/ibl;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Lorg/bouncycastle/crypto/zta/you;->key:Lorg/bouncycastle/crypto/wtn/zgw;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/wtn/zgw;->tsu()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/ibl;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/obl;->getQ()Lyou/zta/sis/zta/wtn;

    move-result-object p1

    invoke-static {v1, p1}, Lyou/zta/sis/zta/you;->you(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;

    move-result-object p1

    invoke-virtual {p1}, Lyou/zta/sis/zta/wtn;->Bk()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/ibl;->Qi()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lyou/zta/sis/zta/sis;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/ibl;->yj()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/ibl;->Ri()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p1, v1}, Lyou/zta/sis/zta/you;->sis(Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;)Lyou/zta/sis/zta/wtn;

    move-result-object p1

    :cond_0
    invoke-virtual {p1, p0}, Lyou/zta/sis/zta/wtn;->multiply(Ljava/math/BigInteger;)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->normalize()Lyou/zta/sis/zta/wtn;

    move-result-object p0

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->Bk()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->pk()Lyou/zta/sis/zta/cno;

    move-result-object p0

    invoke-virtual {p0}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Infinity is not a valid agreement value for ECDH"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Infinity is not a valid public key for ECDH"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ECDH public key has wrong domain parameters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
