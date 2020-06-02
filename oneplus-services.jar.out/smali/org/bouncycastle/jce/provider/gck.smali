.class public Lorg/bouncycastle/jce/provider/gck;
.super Ljava/security/cert/CertPathValidatorSpi;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jce/provider/gck$zta;
    }
.end annotation


# instance fields
.field private final helper:Lorg/bouncycastle/jcajce/tsu/tsu;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/security/cert/CertPathValidatorSpi;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/tsu/you;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/tsu/you;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/gck;->helper:Lorg/bouncycastle/jcajce/tsu/tsu;

    return-void
.end method

.method static zta(Ljava/security/cert/X509Certificate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/f;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/f;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Lorg/bouncycastle/jce/provider/AnnotatedException;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v1, "unable to process TBSCertificate"

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public engineValidate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v1, p2

    instance-of v2, v1, Ljava/security/cert/PKIXParameters;

    if-eqz v2, :cond_1

    new-instance v2, Lorg/bouncycastle/jcajce/wtn$zta;

    move-object v3, v1

    check-cast v3, Ljava/security/cert/PKIXParameters;

    invoke-direct {v2, v3}, Lorg/bouncycastle/jcajce/wtn$zta;-><init>(Ljava/security/cert/PKIXParameters;)V

    instance-of v3, v1, Lorg/bouncycastle/x509/tsu;

    if-eqz v3, :cond_0

    check-cast v1, Lorg/bouncycastle/x509/tsu;

    invoke-virtual {v1}, Lorg/bouncycastle/x509/tsu;->lg()Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/jcajce/wtn$zta;->W(Z)Lorg/bouncycastle/jcajce/wtn$zta;

    invoke-virtual {v1}, Lorg/bouncycastle/x509/tsu;->jg()I

    move-result v1

    invoke-virtual {v2, v1}, Lorg/bouncycastle/jcajce/wtn$zta;->ba(I)Lorg/bouncycastle/jcajce/wtn$zta;

    :cond_0
    invoke-virtual {v2}, Lorg/bouncycastle/jcajce/wtn$zta;->build()Lorg/bouncycastle/jcajce/wtn;

    move-result-object v1

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lorg/bouncycastle/jcajce/bio;

    if-eqz v2, :cond_2

    check-cast v1, Lorg/bouncycastle/jcajce/bio;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/bio;->Bj()Lorg/bouncycastle/jcajce/wtn;

    move-result-object v1

    goto :goto_0

    :cond_2
    instance-of v2, v1, Lorg/bouncycastle/jcajce/wtn;

    if-eqz v2, :cond_1a

    check-cast v1, Lorg/bouncycastle/jcajce/wtn;

    :goto_0
    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/wtn;->getTrustAnchors()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, -0x1

    const/4 v12, 0x0

    if-nez v2, :cond_18

    const/4 v13, 0x0

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {}, Lorg/bouncycastle/jce/provider/gck$zta;->access$000()Lorg/bouncycastle/jce/provider/sis;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/bouncycastle/jce/provider/sis;->igw(Ljava/math/BigInteger;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Certificate revocation of serial 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {v1, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1, v9, v13}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_4
    :goto_1
    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/wtn;->getInitialPolicies()Ljava/util/Set;

    move-result-object v14

    const/4 v15, 0x1

    :try_start_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v15

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/wtn;->getTrustAnchors()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/wtn;->getSigProvider()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lorg/bouncycastle/jce/provider/tsu;->zta(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;

    move-result-object v8

    if-eqz v8, :cond_17

    invoke-virtual {v8}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/jce/provider/gck;->zta(Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_5

    new-instance v2, Lorg/bouncycastle/jcajce/wtn$zta;

    invoke-direct {v2, v1}, Lorg/bouncycastle/jcajce/wtn$zta;-><init>(Lorg/bouncycastle/jcajce/wtn;)V

    invoke-virtual {v2, v8}, Lorg/bouncycastle/jcajce/wtn$zta;->zta(Ljava/security/cert/TrustAnchor;)Lorg/bouncycastle/jcajce/wtn$zta;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/wtn$zta;->build()Lorg/bouncycastle/jcajce/wtn;

    move-result-object v16

    add-int/lit8 v1, v11, 0x1

    new-array v7, v1, [Ljava/util/ArrayList;

    move v2, v13

    :goto_2
    array-length v4, v7

    if-ge v2, v4, :cond_5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    aput-object v4, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const-string v4, "2.5.29.32.0"

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/bouncycastle/jce/provider/ywr;

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    const/16 v19, 0x0

    const/16 v21, 0x0

    new-instance v22, Ljava/util/HashSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashSet;-><init>()V

    const/16 v24, 0x0

    const-string v23, "2.5.29.32.0"

    move-object/from16 v17, v4

    move-object/from16 v20, v2

    invoke-direct/range {v17 .. v24}, Lorg/bouncycastle/jce/provider/ywr;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    aget-object v2, v7, v13

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Lorg/bouncycastle/jce/provider/dma;

    invoke-direct {v6}, Lorg/bouncycastle/jce/provider/dma;-><init>()V

    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/jcajce/wtn;->isExplicitPolicyRequired()Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v13

    goto :goto_3

    :cond_6
    move v2, v1

    :goto_3
    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/jcajce/wtn;->isAnyPolicyInhibited()Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v13

    goto :goto_4

    :cond_7
    move v5, v1

    :goto_4
    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/jcajce/wtn;->isPolicyMappingInhibited()Z

    move-result v18

    if-eqz v18, :cond_8

    move v1, v13

    :cond_8
    invoke-virtual {v8}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v18

    if-eqz v18, :cond_9

    :try_start_1
    invoke-static/range {v18 .. v18}, Lorg/bouncycastle/jce/provider/qbh;->ssp(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/bvj/tsu;

    move-result-object v19

    invoke-virtual/range {v18 .. v18}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v20

    goto :goto_5

    :cond_9
    invoke-static {v8}, Lorg/bouncycastle/jce/provider/qbh;->you(Ljava/security/cert/TrustAnchor;)Lorg/bouncycastle/asn1/bvj/tsu;

    move-result-object v19

    invoke-virtual {v8}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v20
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_5
    :try_start_2
    invoke-static/range {v20 .. v20}, Lorg/bouncycastle/jce/provider/tsu;->sis(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v3
    :try_end_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/zta;->getAlgorithm()Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/zta;->getParameters()Lorg/bouncycastle/asn1/ssp;

    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/jcajce/wtn;->hg()Lorg/bouncycastle/jcajce/cno;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/jcajce/wtn;->hg()Lorg/bouncycastle/jcajce/cno;

    move-result-object v3

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v15, v21

    check-cast v15, Ljava/security/cert/X509Certificate;

    invoke-virtual {v3, v15}, Lorg/bouncycastle/jcajce/cno;->match(Ljava/security/cert/Certificate;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_6

    :cond_a
    new-instance v0, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Target certificate in certification path does not match targetConstraints."

    invoke-direct {v0, v1, v12, v9, v13}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_b
    :goto_6
    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/jcajce/wtn;->getCertPathCheckers()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v12, v21

    check-cast v12, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v12, v13}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V

    const/4 v12, 0x0

    goto :goto_7

    :cond_c
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    const/4 v12, 0x1

    sub-int/2addr v3, v12

    move v13, v1

    move v1, v5

    move/from16 v25, v11

    move v5, v3

    const/4 v3, 0x0

    move-object/from16 v32, v4

    move v4, v2

    move-object/from16 v2, v20

    move-object/from16 v20, v18

    move-object/from16 v18, v32

    :goto_8
    if-ltz v5, :cond_13

    invoke-static {}, Lorg/bouncycastle/jce/provider/gck$zta;->access$000()Lorg/bouncycastle/jce/provider/sis;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/bouncycastle/jce/provider/sis;->you(Ljava/security/PublicKey;)Z

    move-result v3

    if-nez v3, :cond_12

    sub-int v3, v11, v5

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v24, v14

    move-object/from16 v14, v23

    check-cast v14, Ljava/security/cert/X509Certificate;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v26, v1

    add-int/lit8 v1, v23, -0x1

    if-ne v5, v1, :cond_d

    const/4 v12, 0x1

    goto :goto_9

    :cond_d
    const/4 v12, 0x0

    :goto_9
    :try_start_3
    invoke-static {v14}, Lorg/bouncycastle/jce/provider/gck;->zta(Ljava/security/cert/X509Certificate;)V
    :try_end_3
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_1

    iget-object v1, v0, Lorg/bouncycastle/jce/provider/gck;->helper:Lorg/bouncycastle/jcajce/tsu/tsu;

    move-object/from16 v23, v1

    move-object/from16 v1, p1

    move-object/from16 v27, v2

    move-object/from16 v2, v16

    move-object/from16 v28, v10

    move v10, v3

    move v3, v5

    move v0, v4

    move-object/from16 v4, v27

    move-object/from16 v29, v15

    move v15, v5

    move v5, v12

    move-object v12, v6

    move-object/from16 v6, v19

    move-object/from16 v30, v7

    move-object/from16 v7, v20

    move-object/from16 v31, v8

    move-object/from16 v8, v23

    invoke-static/range {v1 .. v8}, Lorg/bouncycastle/jce/provider/oif;->zta(Ljava/security/cert/CertPath;Lorg/bouncycastle/jcajce/wtn;ILjava/security/PublicKey;ZLorg/bouncycastle/asn1/bvj/tsu;Ljava/security/cert/X509Certificate;Lorg/bouncycastle/jcajce/tsu/tsu;)V

    invoke-static {v9, v15, v12}, Lorg/bouncycastle/jce/provider/oif;->you(Ljava/security/cert/CertPath;ILorg/bouncycastle/jce/provider/dma;)V

    move v2, v15

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v30

    move/from16 v6, v26

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/jce/provider/oif;->zta(Ljava/security/cert/CertPath;ILjava/util/Set;Lorg/bouncycastle/jce/provider/ywr;[Ljava/util/List;I)Lorg/bouncycastle/jce/provider/ywr;

    move-result-object v1

    invoke-static {v9, v15, v1}, Lorg/bouncycastle/jce/provider/oif;->zta(Ljava/security/cert/CertPath;ILorg/bouncycastle/jce/provider/ywr;)Lorg/bouncycastle/jce/provider/ywr;

    move-result-object v1

    invoke-static {v9, v15, v1, v0}, Lorg/bouncycastle/jce/provider/oif;->zta(Ljava/security/cert/CertPath;ILorg/bouncycastle/jce/provider/ywr;I)V

    if-eq v10, v11, :cond_11

    if-eqz v14, :cond_f

    invoke-virtual {v14}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    if-ne v10, v3, :cond_e

    invoke-virtual/range {v31 .. v31}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    goto/16 :goto_b

    :cond_e
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Version 1 certificates can\'t be used as CA ones."

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v9, v15}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_f
    invoke-static {v9, v15}, Lorg/bouncycastle/jce/provider/oif;->zta(Ljava/security/cert/CertPath;I)V

    move-object/from16 v4, v30

    invoke-static {v9, v15, v4, v1, v13}, Lorg/bouncycastle/jce/provider/oif;->zta(Ljava/security/cert/CertPath;I[Ljava/util/List;Lorg/bouncycastle/jce/provider/ywr;I)Lorg/bouncycastle/jce/provider/ywr;

    move-result-object v1

    invoke-static {v9, v15, v12}, Lorg/bouncycastle/jce/provider/oif;->zta(Ljava/security/cert/CertPath;ILorg/bouncycastle/jce/provider/dma;)V

    invoke-static {v9, v15, v0}, Lorg/bouncycastle/jce/provider/oif;->zta(Ljava/security/cert/CertPath;II)I

    move-result v0

    invoke-static {v9, v15, v13}, Lorg/bouncycastle/jce/provider/oif;->you(Ljava/security/cert/CertPath;II)I

    move-result v2

    move/from16 v5, v26

    invoke-static {v9, v15, v5}, Lorg/bouncycastle/jce/provider/oif;->sis(Ljava/security/cert/CertPath;II)I

    move-result v3

    invoke-static {v9, v15, v0}, Lorg/bouncycastle/jce/provider/oif;->tsu(Ljava/security/cert/CertPath;II)I

    move-result v0

    invoke-static {v9, v15, v2}, Lorg/bouncycastle/jce/provider/oif;->rtg(Ljava/security/cert/CertPath;II)I

    move-result v2

    invoke-static {v9, v15, v3}, Lorg/bouncycastle/jce/provider/oif;->ssp(Ljava/security/cert/CertPath;II)I

    move-result v3

    invoke-static {v9, v15}, Lorg/bouncycastle/jce/provider/oif;->you(Ljava/security/cert/CertPath;I)V

    move/from16 v6, v25

    invoke-static {v9, v15, v6}, Lorg/bouncycastle/jce/provider/oif;->cno(Ljava/security/cert/CertPath;II)I

    move-result v5

    invoke-static {v9, v15, v5}, Lorg/bouncycastle/jce/provider/oif;->kth(Ljava/security/cert/CertPath;II)I

    move-result v5

    invoke-static {v9, v15}, Lorg/bouncycastle/jce/provider/oif;->sis(Ljava/security/cert/CertPath;I)V

    invoke-virtual {v14}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v6

    new-instance v7, Ljava/util/HashSet;

    if-eqz v6, :cond_10

    invoke-direct {v7, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object v6, Lorg/bouncycastle/jce/provider/oif;->DFa:Ljava/lang/String;

    invoke-interface {v7, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v6, Lorg/bouncycastle/jce/provider/oif;->yFa:Ljava/lang/String;

    invoke-interface {v7, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v6, Lorg/bouncycastle/jce/provider/oif;->AFa:Ljava/lang/String;

    invoke-interface {v7, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v6, Lorg/bouncycastle/jce/provider/oif;->EFa:Ljava/lang/String;

    invoke-interface {v7, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v6, Lorg/bouncycastle/jce/provider/oif;->FFa:Ljava/lang/String;

    invoke-interface {v7, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v6, Lorg/bouncycastle/jce/provider/oif;->GFa:Ljava/lang/String;

    invoke-interface {v7, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v6, Lorg/bouncycastle/jce/provider/oif;->HFa:Ljava/lang/String;

    invoke-interface {v7, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v6, Lorg/bouncycastle/jce/provider/oif;->zFa:Ljava/lang/String;

    invoke-interface {v7, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v6, Lorg/bouncycastle/jce/provider/oif;->BFa:Ljava/lang/String;

    invoke-interface {v7, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v6, Lorg/bouncycastle/jce/provider/oif;->CFa:Ljava/lang/String;

    invoke-interface {v7, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_10
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    :goto_a
    move-object v6, v7

    move-object/from16 v7, v29

    invoke-static {v9, v15, v6, v7}, Lorg/bouncycastle/jce/provider/oif;->zta(Ljava/security/cert/CertPath;ILjava/util/Set;Ljava/util/List;)V

    invoke-static {v14}, Lorg/bouncycastle/jce/provider/qbh;->ssp(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/bvj/tsu;

    move-result-object v19

    :try_start_4
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v6

    move-object/from16 v8, p0

    iget-object v10, v8, Lorg/bouncycastle/jce/provider/gck;->helper:Lorg/bouncycastle/jcajce/tsu/tsu;

    invoke-static {v6, v15, v10}, Lorg/bouncycastle/jce/provider/tsu;->zta(Ljava/util/List;ILorg/bouncycastle/jcajce/tsu/tsu;)Ljava/security/PublicKey;

    move-result-object v6
    :try_end_4
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_4 .. :try_end_4} :catch_0

    invoke-static {v6}, Lorg/bouncycastle/jce/provider/tsu;->sis(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v10

    invoke-virtual {v10}, Lorg/bouncycastle/asn1/x509/zta;->getAlgorithm()Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v10}, Lorg/bouncycastle/asn1/x509/zta;->getParameters()Lorg/bouncycastle/asn1/ssp;

    move-object/from16 v18, v1

    move v13, v2

    move v1, v3

    move/from16 v25, v5

    move-object v2, v6

    move-object/from16 v20, v14

    goto :goto_c

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    const-string v2, "Next working key could not be retrieved."

    invoke-direct {v1, v2, v0, v9, v15}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    :cond_11
    :goto_b
    move-object/from16 v8, p0

    move v2, v0

    move/from16 v6, v25

    move/from16 v5, v26

    move-object/from16 v7, v29

    move-object/from16 v4, v30

    move-object/from16 v18, v1

    move v0, v2

    move v1, v5

    move/from16 v25, v6

    move-object/from16 v2, v27

    :goto_c
    add-int/lit8 v5, v15, -0x1

    move-object v15, v7

    move-object v6, v12

    move-object v3, v14

    move-object/from16 v14, v24

    move-object/from16 v10, v28

    const/4 v12, 0x1

    move-object v7, v4

    move v4, v0

    move-object v0, v8

    move-object/from16 v8, v31

    goto/16 :goto_8

    :catch_1
    move-exception v0

    move v15, v5

    move-object v1, v0

    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/bouncycastle/jce/provider/AnnotatedException;->ag()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {v0, v2, v1, v9, v15}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_12
    move-object/from16 v27, v2

    move v15, v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Certificate revocation of public key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {v1, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1, v9, v15}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_13
    move v2, v4

    move-object v4, v7

    move-object/from16 v31, v8

    move-object/from16 v24, v14

    move-object v7, v15

    move v15, v5

    invoke-static {v2, v3}, Lorg/bouncycastle/jce/provider/oif;->zta(ILjava/security/cert/X509Certificate;)I

    move-result v0

    add-int/lit8 v5, v15, 0x1

    invoke-static {v9, v5, v0}, Lorg/bouncycastle/jce/provider/oif;->bio(Ljava/security/cert/CertPath;II)I

    move-result v8

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    if-eqz v0, :cond_14

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object v0, Lorg/bouncycastle/jce/provider/oif;->DFa:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jce/provider/oif;->yFa:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jce/provider/oif;->AFa:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jce/provider/oif;->EFa:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jce/provider/oif;->FFa:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jce/provider/oif;->GFa:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jce/provider/oif;->HFa:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jce/provider/oif;->zFa:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jce/provider/oif;->BFa:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jce/provider/oif;->CFa:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jce/provider/oif;->JFa:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/asn1/x509/gwm;->qua:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_14
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    :goto_d
    invoke-static {v9, v5, v7, v1}, Lorg/bouncycastle/jce/provider/oif;->zta(Ljava/security/cert/CertPath;ILjava/util/List;Ljava/util/Set;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v24

    move-object v14, v3

    move v3, v5

    move-object/from16 v5, v18

    move-object/from16 v6, v17

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/jce/provider/oif;->zta(Ljava/security/cert/CertPath;Lorg/bouncycastle/jcajce/wtn;Ljava/util/Set;I[Ljava/util/List;Lorg/bouncycastle/jce/provider/ywr;Ljava/util/Set;)Lorg/bouncycastle/jce/provider/ywr;

    move-result-object v0

    if-gtz v8, :cond_16

    if-eqz v0, :cond_15

    goto :goto_e

    :cond_15
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Path processing failed on policy."

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v9, v15}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_16
    :goto_e
    new-instance v1, Ljava/security/cert/PKIXCertPathValidatorResult;

    invoke-virtual {v14}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    move-object/from16 v3, v31

    invoke-direct {v1, v3, v0, v2}, Ljava/security/cert/PKIXCertPathValidatorResult;-><init>(Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V

    return-object v1

    :catch_2
    move-exception v0

    move-object v1, v0

    new-instance v0, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Algorithm identifier of public key of trust anchor could not be read."

    invoke-direct {v0, v2, v1, v9, v3}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :catch_3
    move-exception v0

    new-instance v1, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Subject of trust anchor could not be (re)encoded."

    invoke-direct {v1, v2, v0, v9, v3}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    :cond_17
    move-object/from16 v28, v10

    :try_start_5
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Trust anchor for certification path not found."

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v9, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0
    :try_end_5
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    move-exception v0

    goto :goto_f

    :catch_5
    move-exception v0

    move-object/from16 v28, v10

    :goto_f
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;->ag()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-direct {v1, v2, v0, v9, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    :cond_18
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Certification path is empty."

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v9, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_19
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "trustAnchors is null, this is not allowed for certification path validation."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parameters must be a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Ljava/security/cert/PKIXParameters;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " instance."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
