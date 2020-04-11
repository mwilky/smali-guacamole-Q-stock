.class Lorg/bouncycastle/asn1/ywr/tsu;
.super Lorg/bouncycastle/asn1/ibl/bud;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/asn1/ywr/irq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ibl/bud;-><init>()V

    return-void
.end method


# virtual methods
.method protected Ti()Lorg/bouncycastle/asn1/ibl/vju;
    .locals 10

    const-string p0, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000001"

    invoke-static {p0}, Lorg/bouncycastle/asn1/ywr/irq;->Da(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v1

    const-string p0, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFE"

    invoke-static {p0}, Lorg/bouncycastle/asn1/ywr/irq;->Da(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v2

    const-string p0, "B4050A850C04B3ABF54132565044B0B7D7BFD8BA270B39432355FFB4"

    invoke-static {p0}, Lorg/bouncycastle/asn1/ywr/irq;->Da(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    const-string p0, "BD71344799D5C7FCDC45B59FA3B9AB8F6A948BC5"

    invoke-static {p0}, Lorg/bouncycastle/util/encoders/tsu;->decode(Ljava/lang/String;)[B

    move-result-object v9

    const-string p0, "FFFFFFFFFFFFFFFFFFFFFFFFFFFF16A2E0B8F03E13DD29455C5C2A3D"

    invoke-static {p0}, Lorg/bouncycastle/asn1/ywr/irq;->Da(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v7

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    new-instance p0, Lyou/zta/sis/zta/rtg$rtg;

    move-object v0, p0

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lyou/zta/sis/zta/rtg$rtg;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {p0}, Lorg/bouncycastle/asn1/ywr/irq;->zta(Lyou/zta/sis/zta/rtg;)Lyou/zta/sis/zta/rtg;

    new-instance v6, Lorg/bouncycastle/asn1/ibl/les;

    const-string v0, "04B70E0CBD6BB4BF7F321390B94A03C1D356C21122343280D6115C1D21BD376388B5F723FB4C22DFE6CD4375A05A07476444D5819985007E34"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/tsu;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v6, p0, v0}, Lorg/bouncycastle/asn1/ibl/les;-><init>(Lyou/zta/sis/zta/rtg;[B)V

    new-instance v0, Lorg/bouncycastle/asn1/ibl/vju;

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lorg/bouncycastle/asn1/ibl/vju;-><init>(Lyou/zta/sis/zta/rtg;Lorg/bouncycastle/asn1/ibl/les;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method
