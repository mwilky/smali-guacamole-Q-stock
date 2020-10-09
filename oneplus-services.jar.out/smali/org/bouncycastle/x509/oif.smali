.class public Lorg/bouncycastle/x509/oif;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private Isa:Ljava/lang/String;

.field private final XIa:Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;

.field private YIa:Lorg/bouncycastle/asn1/x509/k;

.field private ZIa:Lorg/bouncycastle/asn1/bvj;

.field private final bcHelper:Lorg/bouncycastle/jcajce/tsu/tsu;

.field private cJa:Lorg/bouncycastle/asn1/x509/p;

.field private eta:Lorg/bouncycastle/asn1/x509/zta;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/tsu/you;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/tsu/you;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/oif;->bcHelper:Lorg/bouncycastle/jcajce/tsu/tsu;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/oif;->XIa:Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;

    new-instance v0, Lorg/bouncycastle/asn1/x509/k;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/k;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/oif;->YIa:Lorg/bouncycastle/asn1/x509/k;

    new-instance v0, Lorg/bouncycastle/asn1/x509/p;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/p;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/oif;->cJa:Lorg/bouncycastle/asn1/x509/p;

    return-void
.end method

.method private au()Lorg/bouncycastle/asn1/x509/f;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/oif;->cJa:Lorg/bouncycastle/asn1/x509/p;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/p;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/x509/oif;->YIa:Lorg/bouncycastle/asn1/x509/k;

    iget-object v1, p0, Lorg/bouncycastle/x509/oif;->cJa:Lorg/bouncycastle/asn1/x509/p;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/p;->generate()Lorg/bouncycastle/asn1/x509/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/k;->you(Lorg/bouncycastle/asn1/x509/o;)V

    :cond_0
    iget-object p0, p0, Lorg/bouncycastle/x509/oif;->YIa:Lorg/bouncycastle/asn1/x509/k;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/k;->generateTBSCertificate()Lorg/bouncycastle/asn1/x509/f;

    move-result-object p0

    return-object p0
.end method

.method private sis([Z)Lorg/bouncycastle/asn1/n;
    .locals 6

    array-length p0, p1

    add-int/lit8 p0, p0, 0x7

    div-int/lit8 p0, p0, 0x8

    new-array p0, p0, [B

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_1

    div-int/lit8 v2, v1, 0x8

    aget-byte v3, p0, v2

    aget-boolean v4, p1, v1

    if-eqz v4, :cond_0

    rem-int/lit8 v4, v1, 0x8

    rsub-int/lit8 v4, v4, 0x7

    const/4 v5, 0x1

    shl-int v4, v5, v4

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    array-length p1, p1

    rem-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_2

    new-instance p1, Lorg/bouncycastle/asn1/n;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/n;-><init>([B)V

    return-object p1

    :cond_2
    new-instance v0, Lorg/bouncycastle/asn1/n;

    rsub-int/lit8 p1, p1, 0x8

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/asn1/n;-><init>([BI)V

    return-object v0
.end method

.method private zta(Lorg/bouncycastle/asn1/x509/f;[B)Ljava/security/cert/X509Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object p1, p0, Lorg/bouncycastle/x509/oif;->eta:Lorg/bouncycastle/asn1/x509/zta;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance p1, Lorg/bouncycastle/asn1/n;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/n;-><init>([B)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object p0, p0, Lorg/bouncycastle/x509/oif;->XIa:Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;

    new-instance p1, Ljava/io/ByteArrayInputStream;

    new-instance p2, Lorg/bouncycastle/asn1/G;

    invoke-direct {p2, v0}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    const-string v0, "DER"

    invoke-virtual {p2, v0}, Lorg/bouncycastle/asn1/oif;->getEncoded(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->engineGenerateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    return-object p0
.end method


# virtual methods
.method public generate(Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/x509/oif;->you(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    return-object p0
.end method

.method public generate(Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/x509/oif;->zta(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    return-object p0
.end method

.method public reset()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/x509/k;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/k;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/oif;->YIa:Lorg/bouncycastle/asn1/x509/k;

    iget-object p0, p0, Lorg/bouncycastle/x509/oif;->cJa:Lorg/bouncycastle/asn1/x509/p;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/p;->reset()V

    return-void
.end method

.method public rl()Ljava/util/Iterator;
    .locals 0

    invoke-static {}, Lorg/bouncycastle/x509/dma;->ql()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public setIssuerDN(Ljavax/security/auth/x500/X500Principal;)V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/x509/oif;->YIa:Lorg/bouncycastle/asn1/x509/k;

    new-instance v0, Lyou/zta/you/tsu;

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lyou/zta/you/tsu;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/x509/k;->zta(Lorg/bouncycastle/asn1/x509/q;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t process principal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNotAfter(Ljava/util/Date;)V
    .locals 1

    iget-object p0, p0, Lorg/bouncycastle/x509/oif;->YIa:Lorg/bouncycastle/asn1/x509/k;

    new-instance v0, Lorg/bouncycastle/asn1/x509/h;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/x509/h;-><init>(Ljava/util/Date;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/x509/k;->zta(Lorg/bouncycastle/asn1/x509/h;)V

    return-void
.end method

.method public setNotBefore(Ljava/util/Date;)V
    .locals 1

    iget-object p0, p0, Lorg/bouncycastle/x509/oif;->YIa:Lorg/bouncycastle/asn1/x509/k;

    new-instance v0, Lorg/bouncycastle/asn1/x509/h;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/x509/h;-><init>(Ljava/util/Date;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/x509/k;->you(Lorg/bouncycastle/asn1/x509/h;)V

    return-void
.end method

.method public setPublicKey(Ljava/security/PublicKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/x509/oif;->YIa:Lorg/bouncycastle/asn1/x509/k;

    new-instance v0, Lorg/bouncycastle/asn1/dma;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/dma;-><init>([B)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/dma;->readObject()Lorg/bouncycastle/asn1/vdb;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/c;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/x509/k;->sis(Lorg/bouncycastle/asn1/x509/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to process key - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSerialNumber(Ljava/math/BigInteger;)V
    .locals 1

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lorg/bouncycastle/x509/oif;->YIa:Lorg/bouncycastle/asn1/x509/k;

    new-instance v0, Lorg/bouncycastle/asn1/ywr;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ywr;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/x509/k;->zta(Lorg/bouncycastle/asn1/ywr;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "serial number must be a positive integer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSignatureAlgorithm(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lorg/bouncycastle/x509/oif;->Isa:Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/x509/dma;->Za(Ljava/lang/String;)Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/x509/oif;->ZIa:Lorg/bouncycastle/asn1/bvj;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lorg/bouncycastle/x509/oif;->ZIa:Lorg/bouncycastle/asn1/bvj;

    invoke-static {v0, p1}, Lorg/bouncycastle/x509/dma;->rtg(Lorg/bouncycastle/asn1/bvj;Ljava/lang/String;)Lorg/bouncycastle/asn1/x509/zta;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/x509/oif;->eta:Lorg/bouncycastle/asn1/x509/zta;

    iget-object p1, p0, Lorg/bouncycastle/x509/oif;->YIa:Lorg/bouncycastle/asn1/x509/k;

    iget-object p0, p0, Lorg/bouncycastle/x509/oif;->eta:Lorg/bouncycastle/asn1/x509/zta;

    invoke-virtual {p1, p0}, Lorg/bouncycastle/asn1/x509/k;->tsu(Lorg/bouncycastle/asn1/x509/zta;)V

    return-void

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown signature type requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSubjectDN(Ljavax/security/auth/x500/X500Principal;)V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/x509/oif;->YIa:Lorg/bouncycastle/asn1/x509/k;

    new-instance v0, Lyou/zta/you/tsu;

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lyou/zta/you/tsu;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/x509/k;->you(Lorg/bouncycastle/asn1/x509/q;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t process principal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sis(Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    :try_start_0
    const-string v0, "BC"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/bouncycastle/x509/oif;->you(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "BC provider not installed!"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public sis(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    :try_start_0
    const-string v0, "BC"

    invoke-virtual {p0, p1, v0, p2}, Lorg/bouncycastle/x509/oif;->you(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "BC provider not installed!"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public sis(Lorg/bouncycastle/asn1/x509/q;)V
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/x509/oif;->YIa:Lorg/bouncycastle/asn1/x509/k;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/x509/k;->zta(Lorg/bouncycastle/asn1/x509/q;)V

    return-void
.end method

.method public tsu(Lorg/bouncycastle/asn1/x509/q;)V
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/x509/oif;->YIa:Lorg/bouncycastle/asn1/x509/k;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/x509/k;->you(Lorg/bouncycastle/asn1/x509/q;)V

    return-void
.end method

.method public you(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/lang/SecurityException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/x509/oif;->zta(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p0

    throw p0

    :catch_2
    move-exception p0

    throw p0

    :catch_3
    move-exception p0

    throw p0
.end method

.method public you(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/x509/oif;->au()Lorg/bouncycastle/asn1/x509/f;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/x509/oif;->ZIa:Lorg/bouncycastle/asn1/bvj;

    iget-object v2, p0, Lorg/bouncycastle/x509/oif;->Isa:Ljava/lang/String;

    invoke-static {v1, v2, p1, p2, v0}, Lorg/bouncycastle/x509/dma;->zta(Lorg/bouncycastle/asn1/bvj;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/SecureRandom;Lorg/bouncycastle/asn1/ssp;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/x509/oif;->zta(Lorg/bouncycastle/asn1/x509/f;[B)Ljava/security/cert/X509Certificate;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/x509/ExtCertificateEncodingException;

    const-string p2, "exception producing certificate object"

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/x509/ExtCertificateEncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lorg/bouncycastle/x509/ExtCertificateEncodingException;

    const-string p2, "exception encoding TBS cert"

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/x509/ExtCertificateEncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public you([Z)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/oif;->YIa:Lorg/bouncycastle/asn1/x509/k;

    invoke-direct {p0, p1}, Lorg/bouncycastle/x509/oif;->sis([Z)Lorg/bouncycastle/asn1/n;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/x509/k;->you(Lorg/bouncycastle/asn1/n;)V

    return-void
.end method

.method public zta(Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/lang/SecurityException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/x509/oif;->you(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    return-object p0
.end method

.method public zta(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/x509/oif;->au()Lorg/bouncycastle/asn1/x509/f;

    move-result-object v6

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/x509/oif;->ZIa:Lorg/bouncycastle/asn1/bvj;

    iget-object v1, p0, Lorg/bouncycastle/x509/oif;->Isa:Ljava/lang/String;

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/x509/dma;->zta(Lorg/bouncycastle/asn1/bvj;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/SecureRandom;Lorg/bouncycastle/asn1/ssp;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-direct {p0, v6, p1}, Lorg/bouncycastle/x509/oif;->zta(Lorg/bouncycastle/asn1/x509/f;[B)Ljava/security/cert/X509Certificate;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/x509/ExtCertificateEncodingException;

    const-string p2, "exception producing certificate object"

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/x509/ExtCertificateEncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lorg/bouncycastle/x509/ExtCertificateEncodingException;

    const-string p2, "exception encoding TBS cert"

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/x509/ExtCertificateEncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public zta(Ljava/lang/String;ZLjava/security/cert/X509Certificate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    invoke-virtual {p3, p1}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object p3

    if-eqz p3, :cond_0

    :try_start_0
    invoke-static {p3}, Lorg/bouncycastle/x509/zta/you;->hmo([B)Lorg/bouncycastle/asn1/vdb;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/x509/oif;->zta(Ljava/lang/String;ZLorg/bouncycastle/asn1/ssp;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/cert/CertificateParsingException;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p0, Ljava/security/cert/CertificateParsingException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "extension "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not present"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public zta(Ljava/lang/String;ZLorg/bouncycastle/asn1/ssp;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/bouncycastle/x509/oif;->zta(Lorg/bouncycastle/asn1/bvj;ZLorg/bouncycastle/asn1/ssp;)V

    return-void
.end method

.method public zta(Ljava/lang/String;Z[B)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/bouncycastle/x509/oif;->zta(Lorg/bouncycastle/asn1/bvj;Z[B)V

    return-void
.end method

.method public zta(Lorg/bouncycastle/asn1/bvj;ZLjava/security/cert/X509Certificate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/x509/oif;->zta(Ljava/lang/String;ZLjava/security/cert/X509Certificate;)V

    return-void
.end method

.method public zta(Lorg/bouncycastle/asn1/bvj;ZLorg/bouncycastle/asn1/ssp;)V
    .locals 1

    iget-object p0, p0, Lorg/bouncycastle/x509/oif;->cJa:Lorg/bouncycastle/asn1/x509/p;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/bouncycastle/asn1/x509/p;->zta(Lorg/bouncycastle/asn1/bvj;ZLorg/bouncycastle/asn1/ssp;)V

    return-void
.end method

.method public zta(Lorg/bouncycastle/asn1/bvj;Z[B)V
    .locals 1

    iget-object p0, p0, Lorg/bouncycastle/x509/oif;->cJa:Lorg/bouncycastle/asn1/x509/p;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/bouncycastle/asn1/x509/p;->zta(Lorg/bouncycastle/asn1/bvj;Z[B)V

    return-void
.end method

.method public zta([Z)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/oif;->YIa:Lorg/bouncycastle/asn1/x509/k;

    invoke-direct {p0, p1}, Lorg/bouncycastle/x509/oif;->sis([Z)Lorg/bouncycastle/asn1/n;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/x509/k;->zta(Lorg/bouncycastle/asn1/n;)V

    return-void
.end method
