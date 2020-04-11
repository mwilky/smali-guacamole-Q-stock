.class public Lyou/zta/you/you/tsu;
.super Ljava/security/spec/ECParameterSpec;
.source ""


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, p4, v0}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object p1, p0, Lyou/zta/you/you/tsu;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    invoke-virtual {p5}, Ljava/math/BigInteger;->intValue()I

    move-result p5

    invoke-direct {p0, p2, p3, p4, p5}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object p1, p0, Lyou/zta/you/you/tsu;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lyou/zta/you/you/tsu;->zta(Lyou/zta/sis/zta/rtg;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p2

    invoke-static {p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->you(Lyou/zta/sis/zta/wtn;)Ljava/security/spec/ECPoint;

    move-result-object p3

    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, p4, v0}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object p1, p0, Lyou/zta/you/you/tsu;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lyou/zta/you/you/tsu;->zta(Lyou/zta/sis/zta/rtg;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p2

    invoke-static {p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->you(Lyou/zta/sis/zta/wtn;)Ljava/security/spec/ECPoint;

    move-result-object p3

    invoke-virtual {p5}, Ljava/math/BigInteger;->intValue()I

    move-result p5

    invoke-direct {p0, p2, p3, p4, p5}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object p1, p0, Lyou/zta/you/you/tsu;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 0

    invoke-static {p2, p6}, Lyou/zta/you/you/tsu;->zta(Lyou/zta/sis/zta/rtg;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p2

    invoke-static {p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->you(Lyou/zta/sis/zta/wtn;)Ljava/security/spec/ECPoint;

    move-result-object p3

    invoke-virtual {p5}, Ljava/math/BigInteger;->intValue()I

    move-result p5

    invoke-direct {p0, p2, p3, p4, p5}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object p1, p0, Lyou/zta/you/you/tsu;->name:Ljava/lang/String;

    return-void
.end method

.method private static zta(Lyou/zta/sis/you/you;)Ljava/security/spec/ECField;
    .locals 3

    invoke-static {p0}, Lyou/zta/sis/zta/you;->sis(Lyou/zta/sis/you/you;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/security/spec/ECFieldFp;

    invoke-interface {p0}, Lyou/zta/sis/you/you;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    :cond_0
    check-cast p0, Lyou/zta/sis/you/cno;

    invoke-interface {p0}, Lyou/zta/sis/you/cno;->j()Lyou/zta/sis/you/ssp;

    move-result-object p0

    invoke-interface {p0}, Lyou/zta/sis/you/ssp;->k()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/util/zta;->copyOfRange([III)[I

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/zta;->bvj([I)[I

    move-result-object v0

    new-instance v1, Ljava/security/spec/ECFieldF2m;

    invoke-interface {p0}, Lyou/zta/sis/you/ssp;->l()I

    move-result p0

    invoke-direct {v1, p0, v0}, Ljava/security/spec/ECFieldF2m;-><init>(I[I)V

    return-object v1
.end method

.method private static zta(Lyou/zta/sis/zta/rtg;[B)Ljava/security/spec/EllipticCurve;
    .locals 3

    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg;->getField()Lyou/zta/sis/you/you;

    move-result-object v0

    invoke-static {v0}, Lyou/zta/you/you/tsu;->zta(Lyou/zta/sis/you/you;)Ljava/security/spec/ECField;

    move-result-object v0

    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg;->getA()Lyou/zta/sis/zta/cno;

    move-result-object v1

    invoke-virtual {v1}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg;->getB()Lyou/zta/sis/zta/cno;

    move-result-object p0

    invoke-virtual {p0}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    new-instance v2, Ljava/security/spec/EllipticCurve;

    invoke-direct {v2, v0, v1, p0, p1}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v2
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyou/zta/you/you/tsu;->name:Ljava/lang/String;

    return-object p0
.end method
