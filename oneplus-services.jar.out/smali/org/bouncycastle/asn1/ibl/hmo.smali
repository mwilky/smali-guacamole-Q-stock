.class Lorg/bouncycastle/asn1/ibl/hmo;
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
    .locals 11

    new-instance p0, Ljava/math/BigInteger;

    const/16 v0, 0x10

    const-string v1, "0400000000000000000001E60FC8821CC74DAEAFC1"

    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const-wide/16 v1, 0x2

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    new-instance v10, Lyou/zta/sis/zta/rtg$tsu;

    new-instance v5, Ljava/math/BigInteger;

    const-string v1, "072546B5435234A422E0789675F432C89435DE5242"

    invoke-direct {v5, v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v6, Ljava/math/BigInteger;

    const-string v1, "00C9517D06D5240D3CFF38C74B20B6CD4D6F9DD4D9"

    invoke-direct {v6, v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/16 v1, 0xa3

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/16 v4, 0x8

    move-object v0, v10

    move-object v7, p0

    move-object v8, v9

    invoke-direct/range {v0 .. v8}, Lyou/zta/sis/zta/rtg$tsu;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v6, Lorg/bouncycastle/asn1/ibl/vju;

    new-instance v2, Lorg/bouncycastle/asn1/ibl/les;

    const-string v0, "0307AF69989546103D79329FCC3D74880F33BBE803CB"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/tsu;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v2, v10, v0}, Lorg/bouncycastle/asn1/ibl/les;-><init>(Lyou/zta/sis/zta/rtg;[B)V

    const-string v0, "D2C0FB15760860DEF1EEF4D696E6768756151754"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/tsu;->decode(Ljava/lang/String;)[B

    move-result-object v5

    move-object v0, v6

    move-object v1, v10

    move-object v3, p0

    move-object v4, v9

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/ibl/vju;-><init>(Lyou/zta/sis/zta/rtg;Lorg/bouncycastle/asn1/ibl/les;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v6
.end method
