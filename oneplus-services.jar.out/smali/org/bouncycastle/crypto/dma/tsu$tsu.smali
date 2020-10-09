.class Lorg/bouncycastle/crypto/dma/tsu$tsu;
.super Lorg/bouncycastle/crypto/dma/tsu$ssp;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/dma/tsu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "tsu"
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

    invoke-direct {p0}, Lorg/bouncycastle/crypto/dma/tsu$tsu;-><init>()V

    return-void
.end method


# virtual methods
.method zta(Lorg/bouncycastle/asn1/x509/c;Ljava/lang/Object;)Lorg/bouncycastle/crypto/wtn/you;
    .locals 7

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/c;->getAlgorithm()Lorg/bouncycastle/asn1/x509/zta;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/zta;->getParameters()Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ibl/veq;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ibl/veq;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl/veq;->Ni()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl/veq;->getParameters()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lorg/bouncycastle/asn1/bvj;

    invoke-static {v1}, Lorg/bouncycastle/crypto/sis/bio;->gck(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/ibl/vju;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {v1}, Lorg/bouncycastle/asn1/ibl/rtg;->gck(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/ibl/vju;

    move-result-object p0

    :cond_0
    new-instance p2, Lorg/bouncycastle/crypto/wtn/vdb;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl/vju;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl/vju;->getG()Lyou/zta/sis/zta/wtn;

    move-result-object v3

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl/vju;->Si()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl/vju;->Ri()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl/vju;->getSeed()[B

    move-result-object v6

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/wtn/vdb;-><init>(Lorg/bouncycastle/asn1/bvj;Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl/veq;->Mi()Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p2, Lorg/bouncycastle/crypto/wtn/ibl;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl/veq;->getParameters()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ibl/vju;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ibl/vju;

    move-result-object p0

    new-instance p2, Lorg/bouncycastle/crypto/wtn/ibl;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl/vju;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl/vju;->getG()Lyou/zta/sis/zta/wtn;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl/vju;->Si()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl/vju;->Ri()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl/vju;->getSeed()[B

    move-result-object v5

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/wtn/ibl;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/c;->wh()Lorg/bouncycastle/asn1/n;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/sis;->getBytes()[B

    move-result-object p0

    new-instance p1, Lorg/bouncycastle/asn1/C;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/C;-><init>([B)V

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    aget-byte v0, p0, v0

    array-length v1, p0

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_4

    aget-byte v0, p0, v2

    const/4 v1, 0x3

    if-eq v0, v2, :cond_3

    aget-byte v0, p0, v2

    if-ne v0, v1, :cond_4

    :cond_3
    new-instance v0, Lorg/bouncycastle/asn1/ibl/qeg;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ibl/qeg;-><init>()V

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/ibl;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ibl/qeg;->you(Lyou/zta/sis/zta/rtg;)I

    move-result v0

    array-length v2, p0

    sub-int/2addr v2, v1

    if-lt v0, v2, :cond_4

    :try_start_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/vdb;->fromByteArray([B)Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lorg/bouncycastle/asn1/ibl;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "error recovering public key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    new-instance p0, Lorg/bouncycastle/asn1/ibl/les;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/ibl;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/asn1/ibl/les;-><init>(Lyou/zta/sis/zta/rtg;Lorg/bouncycastle/asn1/ibl;)V

    new-instance p1, Lorg/bouncycastle/crypto/wtn/obl;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl/les;->Ti()Lyou/zta/sis/zta/wtn;

    move-result-object p0

    invoke-direct {p1, p0, p2}, Lorg/bouncycastle/crypto/wtn/obl;-><init>(Lyou/zta/sis/zta/wtn;Lorg/bouncycastle/crypto/wtn/ibl;)V

    return-object p1
.end method
