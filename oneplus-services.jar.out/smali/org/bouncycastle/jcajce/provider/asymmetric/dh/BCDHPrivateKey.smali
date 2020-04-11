.class public Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/crypto/interfaces/DHPrivateKey;
.implements Lorg/bouncycastle/jce/interfaces/tsu;


# static fields
.field static final serialVersionUID:J = 0x4511a58411962b4L


# instance fields
.field private transient attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;

.field private transient dhSpec:Ljavax/crypto/spec/DHParameterSpec;

.field private transient info:Lorg/bouncycastle/asn1/dma/vdb;

.field private transient oBa:Lorg/bouncycastle/crypto/wtn/kth;

.field private x:Ljava/math/BigInteger;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;

    return-void
.end method

.method constructor <init>(Ljavax/crypto/interfaces/DHPrivateKey;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->x:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    return-void
.end method

.method constructor <init>(Ljavax/crypto/spec/DHPrivateKeySpec;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPrivateKeySpec;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->x:Ljava/math/BigInteger;

    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPrivateKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPrivateKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/dma/vdb;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dma/vdb;->getPrivateKeyAlgorithm()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/zta;->getParameters()Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dma/vdb;->parsePrivateKey()Lorg/bouncycastle/asn1/ssp;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dma/vdb;->getPrivateKeyAlgorithm()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/zta;->getAlgorithm()Lorg/bouncycastle/asn1/bvj;

    move-result-object v2

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->info:Lorg/bouncycastle/asn1/dma/vdb;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->x:Ljava/math/BigInteger;

    sget-object p1, Lorg/bouncycastle/asn1/dma/gwm;->dhKeyAgreement:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v2, p1}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v0}, Lorg/bouncycastle/asn1/dma/kth;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/kth;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dma/kth;->getL()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dma/kth;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dma/kth;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dma/kth;->getL()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    new-instance v0, Lorg/bouncycastle/crypto/wtn/kth;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->x:Ljava/math/BigInteger;

    new-instance v2, Lorg/bouncycastle/crypto/wtn/cno;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dma/kth;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dma/kth;->getG()Ljava/math/BigInteger;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dma/kth;->getL()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-direct {v2, v3, v4, v5, p1}, Lorg/bouncycastle/crypto/wtn/cno;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/wtn/kth;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/wtn/cno;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dma/kth;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dma/kth;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    new-instance v0, Lorg/bouncycastle/crypto/wtn/kth;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->x:Ljava/math/BigInteger;

    new-instance v2, Lorg/bouncycastle/crypto/wtn/cno;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dma/kth;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dma/kth;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Lorg/bouncycastle/crypto/wtn/cno;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/wtn/kth;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/wtn/cno;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/bouncycastle/asn1/ibl/ivd;->dhpublicnumber:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v2, p1}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v0}, Lorg/bouncycastle/asn1/ibl/tsu;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ibl/tsu;

    move-result-object p1

    new-instance v6, Lorg/bouncycastle/jcajce/sis/you;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ibl/tsu;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ibl/tsu;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ibl/tsu;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ibl/tsu;->ig()Ljava/math/BigInteger;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/jcajce/sis/you;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    iput-object v6, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    new-instance v0, Lorg/bouncycastle/crypto/wtn/kth;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->x:Ljava/math/BigInteger;

    new-instance v8, Lorg/bouncycastle/crypto/wtn/cno;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ibl/tsu;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ibl/tsu;->getG()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ibl/tsu;->getQ()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ibl/tsu;->ig()Ljava/math/BigInteger;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/crypto/wtn/cno;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/wtn/igw;)V

    invoke-direct {v0, v1, v8}, Lorg/bouncycastle/crypto/wtn/kth;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/wtn/cno;)V

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->oBa:Lorg/bouncycastle/crypto/wtn/kth;

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown algorithm type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method constructor <init>(Lorg/bouncycastle/crypto/wtn/kth;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/kth;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->x:Ljava/math/BigInteger;

    new-instance v0, Lorg/bouncycastle/jcajce/sis/you;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/ssp;->getParameters()Lorg/bouncycastle/crypto/wtn/cno;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/sis/you;-><init>(Lorg/bouncycastle/crypto/wtn/cno;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

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

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->info:Lorg/bouncycastle/asn1/dma/vdb;

    new-instance p1, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;

    invoke-direct {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljavax/crypto/interfaces/DHPrivateKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljavax/crypto/interfaces/DHPrivateKey;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result p0

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result p1

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 0

    const-string p0, "DH"

    return-object p0
.end method

.method public getEncoded()[B
    .locals 13

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->info:Lorg/bouncycastle/asn1/dma/vdb;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "DER"

    if-eqz v1, :cond_0

    :try_start_1
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->info:Lorg/bouncycastle/asn1/dma/vdb;

    invoke-virtual {p0, v2}, Lorg/bouncycastle/asn1/oif;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    instance-of v1, v1, Lorg/bouncycastle/jcajce/sis/you;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    check-cast v1, Lorg/bouncycastle/jcajce/sis/you;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/sis/you;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    check-cast v1, Lorg/bouncycastle/jcajce/sis/you;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/sis/you;->hg()Lorg/bouncycastle/crypto/wtn/cno;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/wtn/cno;->ij()Lorg/bouncycastle/crypto/wtn/igw;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v4, Lorg/bouncycastle/asn1/ibl/ssp;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/wtn/igw;->getSeed()[B

    move-result-object v5

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/wtn/igw;->jj()I

    move-result v3

    invoke-direct {v4, v5, v3}, Lorg/bouncycastle/asn1/ibl/ssp;-><init>([BI)V

    move-object v11, v4

    goto :goto_0

    :cond_1
    move-object v11, v0

    :goto_0
    new-instance v3, Lorg/bouncycastle/asn1/dma/vdb;

    new-instance v4, Lorg/bouncycastle/asn1/x509/zta;

    sget-object v5, Lorg/bouncycastle/asn1/ibl/ivd;->dhpublicnumber:Lorg/bouncycastle/asn1/bvj;

    new-instance v12, Lorg/bouncycastle/asn1/ibl/tsu;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/wtn/cno;->getP()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/wtn/cno;->getG()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/wtn/cno;->getQ()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/wtn/cno;->ig()Ljava/math/BigInteger;

    move-result-object v10

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lorg/bouncycastle/asn1/ibl/tsu;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/asn1/ibl/ssp;)V

    invoke-virtual {v12}, Lorg/bouncycastle/asn1/ibl/tsu;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Lorg/bouncycastle/asn1/x509/zta;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    new-instance v1, Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/ywr;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v3, v4, v1}, Lorg/bouncycastle/asn1/dma/vdb;-><init>(Lorg/bouncycastle/asn1/x509/zta;Lorg/bouncycastle/asn1/ssp;)V

    goto :goto_1

    :cond_2
    new-instance v3, Lorg/bouncycastle/asn1/dma/vdb;

    new-instance v1, Lorg/bouncycastle/asn1/x509/zta;

    sget-object v4, Lorg/bouncycastle/asn1/dma/gwm;->dhKeyAgreement:Lorg/bouncycastle/asn1/bvj;

    new-instance v5, Lorg/bouncycastle/asn1/dma/kth;

    iget-object v6, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v6}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v6

    iget-object v7, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v7}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v7

    iget-object v8, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v8}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v8

    invoke-direct {v5, v6, v7, v8}, Lorg/bouncycastle/asn1/dma/kth;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/dma/kth;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lorg/bouncycastle/asn1/x509/zta;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    new-instance v4, Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v4, p0}, Lorg/bouncycastle/asn1/ywr;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v3, v1, v4}, Lorg/bouncycastle/asn1/dma/vdb;-><init>(Lorg/bouncycastle/asn1/x509/zta;Lorg/bouncycastle/asn1/ssp;)V

    :goto_1
    invoke-virtual {v3, v2}, Lorg/bouncycastle/asn1/oif;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    const-string p0, "PKCS#8"

    return-object p0
.end method

.method public getParams()Ljavax/crypto/spec/DHParameterSpec;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    return-object p0
.end method

.method public getX()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->x:Ljava/math/BigInteger;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method tj()Lorg/bouncycastle/crypto/wtn/kth;
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->oBa:Lorg/bouncycastle/crypto/wtn/kth;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    instance-of v1, v0, Lorg/bouncycastle/jcajce/sis/you;

    if-eqz v1, :cond_1

    new-instance v1, Lorg/bouncycastle/crypto/wtn/kth;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->x:Ljava/math/BigInteger;

    check-cast v0, Lorg/bouncycastle/jcajce/sis/you;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/sis/you;->hg()Lorg/bouncycastle/crypto/wtn/cno;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lorg/bouncycastle/crypto/wtn/kth;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/wtn/cno;)V

    return-object v1

    :cond_1
    new-instance v1, Lorg/bouncycastle/crypto/wtn/kth;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->x:Ljava/math/BigInteger;

    new-instance v3, Lorg/bouncycastle/crypto/wtn/cno;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v4}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v4

    const/4 v5, 0x0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result p0

    invoke-direct {v3, v0, v4, v5, p0}, Lorg/bouncycastle/crypto/wtn/cno;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/crypto/wtn/kth;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/wtn/cno;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->x:Ljava/math/BigInteger;

    new-instance v1, Lorg/bouncycastle/crypto/wtn/cno;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->dhSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lorg/bouncycastle/crypto/wtn/cno;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const-string p0, "DH"

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/sis;->zta(Ljava/lang/String;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/wtn/cno;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public vdb()Ljava/util/Enumeration;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;->vdb()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public zta(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/ssp;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;->zta(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    return-object p0
.end method

.method public zta(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;->attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;->zta(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    return-void
.end method
