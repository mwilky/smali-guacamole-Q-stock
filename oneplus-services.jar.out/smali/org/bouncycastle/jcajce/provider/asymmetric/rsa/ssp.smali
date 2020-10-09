.class public Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/ssp;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final SEa:[Lorg/bouncycastle/asn1/bvj;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/bouncycastle/asn1/bvj;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->rsaEncryption:Lorg/bouncycastle/asn1/bvj;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/asn1/x509/t;->wRa:Lorg/bouncycastle/asn1/bvj;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->id_RSAES_OAEP:Lorg/bouncycastle/asn1/bvj;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->id_RSASSA_PSS:Lorg/bouncycastle/asn1/bvj;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/ssp;->SEa:[Lorg/bouncycastle/asn1/bvj;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bio(Ljava/math/BigInteger;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lorg/bouncycastle/util/rtg;

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/util/rtg;-><init>([B)V

    invoke-virtual {v0}, Lorg/bouncycastle/util/rtg;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static kth(Ljava/math/BigInteger;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lorg/bouncycastle/util/rtg;

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    const/16 v1, 0x20

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/util/rtg;-><init>([BI)V

    invoke-virtual {v0}, Lorg/bouncycastle/util/rtg;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static qbh(Lorg/bouncycastle/asn1/bvj;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/ssp;->SEa:[Lorg/bouncycastle/asn1/bvj;

    array-length v3, v2

    if-eq v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method static zta(Ljava/security/interfaces/RSAPrivateKey;)Lorg/bouncycastle/crypto/wtn/veq;
    .locals 10

    instance-of v0, p0, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/security/interfaces/RSAPrivateCrtKey;

    new-instance v9, Lorg/bouncycastle/crypto/wtn/cgv;

    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v6

    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/crypto/wtn/cgv;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v9

    :cond_0
    new-instance v0, Lorg/bouncycastle/crypto/wtn/veq;

    const/4 v1, 0x1

    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lorg/bouncycastle/crypto/wtn/veq;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method static zta(Ljava/security/interfaces/RSAPublicKey;)Lorg/bouncycastle/crypto/wtn/veq;
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/wtn/veq;

    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p0}, Lorg/bouncycastle/crypto/wtn/veq;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method
