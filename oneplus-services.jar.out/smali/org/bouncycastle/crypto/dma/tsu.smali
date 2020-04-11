.class public Lorg/bouncycastle/crypto/dma/tsu;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/dma/tsu$tsu;,
        Lorg/bouncycastle/crypto/dma/tsu$sis;,
        Lorg/bouncycastle/crypto/dma/tsu$zta;,
        Lorg/bouncycastle/crypto/dma/tsu$you;,
        Lorg/bouncycastle/crypto/dma/tsu$rtg;,
        Lorg/bouncycastle/crypto/dma/tsu$ssp;
    }
.end annotation


# static fields
.field private static vBa:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/dma/tsu;->vBa:Ljava/util/Map;

    sget-object v0, Lorg/bouncycastle/crypto/dma/tsu;->vBa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->rsaEncryption:Lorg/bouncycastle/asn1/bvj;

    new-instance v2, Lorg/bouncycastle/crypto/dma/tsu$rtg;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/dma/tsu$rtg;-><init>(Lorg/bouncycastle/crypto/dma/sis;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/dma/tsu;->vBa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->id_RSASSA_PSS:Lorg/bouncycastle/asn1/bvj;

    new-instance v2, Lorg/bouncycastle/crypto/dma/tsu$rtg;

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/dma/tsu$rtg;-><init>(Lorg/bouncycastle/crypto/dma/sis;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/dma/tsu;->vBa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x509/t;->YOa:Lorg/bouncycastle/asn1/bvj;

    new-instance v2, Lorg/bouncycastle/crypto/dma/tsu$rtg;

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/dma/tsu$rtg;-><init>(Lorg/bouncycastle/crypto/dma/sis;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/dma/tsu;->vBa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/ibl/ivd;->dhpublicnumber:Lorg/bouncycastle/asn1/bvj;

    new-instance v2, Lorg/bouncycastle/crypto/dma/tsu$you;

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/dma/tsu$you;-><init>(Lorg/bouncycastle/crypto/dma/sis;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/dma/tsu;->vBa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->dhKeyAgreement:Lorg/bouncycastle/asn1/bvj;

    new-instance v2, Lorg/bouncycastle/crypto/dma/tsu$zta;

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/dma/tsu$zta;-><init>(Lorg/bouncycastle/crypto/dma/sis;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/dma/tsu;->vBa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/ibl/ivd;->id_dsa:Lorg/bouncycastle/asn1/bvj;

    new-instance v2, Lorg/bouncycastle/crypto/dma/tsu$sis;

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/dma/tsu$sis;-><init>(Lorg/bouncycastle/crypto/dma/sis;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/dma/tsu;->vBa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/gck/zta;->UNa:Lorg/bouncycastle/asn1/bvj;

    new-instance v2, Lorg/bouncycastle/crypto/dma/tsu$sis;

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/dma/tsu$sis;-><init>(Lorg/bouncycastle/crypto/dma/sis;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/crypto/dma/tsu;->vBa:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/ibl/ivd;->id_ecPublicKey:Lorg/bouncycastle/asn1/bvj;

    new-instance v2, Lorg/bouncycastle/crypto/dma/tsu$tsu;

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/dma/tsu$tsu;-><init>(Lorg/bouncycastle/crypto/dma/sis;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ibl([B)Lorg/bouncycastle/crypto/wtn/you;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/asn1/vdb;->fromByteArray([B)Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/c;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/c;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/crypto/dma/tsu;->tsu(Lorg/bouncycastle/asn1/x509/c;)Lorg/bouncycastle/crypto/wtn/you;

    move-result-object p0

    return-object p0
.end method

.method public static sis(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/wtn/you;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/dma;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/dma;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/dma;->readObject()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/c;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/c;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/crypto/dma/tsu;->tsu(Lorg/bouncycastle/asn1/x509/c;)Lorg/bouncycastle/crypto/wtn/you;

    move-result-object p0

    return-object p0
.end method

.method public static tsu(Lorg/bouncycastle/asn1/x509/c;)Lorg/bouncycastle/crypto/wtn/you;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/dma/tsu;->you(Lorg/bouncycastle/asn1/x509/c;Ljava/lang/Object;)Lorg/bouncycastle/crypto/wtn/you;

    move-result-object p0

    return-object p0
.end method

.method public static you(Lorg/bouncycastle/asn1/x509/c;Ljava/lang/Object;)Lorg/bouncycastle/crypto/wtn/you;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/c;->getAlgorithm()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/crypto/dma/tsu;->vBa:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/zta;->getAlgorithm()Lorg/bouncycastle/asn1/bvj;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/crypto/dma/tsu$ssp;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0, p1}, Lorg/bouncycastle/crypto/dma/tsu$ssp;->zta(Lorg/bouncycastle/asn1/x509/c;Ljava/lang/Object;)Lorg/bouncycastle/crypto/wtn/you;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "algorithm identifier in public key not recognised: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/zta;->getAlgorithm()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zta(Lorg/bouncycastle/asn1/x509/c;Ljava/lang/Object;I)[B
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/c;->mh()Lorg/bouncycastle/asn1/n;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/sis;->getOctets()[B

    move-result-object p0

    array-length p1, p0

    if-ne p2, p1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "public key encoding has incorrect length"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
