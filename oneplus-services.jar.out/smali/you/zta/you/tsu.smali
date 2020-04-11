.class public Lyou/zta/you/tsu;
.super Lorg/bouncycastle/asn1/x509/q;
.source ""

# interfaces
.implements Ljava/security/Principal;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/x509/q;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/x509/q;-><init>(Ljava/util/Hashtable;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;Ljava/util/Hashtable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/x509/q;-><init>(Ljava/util/Vector;Ljava/util/Hashtable;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/x509/q;-><init>(Ljava/util/Vector;Ljava/util/Vector;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/bvj/tsu;)V
    .locals 0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/bvj/tsu;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/obl;

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/x509/q;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/q;)V
    .locals 0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/q;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/obl;

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/x509/q;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/x509/q;-><init>(ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZLjava/util/Hashtable;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/asn1/x509/q;-><init>(ZLjava/util/Hashtable;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/dma;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/dma;-><init>([B)V

    invoke-static {v0}, Lyou/zta/you/tsu;->sis(Lorg/bouncycastle/asn1/dma;)Lorg/bouncycastle/asn1/obl;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/x509/q;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-void
.end method

.method private static sis(Lorg/bouncycastle/asn1/dma;)Lorg/bouncycastle/asn1/obl;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/dma;->readObject()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not an ASN.1 Sequence: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    :try_start_0
    const-string v0, "DER"

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/oif;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/q;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
