.class Lorg/bouncycastle/crypto/dma/tsu$rtg;
.super Lorg/bouncycastle/crypto/dma/tsu$ssp;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/dma/tsu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "rtg"
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

    invoke-direct {p0}, Lorg/bouncycastle/crypto/dma/tsu$rtg;-><init>()V

    return-void
.end method


# virtual methods
.method zta(Lorg/bouncycastle/asn1/x509/c;Ljava/lang/Object;)Lorg/bouncycastle/crypto/wtn/you;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/c;->kh()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/dma/cjf;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/cjf;

    move-result-object p0

    new-instance p1, Lorg/bouncycastle/crypto/wtn/veq;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/dma/cjf;->getModulus()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/dma/cjf;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p0

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, p0}, Lorg/bouncycastle/crypto/wtn/veq;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p1
.end method
