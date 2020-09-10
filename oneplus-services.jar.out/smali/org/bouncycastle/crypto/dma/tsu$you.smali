.class Lorg/bouncycastle/crypto/dma/tsu$you;
.super Lorg/bouncycastle/crypto/dma/tsu$ssp;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/dma/tsu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "you"
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

    invoke-direct {p0}, Lorg/bouncycastle/crypto/dma/tsu$you;-><init>()V

    return-void
.end method


# virtual methods
.method zta(Lorg/bouncycastle/asn1/x509/c;Ljava/lang/Object;)Lorg/bouncycastle/crypto/wtn/you;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/c;->wh()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ibl/you;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ibl/you;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl/you;->getY()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/c;->getAlgorithm()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/zta;->getParameters()Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ibl/tsu;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ibl/tsu;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ibl/tsu;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ibl/tsu;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ibl/tsu;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ibl/tsu;->ug()Ljava/math/BigInteger;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ibl/tsu;->ug()Ljava/math/BigInteger;

    move-result-object p2

    move-object v4, p2

    goto :goto_0

    :cond_0
    move-object v4, v0

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ibl/tsu;->Ji()Lorg/bouncycastle/asn1/ibl/ssp;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ibl/ssp;->getSeed()[B

    move-result-object p2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ibl/ssp;->Ii()Ljava/math/BigInteger;

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/crypto/wtn/igw;

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-direct {v0, p2, p1}, Lorg/bouncycastle/crypto/wtn/igw;-><init>([BI)V

    :cond_1
    move-object v5, v0

    new-instance p1, Lorg/bouncycastle/crypto/wtn/bio;

    new-instance p2, Lorg/bouncycastle/crypto/wtn/cno;

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/wtn/cno;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/wtn/igw;)V

    invoke-direct {p1, p0, p2}, Lorg/bouncycastle/crypto/wtn/bio;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/wtn/cno;)V

    return-object p1
.end method
