.class Lorg/bouncycastle/jcajce/provider/asymmetric/ec/you;
.super Ljava/lang/Object;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static Ja(Ljava/lang/String;)Lorg/bouncycastle/asn1/ibl/vju;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x32

    if-gt v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/bio;->bvj(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/ibl/vju;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/bio;->Ka(Ljava/lang/String;)Lorg/bouncycastle/asn1/ibl/vju;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/bio;->Ka(Ljava/lang/String;)Lorg/bouncycastle/asn1/ibl/vju;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static zta(Ljava/security/spec/ECParameterSpec;Z)Lorg/bouncycastle/asn1/ibl/veq;
    .locals 7

    instance-of v0, p0, Lyou/zta/you/you/tsu;

    if-eqz v0, :cond_1

    check-cast p0, Lyou/zta/you/you/tsu;

    invoke-virtual {p0}, Lyou/zta/you/you/tsu;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/bio;->La(Ljava/lang/String;)Lorg/bouncycastle/asn1/bvj;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {p0}, Lyou/zta/you/you/tsu;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    :cond_0
    new-instance p0, Lorg/bouncycastle/asn1/ibl/veq;

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ibl/veq;-><init>(Lorg/bouncycastle/asn1/bvj;)V

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    new-instance p0, Lorg/bouncycastle/asn1/ibl/veq;

    sget-object p1, Lorg/bouncycastle/asn1/z;->INSTANCE:Lorg/bouncycastle/asn1/z;

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ibl/veq;-><init>(Lorg/bouncycastle/asn1/qbh;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->zta(Ljava/security/spec/EllipticCurve;)Lyou/zta/sis/zta/rtg;

    move-result-object v2

    new-instance v0, Lorg/bouncycastle/asn1/ibl/vju;

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {v2, v1, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->zta(Lyou/zta/sis/zta/rtg;Ljava/security/spec/ECPoint;Z)Lyou/zta/sis/zta/wtn;

    move-result-object v3

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result p1

    int-to-long v5, p1

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/asn1/ibl/vju;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    new-instance p0, Lorg/bouncycastle/asn1/ibl/veq;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/ibl/veq;-><init>(Lorg/bouncycastle/asn1/ibl/vju;)V

    :goto_0
    return-object p0
.end method

.method static zta(Ljava/security/spec/ECGenParameterSpec;)Lorg/bouncycastle/asn1/ibl/vju;
    .locals 0

    invoke-virtual {p0}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/you;->Ja(Ljava/lang/String;)Lorg/bouncycastle/asn1/ibl/vju;

    move-result-object p0

    return-object p0
.end method

.method static zta(Ljava/security/PublicKey;)Lorg/bouncycastle/crypto/wtn/you;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->Gj()Lorg/bouncycastle/crypto/wtn/obl;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/bio;->zta(Ljava/security/PublicKey;)Lorg/bouncycastle/crypto/wtn/you;

    move-result-object p0

    :goto_0
    return-object p0
.end method
