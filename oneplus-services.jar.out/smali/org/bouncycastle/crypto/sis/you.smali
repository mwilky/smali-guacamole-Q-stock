.class Lorg/bouncycastle/crypto/sis/you;
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

    const-string p0, "3045AE6FC8422F64ED579528D38120EAE12196D5"

    invoke-static {p0}, Lorg/bouncycastle/util/encoders/tsu;->decode(Ljava/lang/String;)[B

    move-result-object v5

    new-instance v1, Lyou/zta/sis/zta/zta/zta/cno;

    invoke-direct {v1}, Lyou/zta/sis/zta/zta/zta/cno;-><init>()V

    invoke-static {v1}, Lorg/bouncycastle/crypto/sis/bio;->zta(Lyou/zta/sis/zta/rtg;)Lyou/zta/sis/zta/rtg;

    new-instance v2, Lorg/bouncycastle/asn1/ibl/les;

    const-string p0, "04188DA80EB03090F67CBF20EB43A18800F4FF0AFD82FF101207192B95FFC8DA78631011ED6B24CDD573F977A11E794811"

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
