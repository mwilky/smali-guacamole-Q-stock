.class public Lorg/bouncycastle/x509/you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/cert/CertSelector;
.implements Lorg/bouncycastle/util/dma;


# instance fields
.field final KIa:Lorg/bouncycastle/asn1/ssp;


# direct methods
.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lyou/zta/you/tsu;

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lyou/zta/you/tsu;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/x509/you;-><init>(Lyou/zta/you/tsu;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/you;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/you;->getIssuer()Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/x509/you;->KIa:Lorg/bouncycastle/asn1/ssp;

    return-void
.end method

.method public constructor <init>(Lyou/zta/you/tsu;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/x509/j;

    new-instance v1, Lorg/bouncycastle/asn1/G;

    new-instance v2, Lorg/bouncycastle/asn1/x509/zgw;

    invoke-direct {v2, p1}, Lorg/bouncycastle/asn1/x509/zgw;-><init>(Lorg/bouncycastle/asn1/x509/q;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/ssp;)V

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/obl;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/x509/j;-><init>(Lorg/bouncycastle/asn1/x509/obl;)V

    iput-object v0, p0, Lorg/bouncycastle/x509/you;->KIa:Lorg/bouncycastle/asn1/ssp;

    return-void
.end method

.method private getNames()[Ljava/lang/Object;
    .locals 4

    iget-object p0, p0, Lorg/bouncycastle/x509/you;->KIa:Lorg/bouncycastle/asn1/ssp;

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/j;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/x509/j;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/j;->Hi()Lorg/bouncycastle/asn1/x509/obl;

    move-result-object p0

    goto :goto_0

    :cond_0
    check-cast p0, Lorg/bouncycastle/asn1/x509/obl;

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/obl;->getNames()[Lorg/bouncycastle/asn1/x509/zgw;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_1
    array-length v2, p0

    if-eq v1, v2, :cond_2

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/zgw;->getTagNo()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    :try_start_0
    new-instance v2, Ljavax/security/auth/x500/X500Principal;

    aget-object v3, p0, v1

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/zgw;->getName()Lorg/bouncycastle/asn1/ssp;

    move-result-object v3

    invoke-interface {v3}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/oif;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "badly formed Name object"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/Object;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private zta(Ljavax/security/auth/x500/X500Principal;Lorg/bouncycastle/asn1/x509/obl;)Z
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
    new-instance v2, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/zgw;->getName()Lorg/bouncycastle/asn1/ssp;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/oif;->getEncoded()[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-virtual {v2, p1}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

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


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lorg/bouncycastle/x509/you;

    iget-object p0, p0, Lorg/bouncycastle/x509/you;->KIa:Lorg/bouncycastle/asn1/ssp;

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/you;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/you;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/x509/you;-><init>(Lorg/bouncycastle/asn1/x509/you;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/x509/you;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lorg/bouncycastle/x509/you;

    iget-object p0, p0, Lorg/bouncycastle/x509/you;->KIa:Lorg/bouncycastle/asn1/ssp;

    iget-object p1, p1, Lorg/bouncycastle/x509/you;->KIa:Lorg/bouncycastle/asn1/ssp;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getPrincipals()[Ljava/security/Principal;
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/x509/you;->getNames()[Ljava/lang/Object;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_1

    aget-object v2, p0, v1

    instance-of v2, v2, Ljava/security/Principal;

    if-eqz v2, :cond_0

    aget-object v2, p0, v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/security/Principal;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/security/Principal;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/x509/you;->KIa:Lorg/bouncycastle/asn1/ssp;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

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

    invoke-virtual {p0, p1}, Lorg/bouncycastle/x509/you;->match(Ljava/security/cert/Certificate;)Z

    move-result p0

    return p0
.end method

.method public match(Ljava/security/cert/Certificate;)Z
    .locals 5

    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/security/cert/X509Certificate;

    iget-object v0, p0, Lorg/bouncycastle/x509/you;->KIa:Lorg/bouncycastle/asn1/ssp;

    instance-of v2, v0, Lorg/bouncycastle/asn1/x509/j;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    check-cast v0, Lorg/bouncycastle/asn1/x509/j;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/j;->ji()Lorg/bouncycastle/asn1/x509/ear;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/j;->ji()Lorg/bouncycastle/asn1/x509/ear;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/ear;->getSerial()Lorg/bouncycastle/asn1/ywr;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/j;->ji()Lorg/bouncycastle/asn1/x509/ear;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/ear;->getIssuer()Lorg/bouncycastle/asn1/x509/obl;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/x509/you;->zta(Ljavax/security/auth/x500/X500Principal;Lorg/bouncycastle/asn1/x509/obl;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v1, v3

    :cond_1
    return v1

    :cond_2
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/j;->Hi()Lorg/bouncycastle/asn1/x509/obl;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/x509/you;->zta(Ljavax/security/auth/x500/X500Principal;Lorg/bouncycastle/asn1/x509/obl;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v3

    :cond_3
    check-cast v0, Lorg/bouncycastle/asn1/x509/obl;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/x509/you;->zta(Ljavax/security/auth/x500/X500Principal;Lorg/bouncycastle/asn1/x509/obl;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v3

    :cond_4
    return v1
.end method
