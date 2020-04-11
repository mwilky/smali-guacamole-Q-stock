.class public Lorg/bouncycastle/x509/zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/cert/CertSelector;
.implements Lorg/bouncycastle/util/dma;


# instance fields
.field final holder:Lorg/bouncycastle/asn1/x509/cjf;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;[B)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/x509/cjf;

    new-instance v1, Lorg/bouncycastle/asn1/x509/cgv;

    new-instance v2, Lorg/bouncycastle/asn1/bvj;

    invoke-direct {v2, p3}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    new-instance p3, Lorg/bouncycastle/asn1/x509/zta;

    new-instance v3, Lorg/bouncycastle/asn1/bvj;

    invoke-direct {v3, p2}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-direct {p3, v3}, Lorg/bouncycastle/asn1/x509/zta;-><init>(Lorg/bouncycastle/asn1/bvj;)V

    invoke-static {p4}, Lorg/bouncycastle/util/zta;->vdb([B)[B

    move-result-object p2

    invoke-direct {v1, p1, v2, p3, p2}, Lorg/bouncycastle/asn1/x509/cgv;-><init>(ILorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/x509/zta;[B)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/cjf;-><init>(Lorg/bouncycastle/asn1/x509/cgv;)V

    iput-object v0, p0, Lorg/bouncycastle/x509/zta;->holder:Lorg/bouncycastle/asn1/x509/cjf;

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {p1}, Lyou/zta/you/sis;->you(Ljava/security/cert/X509Certificate;)Lyou/zta/you/tsu;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lorg/bouncycastle/asn1/x509/cjf;

    new-instance v2, Lorg/bouncycastle/asn1/x509/ear;

    invoke-direct {p0, v0}, Lorg/bouncycastle/x509/zta;->zta(Lyou/zta/you/tsu;)Lorg/bouncycastle/asn1/x509/obl;

    move-result-object v0

    new-instance v3, Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v3, p1}, Lorg/bouncycastle/asn1/ywr;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v2, v0, v3}, Lorg/bouncycastle/asn1/x509/ear;-><init>(Lorg/bouncycastle/asn1/x509/obl;Lorg/bouncycastle/asn1/ywr;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/x509/cjf;-><init>(Lorg/bouncycastle/asn1/x509/ear;)V

    iput-object v1, p0, Lorg/bouncycastle/x509/zta;->holder:Lorg/bouncycastle/asn1/x509/cjf;

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/cert/CertificateParsingException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/x509/dma;->zta(Ljavax/security/auth/x500/X500Principal;)Lyou/zta/you/tsu;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/x509/zta;-><init>(Lyou/zta/you/tsu;)V

    return-void
.end method

.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;)V
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/x509/dma;->zta(Ljavax/security/auth/x500/X500Principal;)Lyou/zta/you/tsu;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/x509/zta;-><init>(Lyou/zta/you/tsu;Ljava/math/BigInteger;)V

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/cjf;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/cjf;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/x509/zta;->holder:Lorg/bouncycastle/asn1/x509/cjf;

    return-void
.end method

.method public constructor <init>(Lyou/zta/you/tsu;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/x509/cjf;

    invoke-direct {p0, p1}, Lorg/bouncycastle/x509/zta;->zta(Lyou/zta/you/tsu;)Lorg/bouncycastle/asn1/x509/obl;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/x509/cjf;-><init>(Lorg/bouncycastle/asn1/x509/obl;)V

    iput-object v0, p0, Lorg/bouncycastle/x509/zta;->holder:Lorg/bouncycastle/asn1/x509/cjf;

    return-void
.end method

.method public constructor <init>(Lyou/zta/you/tsu;Ljava/math/BigInteger;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/x509/cjf;

    new-instance v1, Lorg/bouncycastle/asn1/x509/ear;

    new-instance v2, Lorg/bouncycastle/asn1/G;

    new-instance v3, Lorg/bouncycastle/asn1/x509/zgw;

    invoke-direct {v3, p1}, Lorg/bouncycastle/asn1/x509/zgw;-><init>(Lorg/bouncycastle/asn1/x509/q;)V

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/ssp;)V

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/obl;

    move-result-object p1

    new-instance v2, Lorg/bouncycastle/asn1/ywr;

    invoke-direct {v2, p2}, Lorg/bouncycastle/asn1/ywr;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v1, p1, v2}, Lorg/bouncycastle/asn1/x509/ear;-><init>(Lorg/bouncycastle/asn1/x509/obl;Lorg/bouncycastle/asn1/ywr;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/cjf;-><init>(Lorg/bouncycastle/asn1/x509/ear;)V

    iput-object v0, p0, Lorg/bouncycastle/x509/zta;->holder:Lorg/bouncycastle/asn1/x509/cjf;

    return-void
.end method

.method private you([Lorg/bouncycastle/asn1/x509/zgw;)[Ljava/lang/Object;
    .locals 3

    new-instance p0, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_1

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/zgw;->getTagNo()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    :try_start_0
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    aget-object v2, p1, v0

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/zgw;->getName()Lorg/bouncycastle/asn1/ssp;

    move-result-object v2

    invoke-interface {v2}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/oif;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "badly formed Name object"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private zta(Lyou/zta/you/tsu;)Lorg/bouncycastle/asn1/x509/obl;
    .locals 1

    new-instance p0, Lorg/bouncycastle/asn1/G;

    new-instance v0, Lorg/bouncycastle/asn1/x509/zgw;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/x509/zgw;-><init>(Lorg/bouncycastle/asn1/x509/q;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/ssp;)V

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/obl;

    move-result-object p0

    return-object p0
.end method

.method private zta(Lyou/zta/you/tsu;Lorg/bouncycastle/asn1/x509/obl;)Z
    .locals 4

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/obl;->getNames()[Lorg/bouncycastle/asn1/x509/zgw;

    move-result-object p0

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    array-length v1, p0

    if-eq v0, v1, :cond_1

    aget-object v1, p0, v0

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/zgw;->getTagNo()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    :try_start_0
    new-instance v2, Lyou/zta/you/tsu;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/zgw;->getName()Lorg/bouncycastle/asn1/ssp;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/oif;->getEncoded()[B

    move-result-object v1

    invoke-direct {v2, v1}, Lyou/zta/you/tsu;-><init>([B)V

    invoke-virtual {v2, p1}, Lorg/bouncycastle/asn1/x509/q;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method private zta(Lorg/bouncycastle/asn1/x509/obl;)[Ljava/security/Principal;
    .locals 2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/obl;->getNames()[Lorg/bouncycastle/asn1/x509/zgw;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/x509/zta;->you([Lorg/bouncycastle/asn1/x509/zgw;)[Ljava/lang/Object;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-eq v0, v1, :cond_1

    aget-object v1, p0, v0

    instance-of v1, v1, Ljava/security/Principal;

    if-eqz v1, :cond_0

    aget-object v1, p0, v0

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/security/Principal;

    invoke-interface {p1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/security/Principal;

    return-object p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lorg/bouncycastle/x509/zta;

    iget-object p0, p0, Lorg/bouncycastle/x509/zta;->holder:Lorg/bouncycastle/asn1/x509/cjf;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/cjf;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/obl;

    invoke-direct {v0, p0}, Lorg/bouncycastle/x509/zta;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0
.end method

.method public el()[Ljava/security/Principal;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/zta;->holder:Lorg/bouncycastle/asn1/x509/cjf;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/cjf;->bi()Lorg/bouncycastle/asn1/x509/obl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/x509/zta;->holder:Lorg/bouncycastle/asn1/x509/cjf;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/cjf;->bi()Lorg/bouncycastle/asn1/x509/obl;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/x509/zta;->zta(Lorg/bouncycastle/asn1/x509/obl;)[Ljava/security/Principal;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/x509/zta;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lorg/bouncycastle/x509/zta;

    iget-object p0, p0, Lorg/bouncycastle/x509/zta;->holder:Lorg/bouncycastle/asn1/x509/cjf;

    iget-object p1, p1, Lorg/bouncycastle/x509/zta;->holder:Lorg/bouncycastle/asn1/x509/cjf;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/oif;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getDigestAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/zta;->holder:Lorg/bouncycastle/asn1/x509/cjf;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/cjf;->ci()Lorg/bouncycastle/asn1/x509/cgv;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/bouncycastle/x509/zta;->holder:Lorg/bouncycastle/asn1/x509/cjf;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/cjf;->ci()Lorg/bouncycastle/asn1/x509/cgv;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/cgv;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/zta;->getAlgorithm()Lorg/bouncycastle/asn1/bvj;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIssuer()[Ljava/security/Principal;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/zta;->holder:Lorg/bouncycastle/asn1/x509/cjf;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/cjf;->ai()Lorg/bouncycastle/asn1/x509/ear;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/x509/zta;->holder:Lorg/bouncycastle/asn1/x509/cjf;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/cjf;->ai()Lorg/bouncycastle/asn1/x509/ear;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/ear;->getIssuer()Lorg/bouncycastle/asn1/x509/obl;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/x509/zta;->zta(Lorg/bouncycastle/asn1/x509/obl;)[Ljava/security/Principal;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/zta;->holder:Lorg/bouncycastle/asn1/x509/cjf;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/cjf;->ai()Lorg/bouncycastle/asn1/x509/ear;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/bouncycastle/x509/zta;->holder:Lorg/bouncycastle/asn1/x509/cjf;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/cjf;->ai()Lorg/bouncycastle/asn1/x509/ear;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/ear;->getSerial()Lorg/bouncycastle/asn1/ywr;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/x509/zta;->holder:Lorg/bouncycastle/asn1/x509/cjf;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/oif;->hashCode()I

    move-result p0

    return p0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Ljava/security/cert/Certificate;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/x509/zta;->match(Ljava/security/cert/Certificate;)Z

    move-result p0

    return p0
.end method

.method public match(Ljava/security/cert/Certificate;)Z
    .locals 4

    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509Certificate;

    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/x509/zta;->holder:Lorg/bouncycastle/asn1/x509/cjf;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/cjf;->ai()Lorg/bouncycastle/asn1/x509/ear;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget-object p1, p0, Lorg/bouncycastle/x509/zta;->holder:Lorg/bouncycastle/asn1/x509/cjf;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/cjf;->ai()Lorg/bouncycastle/asn1/x509/ear;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/ear;->getSerial()Lorg/bouncycastle/asn1/ywr;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v0}, Lyou/zta/you/sis;->you(Ljava/security/cert/X509Certificate;)Lyou/zta/you/tsu;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/x509/zta;->holder:Lorg/bouncycastle/asn1/x509/cjf;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/cjf;->ai()Lorg/bouncycastle/asn1/x509/ear;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/ear;->getIssuer()Lorg/bouncycastle/asn1/x509/obl;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/x509/zta;->zta(Lyou/zta/you/tsu;Lorg/bouncycastle/asn1/x509/obl;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v1, v3

    :cond_1
    return v1

    :cond_2
    iget-object v2, p0, Lorg/bouncycastle/x509/zta;->holder:Lorg/bouncycastle/asn1/x509/cjf;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/cjf;->bi()Lorg/bouncycastle/asn1/x509/obl;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Lyou/zta/you/sis;->sis(Ljava/security/cert/X509Certificate;)Lyou/zta/you/tsu;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/x509/zta;->holder:Lorg/bouncycastle/asn1/x509/cjf;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/cjf;->bi()Lorg/bouncycastle/asn1/x509/obl;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/x509/zta;->zta(Lyou/zta/you/tsu;Lorg/bouncycastle/asn1/x509/obl;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v3

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/x509/zta;->holder:Lorg/bouncycastle/asn1/x509/cjf;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/cjf;->ci()Lorg/bouncycastle/asn1/x509/cgv;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_6

    :try_start_1
    invoke-virtual {p0}, Lorg/bouncycastle/x509/zta;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BC"

    invoke-static {v0, v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {p0}, Lorg/bouncycastle/x509/zta;->mi()I

    move-result v2

    if-eqz v2, :cond_5

    if-eq v2, v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p1

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    invoke-virtual {p0}, Lorg/bouncycastle/x509/zta;->oi()[B

    move-result-object p0

    invoke-static {p1, p0}, Lorg/bouncycastle/util/zta;->sis([B[B)Z

    move-result p0
    :try_end_2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    if-nez p0, :cond_6

    :catch_0
    :cond_6
    return v1
.end method

.method public mi()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/zta;->holder:Lorg/bouncycastle/asn1/x509/cjf;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/cjf;->ci()Lorg/bouncycastle/asn1/x509/cgv;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/bouncycastle/x509/zta;->holder:Lorg/bouncycastle/asn1/x509/cjf;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/cjf;->ci()Lorg/bouncycastle/asn1/x509/cgv;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/cgv;->mi()Lorg/bouncycastle/asn1/bio;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/bio;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public oi()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/zta;->holder:Lorg/bouncycastle/asn1/x509/cjf;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/cjf;->ci()Lorg/bouncycastle/asn1/x509/cgv;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/bouncycastle/x509/zta;->holder:Lorg/bouncycastle/asn1/x509/cjf;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/cjf;->ci()Lorg/bouncycastle/asn1/x509/cgv;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/cgv;->oi()Lorg/bouncycastle/asn1/n;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/sis;->getBytes()[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public pi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/zta;->holder:Lorg/bouncycastle/asn1/x509/cjf;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/cjf;->ci()Lorg/bouncycastle/asn1/x509/cgv;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/bouncycastle/x509/zta;->holder:Lorg/bouncycastle/asn1/x509/cjf;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/cjf;->ci()Lorg/bouncycastle/asn1/x509/cgv;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/cgv;->pi()Lorg/bouncycastle/asn1/bvj;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
