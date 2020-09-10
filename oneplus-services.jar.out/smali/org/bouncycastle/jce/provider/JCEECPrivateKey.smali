.class public Lorg/bouncycastle/jce/provider/JCEECPrivateKey;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/interfaces/ECPrivateKey;
.implements Lorg/bouncycastle/jce/interfaces/ECPrivateKey;
.implements Lorg/bouncycastle/jce/interfaces/tsu;
.implements Lorg/bouncycastle/jce/interfaces/sis;


# instance fields
.field private algorithm:Ljava/lang/String;

.field private attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;

.field private d:Ljava/math/BigInteger;

.field private ecSpec:Ljava/security/spec/ECParameterSpec;

.field private publicKey:Lorg/bouncycastle/asn1/n;

.field private withCompression:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/ECPrivateKeySpec;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/security/spec/ECPrivateKeySpec;->getS()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    invoke-virtual {p2}, Ljava/security/spec/ECPrivateKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/crypto/wtn/zgw;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/zgw;->tsu()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/crypto/wtn/zgw;Lorg/bouncycastle/jce/provider/JCEECPublicKey;Ljava/security/spec/ECParameterSpec;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/zgw;->tsu()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    if-nez p4, :cond_0

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/ugm;->getParameters()Lorg/bouncycastle/crypto/wtn/ibl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/ibl;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object p2

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/ibl;->getSeed()[B

    move-result-object p4

    invoke-static {p2, p4}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->zta(Lyou/zta/sis/zta/rtg;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p2

    new-instance p4, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/ibl;->getG()Lyou/zta/sis/zta/wtn;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->you(Lyou/zta/sis/zta/wtn;)Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/ibl;->Qi()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/ibl;->Pi()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-direct {p4, p2, v0, v1, p1}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    :cond_0
    iput-object p4, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-direct {p0, p3}, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->zta(Lorg/bouncycastle/jce/provider/JCEECPublicKey;)Lorg/bouncycastle/asn1/n;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lorg/bouncycastle/asn1/n;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/crypto/wtn/zgw;Lorg/bouncycastle/jce/provider/JCEECPublicKey;Lyou/zta/you/you/rtg;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/zgw;->tsu()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    if-nez p4, :cond_0

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/ugm;->getParameters()Lorg/bouncycastle/crypto/wtn/ibl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/ibl;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object p2

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/ibl;->getSeed()[B

    move-result-object p4

    invoke-static {p2, p4}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->zta(Lyou/zta/sis/zta/rtg;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p2

    new-instance p4, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/ibl;->getG()Lyou/zta/sis/zta/wtn;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->you(Lyou/zta/sis/zta/wtn;)Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/ibl;->Qi()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/ibl;->Pi()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-direct {p4, p2, v0, v1, p1}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object p4, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Lyou/zta/you/you/rtg;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object p1

    invoke-virtual {p4}, Lyou/zta/you/you/rtg;->getSeed()[B

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->zta(Lyou/zta/sis/zta/rtg;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    new-instance p2, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p4}, Lyou/zta/you/you/rtg;->getG()Lyou/zta/sis/zta/wtn;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->you(Lyou/zta/sis/zta/wtn;)Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-virtual {p4}, Lyou/zta/you/you/rtg;->Qi()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p4}, Lyou/zta/you/you/rtg;->Pi()Ljava/math/BigInteger;

    move-result-object p4

    invoke-virtual {p4}, Ljava/math/BigInteger;->intValue()I

    move-result p4

    invoke-direct {p2, p1, v0, v1, p4}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object p2, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    :goto_0
    invoke-direct {p0, p3}, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->zta(Lorg/bouncycastle/jce/provider/JCEECPublicKey;)Lorg/bouncycastle/asn1/n;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lorg/bouncycastle/asn1/n;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/jce/provider/JCEECPrivateKey;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    iget-object p1, p2, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    iget-object p1, p2, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iget-boolean p1, p2, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    iput-boolean p1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    iget-object p1, p2, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;

    iget-object p1, p2, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lorg/bouncycastle/asn1/n;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lorg/bouncycastle/asn1/n;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lyou/zta/you/you/ssp;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Lyou/zta/you/you/ssp;->tsu()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    invoke-virtual {p2}, Lyou/zta/you/you/zta;->getParams()Lyou/zta/you/you/rtg;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lyou/zta/you/you/zta;->getParams()Lyou/zta/you/you/rtg;

    move-result-object p1

    invoke-virtual {p1}, Lyou/zta/you/you/rtg;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object p1

    invoke-virtual {p2}, Lyou/zta/you/you/zta;->getParams()Lyou/zta/you/you/rtg;

    move-result-object v0

    invoke-virtual {v0}, Lyou/zta/you/you/rtg;->getSeed()[B

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->zta(Lyou/zta/sis/zta/rtg;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-virtual {p2}, Lyou/zta/you/you/zta;->getParams()Lyou/zta/you/you/rtg;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->zta(Ljava/security/spec/EllipticCurve;Lyou/zta/you/you/rtg;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPrivateKey;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;

    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/asn1/dma/vdb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->rtg(Lorg/bouncycastle/asn1/dma/vdb;)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lorg/bouncycastle/asn1/vdb;->fromByteArray([B)Lorg/bouncycastle/asn1/vdb;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/dma/vdb;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/vdb;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->rtg(Lorg/bouncycastle/asn1/dma/vdb;)V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;->readObject(Ljava/io/ObjectInputStream;)V

    return-void
.end method

.method private rtg(Lorg/bouncycastle/asn1/dma/vdb;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/ibl/veq;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dma/vdb;->getPrivateKeyAlgorithm()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/zta;->getParameters()Lorg/bouncycastle/asn1/ssp;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/vdb;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ibl/veq;-><init>(Lorg/bouncycastle/asn1/vdb;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ibl/veq;->Li()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ibl/veq;->getParameters()Lorg/bouncycastle/asn1/vdb;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/bvj;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/bio;->bvj(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/ibl/vju;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ibl/vju;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v2

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ibl/vju;->getSeed()[B

    move-result-object v3

    invoke-static {v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->zta(Lyou/zta/sis/zta/rtg;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v6

    new-instance v2, Lyou/zta/you/you/tsu;

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/bio;->oif(Lorg/bouncycastle/asn1/bvj;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ibl/vju;->getG()Lyou/zta/sis/zta/wtn;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->you(Lyou/zta/sis/zta/wtn;)Ljava/security/spec/ECPoint;

    move-result-object v7

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ibl/vju;->Qi()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ibl/vju;->Pi()Ljava/math/BigInteger;

    move-result-object v9

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lyou/zta/you/you/tsu;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :goto_0
    iput-object v2, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ibl/veq;->Ki()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ibl/veq;->getParameters()Lorg/bouncycastle/asn1/vdb;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ibl/vju;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ibl/vju;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ibl/vju;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ibl/vju;->getSeed()[B

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->zta(Lyou/zta/sis/zta/rtg;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    new-instance v2, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ibl/vju;->getG()Lyou/zta/sis/zta/wtn;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->you(Lyou/zta/sis/zta/wtn;)Ljava/security/spec/ECPoint;

    move-result-object v3

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ibl/vju;->Qi()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ibl/vju;->Pi()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-direct {v2, v1, v3, v4, v0}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dma/vdb;->parsePrivateKey()Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    instance-of v0, p1, Lorg/bouncycastle/asn1/ywr;

    if-eqz v0, :cond_2

    invoke-static {p1}, Lorg/bouncycastle/asn1/ywr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ywr;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    goto :goto_2

    :cond_2
    new-instance v0, Lorg/bouncycastle/asn1/ywr/you;

    check-cast p1, Lorg/bouncycastle/asn1/obl;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ywr/you;-><init>(Lorg/bouncycastle/asn1/obl;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ywr/you;->getKey()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ywr/you;->getPublicKey()Lorg/bouncycastle/asn1/n;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lorg/bouncycastle/asn1/n;

    :goto_2
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;->writeObject(Ljava/io/ObjectOutputStream;)V

    return-void
.end method

.method private zta(Lorg/bouncycastle/jce/provider/JCEECPublicKey;)Lorg/bouncycastle/asn1/n;
    .locals 0

    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/vdb;->fromByteArray([B)Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/c;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/c;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/c;->uh()Lorg/bouncycastle/asn1/n;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method Gj()Lyou/zta/you/you/rtg;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    invoke-static {v0, p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->you(Ljava/security/spec/ECParameterSpec;Z)Lyou/zta/you/you/rtg;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/bouncycastle/jcajce/provider/config/sis;

    invoke-interface {p0}, Lorg/bouncycastle/jcajce/provider/config/sis;->gwm()Lyou/zta/you/you/rtg;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->tsu()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->tsu()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->Gj()Lyou/zta/you/you/rtg;

    move-result-object p0

    invoke-virtual {p1}, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->Gj()Lyou/zta/you/you/rtg;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyou/zta/you/you/rtg;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public gck(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UNCOMPRESSED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    return-void
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    return-object p0
.end method

.method public getEncoded()[B
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    instance-of v1, v0, Lyou/zta/you/you/tsu;

    if-eqz v1, :cond_1

    check-cast v0, Lyou/zta/you/you/tsu;

    invoke-virtual {v0}, Lyou/zta/you/you/tsu;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/bio;->La(Ljava/lang/String;)Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    check-cast v1, Lyou/zta/you/you/tsu;

    invoke-virtual {v1}, Lyou/zta/you/you/tsu;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/ibl/veq;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/ibl/veq;-><init>(Lorg/bouncycastle/asn1/bvj;)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    new-instance v1, Lorg/bouncycastle/asn1/ibl/veq;

    sget-object v0, Lorg/bouncycastle/asn1/z;->INSTANCE:Lorg/bouncycastle/asn1/z;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/ibl/veq;-><init>(Lorg/bouncycastle/asn1/qbh;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->zta(Ljava/security/spec/EllipticCurve;)Lyou/zta/sis/zta/rtg;

    move-result-object v2

    new-instance v0, Lorg/bouncycastle/asn1/ibl/vju;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v1

    iget-boolean v3, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->zta(Lyou/zta/sis/zta/rtg;Ljava/security/spec/ECPoint;Z)Lyou/zta/sis/zta/wtn;

    move-result-object v3

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v1

    int-to-long v5, v1

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/asn1/ibl/vju;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    new-instance v1, Lorg/bouncycastle/asn1/ibl/veq;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/ibl/veq;-><init>(Lorg/bouncycastle/asn1/ibl/vju;)V

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lorg/bouncycastle/asn1/n;

    if-eqz v0, :cond_3

    new-instance v0, Lorg/bouncycastle/asn1/ywr/you;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v2

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lorg/bouncycastle/asn1/n;

    invoke-direct {v0, v2, p0, v1}, Lorg/bouncycastle/asn1/ywr/you;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/ssp;)V

    goto :goto_1

    :cond_3
    new-instance v0, Lorg/bouncycastle/asn1/ywr/you;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/asn1/ywr/you;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/asn1/ssp;)V

    :goto_1
    :try_start_0
    new-instance p0, Lorg/bouncycastle/asn1/dma/vdb;

    new-instance v2, Lorg/bouncycastle/asn1/x509/zta;

    sget-object v3, Lorg/bouncycastle/asn1/ibl/ivd;->id_ecPublicKey:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ibl/veq;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/asn1/x509/zta;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ywr/you;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lorg/bouncycastle/asn1/dma/vdb;-><init>(Lorg/bouncycastle/asn1/x509/zta;Lorg/bouncycastle/asn1/ssp;)V

    const-string v0, "DER"

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/oif;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    const-string p0, "PKCS#8"

    return-object p0
.end method

.method public getParameters()Lyou/zta/you/you/rtg;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-boolean p0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    invoke-static {v0, p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->you(Ljava/security/spec/ECParameterSpec;Z)Lyou/zta/you/you/rtg;

    move-result-object p0

    return-object p0
.end method

.method public getParams()Ljava/security/spec/ECParameterSpec;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-object p0
.end method

.method public getS()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->tsu()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->Gj()Lyou/zta/you/you/rtg;

    move-result-object p0

    invoke-virtual {p0}, Lyou/zta/you/you/rtg;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lorg/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EC Private Key"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "             S: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public tsu()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    return-object p0
.end method

.method public vdb()Ljava/util/Enumeration;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;->vdb()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public zta(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/ssp;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;->zta(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    return-object p0
.end method

.method public zta(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;->zta(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    return-void
.end method
