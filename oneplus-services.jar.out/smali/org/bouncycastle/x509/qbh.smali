.class public Lorg/bouncycastle/x509/qbh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/x509/cno;


# instance fields
.field private _Ia:Lorg/bouncycastle/asn1/x509/rtg;

.field private aJa:Ljava/util/Date;

.field private bJa:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/x509/qbh;->wtn(Ljava/io/InputStream;)Lorg/bouncycastle/asn1/x509/rtg;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/x509/qbh;-><init>(Lorg/bouncycastle/asn1/x509/rtg;)V

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/asn1/x509/rtg;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/x509/qbh;->_Ia:Lorg/bouncycastle/asn1/x509/rtg;

    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/rtg;->Rh()Lorg/bouncycastle/asn1/x509/ssp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/ssp;->Th()Lorg/bouncycastle/asn1/x509/sis;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/sis;->Ph()Lorg/bouncycastle/asn1/wtn;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/wtn;->getDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/x509/qbh;->bJa:Ljava/util/Date;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/rtg;->Rh()Lorg/bouncycastle/asn1/x509/ssp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/ssp;->Th()Lorg/bouncycastle/asn1/x509/sis;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/sis;->Qh()Lorg/bouncycastle/asn1/wtn;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/wtn;->getDate()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/x509/qbh;->aJa:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "invalid data structure in certificate!"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/x509/qbh;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method private fb(Z)Ljava/util/Set;
    .locals 4

    iget-object p0, p0, Lorg/bouncycastle/x509/qbh;->_Ia:Lorg/bouncycastle/asn1/x509/rtg;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/rtg;->Rh()Lorg/bouncycastle/asn1/x509/ssp;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/ssp;->getExtensions()Lorg/bouncycastle/asn1/x509/ugm;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/ugm;->ji()Ljava/util/Enumeration;

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

    if-ne v3, p1, :cond_0

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

.method private static wtn(Ljava/io/InputStream;)Lorg/bouncycastle/asn1/x509/rtg;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/dma;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/dma;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/dma;->readObject()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/rtg;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/rtg;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception decoding certificate structure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception p0

    throw p0
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

    invoke-virtual {p0, v0}, Lorg/bouncycastle/x509/qbh;->checkValidity(Ljava/util/Date;)V

    return-void
.end method

.method public checkValidity(Ljava/util/Date;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/x509/qbh;->getNotAfter()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/x509/qbh;->getNotBefore()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/security/cert/CertificateNotYetValidException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "certificate not valid till "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/x509/qbh;->getNotBefore()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    invoke-virtual {p0}, Lorg/bouncycastle/x509/qbh;->getNotAfter()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
    instance-of v0, p1, Lorg/bouncycastle/x509/cno;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lorg/bouncycastle/x509/cno;

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/x509/qbh;->getEncoded()[B

    move-result-object p0

    invoke-interface {p1}, Lorg/bouncycastle/x509/cno;->getEncoded()[B

    move-result-object p1

    invoke-static {p0, p1}, Lorg/bouncycastle/util/zta;->sis([B[B)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v1
.end method

.method public getAttributes()[Lorg/bouncycastle/x509/ssp;
    .locals 4

    iget-object p0, p0, Lorg/bouncycastle/x509/qbh;->_Ia:Lorg/bouncycastle/asn1/x509/rtg;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/rtg;->Rh()Lorg/bouncycastle/asn1/x509/ssp;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/ssp;->getAttributes()Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/x509/ssp;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    new-instance v2, Lorg/bouncycastle/x509/ssp;

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/x509/ssp;-><init>(Lorg/bouncycastle/asn1/ssp;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getAttributes(Ljava/lang/String;)[Lorg/bouncycastle/x509/ssp;
    .locals 4

    iget-object p0, p0, Lorg/bouncycastle/x509/qbh;->_Ia:Lorg/bouncycastle/asn1/x509/rtg;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/rtg;->Rh()Lorg/bouncycastle/asn1/x509/ssp;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/ssp;->getAttributes()Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    new-instance v2, Lorg/bouncycastle/x509/ssp;

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/x509/ssp;-><init>(Lorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v2}, Lorg/bouncycastle/x509/ssp;->Zi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lorg/bouncycastle/x509/ssp;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/bouncycastle/x509/ssp;

    return-object p0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/x509/qbh;->fb(Z)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getEncoded()[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/bouncycastle/x509/qbh;->_Ia:Lorg/bouncycastle/asn1/x509/rtg;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/oif;->getEncoded()[B

    move-result-object p0

    return-object p0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 2

    iget-object p0, p0, Lorg/bouncycastle/x509/qbh;->_Ia:Lorg/bouncycastle/asn1/x509/rtg;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/rtg;->Rh()Lorg/bouncycastle/asn1/x509/ssp;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/ssp;->getExtensions()Lorg/bouncycastle/asn1/x509/ugm;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/x509/ugm;->ssp(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/x509/gwm;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/gwm;->gi()Lorg/bouncycastle/asn1/ibl;

    move-result-object p0

    const-string p1, "DER"

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/oif;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error encoding "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHolder()Lorg/bouncycastle/x509/zta;
    .locals 1

    new-instance v0, Lorg/bouncycastle/x509/zta;

    iget-object p0, p0, Lorg/bouncycastle/x509/qbh;->_Ia:Lorg/bouncycastle/asn1/x509/rtg;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/rtg;->Rh()Lorg/bouncycastle/asn1/x509/ssp;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/ssp;->getHolder()Lorg/bouncycastle/asn1/x509/cjf;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/cjf;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/obl;

    invoke-direct {v0, p0}, Lorg/bouncycastle/x509/zta;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0
.end method

.method public getIssuer()Lorg/bouncycastle/x509/you;
    .locals 1

    new-instance v0, Lorg/bouncycastle/x509/you;

    iget-object p0, p0, Lorg/bouncycastle/x509/qbh;->_Ia:Lorg/bouncycastle/asn1/x509/rtg;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/rtg;->Rh()Lorg/bouncycastle/asn1/x509/ssp;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/ssp;->getIssuer()Lorg/bouncycastle/asn1/x509/you;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/x509/you;-><init>(Lorg/bouncycastle/asn1/x509/you;)V

    return-object v0
.end method

.method public getIssuerUniqueID()[Z
    .locals 6

    iget-object p0, p0, Lorg/bouncycastle/x509/qbh;->_Ia:Lorg/bouncycastle/asn1/x509/rtg;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/rtg;->Rh()Lorg/bouncycastle/asn1/x509/ssp;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/ssp;->getIssuerUniqueID()Lorg/bouncycastle/asn1/n;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/sis;->getBytes()[B

    move-result-object v0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/sis;->Ig()I

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

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/x509/qbh;->fb(Z)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getNotAfter()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/x509/qbh;->bJa:Ljava/util/Date;

    return-object p0
.end method

.method public getNotBefore()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/x509/qbh;->aJa:Ljava/util/Date;

    return-object p0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/x509/qbh;->_Ia:Lorg/bouncycastle/asn1/x509/rtg;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/rtg;->Rh()Lorg/bouncycastle/asn1/x509/ssp;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/ssp;->getSerialNumber()Lorg/bouncycastle/asn1/ywr;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public getSignature()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/x509/qbh;->_Ia:Lorg/bouncycastle/asn1/x509/rtg;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/rtg;->Sh()Lorg/bouncycastle/asn1/n;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/sis;->getOctets()[B

    move-result-object p0

    return-object p0
.end method

.method public getVersion()I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/x509/qbh;->_Ia:Lorg/bouncycastle/asn1/x509/rtg;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/rtg;->Rh()Lorg/bouncycastle/asn1/x509/ssp;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/ssp;->getVersion()Lorg/bouncycastle/asn1/ywr;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/x509/qbh;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/x509/qbh;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/util/zta;->hashCode([B)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public final verify(Ljava/security/PublicKey;Ljava/lang/String;)V
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

    iget-object v0, p0, Lorg/bouncycastle/x509/qbh;->_Ia:Lorg/bouncycastle/asn1/x509/rtg;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/rtg;->ah()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/x509/qbh;->_Ia:Lorg/bouncycastle/asn1/x509/rtg;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/rtg;->Rh()Lorg/bouncycastle/asn1/x509/ssp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/ssp;->getSignature()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/oif;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/x509/qbh;->_Ia:Lorg/bouncycastle/asn1/x509/rtg;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/rtg;->ah()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/zta;->getAlgorithm()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    :try_start_0
    iget-object p1, p0, Lorg/bouncycastle/x509/qbh;->_Ia:Lorg/bouncycastle/asn1/x509/rtg;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/rtg;->Rh()Lorg/bouncycastle/asn1/x509/ssp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/oif;->getEncoded()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/security/Signature;->update([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lorg/bouncycastle/x509/qbh;->getSignature()[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/security/Signature;->verify([B)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "Public key presented not for certificate signature"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    new-instance p0, Ljava/security/SignatureException;

    const-string p1, "Exception encoding certificate info object"

    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/security/cert/CertificateException;

    const-string p1, "Signature algorithm in certificate info not same as outer certificate"

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
