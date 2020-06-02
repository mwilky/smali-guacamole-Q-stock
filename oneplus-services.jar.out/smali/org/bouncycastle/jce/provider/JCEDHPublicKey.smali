.class public Lorg/bouncycastle/jce/provider/JCEDHPublicKey;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/crypto/interfaces/DHPublicKey;


# static fields
.field static final serialVersionUID:J = -0x301d7d6f0dc1b04L


# instance fields
.field private dhSpec:Ljavax/crypto/spec/DHParameterSpec;

.field private info:Lorg/bouncycastle/asn1/x509/c;

.field private y:Ljava/math/BigInteger;


# direct methods
.method constructor <init>(Ljava/math/BigInteger;Ljavax/crypto/spec/DHParameterSpec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEDHPublicKey;->y:Ljava/math/BigInteger;

    iput-object p2, p0, Lorg/bouncycastle/jce/provider/JCEDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    return-void
.end method

.method constructor <init>(Ljavax/crypto/interfaces/DHPublicKey;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEDHPublicKey;->y:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    return-void
.end method

.method constructor <init>(Ljavax/crypto/spec/DHPublicKeySpec;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEDHPublicKey;->y:Ljava/math/BigInteger;

    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/asn1/x509/c;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEDHPublicKey;->info:Lorg/bouncycastle/asn1/x509/c;

    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/c;->xh()Lorg/bouncycastle/asn1/vdb;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ywr;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEDHPublicKey;->y:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/c;->_h()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/zta;->getParameters()Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/c;->_h()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/zta;->getAlgorithm()Lorg/bouncycastle/asn1/bvj;

    move-result-object p1

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->dhKeyAgreement:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/JCEDHPublicKey;->kth(Lorg/bouncycastle/asn1/obl;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lorg/bouncycastle/asn1/ibl/ivd;->dhpublicnumber:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lorg/bouncycastle/asn1/ibl/zta;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ibl/zta;

    move-result-object p1

    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ibl/zta;->getP()Lorg/bouncycastle/asn1/ywr;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ibl/zta;->getG()Lorg/bouncycastle/asn1/ywr;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown algorithm type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    invoke-static {v0}, Lorg/bouncycastle/asn1/dma/kth;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/kth;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dma/kth;->getL()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dma/kth;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dma/kth;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dma/kth;->getL()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dma/kth;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dma/kth;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_0

    :goto_2
    return-void

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid info structure in DH public key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method constructor <init>(Lorg/bouncycastle/crypto/wtn/bio;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/bio;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEDHPublicKey;->y:Ljava/math/BigInteger;

    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/ssp;->getParameters()Lorg/bouncycastle/crypto/wtn/cno;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/wtn/cno;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/ssp;->getParameters()Lorg/bouncycastle/crypto/wtn/cno;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/wtn/cno;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/ssp;->getParameters()Lorg/bouncycastle/crypto/wtn/cno;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/cno;->getL()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    return-void
.end method

.method private kth(Lorg/bouncycastle/asn1/obl;)Z
    .locals 4

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result p0

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-le p0, v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ywr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ywr;

    move-result-object p0

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ywr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ywr;

    move-result-object p1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-lez p0, :cond_2

    return v3

    :cond_2
    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEDHPublicKey;->y:Ljava/math/BigInteger;

    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEDHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/JCEDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 0

    const-string p0, "DH"

    return-object p0
.end method

.method public getEncoded()[B
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEDHPublicKey;->info:Lorg/bouncycastle/asn1/x509/c;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/igw;->rtg(Lorg/bouncycastle/asn1/x509/c;)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/x509/zta;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->dhKeyAgreement:Lorg/bouncycastle/asn1/bvj;

    new-instance v2, Lorg/bouncycastle/asn1/dma/kth;

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JCEDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/jce/provider/JCEDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v4}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/jce/provider/JCEDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v5}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lorg/bouncycastle/asn1/dma/kth;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/zta;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    new-instance v1, Lorg/bouncycastle/asn1/ywr;

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/JCEDHPublicKey;->y:Ljava/math/BigInteger;

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/ywr;-><init>(Ljava/math/BigInteger;)V

    invoke-static {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/igw;->you(Lorg/bouncycastle/asn1/x509/zta;Lorg/bouncycastle/asn1/ssp;)[B

    move-result-object p0

    return-object p0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    const-string p0, "X.509"

    return-object p0
.end method

.method public getParams()Ljavax/crypto/spec/DHParameterSpec;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/JCEDHPublicKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    return-object p0
.end method

.method public getY()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/JCEDHPublicKey;->y:Ljava/math/BigInteger;

    return-object p0
.end method
