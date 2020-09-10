.class Lorg/bouncycastle/asn1/ywr/obl;
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
.method protected ej()Lorg/bouncycastle/asn1/ibl/vju;
    .locals 13

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    const-string p0, "027B680AC8B8596DA5A4AF8A19A0303FCA97FD7645309FA2A581485AF6263E313B79A2F5"

    invoke-static {p0}, Lorg/bouncycastle/asn1/ywr/irq;->Ga(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v8

    const-string p0, "77E2B07370EB0F832A6DD5B62DFC88CD06BB84BE"

    invoke-static {p0}, Lorg/bouncycastle/util/encoders/tsu;->decode(Ljava/lang/String;)[B

    move-result-object p0

    const-string v0, "03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF90399660FC938A90165B042A7CEFADB307"

    invoke-static {v0}, Lorg/bouncycastle/asn1/ywr/irq;->Ga(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v11

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v12

    new-instance v1, Lyou/zta/sis/zta/rtg$tsu;

    const/16 v3, 0x11b

    const/4 v4, 0x5

    const/4 v5, 0x7

    const/16 v6, 0xc

    move-object v2, v1

    move-object v9, v11

    move-object v10, v12

    invoke-direct/range {v2 .. v10}, Lyou/zta/sis/zta/rtg$tsu;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v1}, Lorg/bouncycastle/asn1/ywr/irq;->zta(Lyou/zta/sis/zta/rtg;)Lyou/zta/sis/zta/rtg;

    new-instance v2, Lorg/bouncycastle/asn1/ibl/les;

    const-string v0, "0405F939258DB7DD90E1934F8C70B0DFEC2EED25B8557EAC9C80E2E198F8CDBECD86B1205303676854FE24141CB98FE6D4B20D02B4516FF702350EDDB0826779C813F0DF45BE8112F4"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/tsu;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/asn1/ibl/les;-><init>(Lyou/zta/sis/zta/rtg;[B)V

    new-instance v6, Lorg/bouncycastle/asn1/ibl/vju;

    move-object v0, v6

    move-object v3, v11

    move-object v4, v12

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/ibl/vju;-><init>(Lyou/zta/sis/zta/rtg;Lorg/bouncycastle/asn1/ibl/les;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v6
.end method
