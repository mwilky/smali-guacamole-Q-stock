.class public Lorg/bouncycastle/jce/provider/wtn;
.super Ljava/security/cert/CertPathBuilderSpi;
.source ""


# instance fields
.field private Opa:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/security/cert/CertPathBuilderSpi;-><init>()V

    return-void
.end method


# virtual methods
.method public engineBuild(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathBuilderException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    instance-of v0, p1, Ljava/security/cert/PKIXBuilderParameters;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/bouncycastle/jcajce/wtn$zta;

    move-object v1, p1

    check-cast v1, Ljava/security/cert/PKIXBuilderParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/wtn$zta;-><init>(Ljava/security/cert/PKIXParameters;)V

    instance-of v2, p1, Lorg/bouncycastle/x509/tsu;

    if-eqz v2, :cond_1

    check-cast p1, Lorg/bouncycastle/x509/sis;

    invoke-virtual {p1}, Lorg/bouncycastle/x509/tsu;->bg()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/jcajce/rtg;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/jcajce/wtn$zta;->zta(Lorg/bouncycastle/jcajce/rtg;)Lorg/bouncycastle/jcajce/wtn$zta;

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/bouncycastle/jcajce/bio$zta;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/wtn$zta;->build()Lorg/bouncycastle/jcajce/wtn;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/jcajce/bio$zta;-><init>(Lorg/bouncycastle/jcajce/wtn;)V

    invoke-virtual {p1}, Lorg/bouncycastle/x509/sis;->lg()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/bouncycastle/jcajce/bio$zta;->ssp(Ljava/util/Set;)Lorg/bouncycastle/jcajce/bio$zta;

    invoke-virtual {p1}, Lorg/bouncycastle/x509/sis;->getMaxPathLength()I

    move-result p1

    invoke-virtual {v1, p1}, Lorg/bouncycastle/jcajce/bio$zta;->setMaxPathLength(I)Lorg/bouncycastle/jcajce/bio$zta;

    move-object p1, v1

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/bouncycastle/jcajce/bio$zta;

    invoke-direct {p1, v1}, Lorg/bouncycastle/jcajce/bio$zta;-><init>(Ljava/security/cert/PKIXBuilderParameters;)V

    :goto_1
    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/bio$zta;->build()Lorg/bouncycastle/jcajce/bio;

    move-result-object p1

    goto :goto_2

    :cond_2
    instance-of v0, p1, Lorg/bouncycastle/jcajce/bio;

    if-eqz v0, :cond_9

    check-cast p1, Lorg/bouncycastle/jcajce/bio;

    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/bio;->Aj()Lorg/bouncycastle/jcajce/wtn;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/wtn;->gg()Lorg/bouncycastle/jcajce/cno;

    move-result-object v1

    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/bio;->Aj()Lorg/bouncycastle/jcajce/wtn;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/jcajce/wtn;->Cj()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/jce/provider/tsu;->zta(Lorg/bouncycastle/jcajce/cno;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/bio;->Aj()Lorg/bouncycastle/jcajce/wtn;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/wtn;->getCertStores()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/bouncycastle/jce/provider/tsu;->zta(Lorg/bouncycastle/jcajce/cno;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x0

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, v1, p1, v0}, Lorg/bouncycastle/jce/provider/wtn;->zta(Ljava/security/cert/X509Certificate;Lorg/bouncycastle/jcajce/bio;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v1

    goto :goto_3

    :cond_3
    if-nez v1, :cond_5

    iget-object p1, p0, Lorg/bouncycastle/jce/provider/wtn;->Opa:Ljava/lang/Exception;

    if-eqz p1, :cond_5

    instance-of v0, p1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/security/cert/CertPathBuilderException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/wtn;->Opa:Ljava/lang/Exception;

    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    new-instance p0, Ljava/security/cert/CertPathBuilderException;

    const-string v0, "Possible certificate chain could not be validated."

    invoke-direct {p0, v0, p1}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :cond_5
    if-nez v1, :cond_7

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/wtn;->Opa:Ljava/lang/Exception;

    if-eqz p0, :cond_6

    goto :goto_4

    :cond_6
    new-instance p0, Ljava/security/cert/CertPathBuilderException;

    const-string p1, "Unable to find certificate chain."

    invoke-direct {p0, p1}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_4
    return-object v1

    :cond_8
    new-instance p0, Ljava/security/cert/CertPathBuilderException;

    const-string p1, "No certificate found matching targetContraints."

    invoke-direct {p0, p1}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/jce/exception/ExtCertPathBuilderException;

    const-string v0, "Error finding target certificate."

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/jce/exception/ExtCertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_9
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Parameters must be an instance of "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Ljava/security/cert/PKIXBuilderParameters;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " or "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Lorg/bouncycastle/jcajce/bio;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected zta(Ljava/security/cert/X509Certificate;Lorg/bouncycastle/jcajce/bio;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;
    .locals 5

    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/bio;->lg()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/bio;->getMaxPathLength()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/bio;->getMaxPathLength()I

    move-result v2

    if-le v0, v2, :cond_2

    return-object v1

    :cond_2
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;-><init>()V

    new-instance v2, Lorg/bouncycastle/jce/provider/gck;

    invoke-direct {v2}, Lorg/bouncycastle/jce/provider/gck;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    :try_start_1
    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/bio;->Aj()Lorg/bouncycastle/jcajce/wtn;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/wtn;->getTrustAnchors()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/bio;->Aj()Lorg/bouncycastle/jcajce/wtn;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/jcajce/wtn;->getSigProvider()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v4}, Lorg/bouncycastle/jce/provider/tsu;->you(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v3, :cond_3

    :try_start_2
    invoke-virtual {v0, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->engineGenerateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {v2, v0, p2}, Lorg/bouncycastle/jce/provider/gck;->engineValidate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object p2

    check-cast p2, Ljava/security/cert/PKIXCertPathValidatorResult;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    new-instance v2, Ljava/security/cert/PKIXCertPathBuilderResult;

    invoke-virtual {p2}, Ljava/security/cert/PKIXCertPathValidatorResult;->getTrustAnchor()Ljava/security/cert/TrustAnchor;

    move-result-object v3

    invoke-virtual {p2}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPolicyTree()Ljava/security/cert/PolicyNode;

    move-result-object v4

    invoke-virtual {p2}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p2

    invoke-direct {v2, v0, v3, v4, p2}, Ljava/security/cert/PKIXCertPathBuilderResult;-><init>(Ljava/security/cert/CertPath;Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V

    return-object v2

    :catch_0
    move-exception p2

    new-instance v0, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "Certification path could not be validated."

    invoke-direct {v0, v2, p2}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p2

    new-instance v0, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "Certification path could not be constructed from certificate list."

    invoke-direct {v0, v2, p2}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/bio;->Aj()Lorg/bouncycastle/jcajce/wtn;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/jcajce/wtn;->Cj()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_4
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_4 .. :try_end_4} :catch_4

    :try_start_5
    sget-object v2, Lorg/bouncycastle/asn1/x509/gwm;->gua:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/bio;->Aj()Lorg/bouncycastle/jcajce/wtn;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/wtn;->Ej()Ljava/util/Map;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/bouncycastle/jce/provider/tsu;->zta([BLjava/util/Map;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_5
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_5 .. :try_end_5} :catch_4

    :try_start_6
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V
    :try_end_6
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_6 .. :try_end_6} :catch_4

    :try_start_7
    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/bio;->Aj()Lorg/bouncycastle/jcajce/wtn;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/wtn;->getCertStores()Ljava/util/List;

    move-result-object v3

    invoke-static {p1, v3, v0}, Lorg/bouncycastle/jce/provider/tsu;->zta(Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_7
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_7 .. :try_end_7} :catch_2

    :try_start_8
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, v2, p2, p3}, Lorg/bouncycastle/jce/provider/wtn;->zta(Ljava/security/cert/X509Certificate;Lorg/bouncycastle/jcajce/bio;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v1

    goto :goto_0

    :cond_4
    new-instance p2, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v0, "No issuer certificate for certificate in certification path found."

    invoke-direct {p2, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_2
    move-exception p2

    new-instance v0, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "Cannot find issuer certificate for certificate in certification path."

    invoke-direct {v0, v2, p2}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception p2

    new-instance v0, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "No additional X.509 stores can be added from certificate locations."

    invoke-direct {v0, v2, p2}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_8
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_8 .. :try_end_8} :catch_4

    :catch_4
    move-exception p2

    iput-object p2, p0, Lorg/bouncycastle/jce/provider/wtn;->Opa:Ljava/lang/Exception;

    :cond_5
    if-nez v1, :cond_6

    invoke-interface {p3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_6
    return-object v1

    :catch_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Exception creating support classes."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
