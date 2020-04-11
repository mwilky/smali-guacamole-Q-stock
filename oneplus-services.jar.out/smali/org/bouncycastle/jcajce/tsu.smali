.class public Lorg/bouncycastle/jcajce/tsu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/util/dma;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/tsu$you;,
        Lorg/bouncycastle/jcajce/tsu$zta;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/security/cert/CRL;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/bouncycastle/util/dma<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final _ma:Z

.field private final ana:Z

.field private final bna:Ljava/math/BigInteger;

.field private final cBa:Ljava/security/cert/CRLSelector;

.field private final cna:[B

.field private final dna:Z


# direct methods
.method private constructor <init>(Lorg/bouncycastle/jcajce/tsu$zta;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/jcajce/tsu$zta;->zta(Lorg/bouncycastle/jcajce/tsu$zta;)Ljava/security/cert/CRLSelector;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/tsu;->cBa:Ljava/security/cert/CRLSelector;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/tsu$zta;->you(Lorg/bouncycastle/jcajce/tsu$zta;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/tsu;->_ma:Z

    invoke-static {p1}, Lorg/bouncycastle/jcajce/tsu$zta;->sis(Lorg/bouncycastle/jcajce/tsu$zta;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/tsu;->ana:Z

    invoke-static {p1}, Lorg/bouncycastle/jcajce/tsu$zta;->tsu(Lorg/bouncycastle/jcajce/tsu$zta;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/tsu;->bna:Ljava/math/BigInteger;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/tsu$zta;->rtg(Lorg/bouncycastle/jcajce/tsu$zta;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/tsu;->cna:[B

    invoke-static {p1}, Lorg/bouncycastle/jcajce/tsu$zta;->ssp(Lorg/bouncycastle/jcajce/tsu$zta;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/tsu;->dna:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/jcajce/tsu$zta;Lorg/bouncycastle/jcajce/sis;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/tsu;-><init>(Lorg/bouncycastle/jcajce/tsu$zta;)V

    return-void
.end method

.method static synthetic zta(Lorg/bouncycastle/jcajce/tsu;)Ljava/security/cert/CRLSelector;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/tsu;->cBa:Ljava/security/cert/CRLSelector;

    return-object p0
.end method

.method public static zta(Lorg/bouncycastle/jcajce/tsu;Ljava/security/cert/CertStore;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/jcajce/tsu;",
            "Ljava/security/cert/CertStore;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/jcajce/tsu$you;

    invoke-direct {v0, p0}, Lorg/bouncycastle/jcajce/tsu$you;-><init>(Lorg/bouncycastle/jcajce/tsu;)V

    invoke-virtual {p1, v0}, Ljava/security/cert/CertStore;->getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bg()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/tsu;->cna:[B

    invoke-static {p0}, Lorg/bouncycastle/util/zta;->vdb([B)[B

    move-result-object p0

    return-object p0
.end method

.method public cg()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/tsu;->bna:Ljava/math/BigInteger;

    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public dg()Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/jcajce/tsu;->ana:Z

    return p0
.end method

.method public eg()Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/jcajce/tsu;->_ma:Z

    return p0
.end method

.method public fg()Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/jcajce/tsu;->dna:Z

    return p0
.end method

.method public getCertificateChecking()Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/tsu;->cBa:Ljava/security/cert/CRLSelector;

    instance-of v0, p0, Ljava/security/cert/X509CRLSelector;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/security/cert/X509CRLSelector;

    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic match(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/security/cert/CRL;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/tsu;->match(Ljava/security/cert/CRL;)Z

    move-result p0

    return p0
.end method

.method public match(Ljava/security/cert/CRL;)Z
    .locals 4

    instance-of v0, p1, Ljava/security/cert/X509CRL;

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/tsu;->cBa:Ljava/security/cert/CRLSelector;

    invoke-interface {p0, p1}, Ljava/security/cert/CRLSelector;->match(Ljava/security/cert/CRL;)Z

    move-result p0

    return p0

    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509CRL;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lorg/bouncycastle/asn1/x509/gwm;->_ma:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v3}, Lorg/bouncycastle/asn1/ibl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ibl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ywr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ywr;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/tsu;->eg()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/tsu;->dg()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    return v2

    :cond_4
    if-eqz v1, :cond_5

    iget-object v3, p0, Lorg/bouncycastle/jcajce/tsu;->bna:Ljava/math/BigInteger;

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ywr;->Eg()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v3, p0, Lorg/bouncycastle/jcajce/tsu;->bna:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lorg/bouncycastle/jcajce/tsu;->dna:Z

    if-eqz v1, :cond_0

    sget-object v1, Lorg/bouncycastle/asn1/x509/gwm;->cna:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/tsu;->cna:[B

    if-nez v1, :cond_6

    if-eqz v0, :cond_0

    return v2

    :cond_6
    invoke-static {v0, v1}, Lorg/bouncycastle/util/zta;->sis([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    :catch_0
    return v2
.end method
