.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/zta;
.super Ljava/security/AlgorithmParametersSpi;
.source ""


# instance fields
.field private Ooa:Ljava/security/spec/ECParameterSpec;

.field private Poa:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/security/AlgorithmParametersSpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGetEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "ASN.1"

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/zta;->engineGetEncoded(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method protected engineGetEncoded(Ljava/lang/String;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/zta;->va(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/zta;->Ooa:Ljava/security/spec/ECParameterSpec;

    if-nez p1, :cond_0

    new-instance p0, Lorg/bouncycastle/asn1/ibl/veq;

    sget-object p1, Lorg/bouncycastle/asn1/z;->INSTANCE:Lorg/bouncycastle/asn1/z;

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ibl/veq;-><init>(Lorg/bouncycastle/asn1/qbh;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/zta;->Poa:Ljava/lang/String;

    if-eqz p0, :cond_1

    new-instance p1, Lorg/bouncycastle/asn1/ibl/veq;

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/bio;->La(Ljava/lang/String;)Lorg/bouncycastle/asn1/bvj;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/ibl/veq;-><init>(Lorg/bouncycastle/asn1/bvj;)V

    move-object p0, p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    invoke-static {p1, p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->you(Ljava/security/spec/ECParameterSpec;Z)Lyou/zta/you/you/rtg;

    move-result-object p0

    new-instance p1, Lorg/bouncycastle/asn1/ibl/vju;

    invoke-virtual {p0}, Lyou/zta/you/you/rtg;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v1

    invoke-virtual {p0}, Lyou/zta/you/you/rtg;->getG()Lyou/zta/sis/zta/wtn;

    move-result-object v2

    invoke-virtual {p0}, Lyou/zta/you/you/rtg;->Ri()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lyou/zta/you/you/rtg;->Qi()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Lyou/zta/you/you/rtg;->getSeed()[B

    move-result-object v5

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/ibl/vju;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    new-instance p0, Lorg/bouncycastle/asn1/ibl/veq;

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ibl/veq;-><init>(Lorg/bouncycastle/asn1/ibl/vju;)V

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/oif;->getEncoded()[B

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown parameters format in AlgorithmParameters object: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected engineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    const-class v0, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_4

    const-class v0, Ljava/security/spec/AlgorithmParameterSpec;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-class v0, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/zta;->Poa:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/bio;->La(Ljava/lang/String;)Lorg/bouncycastle/asn1/bvj;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p0, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_1
    new-instance p1, Ljava/security/spec/ECGenParameterSpec;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/zta;->Poa:Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_2
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/zta;->Ooa:Ljava/security/spec/ECParameterSpec;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->you(Ljava/security/spec/ECParameterSpec;Z)Lyou/zta/you/you/rtg;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/bio;->zta(Lyou/zta/you/you/rtg;)Lorg/bouncycastle/asn1/bvj;

    move-result-object p0

    if-eqz p0, :cond_3

    new-instance p1, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_3
    new-instance p0, Ljava/security/spec/InvalidParameterSpecException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EC AlgorithmParameters cannot convert to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/zta;->Ooa:Ljava/security/spec/ECParameterSpec;

    return-object p0
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    instance-of v0, p1, Ljava/security/spec/ECGenParameterSpec;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/security/spec/ECGenParameterSpec;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/you;->zta(Ljava/security/spec/ECGenParameterSpec;)Lorg/bouncycastle/asn1/ibl/vju;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/zta;->Poa:Ljava/lang/String;

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->zta(Lorg/bouncycastle/asn1/ibl/vju;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    new-instance v6, Lyou/zta/you/you/tsu;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/zta;->Poa:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v3

    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result p1

    int-to-long v7, p1

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lyou/zta/you/you/tsu;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v6, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/zta;->Ooa:Ljava/security/spec/ECParameterSpec;

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/security/spec/InvalidParameterSpecException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EC curve name not recognized: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    instance-of v0, p1, Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_3

    instance-of v0, p1, Lyou/zta/you/you/tsu;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lyou/zta/you/you/tsu;

    invoke-virtual {v0}, Lyou/zta/you/you/tsu;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/zta;->Poa:Ljava/lang/String;

    check-cast p1, Ljava/security/spec/ECParameterSpec;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/zta;->Ooa:Ljava/security/spec/ECParameterSpec;

    :goto_1
    return-void

    :cond_3
    new-instance p0, Ljava/security/spec/InvalidParameterSpecException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlgorithmParameterSpec class not recognized: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected engineInit([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "ASN.1"

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/zta;->engineInit([BLjava/lang/String;)V

    return-void
.end method

.method protected engineInit([BLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/zta;->va(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ibl/veq;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ibl/veq;

    move-result-object p1

    sget-object p2, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/bouncycastle/jcajce/provider/config/sis;

    invoke-static {p2, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->zta(Lorg/bouncycastle/jcajce/provider/config/sis;Lorg/bouncycastle/asn1/ibl/veq;)Lyou/zta/sis/zta/rtg;

    move-result-object p2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ibl/veq;->Mi()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ibl/veq;->getParameters()Lorg/bouncycastle/asn1/vdb;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/bvj;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ibl/rtg;->dma(Lorg/bouncycastle/asn1/bvj;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/zta;->Poa:Ljava/lang/String;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/zta;->Poa:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/zta;->Poa:Ljava/lang/String;

    :cond_0
    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->zta(Lorg/bouncycastle/asn1/ibl/veq;Lyou/zta/sis/zta/rtg;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/zta;->Ooa:Ljava/security/spec/ECParameterSpec;

    return-void

    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown encoded parameters format in AlgorithmParameters object: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected engineToString()Ljava/lang/String;
    .locals 0

    const-string p0, "EC AlgorithmParameters "

    return-object p0
.end method

.method protected va(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_1

    const-string p0, "ASN.1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
