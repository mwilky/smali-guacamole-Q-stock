.class public Lyou/zta/you/zta;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Ka(Ljava/lang/String;)Lyou/zta/you/you/sis;
    .locals 8

    invoke-static {p0}, Lorg/bouncycastle/crypto/sis/bio;->getByName(Ljava/lang/String;)Lorg/bouncycastle/asn1/ibl/vju;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v1, Lorg/bouncycastle/asn1/bvj;

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/bouncycastle/crypto/sis/bio;->gck(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/ibl/vju;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ibl/rtg;->getByName(Ljava/lang/String;)Lorg/bouncycastle/asn1/ibl/vju;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_1
    new-instance v1, Lorg/bouncycastle/asn1/bvj;

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/bouncycastle/asn1/ibl/rtg;->gck(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/ibl/vju;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance v7, Lyou/zta/you/you/sis;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ibl/vju;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ibl/vju;->getG()Lyou/zta/sis/zta/wtn;

    move-result-object v3

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ibl/vju;->Ei()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ibl/vju;->Di()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ibl/vju;->getSeed()[B

    move-result-object v6

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lyou/zta/you/you/sis;-><init>(Ljava/lang/String;Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v7
.end method

.method public static getNames()Ljava/util/Enumeration;
    .locals 1

    invoke-static {}, Lorg/bouncycastle/asn1/ibl/rtg;->getNames()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method
