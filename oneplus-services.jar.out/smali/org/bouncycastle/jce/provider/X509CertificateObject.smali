.class public Lorg/bouncycastle/jce/provider/X509CertificateObject;
.super Ljava/security/cert/X509Certificate;
.source ""

# interfaces
.implements Lorg/bouncycastle/jce/interfaces/tsu;


# instance fields
.field private attrCarrier:Lorg/bouncycastle/jce/interfaces/tsu;

.field private basicConstraints:Lorg/bouncycastle/asn1/x509/kth;

.field private c:Lorg/bouncycastle/asn1/x509/gck;

.field private encoded:[B

.field private hashValue:I

.field private hashValueSet:Z

.field private keyUsage:[Z


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x509/gck;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/wtn;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->attrCarrier:Lorg/bouncycastle/jce/interfaces/tsu;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/gck;

    :try_start_0
    const-string p1, "2.5.29.19"

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->Xc(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/asn1/vdb;->fromByteArray([B)Lorg/bouncycastle/asn1/vdb;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/kth;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/kth;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->basicConstraints:Lorg/bouncycastle/asn1/x509/kth;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    const-string p1, "2.5.29.15"

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->Xc(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {p1}, Lorg/bouncycastle/asn1/vdb;->fromByteArray([B)Lorg/bouncycastle/asn1/vdb;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/n;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/n;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/sis;->getBytes()[B

    move-result-object v0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/sis;->Hg()I

    move-result p1

    sub-int/2addr v1, p1

    const/16 p1, 0x9

    if-ge v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    new-array p1, p1, [Z

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->keyUsage:[Z

    const/4 p1, 0x0

    move v2, p1

    :goto_1
    if-eq v2, v1, :cond_4

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->keyUsage:[Z

    div-int/lit8 v4, v2, 0x8

    aget-byte v4, v0, v4

    const/16 v5, 0x80

    rem-int/lit8 v6, v2, 0x8

    ushr-int/2addr v5, v6

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    move v4, p1

    :goto_2
    aput-boolean v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->keyUsage:[Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/cert/CertificateParsingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot construct KeyUsage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/security/cert/CertificateParsingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot construct BasicConstraints: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private Dt()I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getEncoded()[B

    move-result-object p0

    const/4 v1, 0x1

    move v2, v0

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    aget-byte v3, p0, v1
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    mul-int/2addr v3, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2

    :catch_0
    return v0
.end method

.method private Xc(Ljava/lang/String;)[B
    .locals 1

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/gck;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/gck;->getTBSCertificate()Lorg/bouncycastle/asn1/x509/f;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/f;->getExtensions()Lorg/bouncycastle/asn1/x509/ugm;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/x509/ugm;->ssp(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/x509/gwm;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/gwm;->fi()Lorg/bouncycastle/asn1/ibl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static cgv([B)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/obl;->Sg()Ljava/util/Enumeration;

    move-result-object p0

    :catch_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/zgw;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/zgw;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/zgw;->getTagNo()I

    move-result v4

    invoke-static {v4}, Lorg/bouncycastle/util/cno;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/zgw;->getTagNo()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    new-instance p0, Ljava/io/IOException;

    goto :goto_3

    :pswitch_0
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/zgw;->getName()Lorg/bouncycastle/asn1/ssp;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/bvj;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bvj;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_1
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/zgw;->getName()Lorg/bouncycastle/asn1/ssp;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ibl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ibl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :pswitch_2
    :try_start_2
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/zgw;->getName()Lorg/bouncycastle/asn1/ssp;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/q;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/q;

    move-result-object v2

    const/4 v4, 0x1

    sget-object v5, Lorg/bouncycastle/asn1/x509/q;->DefaultSymbols:Ljava/util/Hashtable;

    invoke-virtual {v2, v4, v5}, Lorg/bouncycastle/asn1/x509/q;->toString(ZLjava/util/Hashtable;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :pswitch_3
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/zgw;->getName()Lorg/bouncycastle/asn1/ssp;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/fto;

    invoke-interface {v2}, Lorg/bouncycastle/asn1/fto;->getString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :pswitch_4
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/oif;->getEncoded()[B

    move-result-object v2

    goto :goto_1

    :goto_2
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad tag number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/zgw;->getTagNo()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result p0

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    new-instance v0, Ljava/security/cert/CertificateParsingException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private you(Ljava/security/PublicKey;Ljava/security/Signature;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/gck;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/gck;->_g()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/gck;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/gck;->getTBSCertificate()Lorg/bouncycastle/asn1/x509/f;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/f;->getSignature()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->zta(Lorg/bouncycastle/asn1/x509/zta;Lorg/bouncycastle/asn1/x509/zta;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/gck;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/gck;->_g()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/zta;->getParameters()Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/bouncycastle/jce/provider/ugm;->zta(Ljava/security/Signature;Lorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {p2, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getTBSCertificate()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/security/Signature;->update([B)V

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getSignature()[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/security/Signature;->verify([B)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/security/SignatureException;

    const-string p1, "certificate does not verify with supplied key"

    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/security/cert/CertificateException;

    const-string p1, "signature algorithm in TBS cert not same as outer cert"

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private zta(Lorg/bouncycastle/asn1/x509/zta;Lorg/bouncycastle/asn1/x509/zta;)Z
    .locals 2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/zta;->getAlgorithm()Lorg/bouncycastle/asn1/bvj;

    move-result-object p0

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/zta;->getAlgorithm()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/zta;->getParameters()Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    const/4 v1, 0x1

    if-nez p0, :cond_2

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/zta;->getParameters()Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/zta;->getParameters()Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    sget-object p1, Lorg/bouncycastle/asn1/z;->INSTANCE:Lorg/bouncycastle/asn1/z;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/zta;->getParameters()Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    if-nez p0, :cond_4

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/zta;->getParameters()Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/zta;->getParameters()Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    sget-object p1, Lorg/bouncycastle/asn1/z;->INSTANCE:Lorg/bouncycastle/asn1/z;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v0

    :cond_3
    return v1

    :cond_4
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/zta;->getParameters()Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/zta;->getParameters()Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public checkValidity()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->checkValidity(Ljava/util/Date;)V

    return-void
.end method

.method public checkValidity(Ljava/util/Date;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getNotAfter()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getNotBefore()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/security/cert/CertificateNotYetValidException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "certificate not valid till "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/gck;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/gck;->getStartDate()Lorg/bouncycastle/asn1/x509/h;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/h;->getTime()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/security/cert/CertificateExpiredException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "certificate expired on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/gck;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/gck;->getEndDate()Lorg/bouncycastle/asn1/x509/h;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/h;->getTime()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Ljava/security/cert/Certificate;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Ljava/security/cert/Certificate;

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p1

    invoke-static {p0, p1}, Lorg/bouncycastle/util/zta;->sis([B[B)Z

    move-result p0
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v1
.end method

.method public getBasicConstraints()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->basicConstraints:Lorg/bouncycastle/asn1/x509/kth;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/kth;->isCA()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->basicConstraints:Lorg/bouncycastle/asn1/x509/kth;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/kth;->Vh()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->basicConstraints:Lorg/bouncycastle/asn1/x509/kth;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/kth;->Vh()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 4

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/gck;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/gck;->getTBSCertificate()Lorg/bouncycastle/asn1/x509/f;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/f;->getExtensions()Lorg/bouncycastle/asn1/x509/ugm;

    move-result-object p0

    if-eqz p0, :cond_2

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

    if-eqz v3, :cond_0

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

.method public getEncoded()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->encoded:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/gck;

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/oif;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->encoded:[B

    :cond_0
    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->encoded:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExtendedKeyUsage()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    const-string v0, "2.5.29.37"

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->Xc(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_1

    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/dma;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/dma;-><init>([B)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/dma;->readObject()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/obl;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/security/cert/CertificateParsingException;

    const-string v0, "error processing extended key usage extension"

    invoke-direct {p0, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 2

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/gck;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/gck;->getTBSCertificate()Lorg/bouncycastle/asn1/x509/f;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/f;->getExtensions()Lorg/bouncycastle/asn1/x509/ugm;

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

.method public getIssuerAlternativeNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/asn1/x509/gwm;->gua:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->Xc(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->cgv([B)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .locals 1

    :try_start_0
    new-instance v0, Lyou/zta/you/tsu;

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/gck;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/gck;->getIssuer()Lorg/bouncycastle/asn1/bvj/tsu;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/oif;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/bvj/tsu;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bvj/tsu;

    move-result-object p0

    invoke-direct {v0, p0}, Lyou/zta/you/tsu;-><init>(Lorg/bouncycastle/asn1/bvj/tsu;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIssuerUniqueID()[Z
    .locals 6

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/gck;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/gck;->getTBSCertificate()Lorg/bouncycastle/asn1/x509/f;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/f;->Fi()Lorg/bouncycastle/asn1/n;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/sis;->getBytes()[B

    move-result-object v0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/sis;->Hg()I

    move-result p0

    sub-int/2addr v1, p0

    new-array p0, v1, [Z

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-eq v2, v3, :cond_1

    div-int/lit8 v3, v2, 0x8

    aget-byte v3, v0, v3

    const/16 v4, 0x80

    rem-int/lit8 v5, v2, 0x8

    ushr-int/2addr v4, v5

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    aput-boolean v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/ugm;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/ugm;-><init>(Ljava/io/OutputStream;)V

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/gck;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/gck;->getIssuer()Lorg/bouncycastle/asn1/bvj/tsu;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/bouncycastle/asn1/ugm;->sis(Lorg/bouncycastle/asn1/ssp;)V

    new-instance p0, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "can\'t encode issuer DN"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getKeyUsage()[Z
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->keyUsage:[Z

    return-object p0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 4

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/gck;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/gck;->getTBSCertificate()Lorg/bouncycastle/asn1/x509/f;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/f;->getExtensions()Lorg/bouncycastle/asn1/x509/ugm;

    move-result-object p0

    if-eqz p0, :cond_2

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

    if-nez v3, :cond_0

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

.method public getNotAfter()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/gck;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/gck;->getEndDate()Lorg/bouncycastle/asn1/x509/h;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/h;->getDate()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getNotBefore()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/gck;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/gck;->getStartDate()Lorg/bouncycastle/asn1/x509/h;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/h;->getDate()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/gck;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/gck;->ph()Lorg/bouncycastle/asn1/x509/c;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->you(Lorg/bouncycastle/asn1/x509/c;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/gck;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/gck;->getSerialNumber()Lorg/bouncycastle/asn1/ywr;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public getSigAlgName()Ljava/lang/String;
    .locals 6

    const-string v0, "BC"

    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    const-string v1, "Alg.Alias.Signature."

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getSigAlgOID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-eq v2, v3, :cond_2

    aget-object v3, v0, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getSigAlgOID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getSigAlgOID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/gck;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/gck;->_g()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/zta;->getAlgorithm()Lorg/bouncycastle/asn1/bvj;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSigAlgParams()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/gck;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/gck;->_g()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/zta;->getParameters()Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/gck;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/gck;->_g()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/zta;->getParameters()Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    invoke-interface {p0}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    const-string v0, "DER"

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/oif;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object v1
.end method

.method public getSignature()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/gck;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/gck;->getSignature()Lorg/bouncycastle/asn1/n;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/sis;->getOctets()[B

    move-result-object p0

    return-object p0
.end method

.method public getSubjectAlternativeNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/asn1/x509/gwm;->fua:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->Xc(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->cgv([B)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getSubjectDN()Ljava/security/Principal;
    .locals 1

    new-instance v0, Lyou/zta/you/tsu;

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/gck;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/gck;->getSubject()Lorg/bouncycastle/asn1/bvj/tsu;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/bvj/tsu;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/bvj/tsu;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bvj/tsu;

    move-result-object p0

    invoke-direct {v0, p0}, Lyou/zta/you/tsu;-><init>(Lorg/bouncycastle/asn1/bvj/tsu;)V

    return-object v0
.end method

.method public getSubjectUniqueID()[Z
    .locals 6

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/gck;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/gck;->getTBSCertificate()Lorg/bouncycastle/asn1/x509/f;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/f;->Gi()Lorg/bouncycastle/asn1/n;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/sis;->getBytes()[B

    move-result-object v0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/sis;->Hg()I

    move-result p0

    sub-int/2addr v1, p0

    new-array p0, v1, [Z

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-eq v2, v3, :cond_1

    div-int/lit8 v3, v2, 0x8

    aget-byte v3, v0, v3

    const/16 v4, 0x80

    rem-int/lit8 v5, v2, 0x8

    ushr-int/2addr v4, v5

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    aput-boolean v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/ugm;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/ugm;-><init>(Ljava/io/OutputStream;)V

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/gck;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/gck;->getSubject()Lorg/bouncycastle/asn1/bvj/tsu;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/bouncycastle/asn1/ugm;->sis(Lorg/bouncycastle/asn1/ssp;)V

    new-instance p0, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "can\'t encode issuer DN"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getTBSCertificate()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/gck;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/gck;->getTBSCertificate()Lorg/bouncycastle/asn1/x509/f;

    move-result-object p0

    const-string v0, "DER"

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/oif;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVersion()I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/gck;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/gck;->Yh()I

    move-result p0

    return p0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 4

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/gck;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/gck;->getTBSCertificate()Lorg/bouncycastle/asn1/x509/f;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/f;->getExtensions()Lorg/bouncycastle/asn1/x509/ugm;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/ugm;->ii()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/jce/provider/oif;->DFa:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lorg/bouncycastle/jce/provider/oif;->yFa:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lorg/bouncycastle/jce/provider/oif;->AFa:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lorg/bouncycastle/jce/provider/oif;->EFa:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lorg/bouncycastle/jce/provider/oif;->JFa:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lorg/bouncycastle/jce/provider/oif;->FFa:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lorg/bouncycastle/jce/provider/oif;->GFa:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lorg/bouncycastle/jce/provider/oif;->HFa:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lorg/bouncycastle/jce/provider/oif;->zFa:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lorg/bouncycastle/jce/provider/oif;->BFa:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lorg/bouncycastle/jce/provider/oif;->CFa:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/x509/ugm;->ssp(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/x509/gwm;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/gwm;->isCritical()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized hashCode()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->hashValueSet:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->Dt()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->hashValue:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->hashValueSet:Z

    :cond_0
    iget v0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->hashValue:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    const-string v0, " value = "

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lorg/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "  [0]         Version: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getVersion()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "         SerialNumber: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "             IssuerDN: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getIssuerDN()Ljava/security/Principal;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "           Start Date: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getNotBefore()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "           Final Date: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getNotAfter()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "            SubjectDN: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getSubjectDN()Ljava/security/Principal;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "           Public Key: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "  Signature Algorithm: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getSigAlgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getSignature()[B

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
    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/gck;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/gck;->getTBSCertificate()Lorg/bouncycastle/asn1/x509/f;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/f;->getExtensions()Lorg/bouncycastle/asn1/x509/ugm;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/ugm;->ii()Ljava/util/Enumeration;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "       Extensions: \n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {p0, v4}, Lorg/bouncycastle/asn1/x509/ugm;->ssp(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/x509/gwm;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/gwm;->fi()Lorg/bouncycastle/asn1/ibl;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/gwm;->fi()Lorg/bouncycastle/asn1/ibl;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object v6

    new-instance v7, Lorg/bouncycastle/asn1/dma;

    invoke-direct {v7, v6}, Lorg/bouncycastle/asn1/dma;-><init>([B)V

    const-string v6, "                       critical("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/gwm;->isCritical()Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v5, ") "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :try_start_0
    sget-object v5, Lorg/bouncycastle/asn1/x509/gwm;->basicConstraints:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/dma;->readObject()Lorg/bouncycastle/asn1/vdb;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/x509/kth;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/kth;

    move-result-object v5

    :goto_3
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    sget-object v5, Lorg/bouncycastle/asn1/x509/gwm;->keyUsage:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/dma;->readObject()Lorg/bouncycastle/asn1/vdb;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/x509/fto;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/fto;

    move-result-object v5

    goto :goto_3

    :cond_4
    sget-object v5, Lorg/bouncycastle/asn1/kth/zta;->oNa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Lorg/bouncycastle/asn1/kth/you;

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/dma;->readObject()Lorg/bouncycastle/asn1/vdb;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/n;

    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/kth/you;-><init>(Lorg/bouncycastle/asn1/n;)V

    goto :goto_3

    :cond_5
    sget-object v5, Lorg/bouncycastle/asn1/kth/zta;->qNa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v5, Lorg/bouncycastle/asn1/kth/sis;

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/dma;->readObject()Lorg/bouncycastle/asn1/vdb;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/x;

    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/kth/sis;-><init>(Lorg/bouncycastle/asn1/x;)V

    goto :goto_3

    :cond_6
    sget-object v5, Lorg/bouncycastle/asn1/kth/zta;->xNa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    new-instance v5, Lorg/bouncycastle/asn1/kth/tsu;

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/dma;->readObject()Lorg/bouncycastle/asn1/vdb;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/x;

    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/kth/tsu;-><init>(Lorg/bouncycastle/asn1/x;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/dma;->readObject()Lorg/bouncycastle/asn1/vdb;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/oif/zta;->cno(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "*****"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public vdb()Ljava/util/Enumeration;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->attrCarrier:Lorg/bouncycastle/jce/interfaces/tsu;

    invoke-interface {p0}, Lorg/bouncycastle/jce/interfaces/tsu;->vdb()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public final verify(Ljava/security/PublicKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/gck;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/gck;->_g()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jce/provider/ugm;->zta(Lorg/bouncycastle/asn1/x509/zta;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v1, "BC"

    invoke-static {v0, v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->you(Ljava/security/PublicKey;Ljava/security/Signature;)V

    return-void
.end method

.method public final verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/gck;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/gck;->_g()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jce/provider/ugm;->zta(Lorg/bouncycastle/asn1/x509/zta;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-static {v0, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->you(Ljava/security/PublicKey;Ljava/security/Signature;)V

    return-void
.end method

.method public final verify(Ljava/security/PublicKey;Ljava/security/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/gck;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/gck;->_g()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jce/provider/ugm;->zta(Lorg/bouncycastle/asn1/x509/zta;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-static {v0, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->you(Ljava/security/PublicKey;Ljava/security/Signature;)V

    return-void
.end method

.method public zta(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/ssp;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->attrCarrier:Lorg/bouncycastle/jce/interfaces/tsu;

    invoke-interface {p0, p1}, Lorg/bouncycastle/jce/interfaces/tsu;->zta(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    return-object p0
.end method

.method public zta(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->attrCarrier:Lorg/bouncycastle/jce/interfaces/tsu;

    invoke-interface {p0, p1, p2}, Lorg/bouncycastle/jce/interfaces/tsu;->zta(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    return-void
.end method
