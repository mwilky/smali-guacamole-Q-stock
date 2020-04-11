.class public Lyou/zta/you/sis;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sis(Ljava/security/cert/X509Certificate;)Lyou/zta/you/tsu;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/vdb;->fromByteArray([B)Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/g;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/g;

    move-result-object p0

    new-instance v0, Lyou/zta/you/tsu;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/g;->getSubject()Lorg/bouncycastle/asn1/bvj/tsu;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/q;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/q;

    move-result-object p0

    invoke-direct {v0, p0}, Lyou/zta/you/tsu;-><init>(Lorg/bouncycastle/asn1/x509/q;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static you(Ljava/security/cert/X509CRL;)Lyou/zta/you/tsu;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getTBSCertList()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/vdb;->fromByteArray([B)Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/e;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/e;

    move-result-object p0

    new-instance v0, Lyou/zta/you/tsu;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/e;->getIssuer()Lorg/bouncycastle/asn1/bvj/tsu;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/q;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/q;

    move-result-object p0

    invoke-direct {v0, p0}, Lyou/zta/you/tsu;-><init>(Lorg/bouncycastle/asn1/x509/q;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/security/cert/CRLException;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static you(Ljava/security/cert/X509Certificate;)Lyou/zta/you/tsu;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/vdb;->fromByteArray([B)Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/g;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/g;

    move-result-object p0

    new-instance v0, Lyou/zta/you/tsu;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/g;->getIssuer()Lorg/bouncycastle/asn1/bvj/tsu;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/q;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/q;

    move-result-object p0

    invoke-direct {v0, p0}, Lyou/zta/you/tsu;-><init>(Lorg/bouncycastle/asn1/x509/q;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
