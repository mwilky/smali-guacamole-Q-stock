.class public abstract Lyou/zta/sis/you/sis;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final jIa:Lyou/zta/sis/you/you;

.field static final kIa:Lyou/zta/sis/you/you;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lyou/zta/sis/you/kth;

    const-wide/16 v1, 0x2

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lyou/zta/sis/you/kth;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lyou/zta/sis/you/sis;->jIa:Lyou/zta/sis/you/you;

    new-instance v0, Lyou/zta/sis/you/kth;

    const-wide/16 v1, 0x3

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lyou/zta/sis/you/kth;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lyou/zta/sis/you/sis;->kIa:Lyou/zta/sis/you/you;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static igw([I)Lyou/zta/sis/you/cno;
    .locals 3

    const/4 v0, 0x0

    aget v0, p0, v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget v1, p0, v0

    add-int/lit8 v2, v0, -0x1

    aget v2, p0, v2

    if-le v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Polynomial exponents must be montonically increasing"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v0, Lyou/zta/sis/you/rtg;

    sget-object v1, Lyou/zta/sis/you/sis;->jIa:Lyou/zta/sis/you/you;

    new-instance v2, Lyou/zta/sis/you/tsu;

    invoke-direct {v2, p0}, Lyou/zta/sis/you/tsu;-><init>([I)V

    invoke-direct {v0, v1, v2}, Lyou/zta/sis/you/rtg;-><init>(Lyou/zta/sis/you/you;Lyou/zta/sis/you/ssp;)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Irreducible polynomials in GF(2) must have constant term"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static oxb(Ljava/math/BigInteger;)Lyou/zta/sis/you/you;
    .locals 3

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    const/4 v2, 0x3

    if-ge v0, v2, :cond_2

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lyou/zta/sis/you/sis;->kIa:Lyou/zta/sis/you/you;

    return-object p0

    :cond_1
    sget-object p0, Lyou/zta/sis/you/sis;->jIa:Lyou/zta/sis/you/you;

    return-object p0

    :cond_2
    :goto_0
    new-instance v0, Lyou/zta/sis/you/kth;

    invoke-direct {v0, p0}, Lyou/zta/sis/you/kth;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'characteristic\' must be >= 2"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
