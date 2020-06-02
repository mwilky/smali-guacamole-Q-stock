.class public Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/zta$zta;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/zta;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/zta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zta"
.end annotation


# instance fields
.field Noa:Ljavax/crypto/spec/OAEPParameterSpec;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/zta;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGetEncoded()[B
    .locals 6

    new-instance v0, Lorg/bouncycastle/asn1/x509/zta;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/zta$zta;->Noa:Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {v1}, Ljavax/crypto/spec/OAEPParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/util/tsu;->Fa(Ljava/lang/String;)Lorg/bouncycastle/asn1/bvj;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/asn1/z;->INSTANCE:Lorg/bouncycastle/asn1/z;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/zta;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/zta$zta;->Noa:Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {v1}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    check-cast v1, Ljava/security/spec/MGF1ParameterSpec;

    new-instance v2, Lorg/bouncycastle/asn1/x509/zta;

    sget-object v3, Lorg/bouncycastle/asn1/dma/gwm;->id_mgf1:Lorg/bouncycastle/asn1/bvj;

    new-instance v4, Lorg/bouncycastle/asn1/x509/zta;

    invoke-virtual {v1}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/util/tsu;->Fa(Ljava/lang/String;)Lorg/bouncycastle/asn1/bvj;

    move-result-object v1

    sget-object v5, Lorg/bouncycastle/asn1/z;->INSTANCE:Lorg/bouncycastle/asn1/z;

    invoke-direct {v4, v1, v5}, Lorg/bouncycastle/asn1/x509/zta;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/x509/zta;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/zta$zta;->Noa:Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {p0}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    move-result-object p0

    check-cast p0, Ljavax/crypto/spec/PSource$PSpecified;

    new-instance v1, Lorg/bouncycastle/asn1/x509/zta;

    sget-object v3, Lorg/bouncycastle/asn1/dma/gwm;->id_pSpecified:Lorg/bouncycastle/asn1/bvj;

    new-instance v4, Lorg/bouncycastle/asn1/C;

    invoke-virtual {p0}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    move-result-object p0

    invoke-direct {v4, p0}, Lorg/bouncycastle/asn1/C;-><init>([B)V

    invoke-direct {v1, v3, v4}, Lorg/bouncycastle/asn1/x509/zta;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    new-instance p0, Lorg/bouncycastle/asn1/dma/zgw;

    invoke-direct {p0, v0, v2, v1}, Lorg/bouncycastle/asn1/dma/zgw;-><init>(Lorg/bouncycastle/asn1/x509/zta;Lorg/bouncycastle/asn1/x509/zta;Lorg/bouncycastle/asn1/x509/zta;)V

    :try_start_0
    const-string v0, "DER"

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/oif;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Error encoding OAEPParameters"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected engineGetEncoded(Ljava/lang/String;)[B
    .locals 1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/zta;->va(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "X.509"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/zta$zta;->engineGetEncoded()[B

    move-result-object p0

    return-object p0
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    instance-of v0, p1, Ljavax/crypto/spec/OAEPParameterSpec;

    if-eqz v0, :cond_0

    check-cast p1, Ljavax/crypto/spec/OAEPParameterSpec;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/zta$zta;->Noa:Ljavax/crypto/spec/OAEPParameterSpec;

    return-void

    :cond_0
    new-instance p0, Ljava/security/spec/InvalidParameterSpecException;

    const-string p1, "OAEPParameterSpec required to initialise an OAEP algorithm parameters object"

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected engineInit([B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Not a valid OAEP Parameter encoding."

    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/asn1/dma/zgw;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/zgw;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dma/zgw;->zh()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/zta;->getAlgorithm()Lorg/bouncycastle/asn1/bvj;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/asn1/dma/gwm;->id_mgf1:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dma/zgw;->yh()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/zta;->getAlgorithm()Lorg/bouncycastle/asn1/bvj;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/jcajce/tsu/ssp;->ugm(Lorg/bouncycastle/asn1/bvj;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljavax/crypto/spec/OAEPParameterSpec;->DEFAULT:Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {v3}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/security/spec/MGF1ParameterSpec;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dma/zgw;->zh()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/zta;->getParameters()Lorg/bouncycastle/asn1/ssp;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/x509/zta;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/zta;->getAlgorithm()Lorg/bouncycastle/asn1/bvj;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/jcajce/tsu/ssp;->ugm(Lorg/bouncycastle/asn1/bvj;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljavax/crypto/spec/PSource$PSpecified;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dma/zgw;->Ah()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/zta;->getParameters()Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ibl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ibl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object p1

    invoke-direct {v5, p1}, Ljavax/crypto/spec/PSource$PSpecified;-><init>([B)V

    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/zta$zta;->Noa:Ljavax/crypto/spec/OAEPParameterSpec;

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown mask generation function: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dma/zgw;->zh()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/zta;->getAlgorithm()Lorg/bouncycastle/asn1/bvj;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected engineInit([BLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "X.509"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ASN.1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown parameter format "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/zta$zta;->engineInit([B)V

    return-void
.end method

.method protected engineToString()Ljava/lang/String;
    .locals 0

    const-string p0, "OAEP Parameters"

    return-object p0
.end method

.method protected zta(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    const-class v0, Ljavax/crypto/spec/OAEPParameterSpec;

    if-eq p1, v0, :cond_1

    const-class v0, Ljava/security/spec/AlgorithmParameterSpec;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/spec/InvalidParameterSpecException;

    const-string p1, "unknown parameter spec passed to OAEP parameters object."

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/zta$zta;->Noa:Ljavax/crypto/spec/OAEPParameterSpec;

    return-object p0
.end method
