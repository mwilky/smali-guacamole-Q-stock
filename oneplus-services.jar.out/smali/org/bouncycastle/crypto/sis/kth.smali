.class Lorg/bouncycastle/crypto/sis/kth;
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
.method protected fj()Lorg/bouncycastle/asn1/ibl/vju;
    .locals 6

    const-string p0, "D09E8800291CB85396CC6717393284AAA0DA64BA"

    invoke-static {p0}, Lorg/bouncycastle/util/encoders/tsu;->decode(Ljava/lang/String;)[B

    move-result-object v5

    new-instance v1, Lyou/zta/sis/zta/zta/zta/vdw;

    invoke-direct {v1}, Lyou/zta/sis/zta/zta/zta/vdw;-><init>()V

    invoke-static {v1}, Lorg/bouncycastle/crypto/sis/bio;->zta(Lyou/zta/sis/zta/rtg;)Lyou/zta/sis/zta/rtg;

    new-instance v2, Lorg/bouncycastle/asn1/ibl/les;

    const-string p0, "0400C6858E06B70404E9CD9E3ECB662395B4429C648139053FB521F828AF606B4D3DBAA14B5E77EFE75928FE1DC127A2FFA8DE3348B3C1856A429BF97E7E31C2E5BD66011839296A789A3BC0045C8A5FB42C7D1BD998F54449579B446817AFBD17273E662C97EE72995EF42640C550B9013FAD0761353C7086A272C24088BE94769FD16650"

    invoke-static {p0}, Lorg/bouncycastle/util/encoders/tsu;->decode(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v2, v1, p0}, Lorg/bouncycastle/asn1/ibl/les;-><init>(Lyou/zta/sis/zta/rtg;[B)V

    new-instance p0, Lorg/bouncycastle/asn1/ibl/vju;

    invoke-virtual {v1}, Lyou/zta/sis/zta/rtg;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1}, Lyou/zta/sis/zta/rtg;->getCofactor()Ljava/math/BigInteger;

    move-result-object v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/ibl/vju;-><init>(Lyou/zta/sis/zta/rtg;Lorg/bouncycastle/asn1/ibl/les;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object p0
.end method
