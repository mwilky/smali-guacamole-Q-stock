.class Lorg/bouncycastle/asn1/ywr/fto;
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
.method protected gj()Lorg/bouncycastle/asn1/ibl/vju;
    .locals 10

    const-string p0, "FFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFF"

    invoke-static {p0}, Lorg/bouncycastle/asn1/ywr/irq;->Ga(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v1

    const-string p0, "FFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFC"

    invoke-static {p0}, Lorg/bouncycastle/asn1/ywr/irq;->Ga(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v2

    const-string p0, "E87579C11079F43DD824993C2CEE5ED3"

    invoke-static {p0}, Lorg/bouncycastle/asn1/ywr/irq;->Ga(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    const-string p0, "000E0D4D696E6768756151750CC03A4473D03679"

    invoke-static {p0}, Lorg/bouncycastle/util/encoders/tsu;->decode(Ljava/lang/String;)[B

    move-result-object v9

    const-string p0, "FFFFFFFE0000000075A30D1B9038A115"

    invoke-static {p0}, Lorg/bouncycastle/asn1/ywr/irq;->Ga(Ljava/lang/String;)Ljava/math/BigInteger;

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

    const-string v0, "04161FF7528B899B2D0C28607CA52C5B86CF5AC8395BAFEB13C02DA292DDED7A83"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/tsu;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v6, p0, v0}, Lorg/bouncycastle/asn1/ibl/les;-><init>(Lyou/zta/sis/zta/rtg;[B)V

    new-instance v0, Lorg/bouncycastle/asn1/ibl/vju;

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lorg/bouncycastle/asn1/ibl/vju;-><init>(Lyou/zta/sis/zta/rtg;Lorg/bouncycastle/asn1/ibl/les;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method
