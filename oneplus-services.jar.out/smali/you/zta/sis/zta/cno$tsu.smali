.class public Lyou/zta/sis/zta/cno$tsu;
.super Lyou/zta/sis/zta/cno$you;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyou/zta/sis/zta/cno;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "tsu"
.end annotation


# instance fields
.field q:Ljava/math/BigInteger;

.field r:Ljava/math/BigInteger;

.field x:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    invoke-static {p1}, Lyou/zta/sis/zta/cno$tsu;->qbh(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lyou/zta/sis/zta/cno$tsu;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    invoke-direct {p0}, Lyou/zta/sis/zta/cno$you;-><init>()V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    iput-object p1, p0, Lyou/zta/sis/zta/cno$tsu;->q:Ljava/math/BigInteger;

    iput-object p2, p0, Lyou/zta/sis/zta/cno$tsu;->r:Ljava/math/BigInteger;

    iput-object p3, p0, Lyou/zta/sis/zta/cno$tsu;->x:Ljava/math/BigInteger;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "x value invalid in Fp field element"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static qbh(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 5

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x60

    if-lt v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x40

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    sget-object v1, Lyou/zta/sis/zta/sis;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private qbh(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;
    .locals 1

    invoke-virtual {p1}, Lyou/zta/sis/zta/cno;->square()Lyou/zta/sis/zta/cno;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private sis(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 9

    invoke-virtual {p3}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-virtual {p3}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v1

    sget-object v2, Lyou/zta/sis/zta/sis;->ONE:Ljava/math/BigInteger;

    sget-object v3, Lyou/zta/sis/zta/sis;->lra:Ljava/math/BigInteger;

    sget-object v4, Lyou/zta/sis/zta/sis;->ONE:Ljava/math/BigInteger;

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    move-object v7, p1

    move-object v6, v3

    move-object v3, v2

    move-object v2, v4

    :goto_0
    add-int/lit8 v8, v1, 0x1

    if-lt v0, v8, :cond_1

    invoke-virtual {p0, v4, v2}, Lyou/zta/sis/zta/cno$tsu;->bio(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p3, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v4, p2}, Lyou/zta/sis/zta/cno$tsu;->bio(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v3, v7}, Lyou/zta/sis/zta/cno$tsu;->bio(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v7, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p1, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p0, v6}, Lyou/zta/sis/zta/cno$tsu;->gwm(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v7, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p0, v7}, Lyou/zta/sis/zta/cno$tsu;->gwm(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    goto :goto_1

    :cond_0
    invoke-virtual {v3, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Lyou/zta/sis/zta/cno$tsu;->gwm(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v7, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0, v3}, Lyou/zta/sis/zta/cno$tsu;->gwm(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v6, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p0, v6}, Lyou/zta/sis/zta/cno$tsu;->gwm(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    move-object v7, v3

    move-object v3, v2

    move-object v2, v4

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v4, v2}, Lyou/zta/sis/zta/cno$tsu;->bio(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p0, p3, p2}, Lyou/zta/sis/zta/cno$tsu;->bio(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {v3, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lyou/zta/sis/zta/cno$tsu;->gwm(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v7, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1, p3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyou/zta/sis/zta/cno$tsu;->gwm(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p3, p2}, Lyou/zta/sis/zta/cno$tsu;->bio(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    move-object p3, p2

    move-object p2, p1

    move p1, v5

    :goto_2
    if-gt p1, v1, :cond_2

    invoke-virtual {p0, v0, p2}, Lyou/zta/sis/zta/cno$tsu;->bio(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p2, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p3, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p0, p2}, Lyou/zta/sis/zta/cno$tsu;->gwm(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p0, p3, p3}, Lyou/zta/sis/zta/cno$tsu;->bio(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/math/BigInteger;

    const/4 p1, 0x0

    aput-object v0, p0, p1

    aput-object p2, p0, v5

    return-object p0
.end method


# virtual methods
.method protected bio(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 0

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyou/zta/sis/zta/cno$tsu;->gwm(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method protected bvj(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyou/zta/sis/zta/cno$tsu;->q:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    :cond_0
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyou/zta/sis/zta/cno$tsu;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyou/zta/sis/zta/cno$tsu;

    iget-object v1, p0, Lyou/zta/sis/zta/cno$tsu;->q:Ljava/math/BigInteger;

    iget-object v3, p1, Lyou/zta/sis/zta/cno$tsu;->q:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lyou/zta/sis/zta/cno$tsu;->x:Ljava/math/BigInteger;

    iget-object p1, p1, Lyou/zta/sis/zta/cno$tsu;->x:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getFieldSize()I
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/cno$tsu;->q:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/cno$tsu;->q:Ljava/math/BigInteger;

    return-object p0
.end method

.method public gk()Lyou/zta/sis/zta/cno;
    .locals 3

    iget-object v0, p0, Lyou/zta/sis/zta/cno$tsu;->x:Ljava/math/BigInteger;

    sget-object v1, Lyou/zta/sis/zta/sis;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lyou/zta/sis/zta/cno$tsu;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lyou/zta/sis/zta/sis;->ZERO:Ljava/math/BigInteger;

    :cond_0
    new-instance v1, Lyou/zta/sis/zta/cno$tsu;

    iget-object v2, p0, Lyou/zta/sis/zta/cno$tsu;->q:Ljava/math/BigInteger;

    iget-object p0, p0, Lyou/zta/sis/zta/cno$tsu;->r:Ljava/math/BigInteger;

    invoke-direct {v1, v2, p0, v0}, Lyou/zta/sis/zta/cno$tsu;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v1
.end method

.method protected gwm(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 5

    iget-object v0, p0, Lyou/zta/sis/zta/cno$tsu;->r:Ljava/math/BigInteger;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p1

    :cond_1
    iget-object v1, p0, Lyou/zta/sis/zta/cno$tsu;->q:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    iget-object v2, p0, Lyou/zta/sis/zta/cno$tsu;->r:Ljava/math/BigInteger;

    sget-object v3, Lyou/zta/sis/zta/sis;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    if-le v3, v4, :cond_3

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    if-nez v2, :cond_2

    iget-object v4, p0, Lyou/zta/sis/zta/cno$tsu;->r:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    :cond_2
    invoke-virtual {v3, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v1, p0, Lyou/zta/sis/zta/cno$tsu;->q:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_4

    iget-object v1, p0, Lyou/zta/sis/zta/cno$tsu;->q:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Lyou/zta/sis/zta/cno$tsu;->q:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_3

    :cond_5
    iget-object p0, p0, Lyou/zta/sis/zta/cno$tsu;->q:Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    :cond_6
    :goto_3
    return-object p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lyou/zta/sis/zta/cno$tsu;->q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object p0, p0, Lyou/zta/sis/zta/cno$tsu;->x:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public hk()Ljava/lang/String;
    .locals 0

    const-string p0, "Fp"

    return-object p0
.end method

.method protected ibl(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyou/zta/sis/zta/cno$tsu;->q:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    :cond_0
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method protected igw(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 0

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result p2

    if-gez p2, :cond_0

    iget-object p0, p0, Lyou/zta/sis/zta/cno$tsu;->q:Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public invert()Lyou/zta/sis/zta/cno;
    .locals 4

    new-instance v0, Lyou/zta/sis/zta/cno$tsu;

    iget-object v1, p0, Lyou/zta/sis/zta/cno$tsu;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lyou/zta/sis/zta/cno$tsu;->r:Ljava/math/BigInteger;

    iget-object v3, p0, Lyou/zta/sis/zta/cno$tsu;->x:Ljava/math/BigInteger;

    invoke-virtual {p0, v3}, Lyou/zta/sis/zta/cno$tsu;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lyou/zta/sis/zta/cno$tsu;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public jk()Lyou/zta/sis/zta/cno;
    .locals 12

    invoke-virtual {p0}, Lyou/zta/sis/zta/cno;->isZero()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lyou/zta/sis/zta/cno;->ik()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lyou/zta/sis/zta/cno$tsu;->q:Ljava/math/BigInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lyou/zta/sis/zta/cno$tsu;->q:Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lyou/zta/sis/zta/cno$tsu;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lyou/zta/sis/zta/sis;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v1, Lyou/zta/sis/zta/cno$tsu;

    iget-object v2, p0, Lyou/zta/sis/zta/cno$tsu;->q:Ljava/math/BigInteger;

    iget-object v3, p0, Lyou/zta/sis/zta/cno$tsu;->r:Ljava/math/BigInteger;

    iget-object v4, p0, Lyou/zta/sis/zta/cno$tsu;->x:Ljava/math/BigInteger;

    invoke-virtual {v4, v0, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lyou/zta/sis/zta/cno$tsu;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {p0, v1}, Lyou/zta/sis/zta/cno$tsu;->qbh(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lyou/zta/sis/zta/cno$tsu;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lyou/zta/sis/zta/cno$tsu;->x:Ljava/math/BigInteger;

    iget-object v1, p0, Lyou/zta/sis/zta/cno$tsu;->q:Ljava/math/BigInteger;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lyou/zta/sis/zta/cno$tsu;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lyou/zta/sis/zta/cno$tsu;->x:Ljava/math/BigInteger;

    invoke-virtual {p0, v0, v1}, Lyou/zta/sis/zta/cno$tsu;->bio(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lyou/zta/sis/zta/cno$tsu;->bio(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v2, Lyou/zta/sis/zta/sis;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lyou/zta/sis/zta/cno$tsu;

    iget-object v2, p0, Lyou/zta/sis/zta/cno$tsu;->q:Ljava/math/BigInteger;

    iget-object v3, p0, Lyou/zta/sis/zta/cno$tsu;->r:Ljava/math/BigInteger;

    invoke-direct {v0, v2, v3, v1}, Lyou/zta/sis/zta/cno$tsu;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {p0, v0}, Lyou/zta/sis/zta/cno$tsu;->qbh(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object v0, Lyou/zta/sis/zta/sis;->lra:Ljava/math/BigInteger;

    iget-object v2, p0, Lyou/zta/sis/zta/cno$tsu;->q:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lyou/zta/sis/zta/cno$tsu;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, v2, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lyou/zta/sis/zta/cno$tsu;->bio(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v1, Lyou/zta/sis/zta/cno$tsu;

    iget-object v2, p0, Lyou/zta/sis/zta/cno$tsu;->q:Ljava/math/BigInteger;

    iget-object v3, p0, Lyou/zta/sis/zta/cno$tsu;->r:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3, v0}, Lyou/zta/sis/zta/cno$tsu;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {p0, v1}, Lyou/zta/sis/zta/cno$tsu;->qbh(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object v0, p0, Lyou/zta/sis/zta/cno$tsu;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v3, p0, Lyou/zta/sis/zta/cno$tsu;->x:Ljava/math/BigInteger;

    iget-object v4, p0, Lyou/zta/sis/zta/cno$tsu;->q:Ljava/math/BigInteger;

    invoke-virtual {v3, v0, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lyou/zta/sis/zta/sis;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_4

    return-object v4

    :cond_4
    iget-object v3, p0, Lyou/zta/sis/zta/cno$tsu;->x:Ljava/math/BigInteger;

    invoke-virtual {p0, v3}, Lyou/zta/sis/zta/cno$tsu;->oif(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p0, v5}, Lyou/zta/sis/zta/cno$tsu;->oif(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    sget-object v6, Lyou/zta/sis/zta/sis;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    iget-object v7, p0, Lyou/zta/sis/zta/cno$tsu;->q:Ljava/math/BigInteger;

    sget-object v8, Lyou/zta/sis/zta/sis;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    :cond_5
    new-instance v9, Ljava/math/BigInteger;

    iget-object v10, p0, Lyou/zta/sis/zta/cno$tsu;->q:Ljava/math/BigInteger;

    invoke-virtual {v10}, Ljava/math/BigInteger;->bitLength()I

    move-result v10

    invoke-direct {v9, v10, v8}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    iget-object v10, p0, Lyou/zta/sis/zta/cno$tsu;->q:Ljava/math/BigInteger;

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v10

    if-gez v10, :cond_5

    invoke-virtual {v9, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {p0, v10}, Lyou/zta/sis/zta/cno$tsu;->gwm(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    iget-object v11, p0, Lyou/zta/sis/zta/cno$tsu;->q:Ljava/math/BigInteger;

    invoke-virtual {v10, v0, v11}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-direct {p0, v9, v3, v6}, Lyou/zta/sis/zta/cno$tsu;->sis(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v9

    aget-object v10, v9, v1

    aget-object v9, v9, v2

    invoke-virtual {p0, v9, v9}, Lyou/zta/sis/zta/cno$tsu;->bio(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    new-instance v0, Lyou/zta/sis/zta/cno$tsu;

    iget-object v1, p0, Lyou/zta/sis/zta/cno$tsu;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lyou/zta/sis/zta/cno$tsu;->r:Ljava/math/BigInteger;

    invoke-virtual {p0, v9}, Lyou/zta/sis/zta/cno$tsu;->ibl(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lyou/zta/sis/zta/cno$tsu;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    :cond_6
    sget-object v9, Lyou/zta/sis/zta/sis;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v10, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v10, v7}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    return-object v4

    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "not done yet"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_0
    return-object p0
.end method

.method protected kth(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 0

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object p2, p0, Lyou/zta/sis/zta/cno$tsu;->q:Ljava/math/BigInteger;

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p2

    if-ltz p2, :cond_0

    iget-object p0, p0, Lyou/zta/sis/zta/cno$tsu;->q:Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method protected modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2

    invoke-virtual {p0}, Lyou/zta/sis/zta/cno$tsu;->getFieldSize()I

    move-result v0

    add-int/lit8 v1, v0, 0x1f

    shr-int/lit8 v1, v1, 0x5

    iget-object p0, p0, Lyou/zta/sis/zta/cno$tsu;->q:Ljava/math/BigInteger;

    invoke-static {v0, p0}, Lyou/zta/sis/sis/kth;->tsu(ILjava/math/BigInteger;)[I

    move-result-object p0

    invoke-static {v0, p1}, Lyou/zta/sis/sis/kth;->tsu(ILjava/math/BigInteger;)[I

    move-result-object p1

    invoke-static {v1}, Lyou/zta/sis/sis/kth;->create(I)[I

    move-result-object v0

    invoke-static {p0, p1, v0}, Lyou/zta/sis/sis/you;->bio([I[I[I)V

    invoke-static {v1, v0}, Lyou/zta/sis/sis/kth;->ywr(I[I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public negate()Lyou/zta/sis/zta/cno;
    .locals 3

    iget-object v0, p0, Lyou/zta/sis/zta/cno$tsu;->x:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lyou/zta/sis/zta/cno$tsu;

    iget-object v1, p0, Lyou/zta/sis/zta/cno$tsu;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lyou/zta/sis/zta/cno$tsu;->r:Ljava/math/BigInteger;

    iget-object p0, p0, Lyou/zta/sis/zta/cno$tsu;->x:Ljava/math/BigInteger;

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lyou/zta/sis/zta/cno$tsu;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method protected oif(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p1

    iget-object v0, p0, Lyou/zta/sis/zta/cno$tsu;->q:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Lyou/zta/sis/zta/cno$tsu;->q:Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;
    .locals 4

    new-instance v0, Lyou/zta/sis/zta/cno$tsu;

    iget-object v1, p0, Lyou/zta/sis/zta/cno$tsu;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lyou/zta/sis/zta/cno$tsu;->r:Ljava/math/BigInteger;

    iget-object v3, p0, Lyou/zta/sis/zta/cno$tsu;->x:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lyou/zta/sis/zta/cno$tsu;->bio(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lyou/zta/sis/zta/cno$tsu;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;
    .locals 4

    new-instance v0, Lyou/zta/sis/zta/cno$tsu;

    iget-object v1, p0, Lyou/zta/sis/zta/cno$tsu;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lyou/zta/sis/zta/cno$tsu;->r:Ljava/math/BigInteger;

    iget-object v3, p0, Lyou/zta/sis/zta/cno$tsu;->x:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lyou/zta/sis/zta/cno$tsu;->kth(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lyou/zta/sis/zta/cno$tsu;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public square()Lyou/zta/sis/zta/cno;
    .locals 4

    new-instance v0, Lyou/zta/sis/zta/cno$tsu;

    iget-object v1, p0, Lyou/zta/sis/zta/cno$tsu;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lyou/zta/sis/zta/cno$tsu;->r:Ljava/math/BigInteger;

    iget-object v3, p0, Lyou/zta/sis/zta/cno$tsu;->x:Ljava/math/BigInteger;

    invoke-virtual {p0, v3, v3}, Lyou/zta/sis/zta/cno$tsu;->bio(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lyou/zta/sis/zta/cno$tsu;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public ssp(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;
    .locals 4

    new-instance v0, Lyou/zta/sis/zta/cno$tsu;

    iget-object v1, p0, Lyou/zta/sis/zta/cno$tsu;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lyou/zta/sis/zta/cno$tsu;->r:Ljava/math/BigInteger;

    iget-object v3, p0, Lyou/zta/sis/zta/cno$tsu;->x:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lyou/zta/sis/zta/cno$tsu;->igw(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lyou/zta/sis/zta/cno$tsu;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/cno$tsu;->x:Ljava/math/BigInteger;

    return-object p0
.end method

.method public tsu(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;
    .locals 4

    new-instance v0, Lyou/zta/sis/zta/cno$tsu;

    iget-object v1, p0, Lyou/zta/sis/zta/cno$tsu;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lyou/zta/sis/zta/cno$tsu;->r:Ljava/math/BigInteger;

    iget-object v3, p0, Lyou/zta/sis/zta/cno$tsu;->x:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyou/zta/sis/zta/cno$tsu;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lyou/zta/sis/zta/cno$tsu;->bio(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lyou/zta/sis/zta/cno$tsu;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public you(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;
    .locals 3

    iget-object v0, p0, Lyou/zta/sis/zta/cno$tsu;->x:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {v0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    new-instance p2, Lyou/zta/sis/zta/cno$tsu;

    iget-object v1, p0, Lyou/zta/sis/zta/cno$tsu;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lyou/zta/sis/zta/cno$tsu;->r:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyou/zta/sis/zta/cno$tsu;->gwm(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {p2, v1, v2, p0}, Lyou/zta/sis/zta/cno$tsu;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p2
.end method

.method public you(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;
    .locals 2

    iget-object v0, p0, Lyou/zta/sis/zta/cno$tsu;->x:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p3}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2, p3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    new-instance p3, Lyou/zta/sis/zta/cno$tsu;

    iget-object v0, p0, Lyou/zta/sis/zta/cno$tsu;->q:Ljava/math/BigInteger;

    iget-object v1, p0, Lyou/zta/sis/zta/cno$tsu;->r:Ljava/math/BigInteger;

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyou/zta/sis/zta/cno$tsu;->gwm(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {p3, v0, v1, p0}, Lyou/zta/sis/zta/cno$tsu;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p3
.end method

.method public zta(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;
    .locals 3

    iget-object v0, p0, Lyou/zta/sis/zta/cno$tsu;->x:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {v0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    new-instance p2, Lyou/zta/sis/zta/cno$tsu;

    iget-object v1, p0, Lyou/zta/sis/zta/cno$tsu;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lyou/zta/sis/zta/cno$tsu;->r:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyou/zta/sis/zta/cno$tsu;->gwm(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {p2, v1, v2, p0}, Lyou/zta/sis/zta/cno$tsu;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p2
.end method

.method public zta(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;
    .locals 2

    iget-object v0, p0, Lyou/zta/sis/zta/cno$tsu;->x:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p3}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2, p3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    new-instance p3, Lyou/zta/sis/zta/cno$tsu;

    iget-object v0, p0, Lyou/zta/sis/zta/cno$tsu;->q:Ljava/math/BigInteger;

    iget-object v1, p0, Lyou/zta/sis/zta/cno$tsu;->r:Ljava/math/BigInteger;

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyou/zta/sis/zta/cno$tsu;->gwm(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {p3, v0, v1, p0}, Lyou/zta/sis/zta/cno$tsu;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p3
.end method
