.class public Lorg/bouncycastle/asn1/ibl/rtg;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Ca(Ljava/lang/String;)Lorg/bouncycastle/asn1/bvj;
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/asn1/ibl/lqr;->Ca(Ljava/lang/String;)Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ywr/irq;->Ca(Ljava/lang/String;)Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/bouncycastle/asn1/bio/zta;->Ca(Ljava/lang/String;)Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static dma(Lorg/bouncycastle/asn1/bvj;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/asn1/ibl/lqr;->dma(Lorg/bouncycastle/asn1/bvj;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ywr/irq;->dma(Lorg/bouncycastle/asn1/bvj;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/bouncycastle/asn1/bio/zta;->dma(Lorg/bouncycastle/asn1/bvj;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static gck(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/ibl/vju;
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/asn1/ibl/lqr;->gck(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/ibl/vju;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ywr/irq;->gck(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/ibl/vju;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getByName(Ljava/lang/String;)Lorg/bouncycastle/asn1/ibl/vju;
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/asn1/ibl/lqr;->getByName(Ljava/lang/String;)Lorg/bouncycastle/asn1/ibl/vju;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ywr/irq;->getByName(Ljava/lang/String;)Lorg/bouncycastle/asn1/ibl/vju;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/bouncycastle/asn1/bio/zta;->getByName(Ljava/lang/String;)Lorg/bouncycastle/asn1/ibl/vju;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static getNames()Ljava/util/Enumeration;
    .locals 2

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-static {}, Lorg/bouncycastle/asn1/ibl/lqr;->getNames()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/ibl/rtg;->zta(Ljava/util/Vector;Ljava/util/Enumeration;)V

    invoke-static {}, Lorg/bouncycastle/asn1/ywr/irq;->getNames()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/ibl/rtg;->zta(Ljava/util/Vector;Ljava/util/Enumeration;)V

    invoke-static {}, Lorg/bouncycastle/asn1/bio/zta;->getNames()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/ibl/rtg;->zta(Ljava/util/Vector;Ljava/util/Enumeration;)V

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method private static you(Lorg/bouncycastle/crypto/wtn/ibl;)Lorg/bouncycastle/asn1/ibl/vju;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v6, Lorg/bouncycastle/asn1/ibl/vju;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/wtn/ibl;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/wtn/ibl;->getG()Lyou/zta/sis/zta/wtn;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/wtn/ibl;->Ei()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/wtn/ibl;->Di()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/wtn/ibl;->getSeed()[B

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/ibl/vju;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    move-object p0, v6

    :goto_0
    return-object p0
.end method

.method private static zta(Ljava/util/Vector;Ljava/util/Enumeration;)V
    .locals 1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
