.class public Lorg/bouncycastle/jce/provider/gwm;
.super Ljava/security/cert/X509CRL;
.source ""


# instance fields
.field private Ipa:Ljava/lang/String;

.field private Jpa:[B

.field private Kpa:Z

.field private Lpa:Z

.field private Mpa:I

.field private c:Lorg/bouncycastle/asn1/x509/dma;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x509/dma;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jce/provider/gwm;->Lpa:Z

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/gwm;->c:Lorg/bouncycastle/asn1/x509/dma;

    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/dma;->_g()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jce/provider/ugm;->zta(Lorg/bouncycastle/asn1/x509/zta;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/gwm;->Ipa:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/dma;->_g()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/zta;->getParameters()Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/dma;->_g()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/zta;->getParameters()Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p1

    const-string v0, "DER"

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/oif;->getEncoded(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/gwm;->Jpa:[B

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/gwm;->Jpa:[B

    :goto_0
    invoke-static {p0}, Lorg/bouncycastle/jce/provider/gwm;->zta(Ljava/security/cert/X509CRL;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/bouncycastle/jce/provider/gwm;->Kpa:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/cert/CRLException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CRL contents invalid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private Ct()Ljava/util/Set;
    .locals 6

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/gwm;->c:Lorg/bouncycastle/asn1/x509/dma;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/dma;->Zh()Ljava/util/Enumeration;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/x509/e$zta;

    new-instance v4, Lorg/bouncycastle/jce/provider/ibl;

    iget-boolean v5, p0, Lorg/bouncycastle/jce/provider/gwm;->Kpa:Z

    invoke-direct {v4, v3, v5, v2}, Lorg/bouncycastle/jce/provider/ibl;-><init>(Lorg/bouncycastle/asn1/x509/e$zta;ZLorg/bouncycastle/asn1/bvj/tsu;)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-boolean v4, p0, Lorg/bouncycastle/jce/provider/gwm;->Kpa:Z

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/e$zta;->hasExtensions()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/e$zta;->getExtensions()Lorg/bouncycastle/asn1/x509/ugm;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/asn1/x509/gwm;->kqa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/x509/ugm;->ssp(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/x509/gwm;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/gwm;->gi()Lorg/bouncycastle/asn1/ssp;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/obl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/obl;->getNames()[Lorg/bouncycastle/asn1/x509/zgw;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/zgw;->getName()Lorg/bouncycastle/asn1/ssp;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/bvj/tsu;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bvj/tsu;

    move-result-object v2

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private eb(Z)Ljava/util/Set;
    .locals 4

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/gwm;->getVersion()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/gwm;->c:Lorg/bouncycastle/asn1/x509/dma;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/dma;->getTBSCertList()Lorg/bouncycastle/asn1/x509/e;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/e;->getExtensions()Lorg/bouncycastle/asn1/x509/ugm;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/ugm;->ii()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {p0, v2}, Lorg/bouncycastle/asn1/x509/ugm;->ssp(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/x509/gwm;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/gwm;->isCritical()Z

    move-result v3

    if-ne p1, v3, :cond_0

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private zta(Ljava/security/PublicKey;Ljava/security/Signature;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/gwm;->c:Lorg/bouncycastle/asn1/x509/dma;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/dma;->_g()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/gwm;->c:Lorg/bouncycastle/asn1/x509/dma;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/dma;->getTBSCertList()Lorg/bouncycastle/asn1/x509/e;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/e;->getSignature()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/oif;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/gwm;->getTBSCertList()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/security/Signature;->update([B)V

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/gwm;->getSignature()[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/security/Signature;->verify([B)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/security/SignatureException;

    const-string p1, "CRL does not verify with supplied public key."

    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/security/cert/CRLException;

    const-string p1, "Signature algorithm on CertificateList does not match TBSCertList."

    invoke-direct {p0, p1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zta(Ljava/security/cert/X509CRL;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    :try_start_0
    sget-object v0, Lorg/bouncycastle/asn1/x509/gwm;->pqa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ibl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ibl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/ire;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/ire;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/ire;->pi()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/bouncycastle/jce/provider/ExtCRLException;

    const-string v1, "Exception reading IssuingDistributionPoint"

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/jce/provider/ExtCRLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Ljava/security/cert/X509CRL;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    instance-of v0, p1, Lorg/bouncycastle/jce/provider/gwm;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/bouncycastle/jce/provider/gwm;

    iget-boolean v0, p0, Lorg/bouncycastle/jce/provider/gwm;->Lpa:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lorg/bouncycastle/jce/provider/gwm;->Lpa:Z

    if-eqz v0, :cond_2

    iget v0, p1, Lorg/bouncycastle/jce/provider/gwm;->Mpa:I

    iget v2, p0, Lorg/bouncycastle/jce/provider/gwm;->Mpa:I

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Lorg/bouncycastle/jce/provider/gwm;->c:Lorg/bouncycastle/asn1/x509/dma;

    iget-object p1, p1, Lorg/bouncycastle/jce/provider/gwm;->c:Lorg/bouncycastle/asn1/x509/dma;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/oif;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    invoke-super {p0, p1}, Ljava/security/cert/X509CRL;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/gwm;->eb(Z)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/jce/provider/gwm;->c:Lorg/bouncycastle/asn1/x509/dma;

    const-string v0, "DER"

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/oif;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/security/cert/CRLException;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 2

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/gwm;->c:Lorg/bouncycastle/asn1/x509/dma;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/dma;->getTBSCertList()Lorg/bouncycastle/asn1/x509/e;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/e;->getExtensions()Lorg/bouncycastle/asn1/x509/ugm;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/x509/ugm;->ssp(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/x509/gwm;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/gwm;->fi()Lorg/bouncycastle/asn1/ibl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/oif;->getEncoded()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error parsing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .locals 1

    new-instance v0, Lyou/zta/you/tsu;

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/gwm;->c:Lorg/bouncycastle/asn1/x509/dma;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/dma;->getIssuer()Lorg/bouncycastle/asn1/bvj/tsu;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/bvj/tsu;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/bvj/tsu;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bvj/tsu;

    move-result-object p0

    invoke-direct {v0, p0}, Lyou/zta/you/tsu;-><init>(Lorg/bouncycastle/asn1/bvj/tsu;)V

    return-object v0
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    :try_start_0
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/gwm;->c:Lorg/bouncycastle/asn1/x509/dma;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/dma;->getIssuer()Lorg/bouncycastle/asn1/bvj/tsu;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/oif;->getEncoded()[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "can\'t encode issuer DN"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getNextUpdate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/gwm;->c:Lorg/bouncycastle/asn1/x509/dma;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/dma;->getNextUpdate()Lorg/bouncycastle/asn1/x509/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/gwm;->c:Lorg/bouncycastle/asn1/x509/dma;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/dma;->getNextUpdate()Lorg/bouncycastle/asn1/x509/h;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/h;->getDate()Ljava/util/Date;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/gwm;->eb(Z)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/gwm;->c:Lorg/bouncycastle/asn1/x509/dma;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/dma;->Zh()Ljava/util/Enumeration;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/x509/e$zta;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/e$zta;->Ei()Lorg/bouncycastle/asn1/ywr;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance p1, Lorg/bouncycastle/jce/provider/ibl;

    iget-boolean p0, p0, Lorg/bouncycastle/jce/provider/gwm;->Kpa:Z

    invoke-direct {p1, v3, p0, v2}, Lorg/bouncycastle/jce/provider/ibl;-><init>(Lorg/bouncycastle/asn1/x509/e$zta;ZLorg/bouncycastle/asn1/bvj/tsu;)V

    return-object p1

    :cond_1
    iget-boolean v4, p0, Lorg/bouncycastle/jce/provider/gwm;->Kpa:Z

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/e$zta;->hasExtensions()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/e$zta;->getExtensions()Lorg/bouncycastle/asn1/x509/ugm;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/asn1/x509/gwm;->kqa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/x509/ugm;->ssp(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/x509/gwm;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/gwm;->gi()Lorg/bouncycastle/asn1/ssp;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/obl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/obl;->getNames()[Lorg/bouncycastle/asn1/x509/zgw;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/zgw;->getName()Lorg/bouncycastle/asn1/ssp;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/bvj/tsu;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bvj/tsu;

    move-result-object v2

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getRevokedCertificates()Ljava/util/Set;
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/jce/provider/gwm;->Ct()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSigAlgName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/gwm;->Ipa:Ljava/lang/String;

    return-object p0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/gwm;->c:Lorg/bouncycastle/asn1/x509/dma;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/dma;->_g()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/zta;->getAlgorithm()Lorg/bouncycastle/asn1/bvj;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSigAlgParams()[B
    .locals 3

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/gwm;->Jpa:[B

    if-eqz p0, :cond_0

    array-length v0, p0

    new-array v0, v0, [B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSignature()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/gwm;->c:Lorg/bouncycastle/asn1/x509/dma;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/dma;->getSignature()Lorg/bouncycastle/asn1/n;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/sis;->getOctets()[B

    move-result-object p0

    return-object p0
.end method

.method public getTBSCertList()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/jce/provider/gwm;->c:Lorg/bouncycastle/asn1/x509/dma;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/dma;->getTBSCertList()Lorg/bouncycastle/asn1/x509/e;

    move-result-object p0

    const-string v0, "DER"

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/oif;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/security/cert/CRLException;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getThisUpdate()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/gwm;->c:Lorg/bouncycastle/asn1/x509/dma;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/dma;->getThisUpdate()Lorg/bouncycastle/asn1/x509/h;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/h;->getDate()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getVersion()I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/gwm;->c:Lorg/bouncycastle/asn1/x509/dma;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/dma;->Yh()I

    move-result p0

    return p0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/gwm;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lorg/bouncycastle/jce/provider/oif;->FFa:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jce/provider/oif;->GFa:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/jce/provider/gwm;->Lpa:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jce/provider/gwm;->Lpa:Z

    invoke-super {p0}, Ljava/security/cert/X509CRL;->hashCode()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/jce/provider/gwm;->Mpa:I

    :cond_0
    iget p0, p0, Lorg/bouncycastle/jce/provider/gwm;->Mpa:I

    return p0
.end method

.method public isRevoked(Ljava/security/cert/Certificate;)Z
    .locals 8

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "X.509"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/gwm;->c:Lorg/bouncycastle/asn1/x509/dma;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/dma;->Zh()Ljava/util/Enumeration;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/gwm;->c:Lorg/bouncycastle/asn1/x509/dma;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/dma;->getIssuer()Lorg/bouncycastle/asn1/bvj/tsu;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    move-object v3, p1

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/x509/e$zta;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/e$zta;

    move-result-object v5

    iget-boolean v6, p0, Lorg/bouncycastle/jce/provider/gwm;->Kpa:Z

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/e$zta;->hasExtensions()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/e$zta;->getExtensions()Lorg/bouncycastle/asn1/x509/ugm;

    move-result-object v6

    sget-object v7, Lorg/bouncycastle/asn1/x509/gwm;->kqa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/x509/ugm;->ssp(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/x509/gwm;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/gwm;->gi()Lorg/bouncycastle/asn1/ssp;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/obl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/obl;->getNames()[Lorg/bouncycastle/asn1/x509/zgw;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/zgw;->getName()Lorg/bouncycastle/asn1/ssp;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/bvj/tsu;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bvj/tsu;

    move-result-object v1

    :cond_1
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/e$zta;->Ei()Lorg/bouncycastle/asn1/ywr;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    instance-of p0, p1, Ljava/security/cert/X509Certificate;

    if-eqz p0, :cond_2

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/bvj/tsu;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bvj/tsu;

    move-result-object p0

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/gck;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/gck;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/gck;->getIssuer()Lorg/bouncycastle/asn1/bvj/tsu;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1, p0}, Lorg/bouncycastle/asn1/bvj/tsu;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    const/4 p0, 0x1

    return p0

    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Cannot process certificate"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return v2

    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "X.509 CRL used with non X.509 Cert"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    const-string v0, " value = "

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lorg/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "              Version: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/gwm;->getVersion()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "             IssuerDN: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/gwm;->getIssuerDN()Ljava/security/Principal;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "          This update: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/gwm;->getThisUpdate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "          Next update: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/gwm;->getNextUpdate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "  Signature Algorithm: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/gwm;->getSigAlgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/gwm;->getSignature()[B

    move-result-object v3

    const-string v4, "            Signature: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/String;

    const/16 v5, 0x14

    const/4 v6, 0x0

    invoke-static {v3, v6, v5}, Lorg/bouncycastle/util/encoders/tsu;->encode([BII)[B

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v4, v5

    :goto_0
    array-length v6, v3

    if-ge v4, v6, :cond_1

    array-length v6, v3

    sub-int/2addr v6, v5

    const-string v7, "                       "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-ge v4, v6, :cond_0

    new-instance v6, Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lorg/bouncycastle/util/encoders/tsu;->encode([BII)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    :cond_0
    new-instance v6, Ljava/lang/String;

    array-length v7, v3

    sub-int/2addr v7, v4

    invoke-static {v3, v4, v7}, Lorg/bouncycastle/util/encoders/tsu;->encode([BII)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    :goto_1
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x14

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/gwm;->c:Lorg/bouncycastle/asn1/x509/dma;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/dma;->getTBSCertList()Lorg/bouncycastle/asn1/x509/e;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/e;->getExtensions()Lorg/bouncycastle/asn1/x509/ugm;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/ugm;->ii()Ljava/util/Enumeration;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "           Extensions: "

    :goto_2
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    :goto_3
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v3, v5}, Lorg/bouncycastle/asn1/x509/ugm;->ssp(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/x509/gwm;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/gwm;->fi()Lorg/bouncycastle/asn1/ibl;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/gwm;->fi()Lorg/bouncycastle/asn1/ibl;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object v7

    new-instance v8, Lorg/bouncycastle/asn1/dma;

    invoke-direct {v8, v7}, Lorg/bouncycastle/asn1/dma;-><init>([B)V

    const-string v7, "                       critical("

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/gwm;->isCritical()Z

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v6, ") "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :try_start_0
    sget-object v6, Lorg/bouncycastle/asn1/x509/gwm;->hua:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v6, Lorg/bouncycastle/asn1/x509/igw;

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/dma;->readObject()Lorg/bouncycastle/asn1/vdb;

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/asn1/ywr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ywr;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ywr;->Rg()Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/x509/igw;-><init>(Ljava/math/BigInteger;)V

    :goto_4
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :goto_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_4
    sget-object v6, Lorg/bouncycastle/asn1/x509/gwm;->mqa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Base CRL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Lorg/bouncycastle/asn1/x509/igw;

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/dma;->readObject()Lorg/bouncycastle/asn1/vdb;

    move-result-object v8

    invoke-static {v8}, Lorg/bouncycastle/asn1/ywr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ywr;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/ywr;->Rg()Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/bouncycastle/asn1/x509/igw;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_6
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_5
    sget-object v6, Lorg/bouncycastle/asn1/x509/gwm;->pqa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/dma;->readObject()Lorg/bouncycastle/asn1/vdb;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/x509/ire;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/ire;

    move-result-object v6

    goto :goto_4

    :cond_6
    sget-object v6, Lorg/bouncycastle/asn1/x509/gwm;->lua:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/dma;->readObject()Lorg/bouncycastle/asn1/vdb;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/x509/bio;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/bio;

    move-result-object v6

    goto :goto_4

    :cond_7
    sget-object v6, Lorg/bouncycastle/asn1/x509/gwm;->rua:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/dma;->readObject()Lorg/bouncycastle/asn1/vdb;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/x509/bio;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/bio;

    move-result-object v6

    goto :goto_4

    :cond_8
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/dma;->readObject()Lorg/bouncycastle/asn1/vdb;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/oif/zta;->cno(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "*****"

    goto/16 :goto_2

    :cond_9
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/gwm;->getRevokedCertificates()Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    :cond_a
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public verify(Ljava/security/PublicKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/gwm;->getSigAlgName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BC"

    invoke-static {v0, v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/gwm;->getSigAlgName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jce/provider/gwm;->zta(Ljava/security/PublicKey;Ljava/security/Signature;)V

    return-void
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/gwm;->getSigAlgName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/gwm;->getSigAlgName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jce/provider/gwm;->zta(Ljava/security/PublicKey;Ljava/security/Signature;)V

    return-void
.end method

.method public verify(Ljava/security/PublicKey;Ljava/security/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/gwm;->getSigAlgName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/gwm;->getSigAlgName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jce/provider/gwm;->zta(Ljava/security/PublicKey;Ljava/security/Signature;)V

    return-void
.end method
