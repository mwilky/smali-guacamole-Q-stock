.class public Lorg/bouncycastle/crypto/wtn/oif;
.super Lorg/bouncycastle/crypto/wtn/gck;
.source ""


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static final lra:Ljava/math/BigInteger;


# instance fields
.field private y:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/wtn/oif;->ONE:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/wtn/oif;->lra:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/wtn/ywr;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/crypto/wtn/gck;-><init>(ZLorg/bouncycastle/crypto/wtn/ywr;)V

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/wtn/oif;->zta(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/wtn/ywr;)Ljava/math/BigInteger;

    iput-object p1, p0, Lorg/bouncycastle/crypto/wtn/oif;->y:Ljava/math/BigInteger;

    return-void
.end method

.method private zta(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/wtn/ywr;)Ljava/math/BigInteger;
    .locals 1

    if-eqz p2, :cond_1

    sget-object p0, Lorg/bouncycastle/crypto/wtn/oif;->lra:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gtz p0, :cond_0

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/ywr;->getP()Ljava/math/BigInteger;

    move-result-object p0

    sget-object v0, Lorg/bouncycastle/crypto/wtn/oif;->lra:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-ltz p0, :cond_0

    sget-object p0, Lorg/bouncycastle/crypto/wtn/oif;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/ywr;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/wtn/ywr;->getP()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "y value does not appear to be in correct group"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object p1
.end method


# virtual methods
.method public getY()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/wtn/oif;->y:Ljava/math/BigInteger;

    return-object p0
.end method
