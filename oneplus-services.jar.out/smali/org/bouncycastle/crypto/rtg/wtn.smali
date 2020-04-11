.class public Lorg/bouncycastle/crypto/rtg/wtn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/zta;


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field private Dya:Lorg/bouncycastle/crypto/rtg/gck;

.field private key:Lorg/bouncycastle/crypto/wtn/veq;

.field private yla:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/rtg/wtn;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/rtg/gck;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/rtg/gck;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/rtg/wtn;->Dya:Lorg/bouncycastle/crypto/rtg/gck;

    return-void
.end method


# virtual methods
.method public d()I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/rtg/wtn;->Dya:Lorg/bouncycastle/crypto/rtg/gck;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/rtg/gck;->d()I

    move-result p0

    return p0
.end method

.method public ivd()I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/rtg/wtn;->Dya:Lorg/bouncycastle/crypto/rtg/gck;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/rtg/gck;->ivd()I

    move-result p0

    return p0
.end method

.method public you([BII)[B
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/rtg/wtn;->key:Lorg/bouncycastle/crypto/wtn/veq;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/rtg/wtn;->Dya:Lorg/bouncycastle/crypto/rtg/gck;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/rtg/gck;->cno([BII)Ljava/math/BigInteger;

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/crypto/rtg/wtn;->key:Lorg/bouncycastle/crypto/wtn/veq;

    instance-of p3, p2, Lorg/bouncycastle/crypto/wtn/cgv;

    if-eqz p3, :cond_1

    check-cast p2, Lorg/bouncycastle/crypto/wtn/cgv;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/cgv;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/veq;->getModulus()Ljava/math/BigInteger;

    move-result-object p2

    sget-object v0, Lorg/bouncycastle/crypto/rtg/wtn;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/rtg/wtn;->yla:Ljava/security/SecureRandom;

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/you;->you(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p3, p2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/rtg/wtn;->Dya:Lorg/bouncycastle/crypto/rtg/gck;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/crypto/rtg/gck;->ssp(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p3, p2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "RSA engine faulty decryption/signing detected"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object p2, p0, Lorg/bouncycastle/crypto/rtg/wtn;->Dya:Lorg/bouncycastle/crypto/rtg/gck;

    invoke-virtual {p2, p1}, Lorg/bouncycastle/crypto/rtg/gck;->ssp(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    :goto_0
    iget-object p0, p0, Lorg/bouncycastle/crypto/rtg/wtn;->Dya:Lorg/bouncycastle/crypto/rtg/gck;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/rtg/gck;->rtg(Ljava/math/BigInteger;)[B

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "RSA engine not initialised"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public zta(ZLorg/bouncycastle/crypto/kth;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/rtg/wtn;->Dya:Lorg/bouncycastle/crypto/rtg/gck;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/crypto/rtg/gck;->zta(ZLorg/bouncycastle/crypto/kth;)V

    instance-of p1, p2, Lorg/bouncycastle/crypto/wtn/hmo;

    if-eqz p1, :cond_0

    check-cast p2, Lorg/bouncycastle/crypto/wtn/hmo;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/hmo;->getParameters()Lorg/bouncycastle/crypto/kth;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/crypto/wtn/veq;

    iput-object p1, p0, Lorg/bouncycastle/crypto/rtg/wtn;->key:Lorg/bouncycastle/crypto/wtn/veq;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/hmo;->Vi()Ljava/security/SecureRandom;

    move-result-object p1

    goto :goto_0

    :cond_0
    check-cast p2, Lorg/bouncycastle/crypto/wtn/veq;

    iput-object p2, p0, Lorg/bouncycastle/crypto/rtg/wtn;->key:Lorg/bouncycastle/crypto/wtn/veq;

    invoke-static {}, Lorg/bouncycastle/crypto/igw;->Ui()Ljava/security/SecureRandom;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/crypto/rtg/wtn;->yla:Ljava/security/SecureRandom;

    return-void
.end method
