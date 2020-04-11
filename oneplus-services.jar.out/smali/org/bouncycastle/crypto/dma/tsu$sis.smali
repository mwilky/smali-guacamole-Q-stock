.class Lorg/bouncycastle/crypto/dma/tsu$sis;
.super Lorg/bouncycastle/crypto/dma/tsu$ssp;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/dma/tsu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "sis"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/dma/tsu$ssp;-><init>(Lorg/bouncycastle/crypto/dma/sis;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/crypto/dma/sis;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/dma/tsu$sis;-><init>()V

    return-void
.end method


# virtual methods
.method zta(Lorg/bouncycastle/asn1/x509/c;Ljava/lang/Object;)Lorg/bouncycastle/crypto/wtn/you;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/c;->kh()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/c;->getAlgorithm()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/zta;->getParameters()Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/ywr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/ywr;

    move-result-object p1

    new-instance p2, Lorg/bouncycastle/crypto/wtn/ywr;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/ywr;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/ywr;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/ywr;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p2, v0, v1, p1}, Lorg/bouncycastle/crypto/wtn/ywr;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    new-instance p1, Lorg/bouncycastle/crypto/wtn/oif;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {p1, p0, p2}, Lorg/bouncycastle/crypto/wtn/oif;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/wtn/ywr;)V

    return-object p1
.end method
