.class Lorg/bouncycastle/crypto/sis/zta;
.super Lorg/bouncycastle/asn1/ibl/bud;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/sis/bio;
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

    new-instance p0, Lyou/zta/sis/zta/you/tsu;

    new-instance v1, Ljava/math/BigInteger;

    const/16 v0, 0x10

    const-string v2, "bb85691939b869c1d087f601554b96b80cb4f55b35f433c2"

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "3d84f26c12238d7b4f3d516613c1759033b1a5800175d0b1"

    invoke-direct {v2, v3, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/math/BigInteger;

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "71169be7330b3038edb025f1"

    invoke-direct {v5, v6, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v7, 0x0

    aput-object v5, v4, v7

    new-instance v5, Ljava/math/BigInteger;

    const-string v8, "-b3fb3400dec5c4adceb8655c"

    invoke-direct {v5, v8, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v8, 0x1

    aput-object v5, v4, v8

    new-array v5, v3, [Ljava/math/BigInteger;

    new-instance v3, Ljava/math/BigInteger;

    const-string v9, "12511cfe811d0f4e6bc688b4d"

    invoke-direct {v3, v9, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v3, v5, v7

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v6, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v3, v5, v8

    new-instance v6, Ljava/math/BigInteger;

    const-string v3, "71169be7330b3038edb025f1d0f9"

    invoke-direct {v6, v3, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v7, Ljava/math/BigInteger;

    const-string v3, "b3fb3400dec5c4adceb8655d4c94"

    invoke-direct {v7, v3, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/16 v8, 0xd0

    move-object v0, p0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    invoke-direct/range {v0 .. v7}, Lyou/zta/sis/zta/you/tsu;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    new-instance v0, Lyou/zta/sis/zta/zta/zta/you;

    invoke-direct {v0}, Lyou/zta/sis/zta/zta/zta/you;-><init>()V

    invoke-static {v0, p0}, Lorg/bouncycastle/crypto/sis/bio;->you(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/you/tsu;)Lyou/zta/sis/zta/rtg;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/asn1/ibl/les;

    const-string p0, "04DB4FF10EC057E9AE26B07D0280B7F4341DA5D1B1EAE06C7D9B2F2F6D9C5628A7844163D015BE86344082AA88D95E2F9D"

    invoke-static {p0}, Lorg/bouncycastle/util/encoders/tsu;->decode(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v3, v2, p0}, Lorg/bouncycastle/asn1/ibl/les;-><init>(Lyou/zta/sis/zta/rtg;[B)V

    new-instance p0, Lorg/bouncycastle/asn1/ibl/vju;

    invoke-virtual {v2}, Lyou/zta/sis/zta/rtg;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2}, Lyou/zta/sis/zta/rtg;->getCofactor()Ljava/math/BigInteger;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/asn1/ibl/vju;-><init>(Lyou/zta/sis/zta/rtg;Lorg/bouncycastle/asn1/ibl/les;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object p0
.end method
