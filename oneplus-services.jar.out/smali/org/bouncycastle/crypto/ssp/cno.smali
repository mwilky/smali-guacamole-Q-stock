.class public Lorg/bouncycastle/crypto/ssp/cno;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/sis;


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field private param:Lorg/bouncycastle/crypto/wtn/wtn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/ssp/cno;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static you(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 0

    invoke-virtual {p1, p2, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method private static you(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 3

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x2

    :cond_0
    sget-object v1, Lorg/bouncycastle/crypto/ssp/cno;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lorg/bouncycastle/util/you;->you(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lyou/zta/sis/zta/fto;->obl(Ljava/math/BigInteger;)I

    move-result v2

    if-lt v2, v0, :cond_0

    return-object v1
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/you;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/ssp/cno;->param:Lorg/bouncycastle/crypto/wtn/wtn;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/wtn;->getParameters()Lorg/bouncycastle/crypto/wtn/ywr;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/ywr;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    iget-object p0, p0, Lorg/bouncycastle/crypto/ssp/cno;->param:Lorg/bouncycastle/crypto/wtn/wtn;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/bvj;->hj()Ljava/security/SecureRandom;

    move-result-object p0

    invoke-static {v1, p0}, Lorg/bouncycastle/crypto/ssp/cno;->you(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/ywr;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/wtn/ywr;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v1, v2, p0}, Lorg/bouncycastle/crypto/ssp/cno;->you(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/crypto/you;

    new-instance v3, Lorg/bouncycastle/crypto/wtn/oif;

    invoke-direct {v3, v1, v0}, Lorg/bouncycastle/crypto/wtn/oif;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/wtn/ywr;)V

    new-instance v1, Lorg/bouncycastle/crypto/wtn/qbh;

    invoke-direct {v1, p0, v0}, Lorg/bouncycastle/crypto/wtn/qbh;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/wtn/ywr;)V

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/crypto/you;-><init>(Lorg/bouncycastle/crypto/wtn/you;Lorg/bouncycastle/crypto/wtn/you;)V

    return-object v2
.end method

.method public zta(Lorg/bouncycastle/crypto/bvj;)V
    .locals 0

    check-cast p1, Lorg/bouncycastle/crypto/wtn/wtn;

    iput-object p1, p0, Lorg/bouncycastle/crypto/ssp/cno;->param:Lorg/bouncycastle/crypto/wtn/wtn;

    return-void
.end method
