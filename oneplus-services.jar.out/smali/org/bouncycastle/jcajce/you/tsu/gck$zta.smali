.class abstract Lorg/bouncycastle/jcajce/you/tsu/gck$zta;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/you;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/you/tsu/gck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "zta"
.end annotation


# instance fields
.field private final Dla:Lorg/bouncycastle/asn1/x509/zta;

.field private final Ela:Ljava/lang/String;

.field private final Fla:Lorg/bouncycastle/asn1/bvj;

.field private final Gla:Ljava/lang/String;

.field private final keySize:I

.field private params:Lorg/bouncycastle/asn1/dma/oif;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/bvj;Ljava/lang/String;ILorg/bouncycastle/asn1/bvj;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/you;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/x509/zta;

    sget-object v1, Lorg/bouncycastle/asn1/z;->INSTANCE:Lorg/bouncycastle/asn1/z;

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/asn1/x509/zta;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/you/tsu/gck$zta;->Dla:Lorg/bouncycastle/asn1/x509/zta;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/you/tsu/gck$zta;->Ela:Ljava/lang/String;

    iput p3, p0, Lorg/bouncycastle/jcajce/you/tsu/gck$zta;->keySize:I

    iput-object p4, p0, Lorg/bouncycastle/jcajce/you/tsu/gck$zta;->Fla:Lorg/bouncycastle/asn1/bvj;

    iput-object p5, p0, Lorg/bouncycastle/jcajce/you/tsu/gck$zta;->Gla:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/asn1/bvj;Ljava/lang/String;ILorg/bouncycastle/asn1/bvj;Ljava/lang/String;Lorg/bouncycastle/jcajce/you/tsu/wtn;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/bouncycastle/jcajce/you/tsu/gck$zta;-><init>(Lorg/bouncycastle/asn1/bvj;Ljava/lang/String;ILorg/bouncycastle/asn1/bvj;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected engineGetEncoded()[B
    .locals 4

    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/G;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/bouncycastle/asn1/ssp;

    const/4 v2, 0x0

    sget-object v3, Lorg/bouncycastle/asn1/dma/gwm;->id_PBES2:Lorg/bouncycastle/asn1/bvj;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/you/tsu/gck$zta;->params:Lorg/bouncycastle/asn1/dma/oif;

    aput-object p0, v1, v2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/G;-><init>([Lorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/oif;->getEncoded()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to read PBES2 parameters: "

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

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/you;->sa(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/you/tsu/gck$zta;->engineGetEncoded()[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    instance-of v0, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_1

    check-cast p1, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/gck$zta;->zta(Ljavax/crypto/spec/PBEParameterSpec;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    instance-of v1, v0, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v1, :cond_0

    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/asn1/dma/oif;

    new-instance v2, Lorg/bouncycastle/asn1/dma/dma;

    sget-object v3, Lorg/bouncycastle/asn1/dma/gwm;->id_PBKDF2:Lorg/bouncycastle/asn1/bvj;

    new-instance v4, Lorg/bouncycastle/asn1/dma/bvj;

    invoke-virtual {p1}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v5

    invoke-virtual {p1}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result p1

    iget v6, p0, Lorg/bouncycastle/jcajce/you/tsu/gck$zta;->keySize:I

    iget-object v7, p0, Lorg/bouncycastle/jcajce/you/tsu/gck$zta;->Dla:Lorg/bouncycastle/asn1/x509/zta;

    invoke-direct {v4, v5, p1, v6, v7}, Lorg/bouncycastle/asn1/dma/bvj;-><init>([BIILorg/bouncycastle/asn1/x509/zta;)V

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/dma/dma;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    new-instance p1, Lorg/bouncycastle/asn1/dma/wtn;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/you/tsu/gck$zta;->Fla:Lorg/bouncycastle/asn1/bvj;

    new-instance v4, Lorg/bouncycastle/asn1/C;

    invoke-direct {v4, v0}, Lorg/bouncycastle/asn1/C;-><init>([B)V

    invoke-direct {p1, v3, v4}, Lorg/bouncycastle/asn1/dma/wtn;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    invoke-direct {v1, v2, p1}, Lorg/bouncycastle/asn1/dma/oif;-><init>(Lorg/bouncycastle/asn1/dma/dma;Lorg/bouncycastle/asn1/dma/wtn;)V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/you/tsu/gck$zta;->params:Lorg/bouncycastle/asn1/dma/oif;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Expecting an IV as a parameter"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/security/spec/InvalidParameterSpecException;

    const-string p1, "PBEParameterSpec required to initialise PBES2 algorithm parameters"

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected engineInit([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/asn1/vdb;->fromByteArray([B)Lorg/bouncycastle/asn1/vdb;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->Fg()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->id_PBES2:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/dma/oif;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/oif;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/you/tsu/gck$zta;->params:Lorg/bouncycastle/asn1/dma/oif;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid PBES2 parameters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected engineInit([BLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/you;->sa(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/you/tsu/gck$zta;->engineInit([B)V

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unknown parameters format in PBES2 parameters object"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected engineToString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PBES2 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/you/tsu/gck$zta;->Ela:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/you/tsu/gck$zta;->Gla:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Parameters"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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

    iget-object p1, p0, Lorg/bouncycastle/jcajce/you/tsu/gck$zta;->params:Lorg/bouncycastle/asn1/dma/oif;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dma/oif;->eh()Lorg/bouncycastle/asn1/dma/dma;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dma/dma;->getParameters()Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/dma/bvj;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/you/tsu/gck$zta;->params:Lorg/bouncycastle/asn1/dma/oif;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/dma/oif;->dh()Lorg/bouncycastle/asn1/dma/wtn;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/dma/wtn;->getParameters()Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ibl;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object p0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dma/bvj;->getSalt()[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dma/bvj;->getIterationCount()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-static {v0, p1, p0}, Lorg/bouncycastle/jcajce/you/tsu/gck;->zta([BI[B)Ljavax/crypto/spec/PBEParameterSpec;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/security/spec/InvalidParameterSpecException;

    const-string p1, "unknown parameter spec passed to PBES2 parameters object."

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
