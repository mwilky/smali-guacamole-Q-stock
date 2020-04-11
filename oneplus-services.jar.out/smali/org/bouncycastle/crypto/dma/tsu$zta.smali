.class Lorg/bouncycastle/crypto/dma/tsu$zta;
.super Lorg/bouncycastle/crypto/dma/tsu$ssp;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/dma/tsu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zta"
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

    invoke-direct {p0}, Lorg/bouncycastle/crypto/dma/tsu$zta;-><init>()V

    return-void
.end method


# virtual methods
.method zta(Lorg/bouncycastle/asn1/x509/c;Ljava/lang/Object;)Lorg/bouncycastle/crypto/wtn/you;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/c;->getAlgorithm()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/zta;->getParameters()Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/dma/kth;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/kth;

    move-result-object p0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/c;->oh()Lorg/bouncycastle/asn1/vdb;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/dma/kth;->getL()Ljava/math/BigInteger;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/math/BigInteger;->intValue()I

    move-result p2

    :goto_0
    new-instance v0, Lorg/bouncycastle/crypto/wtn/cno;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/dma/kth;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/dma/kth;->getG()Ljava/math/BigInteger;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2, p2}, Lorg/bouncycastle/crypto/wtn/cno;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    new-instance p0, Lorg/bouncycastle/crypto/wtn/bio;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/wtn/bio;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/wtn/cno;)V

    return-object p0
.end method
