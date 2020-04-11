.class Lorg/bouncycastle/jce/provider/qbh;
.super Ljava/lang/Object;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static kth(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bvj/tsu;
    .locals 1

    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/qbh;->rtg(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/bvj/tsu;

    move-result-object p0

    return-object p0

    :cond_0
    check-cast p0, Lorg/bouncycastle/x509/cno;

    invoke-interface {p0}, Lorg/bouncycastle/x509/cno;->getIssuer()Lorg/bouncycastle/x509/you;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/x509/you;->getPrincipals()[Ljava/security/Principal;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    check-cast p0, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {p0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/bvj/tsu;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bvj/tsu;

    move-result-object p0

    return-object p0
.end method

.method static rtg(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/bvj/tsu;
    .locals 0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/bvj/tsu;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bvj/tsu;

    move-result-object p0

    return-object p0
.end method

.method static sis(Ljava/security/cert/X509CRL;)Lorg/bouncycastle/asn1/bvj/tsu;
    .locals 0

    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/bvj/tsu;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bvj/tsu;

    move-result-object p0

    return-object p0
.end method

.method static ssp(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/bvj/tsu;
    .locals 0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/bvj/tsu;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bvj/tsu;

    move-result-object p0

    return-object p0
.end method

.method static you(Ljava/security/cert/TrustAnchor;)Lorg/bouncycastle/asn1/bvj/tsu;
    .locals 0

    invoke-virtual {p0}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/bvj/tsu;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bvj/tsu;

    move-result-object p0

    return-object p0
.end method
