.class public Lorg/bouncycastle/jcajce/provider/asymmetric/dh/rtg;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/util/tsu;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/tsu;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    instance-of v0, p1, Ljavax/crypto/spec/DHPrivateKeySpec;

    if-eqz v0, :cond_0

    new-instance p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;

    check-cast p1, Ljavax/crypto/spec/DHPrivateKeySpec;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;-><init>(Ljavax/crypto/spec/DHPrivateKeySpec;)V

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/tsu;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0
.end method

.method protected engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    instance-of v0, p1, Ljavax/crypto/spec/DHPublicKeySpec;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;

    check-cast p1, Ljavax/crypto/spec/DHPublicKeySpec;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;-><init>(Ljavax/crypto/spec/DHPublicKeySpec;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/jcajce/provider/asymmetric/util/ExtendedInvalidKeySpecException;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/ExtendedInvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    invoke-super {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/tsu;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0
.end method

.method protected engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    const-class v0, Ljavax/crypto/spec/DHPrivateKeySpec;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Ljavax/crypto/interfaces/DHPrivateKey;

    if-eqz v0, :cond_0

    check-cast p1, Ljavax/crypto/interfaces/DHPrivateKey;

    new-instance p0, Ljavax/crypto/spec/DHPrivateKeySpec;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object p2

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p2, v0, p1}, Ljavax/crypto/spec/DHPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p0

    :cond_0
    const-class v0, Ljavax/crypto/spec/DHPublicKeySpec;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Ljavax/crypto/interfaces/DHPublicKey;

    if-eqz v0, :cond_1

    check-cast p1, Ljavax/crypto/interfaces/DHPublicKey;

    new-instance p0, Ljavax/crypto/spec/DHPublicKeySpec;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object p2

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p2, v0, p1}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p0

    :cond_1
    invoke-super {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/tsu;->engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object p0

    return-object p0
.end method

.method protected engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of p0, p1, Ljavax/crypto/interfaces/DHPublicKey;

    if-eqz p0, :cond_0

    new-instance p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;

    check-cast p1, Ljavax/crypto/interfaces/DHPublicKey;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;-><init>(Ljavax/crypto/interfaces/DHPublicKey;)V

    return-object p0

    :cond_0
    instance-of p0, p1, Ljavax/crypto/interfaces/DHPrivateKey;

    if-eqz p0, :cond_1

    new-instance p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;

    check-cast p1, Ljavax/crypto/interfaces/DHPrivateKey;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;-><init>(Ljavax/crypto/interfaces/DHPrivateKey;)V

    return-object p0

    :cond_1
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "key type unknown"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public zta(Lorg/bouncycastle/asn1/dma/vdb;)Ljava/security/PrivateKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dma/vdb;->getPrivateKeyAlgorithm()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/zta;->getAlgorithm()Lorg/bouncycastle/asn1/bvj;

    move-result-object p0

    sget-object v0, Lorg/bouncycastle/asn1/dma/gwm;->dhKeyAgreement:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;-><init>(Lorg/bouncycastle/asn1/dma/vdb;)V

    return-object p0

    :cond_0
    sget-object v0, Lorg/bouncycastle/asn1/ibl/ivd;->dhpublicnumber:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;-><init>(Lorg/bouncycastle/asn1/dma/vdb;)V

    return-object p0

    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "algorithm identifier "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " in key not recognised"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public zta(Lorg/bouncycastle/asn1/x509/c;)Ljava/security/PublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/c;->getAlgorithm()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/zta;->getAlgorithm()Lorg/bouncycastle/asn1/bvj;

    move-result-object p0

    sget-object v0, Lorg/bouncycastle/asn1/dma/gwm;->dhKeyAgreement:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;-><init>(Lorg/bouncycastle/asn1/x509/c;)V

    return-object p0

    :cond_0
    sget-object v0, Lorg/bouncycastle/asn1/ibl/ivd;->dhpublicnumber:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;-><init>(Lorg/bouncycastle/asn1/x509/c;)V

    return-object p0

    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "algorithm identifier "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " in key not recognised"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
