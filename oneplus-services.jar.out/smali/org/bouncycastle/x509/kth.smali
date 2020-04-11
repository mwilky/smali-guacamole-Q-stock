.class public Lorg/bouncycastle/x509/kth;
.super Ljava/security/cert/X509CRLSelector;
.source ""

# interfaces
.implements Lorg/bouncycastle/util/dma;


# instance fields
.field private _ma:Z

.field private ana:Z

.field private bna:Ljava/math/BigInteger;

.field private cna:[B

.field private dna:Z

.field private ena:Lorg/bouncycastle/x509/cno;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/security/cert/X509CRLSelector;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/x509/kth;->_ma:Z

    iput-boolean v0, p0, Lorg/bouncycastle/x509/kth;->ana:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/x509/kth;->bna:Ljava/math/BigInteger;

    iput-object v1, p0, Lorg/bouncycastle/x509/kth;->cna:[B

    iput-boolean v0, p0, Lorg/bouncycastle/x509/kth;->dna:Z

    return-void
.end method

.method public static zta(Ljava/security/cert/X509CRLSelector;)Lorg/bouncycastle/x509/kth;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lorg/bouncycastle/x509/kth;

    invoke-direct {v0}, Lorg/bouncycastle/x509/kth;-><init>()V

    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CRLSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getDateAndTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CRLSelector;->setDateAndTime(Ljava/util/Date;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getIssuerNames()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CRLSelector;->setIssuerNames(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getIssuers()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CRLSelector;->setIssuers(Ljava/util/Collection;)V

    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getMaxCRL()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CRLSelector;->setMaxCRLNumber(Ljava/math/BigInteger;)V

    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getMinCRL()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/cert/X509CRLSelector;->setMinCRLNumber(Ljava/math/BigInteger;)V

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "cannot create from null selector"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public V(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/x509/kth;->ana:Z

    return-void
.end method

.method public W(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/x509/kth;->_ma:Z

    return-void
.end method

.method public X(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/x509/kth;->dna:Z

    return-void
.end method

.method public ag()Lorg/bouncycastle/x509/cno;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/x509/kth;->ena:Lorg/bouncycastle/x509/cno;

    return-object p0
.end method

.method public bg()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/x509/kth;->cna:[B

    invoke-static {p0}, Lorg/bouncycastle/util/zta;->vdb([B)[B

    move-result-object p0

    return-object p0
.end method

.method public cg()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/x509/kth;->bna:Ljava/math/BigInteger;

    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    invoke-static {p0}, Lorg/bouncycastle/x509/kth;->zta(Ljava/security/cert/X509CRLSelector;)Lorg/bouncycastle/x509/kth;

    move-result-object v0

    iget-boolean v1, p0, Lorg/bouncycastle/x509/kth;->_ma:Z

    iput-boolean v1, v0, Lorg/bouncycastle/x509/kth;->_ma:Z

    iget-boolean v1, p0, Lorg/bouncycastle/x509/kth;->ana:Z

    iput-boolean v1, v0, Lorg/bouncycastle/x509/kth;->ana:Z

    iget-object v1, p0, Lorg/bouncycastle/x509/kth;->bna:Ljava/math/BigInteger;

    iput-object v1, v0, Lorg/bouncycastle/x509/kth;->bna:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/bouncycastle/x509/kth;->ena:Lorg/bouncycastle/x509/cno;

    iput-object v1, v0, Lorg/bouncycastle/x509/kth;->ena:Lorg/bouncycastle/x509/cno;

    iget-boolean v1, p0, Lorg/bouncycastle/x509/kth;->dna:Z

    iput-boolean v1, v0, Lorg/bouncycastle/x509/kth;->dna:Z

    iget-object p0, p0, Lorg/bouncycastle/x509/kth;->cna:[B

    invoke-static {p0}, Lorg/bouncycastle/util/zta;->vdb([B)[B

    move-result-object p0

    iput-object p0, v0, Lorg/bouncycastle/x509/kth;->cna:[B

    return-object v0
.end method

.method public cno([B)V
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/util/zta;->vdb([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/x509/kth;->cna:[B

    return-void
.end method

.method public dg()Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/x509/kth;->ana:Z

    return p0
.end method

.method public eg()Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/x509/kth;->_ma:Z

    return p0
.end method

.method public fg()Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/x509/kth;->dna:Z

    return p0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljava/security/cert/X509CRL;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/security/cert/X509CRL;

    const/4 v0, 0x0

    :try_start_0
    sget-object v2, Lorg/bouncycastle/asn1/x509/gwm;->_ma:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Lorg/bouncycastle/x509/zta/you;->hmo([B)Lorg/bouncycastle/asn1/vdb;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ywr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ywr;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/x509/kth;->eg()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lorg/bouncycastle/x509/kth;->dg()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    return v1

    :cond_3
    if-eqz v0, :cond_4

    iget-object v2, p0, Lorg/bouncycastle/x509/kth;->bna:Ljava/math/BigInteger;

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ywr;->Eg()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/x509/kth;->bna:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    return v1

    :cond_4
    iget-boolean v0, p0, Lorg/bouncycastle/x509/kth;->dna:Z

    if-eqz v0, :cond_6

    sget-object v0, Lorg/bouncycastle/asn1/x509/gwm;->cna:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/x509/kth;->cna:[B

    if-nez v2, :cond_5

    if-eqz v0, :cond_6

    return v1

    :cond_5
    invoke-static {v0, v2}, Lorg/bouncycastle/util/zta;->sis([B[B)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-super {p0, p1}, Ljava/security/cert/X509CRLSelector;->match(Ljava/security/cert/CRL;)Z

    move-result p0

    return p0

    :catch_0
    return v1
.end method

.method public match(Ljava/security/cert/CRL;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/x509/kth;->match(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public sis(Ljava/math/BigInteger;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/x509/kth;->bna:Ljava/math/BigInteger;

    return-void
.end method

.method public zta(Lorg/bouncycastle/x509/cno;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/x509/kth;->ena:Lorg/bouncycastle/x509/cno;

    return-void
.end method
