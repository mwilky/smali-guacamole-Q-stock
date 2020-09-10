.class public Lorg/bouncycastle/jcajce/you/tsu/igw$zta;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/you;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/you/tsu/igw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zta"
.end annotation


# instance fields
.field params:Lorg/bouncycastle/asn1/dma/ibl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/you;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGetEncoded()[B
    .locals 3

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/you/tsu/igw$zta;->params:Lorg/bouncycastle/asn1/dma/ibl;

    const-string v0, "DER"

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/oif;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Oooops! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGetEncoded(Ljava/lang/String;)[B
    .locals 0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/you;->va(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/you/tsu/igw$zta;->engineGetEncoded()[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    instance-of v0, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_0

    check-cast p1, Ljavax/crypto/spec/PBEParameterSpec;

    new-instance v0, Lorg/bouncycastle/asn1/dma/ibl;

    invoke-virtual {p1}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v1

    invoke-virtual {p1}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/asn1/dma/ibl;-><init>([BI)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/you/tsu/igw$zta;->params:Lorg/bouncycastle/asn1/dma/ibl;

    return-void

    :cond_0
    new-instance p0, Ljava/security/spec/InvalidParameterSpecException;

    const-string p1, "PBEParameterSpec required to initialise a PKCS12 PBE parameters algorithm parameters object"

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected engineInit([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/asn1/vdb;->fromByteArray([B)Lorg/bouncycastle/asn1/vdb;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/dma/ibl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/ibl;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/you/tsu/igw$zta;->params:Lorg/bouncycastle/asn1/dma/ibl;

    return-void
.end method

.method protected engineInit([BLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/you;->va(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/you/tsu/igw$zta;->engineInit([B)V

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unknown parameters format in PKCS12 PBE parameters object"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected engineToString()Ljava/lang/String;
    .locals 0

    const-string p0, "PKCS12 PBE Parameters"

    return-object p0
.end method

.method protected zta(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    const-class v0, Ljavax/crypto/spec/PBEParameterSpec;

    if-ne p1, v0, :cond_0

    new-instance p1, Ljavax/crypto/spec/PBEParameterSpec;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/you/tsu/igw$zta;->params:Lorg/bouncycastle/asn1/dma/ibl;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/dma/ibl;->getIV()[B

    move-result-object v0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/you/tsu/igw$zta;->params:Lorg/bouncycastle/asn1/dma/ibl;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/dma/ibl;->rh()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    invoke-direct {p1, v0, p0}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/security/spec/InvalidParameterSpecException;

    const-string p1, "unknown parameter spec passed to PKCS12 PBE parameters object."

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
