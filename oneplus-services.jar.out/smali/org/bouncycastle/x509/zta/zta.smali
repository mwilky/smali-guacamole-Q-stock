.class public Lorg/bouncycastle/x509/zta/zta;
.super Lorg/bouncycastle/asn1/x509/cno;
.source ""


# direct methods
.method public constructor <init>(Ljava/security/PublicKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/x509/zta/zta;->rtg(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/obl;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/x509/cno;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/x509/zta/zta;->igw(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/obl;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/x509/cno;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/gwm;)V
    .locals 0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/gwm;->Uh()Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/obl;

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/x509/cno;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/n;)V
    .locals 0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/n;->Uh()Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/obl;

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/x509/cno;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/x509/zta/you;->hmo([B)Lorg/bouncycastle/asn1/vdb;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/obl;

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/x509/cno;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-void
.end method

.method private static igw(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/obl;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/x509/zgw;

    invoke-static {p0}, Lyou/zta/you/sis;->you(Ljava/security/cert/X509Certificate;)Lyou/zta/you/tsu;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/zgw;-><init>(Lorg/bouncycastle/asn1/x509/q;)V

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/c;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/c;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/asn1/x509/cno;

    new-instance v3, Lorg/bouncycastle/asn1/x509/obl;

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/x509/obl;-><init>(Lorg/bouncycastle/asn1/x509/zgw;)V

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v2, v1, v3, p0}, Lorg/bouncycastle/asn1/x509/cno;-><init>(Lorg/bouncycastle/asn1/x509/c;Lorg/bouncycastle/asn1/x509/obl;Ljava/math/BigInteger;)V

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/cno;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/obl;

    return-object p0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/x509/zgw;

    invoke-static {p0}, Lyou/zta/you/sis;->you(Ljava/security/cert/X509Certificate;)Lyou/zta/you/tsu;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/zgw;-><init>(Lorg/bouncycastle/asn1/x509/q;)V

    sget-object v1, Lorg/bouncycastle/asn1/x509/gwm;->Rqa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lorg/bouncycastle/x509/zta/you;->hmo([B)Lorg/bouncycastle/asn1/vdb;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ibl;

    new-instance v2, Lorg/bouncycastle/asn1/x509/cno;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object v1

    new-instance v3, Lorg/bouncycastle/asn1/x509/obl;

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/x509/obl;-><init>(Lorg/bouncycastle/asn1/x509/zgw;)V

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v2, v1, v3, p0}, Lorg/bouncycastle/asn1/x509/cno;-><init>([BLorg/bouncycastle/asn1/x509/obl;Ljava/math/BigInteger;)V

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/cno;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/obl;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/c;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/c;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/asn1/x509/cno;

    new-instance v3, Lorg/bouncycastle/asn1/x509/obl;

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/x509/obl;-><init>(Lorg/bouncycastle/asn1/x509/zgw;)V

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v2, v1, v3, p0}, Lorg/bouncycastle/asn1/x509/cno;-><init>(Lorg/bouncycastle/asn1/x509/c;Lorg/bouncycastle/asn1/x509/obl;Ljava/math/BigInteger;)V

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/cno;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/obl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/security/cert/CertificateParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception extracting certificate details: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static rtg(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/obl;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/c;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/c;

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/asn1/x509/cno;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/cno;-><init>(Lorg/bouncycastle/asn1/x509/c;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/cno;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/obl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t process key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
