.class Lorg/bouncycastle/asn1/ywr/qbh;
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
    .locals 13

    const-string p0, "07B6882CAAEFA84F9554FF8428BD88E246D2782AE2"

    invoke-static {p0}, Lorg/bouncycastle/asn1/ywr/irq;->Ga(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v5

    const-string p0, "0713612DCDDCB40AAB946BDA29CA91F73AF958AFD9"

    invoke-static {p0}, Lorg/bouncycastle/asn1/ywr/irq;->Ga(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v6

    const-string p0, "24B7B137C8A14D696E6768756151756FD0DA2E5C"

    invoke-static {p0}, Lorg/bouncycastle/util/encoders/tsu;->decode(Ljava/lang/String;)[B

    move-result-object v12

    const-string p0, "03FFFFFFFFFFFFFFFFFFFF48AAB689C29CA710279B"

    invoke-static {p0}, Lorg/bouncycastle/asn1/ywr/irq;->Ga(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v10

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v11

    new-instance p0, Lyou/zta/sis/zta/rtg$tsu;

    const/16 v1, 0xa3

    const/4 v2, 0x3

    const/4 v3, 0x6

    const/4 v4, 0x7

    move-object v0, p0

    move-object v7, v10

    move-object v8, v11

    invoke-direct/range {v0 .. v8}, Lyou/zta/sis/zta/rtg$tsu;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {p0}, Lorg/bouncycastle/asn1/ywr/irq;->zta(Lyou/zta/sis/zta/rtg;)Lyou/zta/sis/zta/rtg;

    new-instance v9, Lorg/bouncycastle/asn1/ibl/les;

    const-string v0, "040369979697AB43897789566789567F787A7876A65400435EDB42EFAFB2989D51FEFCE3C80988F41FF883"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/tsu;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v9, p0, v0}, Lorg/bouncycastle/asn1/ibl/les;-><init>(Lyou/zta/sis/zta/rtg;[B)V

    new-instance v0, Lorg/bouncycastle/asn1/ibl/vju;

    move-object v7, v0

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Lorg/bouncycastle/asn1/ibl/vju;-><init>(Lyou/zta/sis/zta/rtg;Lorg/bouncycastle/asn1/ibl/les;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method
