.class Lorg/bouncycastle/asn1/ibl/ear;
.super Lorg/bouncycastle/asn1/ibl/bud;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/asn1/ibl/lqr;
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
    .locals 9

    new-instance p0, Ljava/math/BigInteger;

    const/16 v0, 0x10

    const-string v1, "7fffffffffffffffffffffff7fffff975deb41b3a6057c3c432146526551"

    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    new-instance v7, Lyou/zta/sis/zta/rtg$rtg;

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "883423532389192164791648750360308885314476597252960362792450860609699839"

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "7fffffffffffffffffffffff7fffffffffff8000000000007ffffffffffc"

    invoke-direct {v2, v3, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "255705fa2a306654b1f4cb03d6a750a30c250102d4988717d9ba15ab6d3e"

    invoke-direct {v3, v4, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    move-object v0, v7

    move-object v4, p0

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lyou/zta/sis/zta/rtg$rtg;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v8, Lorg/bouncycastle/asn1/ibl/vju;

    new-instance v2, Lorg/bouncycastle/asn1/ibl/les;

    const-string v0, "036768ae8e18bb92cfcf005c949aa2c6d94853d0e660bbf854b1c9505fe95a"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/tsu;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v2, v7, v0}, Lorg/bouncycastle/asn1/ibl/les;-><init>(Lyou/zta/sis/zta/rtg;[B)V

    const-string v0, "7d7374168ffe3471b60a857686a19475d3bfa2ff"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/tsu;->decode(Ljava/lang/String;)[B

    move-result-object v5

    move-object v0, v8

    move-object v1, v7

    move-object v3, p0

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/ibl/vju;-><init>(Lyou/zta/sis/zta/rtg;Lorg/bouncycastle/asn1/ibl/les;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v8
.end method
