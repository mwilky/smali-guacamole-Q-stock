.class public Lorg/bouncycastle/crypto/dma/you;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ibl([B)Lorg/bouncycastle/crypto/wtn/you;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/asn1/vdb;->fromByteArray([B)Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/dma/vdb;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/vdb;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/crypto/dma/you;->sis(Lorg/bouncycastle/asn1/dma/vdb;)Lorg/bouncycastle/crypto/wtn/you;

    move-result-object p0

    return-object p0
.end method

.method public static sis(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/wtn/you;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/dma;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/dma;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/dma;->readObject()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/dma/vdb;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/vdb;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/crypto/dma/you;->sis(Lorg/bouncycastle/asn1/dma/vdb;)Lorg/bouncycastle/crypto/wtn/you;

    move-result-object p0

    return-object p0
.end method

.method public static sis(Lorg/bouncycastle/asn1/dma/vdb;)Lorg/bouncycastle/crypto/wtn/you;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/dma/vdb;->getPrivateKeyAlgorithm()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/zta;->getAlgorithm()Lorg/bouncycastle/asn1/bvj;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/asn1/dma/gwm;->rsaEncryption:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    sget-object v2, Lorg/bouncycastle/asn1/dma/gwm;->id_RSASSA_PSS:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    sget-object v2, Lorg/bouncycastle/asn1/x509/t;->YOa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-object v2, Lorg/bouncycastle/asn1/dma/gwm;->dhKeyAgreement:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/zta;->getParameters()Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/dma/kth;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/kth;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/dma/vdb;->parsePrivateKey()Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/dma/kth;->getL()Ljava/math/BigInteger;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    :goto_0
    new-instance v2, Lorg/bouncycastle/crypto/wtn/cno;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/dma/kth;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/dma/kth;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v2, v4, v0, v3, v1}, Lorg/bouncycastle/crypto/wtn/cno;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    new-instance v0, Lorg/bouncycastle/crypto/wtn/kth;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, p0, v2}, Lorg/bouncycastle/crypto/wtn/kth;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/wtn/cno;)V

    return-object v0

    :cond_2
    sget-object v2, Lorg/bouncycastle/asn1/ibl/ivd;->id_dsa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/dma/vdb;->parsePrivateKey()Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/zta;->getParameters()Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/ywr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/ywr;

    move-result-object v0

    new-instance v3, Lorg/bouncycastle/crypto/wtn/ywr;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/ywr;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/ywr;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/ywr;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v3, v1, v2, v0}, Lorg/bouncycastle/crypto/wtn/ywr;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :cond_3
    new-instance v0, Lorg/bouncycastle/crypto/wtn/qbh;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, p0, v3}, Lorg/bouncycastle/crypto/wtn/qbh;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/wtn/ywr;)V

    return-object v0

    :cond_4
    sget-object v2, Lorg/bouncycastle/asn1/ibl/ivd;->id_ecPublicKey:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Lorg/bouncycastle/asn1/ibl/veq;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/zta;->getParameters()Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/vdb;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/ibl/veq;-><init>(Lorg/bouncycastle/asn1/vdb;)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ibl/veq;->Di()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ibl/veq;->getParameters()Lorg/bouncycastle/asn1/vdb;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/bouncycastle/asn1/bvj;

    invoke-static {v2}, Lorg/bouncycastle/crypto/sis/bio;->gck(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/ibl/vju;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {v2}, Lorg/bouncycastle/asn1/ibl/rtg;->gck(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/ibl/vju;

    move-result-object v0

    :cond_5
    new-instance v8, Lorg/bouncycastle/crypto/wtn/vdb;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ibl/vju;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v3

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ibl/vju;->getG()Lyou/zta/sis/zta/wtn;

    move-result-object v4

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ibl/vju;->Ii()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ibl/vju;->Hi()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ibl/vju;->getSeed()[B

    move-result-object v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/crypto/wtn/vdb;-><init>(Lorg/bouncycastle/asn1/bvj;Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    move-object v7, v8

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ibl/veq;->getParameters()Lorg/bouncycastle/asn1/vdb;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ibl/vju;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ibl/vju;

    move-result-object v0

    new-instance v7, Lorg/bouncycastle/crypto/wtn/ibl;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ibl/vju;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ibl/vju;->getG()Lyou/zta/sis/zta/wtn;

    move-result-object v3

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ibl/vju;->Ii()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ibl/vju;->Hi()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ibl/vju;->getSeed()[B

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/crypto/wtn/ibl;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    :goto_1
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/dma/vdb;->parsePrivateKey()Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ywr/zta;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ywr/zta;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ywr/zta;->getKey()Ljava/math/BigInteger;

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/crypto/wtn/zgw;

    invoke-direct {v0, p0, v7}, Lorg/bouncycastle/crypto/wtn/zgw;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/wtn/ibl;)V

    return-object v0

    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "algorithm identifier in private key not recognised"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_2
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/dma/vdb;->parsePrivateKey()Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/dma/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/obl;

    move-result-object p0

    new-instance v9, Lorg/bouncycastle/crypto/wtn/cgv;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/dma/obl;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/dma/obl;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/dma/obl;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/dma/obl;->vh()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/dma/obl;->wh()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/dma/obl;->th()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/dma/obl;->uh()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/dma/obl;->sh()Ljava/math/BigInteger;

    move-result-object v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/crypto/wtn/cgv;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v9
.end method

.method private static zta(Lorg/bouncycastle/asn1/dma/vdb;I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/dma/vdb;->parsePrivateKey()Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ibl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ibl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object p0

    array-length v0, p0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "private key encoding has incorrect length"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
