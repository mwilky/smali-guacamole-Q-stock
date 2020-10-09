.class Lorg/bouncycastle/crypto/ssp/ssp;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final OCa:Ljava/util/logging/Logger;

.field private static final ONE:Ljava/math/BigInteger;

.field private static final wra:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/bouncycastle/crypto/ssp/ssp;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/ssp/ssp;->OCa:Ljava/util/logging/Logger;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/ssp/ssp;->ONE:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/ssp/ssp;->wra:Ljava/math/BigInteger;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static you(IILjava/security/SecureRandom;)[Ljava/math/BigInteger;
    .locals 10

    sget-object v0, Lorg/bouncycastle/crypto/ssp/ssp;->OCa:Ljava/util/logging/Logger;

    const-string v1, "Generating safe primes. This may take a long time."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-int/lit8 v2, p0, -0x1

    const/4 v3, 0x2

    ushr-int/2addr p0, v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-static {v2, v3, p2}, Lorg/bouncycastle/util/you;->sis(IILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v8

    sget-object v9, Lorg/bouncycastle/crypto/ssp/ssp;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v9

    if-nez v9, :cond_0

    goto :goto_0

    :cond_0
    if-le p1, v3, :cond_1

    add-int/lit8 v9, p1, -0x2

    invoke-virtual {v7, v9}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v8}, Lyou/zta/sis/zta/fto;->obl(Ljava/math/BigInteger;)I

    move-result v9

    if-ge v9, p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v0

    sget-object p2, Lorg/bouncycastle/crypto/ssp/ssp;->OCa:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Generated safe primes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " tries took "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    new-array p0, v3, [Ljava/math/BigInteger;

    aput-object v8, p0, v4

    aput-object v7, p0, v6

    return-object p0
.end method

.method static zta(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 2

    sget-object p1, Lorg/bouncycastle/crypto/ssp/ssp;->wra:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    :cond_0
    sget-object v0, Lorg/bouncycastle/crypto/ssp/ssp;->wra:Ljava/math/BigInteger;

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/util/you;->you(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/crypto/ssp/ssp;->wra:Ljava/math/BigInteger;

    invoke-virtual {v0, v1, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/crypto/ssp/ssp;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0
.end method
