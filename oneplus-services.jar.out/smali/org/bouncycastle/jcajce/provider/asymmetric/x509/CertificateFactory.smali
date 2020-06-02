.class public Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;
.super Ljava/security/cert/CertificateFactorySpi;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory$ExCertificateException;
    }
.end annotation


# static fields
.field private static final Vpa:Lorg/bouncycastle/jcajce/provider/asymmetric/x509/you;

.field private static final Wpa:Lorg/bouncycastle/jcajce/provider/asymmetric/x509/you;

.field private static final Xpa:Lorg/bouncycastle/jcajce/provider/asymmetric/x509/you;


# instance fields
.field private Ppa:Lorg/bouncycastle/asn1/ear;

.field private Qpa:I

.field private Rpa:Ljava/io/InputStream;

.field private Spa:Lorg/bouncycastle/asn1/ear;

.field private Tpa:I

.field private Upa:Ljava/io/InputStream;

.field private final bcHelper:Lorg/bouncycastle/jcajce/tsu/tsu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/you;

    const-string v1, "CERTIFICATE"

    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/you;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->Vpa:Lorg/bouncycastle/jcajce/provider/asymmetric/x509/you;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/you;

    const-string v1, "CRL"

    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/you;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->Wpa:Lorg/bouncycastle/jcajce/provider/asymmetric/x509/you;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/you;

    const-string v1, "PKCS7"

    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/you;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->Xpa:Lorg/bouncycastle/jcajce/provider/asymmetric/x509/you;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/security/cert/CertificateFactorySpi;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/tsu/you;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/tsu/you;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->bcHelper:Lorg/bouncycastle/jcajce/tsu/tsu;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->Ppa:Lorg/bouncycastle/asn1/ear;

    const/4 v1, 0x0

    iput v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->Qpa:I

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->Rpa:Ljava/io/InputStream;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->Spa:Lorg/bouncycastle/asn1/ear;

    iput v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->Tpa:I

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->Upa:Ljava/io/InputStream;

    return-void
.end method

.method private Et()Ljava/security/cert/CRL;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->Spa:Lorg/bouncycastle/asn1/ear;

    if-eqz v0, :cond_1

    iget v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->Tpa:I

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ear;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->Spa:Lorg/bouncycastle/asn1/ear;

    iget v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->Tpa:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->Tpa:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ear;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/dma;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/dma;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->zta(Lorg/bouncycastle/asn1/x509/dma;)Ljava/security/cert/CRL;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private bio(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->Vpa:Lorg/bouncycastle/jcajce/provider/asymmetric/x509/you;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/you;->tsu(Ljava/io/InputStream;)Lorg/bouncycastle/asn1/obl;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->ssp(Lorg/bouncycastle/asn1/obl;)Ljava/security/cert/Certificate;

    move-result-object p0

    return-object p0
.end method

.method private getCertificate()Ljava/security/cert/Certificate;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->Ppa:Lorg/bouncycastle/asn1/ear;

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->Qpa:I

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->Ppa:Lorg/bouncycastle/asn1/ear;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ear;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->Ppa:Lorg/bouncycastle/asn1/ear;

    iget v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->Qpa:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->Qpa:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ear;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    instance-of v1, v0, Lorg/bouncycastle/asn1/obl;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->bcHelper:Lorg/bouncycastle/jcajce/tsu/tsu;

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/gck;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/gck;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;-><init>(Lorg/bouncycastle/jcajce/tsu/tsu;Lorg/bouncycastle/asn1/x509/gck;)V

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private kth(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CRLException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->Wpa:Lorg/bouncycastle/jcajce/provider/asymmetric/x509/you;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/you;->tsu(Ljava/io/InputStream;)Lorg/bouncycastle/asn1/obl;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->rtg(Lorg/bouncycastle/asn1/obl;)Ljava/security/cert/CRL;

    move-result-object p0

    return-object p0
.end method

.method private rtg(Lorg/bouncycastle/asn1/obl;)Ljava/security/cert/CRL;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/asn1/bvj;

    if-eqz v2, :cond_1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    sget-object v2, Lorg/bouncycastle/asn1/dma/gwm;->signedData:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/lqr;

    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/obl;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/obl;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/dma/hmo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/hmo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dma/hmo;->bh()Lorg/bouncycastle/asn1/ear;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->Spa:Lorg/bouncycastle/asn1/ear;

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->Et()Ljava/security/cert/CRL;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/dma;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/dma;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->zta(Lorg/bouncycastle/asn1/x509/dma;)Ljava/security/cert/CRL;

    move-result-object p0

    return-object p0
.end method

.method private ssp(Lorg/bouncycastle/asn1/obl;)Ljava/security/cert/Certificate;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/asn1/bvj;

    if-eqz v2, :cond_1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    sget-object v2, Lorg/bouncycastle/asn1/dma/gwm;->signedData:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/lqr;

    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/obl;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/obl;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/dma/hmo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/hmo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dma/hmo;->getCertificates()Lorg/bouncycastle/asn1/ear;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->Ppa:Lorg/bouncycastle/asn1/ear;

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->bcHelper:Lorg/bouncycastle/jcajce/tsu/tsu;

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/gck;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/gck;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;-><init>(Lorg/bouncycastle/jcajce/tsu/tsu;Lorg/bouncycastle/asn1/x509/gck;)V

    return-object v0
.end method

.method private you(Lorg/bouncycastle/asn1/dma;)Ljava/security/cert/Certificate;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dma;->readObject()Lorg/bouncycastle/asn1/vdb;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->ssp(Lorg/bouncycastle/asn1/obl;)Ljava/security/cert/Certificate;

    move-result-object p0

    return-object p0
.end method

.method private zta(Lorg/bouncycastle/asn1/dma;)Ljava/security/cert/CRL;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CRLException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dma;->readObject()Lorg/bouncycastle/asn1/vdb;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->rtg(Lorg/bouncycastle/asn1/obl;)Ljava/security/cert/CRL;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public engineGenerateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->Upa:Ljava/io/InputStream;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->Upa:Ljava/io/InputStream;

    iput-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->Spa:Lorg/bouncycastle/asn1/ear;

    iput v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->Tpa:I

    goto :goto_1

    :cond_0
    if-eq v0, p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->Spa:Lorg/bouncycastle/asn1/ear;

    if-eqz v0, :cond_3

    iget p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->Tpa:I

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->Spa:Lorg/bouncycastle/asn1/ear;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ear;->size()I

    move-result v0

    if-eq p1, v0, :cond_2

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->Et()Ljava/security/cert/CRL;

    move-result-object p0

    return-object p0

    :cond_2
    iput-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->Spa:Lorg/bouncycastle/asn1/ear;

    iput v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->Tpa:I

    return-object v2

    :cond_3
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-static {p1}, Lorg/bouncycastle/util/io/you;->ssp(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object p1, v0

    :goto_2
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_5

    return-object v2

    :cond_5
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    const/16 v2, 0x30

    if-eq v1, v2, :cond_6

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->kth(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object p0

    return-object p0

    :cond_6
    new-instance v1, Lorg/bouncycastle/asn1/dma;

    invoke-direct {v1, p1, v0}, Lorg/bouncycastle/asn1/dma;-><init>(Ljava/io/InputStream;Z)V

    invoke-direct {p0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->zta(Lorg/bouncycastle/asn1/dma;)Ljava/security/cert/CRL;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/cert/CRLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/cert/CRLException;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p0

    throw p0
.end method

.method public engineGenerateCRLs(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_0
    invoke-virtual {p0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->engineGenerateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public engineGenerateCertPath(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const-string v0, "PkiPath"

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->engineGenerateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;

    move-result-object p0

    return-object p0
.end method

.method public engineGenerateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    new-instance p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object p0
.end method

.method public engineGenerateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/security/cert/CertificateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "list contains non X509Certificate object while creating CertPath\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public engineGenerateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->Rpa:Ljava/io/InputStream;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->Rpa:Ljava/io/InputStream;

    iput-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->Ppa:Lorg/bouncycastle/asn1/ear;

    iput v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->Qpa:I

    goto :goto_1

    :cond_0
    if-eq v0, p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->Ppa:Lorg/bouncycastle/asn1/ear;

    if-eqz v0, :cond_3

    iget p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->Qpa:I

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->Ppa:Lorg/bouncycastle/asn1/ear;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ear;->size()I

    move-result v0

    if-eq p1, v0, :cond_2

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object p0

    return-object p0

    :cond_2
    iput-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->Ppa:Lorg/bouncycastle/asn1/ear;

    iput v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->Qpa:I

    return-object v2

    :cond_3
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, p1

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/io/PushbackInputStream;

    invoke-direct {v0, p1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_2
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    :cond_5
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_6

    return-object v2

    :cond_6
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    goto :goto_3

    :cond_7
    move-object p1, v0

    check-cast p1, Ljava/io/PushbackInputStream;

    invoke-virtual {p1, v1}, Ljava/io/PushbackInputStream;->unread(I)V

    :goto_3
    const/16 p1, 0x30

    if-eq v1, p1, :cond_8

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->bio(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    return-object p0

    :cond_8
    new-instance p1, Lorg/bouncycastle/asn1/dma;

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/dma;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->you(Lorg/bouncycastle/asn1/dma;)Ljava/security/cert/Certificate;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory$ExCertificateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parsing issue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory$ExCertificateException;-><init>(Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public engineGenerateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->engineGenerateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public engineGetCertPathEncodings()Ljava/util/Iterator;
    .locals 0

    sget-object p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/PKIXCertPath;->Npa:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method protected zta(Lorg/bouncycastle/asn1/x509/dma;)Ljava/security/cert/CRL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/tsu;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->bcHelper:Lorg/bouncycastle/jcajce/tsu/tsu;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/tsu;-><init>(Lorg/bouncycastle/jcajce/tsu/tsu;Lorg/bouncycastle/asn1/x509/dma;)V

    return-object v0
.end method
