.class Lorg/bouncycastle/asn1/ywr/igw;
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
    .locals 11

    const-string p0, "00689918DBEC7E5A0DD6DFC0AA55C7"

    invoke-static {p0}, Lorg/bouncycastle/asn1/ywr/irq;->Da(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    const-string p0, "0095E9A9EC9B297BD4BF36E059184F"

    invoke-static {p0}, Lorg/bouncycastle/asn1/ywr/irq;->Da(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v4

    const-string p0, "10C0FB15760860DEF1EEF4D696E676875615175D"

    invoke-static {p0}, Lorg/bouncycastle/util/encoders/tsu;->decode(Ljava/lang/String;)[B

    move-result-object v10

    const-string p0, "010000000000000108789B2496AF93"

    invoke-static {p0}, Lorg/bouncycastle/asn1/ywr/irq;->Da(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v8

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    new-instance p0, Lyou/zta/sis/zta/rtg$tsu;

    const/16 v1, 0x71

    const/16 v2, 0x9

    move-object v0, p0

    move-object v5, v8

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lyou/zta/sis/zta/rtg$tsu;-><init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {p0}, Lorg/bouncycastle/asn1/ywr/irq;->zta(Lyou/zta/sis/zta/rtg;)Lyou/zta/sis/zta/rtg;

    new-instance v7, Lorg/bouncycastle/asn1/ibl/les;

    const-string v0, "0401A57A6A7B26CA5EF52FCDB816479700B3ADC94ED1FE674C06E695BABA1D"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/tsu;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v7, p0, v0}, Lorg/bouncycastle/asn1/ibl/les;-><init>(Lyou/zta/sis/zta/rtg;[B)V

    new-instance v0, Lorg/bouncycastle/asn1/ibl/vju;

    move-object v5, v0

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lorg/bouncycastle/asn1/ibl/vju;-><init>(Lyou/zta/sis/zta/rtg;Lorg/bouncycastle/asn1/ibl/les;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method
