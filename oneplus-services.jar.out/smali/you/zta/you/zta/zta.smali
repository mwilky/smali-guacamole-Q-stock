.class public Lyou/zta/you/zta/zta;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# instance fields
.field Vsa:[B

.field content:Lorg/bouncycastle/asn1/n;

.field oxa:Lorg/bouncycastle/asn1/x509/zta;

.field pxa:Lorg/bouncycastle/asn1/x509/zta;

.field qxa:Ljava/lang/String;

.field rxa:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/zta;Ljava/security/PublicKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    iput-object p1, p0, Lyou/zta/you/zta/zta;->qxa:Ljava/lang/String;

    iput-object p2, p0, Lyou/zta/you/zta/zta;->oxa:Lorg/bouncycastle/asn1/x509/zta;

    iput-object p3, p0, Lyou/zta/you/zta/zta;->rxa:Ljava/security/PublicKey;

    new-instance p2, Lorg/bouncycastle/asn1/cno;

    invoke-direct {p2}, Lorg/bouncycastle/asn1/cno;-><init>()V

    invoke-direct {p0}, Lyou/zta/you/zta/zta;->Kt()Lorg/bouncycastle/asn1/vdb;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance p3, Lorg/bouncycastle/asn1/x;

    invoke-direct {p3, p1}, Lorg/bouncycastle/asn1/x;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :try_start_0
    new-instance p1, Lorg/bouncycastle/asn1/n;

    new-instance p3, Lorg/bouncycastle/asn1/G;

    invoke-direct {p3, p2}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    invoke-direct {p1, p3}, Lorg/bouncycastle/asn1/n;-><init>(Lorg/bouncycastle/asn1/ssp;)V

    iput-object p1, p0, Lyou/zta/you/zta/zta;->content:Lorg/bouncycastle/asn1/n;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "exception encoding key: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/zta;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v1

    iput-object v1, p0, Lyou/zta/you/zta/zta;->oxa:Lorg/bouncycastle/asn1/x509/zta;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/n;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/sis;->getOctets()[B

    move-result-object v2

    iput-object v2, p0, Lyou/zta/you/zta/zta;->Vsa:[B

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/obl;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v3

    if-ne v3, v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/x;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lyou/zta/you/zta/zta;->qxa:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/asn1/n;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/n;-><init>(Lorg/bouncycastle/asn1/ssp;)V

    iput-object v0, p0, Lyou/zta/you/zta/zta;->content:Lorg/bouncycastle/asn1/n;

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/c;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/c;

    move-result-object p1

    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/n;-><init>(Lorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/sis;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/c;->getAlgorithm()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object p1

    iput-object p1, p0, Lyou/zta/you/zta/zta;->pxa:Lorg/bouncycastle/asn1/x509/zta;

    iget-object p1, p0, Lyou/zta/you/zta/zta;->pxa:Lorg/bouncycastle/asn1/x509/zta;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/zta;->getAlgorithm()Lorg/bouncycastle/asn1/bvj;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BC"

    invoke-static {p1, v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    iput-object p1, p0, Lyou/zta/you/zta/zta;->rxa:Ljava/security/PublicKey;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid PKAC (len): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid SPKAC (size):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lyou/zta/you/zta/zta;->bud([B)Lorg/bouncycastle/asn1/obl;

    move-result-object p1

    invoke-direct {p0, p1}, Lyou/zta/you/zta/zta;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-void
.end method

.method private Kt()Lorg/bouncycastle/asn1/vdb;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    iget-object p0, p0, Lyou/zta/you/zta/zta;->rxa:Ljava/security/PublicKey;

    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    new-instance p0, Lorg/bouncycastle/asn1/dma;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v1}, Lorg/bouncycastle/asn1/dma;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/dma;->readObject()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static bud([B)Lorg/bouncycastle/asn1/obl;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/dma;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/dma;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/dma;->readObject()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public Ea(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lyou/zta/you/zta/zta;->qxa:Ljava/lang/String;

    return-void
.end method

.method public Ui()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyou/zta/you/zta/zta;->qxa:Ljava/lang/String;

    return-object p0
.end method

.method public Vi()Lorg/bouncycastle/asn1/x509/zta;
    .locals 0

    iget-object p0, p0, Lyou/zta/you/zta/zta;->pxa:Lorg/bouncycastle/asn1/x509/zta;

    return-object p0
.end method

.method public Wi()Lorg/bouncycastle/asn1/x509/zta;
    .locals 0

    iget-object p0, p0, Lyou/zta/you/zta/zta;->oxa:Lorg/bouncycastle/asn1/x509/zta;

    return-object p0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 0

    iget-object p0, p0, Lyou/zta/you/zta/zta;->rxa:Ljava/security/PublicKey;

    return-object p0
.end method

.method public setPublicKey(Ljava/security/PublicKey;)V
    .locals 0

    iput-object p1, p0, Lyou/zta/you/zta/zta;->rxa:Ljava/security/PublicKey;

    return-void
.end method

.method public sis(Lorg/bouncycastle/asn1/x509/zta;)V
    .locals 0

    iput-object p1, p0, Lyou/zta/you/zta/zta;->oxa:Lorg/bouncycastle/asn1/x509/zta;

    return-void
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/cno;-><init>()V

    :try_start_0
    invoke-direct {p0}, Lyou/zta/you/zta/zta;->Kt()Lorg/bouncycastle/asn1/vdb;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v2, Lorg/bouncycastle/asn1/x;

    iget-object v3, p0, Lyou/zta/you/zta/zta;->qxa:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/x;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance v2, Lorg/bouncycastle/asn1/G;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object v1, p0, Lyou/zta/you/zta/zta;->oxa:Lorg/bouncycastle/asn1/x509/zta;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance v1, Lorg/bouncycastle/asn1/n;

    iget-object p0, p0, Lyou/zta/you/zta/zta;->Vsa:[B

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/n;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance p0, Lorg/bouncycastle/asn1/G;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    return-object p0
.end method

.method public verify(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    iget-object v0, p0, Lyou/zta/you/zta/zta;->qxa:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p1, p0, Lyou/zta/you/zta/zta;->oxa:Lorg/bouncycastle/asn1/x509/zta;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/zta;->getAlgorithm()Lorg/bouncycastle/asn1/bvj;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BC"

    invoke-static {p1, v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p1

    iget-object v0, p0, Lyou/zta/you/zta/zta;->rxa:Ljava/security/PublicKey;

    invoke-virtual {p1, v0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    iget-object v0, p0, Lyou/zta/you/zta/zta;->content:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/sis;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/Signature;->update([B)V

    iget-object p0, p0, Lyou/zta/you/zta/zta;->Vsa:[B

    invoke-virtual {p1, p0}, Ljava/security/Signature;->verify([B)Z

    move-result p0

    return p0
.end method

.method public you(Lorg/bouncycastle/asn1/x509/zta;)V
    .locals 0

    iput-object p1, p0, Lyou/zta/you/zta/zta;->pxa:Lorg/bouncycastle/asn1/x509/zta;

    return-void
.end method

.method public zta(Ljava/security/PrivateKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lyou/zta/you/zta/zta;->zta(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public zta(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    iget-object v0, p0, Lyou/zta/you/zta/zta;->oxa:Lorg/bouncycastle/asn1/x509/zta;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/zta;->getAlgorithm()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BC"

    invoke-static {v0, v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {v0, p1, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    :goto_0
    new-instance p1, Lorg/bouncycastle/asn1/cno;

    invoke-direct {p1}, Lorg/bouncycastle/asn1/cno;-><init>()V

    invoke-direct {p0}, Lyou/zta/you/zta/zta;->Kt()Lorg/bouncycastle/asn1/vdb;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance p2, Lorg/bouncycastle/asn1/x;

    iget-object v1, p0, Lyou/zta/you/zta/zta;->qxa:Ljava/lang/String;

    invoke-direct {p2, v1}, Lorg/bouncycastle/asn1/x;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :try_start_0
    new-instance p2, Lorg/bouncycastle/asn1/G;

    invoke-direct {p2, p1}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    const-string p1, "DER"

    invoke-virtual {p2, p1}, Lorg/bouncycastle/asn1/oif;->getEncoded(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object p1

    iput-object p1, p0, Lyou/zta/you/zta/zta;->Vsa:[B

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/SignatureException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
