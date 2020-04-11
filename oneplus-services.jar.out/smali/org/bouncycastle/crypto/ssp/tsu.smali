.class Lorg/bouncycastle/crypto/ssp/tsu;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final INSTANCE:Lorg/bouncycastle/crypto/ssp/tsu;

.field private static final ONE:Ljava/math/BigInteger;

.field private static final Zna:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/ssp/tsu;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/ssp/tsu;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/ssp/tsu;->INSTANCE:Lorg/bouncycastle/crypto/ssp/tsu;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/ssp/tsu;->ONE:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/ssp/tsu;->Zna:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method zta(Lorg/bouncycastle/crypto/wtn/cno;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/cno;->getG()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/cno;->getP()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method zta(Lorg/bouncycastle/crypto/wtn/cno;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 3

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/cno;->getL()I

    move-result p0

    if-eqz p0, :cond_1

    ushr-int/lit8 v0, p0, 0x2

    :cond_0
    invoke-static {p0, p2}, Lorg/bouncycastle/util/you;->zta(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object p1

    add-int/lit8 v1, p0, -0x1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1}, Lyou/zta/sis/zta/fto;->obl(Ljava/math/BigInteger;)I

    move-result v1

    if-lt v1, v0, :cond_0

    return-object p1

    :cond_1
    sget-object p0, Lorg/bouncycastle/crypto/ssp/tsu;->Zna:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/cno;->getM()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lorg/bouncycastle/crypto/ssp/tsu;->ONE:Ljava/math/BigInteger;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p0

    :cond_2
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/cno;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/wtn/cno;->getP()Ljava/math/BigInteger;

    move-result-object v0

    :cond_3
    sget-object p1, Lorg/bouncycastle/crypto/ssp/tsu;->Zna:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x2

    :cond_4
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/util/you;->you(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lyou/zta/sis/zta/fto;->obl(Ljava/math/BigInteger;)I

    move-result v2

    if-lt v2, v0, :cond_4

    return-object v1
.end method
