.class Lorg/bouncycastle/asn1/ibl/igw;
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
.method protected fj()Lorg/bouncycastle/asn1/ibl/vju;
    .locals 9

    new-instance p0, Ljava/math/BigInteger;

    const/16 v0, 0x10

    const-string v1, "20000000000000000000000050508CB89F652824E06B8173"

    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const-wide/16 v1, 0x4

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    new-instance v8, Lyou/zta/sis/zta/rtg$tsu;

    new-instance v3, Ljava/math/BigInteger;

    const-string v1, "401028774D7777C7B7666D1366EA432071274F89FF01E718"

    invoke-direct {v3, v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v4, Ljava/math/BigInteger;

    const-string v1, "0620048D28BCBD03B6249C99182B7C8CD19700C362C46A01"

    invoke-direct {v4, v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/16 v1, 0xbf

    const/16 v2, 0x9

    move-object v0, v8

    move-object v5, p0

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lyou/zta/sis/zta/rtg$tsu;-><init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v6, Lorg/bouncycastle/asn1/ibl/vju;

    new-instance v2, Lorg/bouncycastle/asn1/ibl/les;

    const-string v0, "023809B2B7CC1B28CC5A87926AAD83FD28789E81E2C9E3BF10"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/tsu;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v2, v8, v0}, Lorg/bouncycastle/asn1/ibl/les;-><init>(Lyou/zta/sis/zta/rtg;[B)V

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v8

    move-object v3, p0

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/ibl/vju;-><init>(Lyou/zta/sis/zta/rtg;Lorg/bouncycastle/asn1/ibl/les;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v6
.end method
