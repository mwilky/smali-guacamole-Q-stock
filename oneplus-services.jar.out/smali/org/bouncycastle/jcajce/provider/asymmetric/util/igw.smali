.class public Lorg/bouncycastle/jcajce/provider/asymmetric/util/igw;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static rtg(Lorg/bouncycastle/asn1/x509/c;)[B
    .locals 1

    :try_start_0
    const-string v0, "DER"

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/oif;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static tsu(Lorg/bouncycastle/asn1/dma/vdb;)[B
    .locals 1

    :try_start_0
    const-string v0, "DER"

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/oif;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static you(Lorg/bouncycastle/asn1/x509/zta;Lorg/bouncycastle/asn1/ssp;)[B
    .locals 1

    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/x509/c;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/asn1/x509/c;-><init>(Lorg/bouncycastle/asn1/x509/zta;Lorg/bouncycastle/asn1/ssp;)V

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/igw;->rtg(Lorg/bouncycastle/asn1/x509/c;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zta(Lorg/bouncycastle/asn1/x509/zta;Lorg/bouncycastle/asn1/ssp;)[B
    .locals 1

    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/dma/vdb;

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/asn1/dma/vdb;-><init>(Lorg/bouncycastle/asn1/x509/zta;Lorg/bouncycastle/asn1/ssp;)V

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/igw;->tsu(Lorg/bouncycastle/asn1/dma/vdb;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zta(Lorg/bouncycastle/asn1/x509/zta;[B)[B
    .locals 1

    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/x509/c;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/asn1/x509/c;-><init>(Lorg/bouncycastle/asn1/x509/zta;[B)V

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/igw;->rtg(Lorg/bouncycastle/asn1/x509/c;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method
