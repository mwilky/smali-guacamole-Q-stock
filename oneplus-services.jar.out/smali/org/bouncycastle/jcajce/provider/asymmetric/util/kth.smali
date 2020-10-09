.class public Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static TEa:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->TEa:Ljava/util/Map;

    invoke-static {}, Lorg/bouncycastle/crypto/sis/bio;->getNames()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/bouncycastle/asn1/ibl/rtg;->getByName(Ljava/lang/String;)Lorg/bouncycastle/asn1/ibl/vju;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v3, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->TEa:Ljava/util/Map;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ibl/vju;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v2

    invoke-static {v1}, Lorg/bouncycastle/crypto/sis/bio;->getByName(Ljava/lang/String;)Lorg/bouncycastle/asn1/ibl/vju;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ibl/vju;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static you(Lyou/zta/sis/zta/wtn;)Ljava/security/spec/ECPoint;
    .locals 2

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->normalize()Lyou/zta/sis/zta/wtn;

    move-result-object p0

    new-instance v0, Ljava/security/spec/ECPoint;

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->qk()Lyou/zta/sis/zta/cno;

    move-result-object v1

    invoke-virtual {v1}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->rk()Lyou/zta/sis/zta/cno;

    move-result-object p0

    invoke-virtual {p0}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public static you(Ljava/security/spec/ECParameterSpec;Z)Lyou/zta/you/you/rtg;
    .locals 9

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->zta(Ljava/security/spec/EllipticCurve;)Lyou/zta/sis/zta/rtg;

    move-result-object v0

    instance-of v1, p0, Lyou/zta/you/you/tsu;

    if-eqz v1, :cond_0

    new-instance v8, Lyou/zta/you/you/sis;

    move-object v1, p0

    check-cast v1, Lyou/zta/you/you/tsu;

    invoke-virtual {v1}, Lyou/zta/you/you/tsu;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->zta(Lyou/zta/sis/zta/rtg;Ljava/security/spec/ECPoint;Z)Lyou/zta/sis/zta/wtn;

    move-result-object v4

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result p1

    int-to-long v6, p1

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v7

    move-object v1, v8

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Lyou/zta/you/you/sis;-><init>(Ljava/lang/String;Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v8

    :cond_0
    new-instance v7, Lyou/zta/you/you/rtg;

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->zta(Lyou/zta/sis/zta/rtg;Ljava/security/spec/ECPoint;Z)Lyou/zta/sis/zta/wtn;

    move-result-object v3

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result p1

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v6

    move-object v1, v7

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lyou/zta/you/you/rtg;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v7
.end method

.method public static zta(Lyou/zta/sis/you/you;)Ljava/security/spec/ECField;
    .locals 3

    invoke-static {p0}, Lyou/zta/sis/zta/you;->sis(Lyou/zta/sis/you/you;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/security/spec/ECFieldFp;

    invoke-interface {p0}, Lyou/zta/sis/you/you;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    :cond_0
    check-cast p0, Lyou/zta/sis/you/cno;

    invoke-interface {p0}, Lyou/zta/sis/you/cno;->j()Lyou/zta/sis/you/ssp;

    move-result-object p0

    invoke-interface {p0}, Lyou/zta/sis/you/ssp;->k()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/util/zta;->copyOfRange([III)[I

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/zta;->bvj([I)[I

    move-result-object v0

    new-instance v1, Ljava/security/spec/ECFieldF2m;

    invoke-interface {p0}, Lyou/zta/sis/you/ssp;->l()I

    move-result p0

    invoke-direct {v1, p0, v0}, Ljava/security/spec/ECFieldF2m;-><init>(I[I)V

    return-object v1
.end method

.method public static zta(Ljava/security/spec/EllipticCurve;Lyou/zta/you/you/rtg;)Ljava/security/spec/ECParameterSpec;
    .locals 7

    instance-of v0, p1, Lyou/zta/you/you/sis;

    if-eqz v0, :cond_0

    new-instance v0, Lyou/zta/you/you/tsu;

    move-object v1, p1

    check-cast v1, Lyou/zta/you/you/sis;

    invoke-virtual {v1}, Lyou/zta/you/you/sis;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lyou/zta/you/you/rtg;->getG()Lyou/zta/sis/zta/wtn;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->you(Lyou/zta/sis/zta/wtn;)Ljava/security/spec/ECPoint;

    move-result-object v4

    invoke-virtual {p1}, Lyou/zta/you/you/rtg;->Si()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p1}, Lyou/zta/you/you/rtg;->Ri()Ljava/math/BigInteger;

    move-result-object v6

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lyou/zta/you/you/tsu;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p1}, Lyou/zta/you/you/rtg;->getG()Lyou/zta/sis/zta/wtn;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->you(Lyou/zta/sis/zta/wtn;)Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-virtual {p1}, Lyou/zta/you/you/rtg;->Si()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lyou/zta/you/you/rtg;->Ri()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-direct {v0, p0, v1, v2, p1}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public static zta(Lorg/bouncycastle/asn1/ibl/veq;Lyou/zta/sis/zta/rtg;)Ljava/security/spec/ECParameterSpec;
    .locals 8

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl/veq;->Ni()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl/veq;->getParameters()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/bvj;

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/bio;->bvj(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/ibl/vju;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/bouncycastle/jcajce/provider/config/sis;

    invoke-interface {v1}, Lorg/bouncycastle/jcajce/provider/config/sis;->lqr()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ibl/vju;

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ibl/vju;->getSeed()[B

    move-result-object v1

    invoke-static {p1, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->zta(Lyou/zta/sis/zta/rtg;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v4

    new-instance p1, Lyou/zta/you/you/tsu;

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/bio;->oif(Lorg/bouncycastle/asn1/bvj;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ibl/vju;->getG()Lyou/zta/sis/zta/wtn;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->you(Lyou/zta/sis/zta/wtn;)Ljava/security/spec/ECPoint;

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ibl/vju;->Si()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ibl/vju;->Ri()Ljava/math/BigInteger;

    move-result-object v7

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lyou/zta/you/you/tsu;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl/veq;->Mi()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl/veq;->getParameters()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ibl/vju;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ibl/vju;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl/vju;->getSeed()[B

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->zta(Lyou/zta/sis/zta/rtg;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl/vju;->Ri()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl/vju;->getG()Lyou/zta/sis/zta/wtn;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->you(Lyou/zta/sis/zta/wtn;)Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl/vju;->Si()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl/vju;->Ri()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    invoke-direct {v0, p1, v1, v2, p0}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl/vju;->getG()Lyou/zta/sis/zta/wtn;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->you(Lyou/zta/sis/zta/wtn;)Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl/vju;->Si()Ljava/math/BigInteger;

    move-result-object p0

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, p0, v2}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    :goto_0
    move-object p1, v0

    :goto_1
    return-object p1
.end method

.method public static zta(Lorg/bouncycastle/asn1/ibl/vju;)Ljava/security/spec/ECParameterSpec;
    .locals 4

    new-instance v0, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl/vju;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->zta(Lyou/zta/sis/zta/rtg;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl/vju;->getG()Lyou/zta/sis/zta/wtn;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->you(Lyou/zta/sis/zta/wtn;)Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl/vju;->Si()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl/vju;->Ri()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public static zta(Lorg/bouncycastle/crypto/wtn/ibl;)Ljava/security/spec/ECParameterSpec;
    .locals 4

    new-instance v0, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/wtn/ibl;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->zta(Lyou/zta/sis/zta/rtg;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/wtn/ibl;->getG()Lyou/zta/sis/zta/wtn;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->you(Lyou/zta/sis/zta/wtn;)Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/wtn/ibl;->Si()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/wtn/ibl;->Ri()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public static zta(Lyou/zta/sis/zta/rtg;[B)Ljava/security/spec/EllipticCurve;
    .locals 3

    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg;->getField()Lyou/zta/sis/you/you;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->zta(Lyou/zta/sis/you/you;)Ljava/security/spec/ECField;

    move-result-object p1

    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg;->getA()Lyou/zta/sis/zta/cno;

    move-result-object v0

    invoke-virtual {v0}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg;->getB()Lyou/zta/sis/zta/cno;

    move-result-object p0

    invoke-virtual {p0}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    new-instance v1, Ljava/security/spec/EllipticCurve;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, p0, v2}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v1
.end method

.method public static zta(Lorg/bouncycastle/jcajce/provider/config/sis;Ljava/security/spec/ECParameterSpec;)Lorg/bouncycastle/crypto/wtn/ibl;
    .locals 6

    if-nez p1, :cond_0

    invoke-interface {p0}, Lorg/bouncycastle/jcajce/provider/config/sis;->gwm()Lyou/zta/you/you/rtg;

    move-result-object p0

    new-instance p1, Lorg/bouncycastle/crypto/wtn/ibl;

    invoke-virtual {p0}, Lyou/zta/you/you/rtg;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v1

    invoke-virtual {p0}, Lyou/zta/you/you/rtg;->getG()Lyou/zta/sis/zta/wtn;

    move-result-object v2

    invoke-virtual {p0}, Lyou/zta/you/you/rtg;->Si()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lyou/zta/you/you/rtg;->Ri()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Lyou/zta/you/you/rtg;->getSeed()[B

    move-result-object v5

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/wtn/ibl;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->you(Ljava/security/spec/ECParameterSpec;Z)Lyou/zta/you/you/rtg;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/bio;->zta(Lorg/bouncycastle/jcajce/provider/config/sis;Lyou/zta/you/you/rtg;)Lorg/bouncycastle/crypto/wtn/ibl;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public static zta(Ljava/security/spec/EllipticCurve;)Lyou/zta/sis/zta/rtg;
    .locals 8

    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v0

    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object v7

    instance-of p0, v0, Ljava/security/spec/ECFieldFp;

    if-eqz p0, :cond_1

    new-instance p0, Lyou/zta/sis/zta/rtg$rtg;

    check-cast v0, Ljava/security/spec/ECFieldFp;

    invoke-virtual {v0}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p0, v0, v6, v7}, Lyou/zta/sis/zta/rtg$rtg;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->TEa:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->TEa:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyou/zta/sis/zta/rtg;

    :cond_0
    return-object p0

    :cond_1
    check-cast v0, Ljava/security/spec/ECFieldF2m;

    invoke-virtual {v0}, Ljava/security/spec/ECFieldF2m;->getM()I

    move-result v2

    invoke-virtual {v0}, Ljava/security/spec/ECFieldF2m;->getMidTermsOfReductionPolynomial()[I

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/bio;->kth([I)[I

    move-result-object p0

    new-instance v0, Lyou/zta/sis/zta/rtg$tsu;

    const/4 v1, 0x0

    aget v3, p0, v1

    const/4 v1, 0x1

    aget v4, p0, v1

    const/4 v1, 0x2

    aget v5, p0, v1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lyou/zta/sis/zta/rtg$tsu;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public static zta(Lorg/bouncycastle/jcajce/provider/config/sis;Lorg/bouncycastle/asn1/ibl/veq;)Lyou/zta/sis/zta/rtg;
    .locals 2

    invoke-interface {p0}, Lorg/bouncycastle/jcajce/provider/config/sis;->cjf()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ibl/veq;->Ni()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ibl/veq;->getParameters()Lorg/bouncycastle/asn1/vdb;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/bvj;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bvj;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "named curve not acceptable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/bio;->bvj(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/ibl/vju;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-interface {p0}, Lorg/bouncycastle/jcajce/provider/config/sis;->lqr()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/ibl/vju;

    :cond_2
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ibl/vju;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object p0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ibl/veq;->Mi()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Lorg/bouncycastle/jcajce/provider/config/sis;->gwm()Lyou/zta/you/you/rtg;

    move-result-object p0

    invoke-virtual {p0}, Lyou/zta/you/you/rtg;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object p0

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ibl/veq;->getParameters()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ibl/vju;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ibl/vju;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl/vju;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "encoded parameters not acceptable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zta(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;Z)Lyou/zta/sis/zta/wtn;
    .locals 0

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->zta(Ljava/security/spec/EllipticCurve;)Lyou/zta/sis/zta/rtg;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->zta(Lyou/zta/sis/zta/rtg;Ljava/security/spec/ECPoint;Z)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0
.end method

.method public static zta(Lyou/zta/sis/zta/rtg;Ljava/security/spec/ECPoint;Z)Lyou/zta/sis/zta/wtn;
    .locals 0

    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lyou/zta/sis/zta/rtg;->ssp(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0
.end method
