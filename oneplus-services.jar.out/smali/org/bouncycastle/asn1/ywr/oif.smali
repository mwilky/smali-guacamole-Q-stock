.class Lorg/bouncycastle/asn1/ywr/oif;
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

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    const-string p0, "020A601907B8C953CA1481EB10512F78744A3205FD"

    invoke-static {p0}, Lorg/bouncycastle/asn1/ywr/irq;->Ga(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v8

    const-string p0, "85E25BFE5C86226CDB12016F7553F9D0E693A268"

    invoke-static {p0}, Lorg/bouncycastle/util/encoders/tsu;->decode(Ljava/lang/String;)[B

    move-result-object p0

    const-string v0, "040000000000000000000292FE77E70C12A4234C33"

    invoke-static {v0}, Lorg/bouncycastle/asn1/ywr/irq;->Ga(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v11

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v12

    new-instance v1, Lyou/zta/sis/zta/rtg$tsu;

    const/16 v3, 0xa3

    const/4 v4, 0x3

    const/4 v5, 0x6

    const/4 v6, 0x7

    move-object v2, v1

    move-object v9, v11

    move-object v10, v12

    invoke-direct/range {v2 .. v10}, Lyou/zta/sis/zta/rtg$tsu;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v1}, Lorg/bouncycastle/asn1/ywr/irq;->zta(Lyou/zta/sis/zta/rtg;)Lyou/zta/sis/zta/rtg;

    new-instance v2, Lorg/bouncycastle/asn1/ibl/les;

    const-string v0, "0403F0EBA16286A2D57EA0991168D4994637E8343E3600D51FBC6C71A0094FA2CDD545B11C5C0C797324F1"

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
