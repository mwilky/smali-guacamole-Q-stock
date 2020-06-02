.class public Lyou/zta/sis/zta/you;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static rtg(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;
    .locals 1

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid point"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static sis(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;
    .locals 1

    invoke-virtual {p1}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lyou/zta/sis/zta/rtg;->rtg(Lyou/zta/sis/zta/rtg;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lyou/zta/sis/zta/rtg;->cno(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Point must be on the same curve"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static sis(Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;)Lyou/zta/sis/zta/wtn;
    .locals 5

    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v1

    invoke-virtual {v1}, Lyou/zta/sis/zta/rtg;->getInfinity()Lyou/zta/sis/zta/wtn;

    move-result-object v1

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, p0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->Hk()Lyou/zta/sis/zta/wtn;

    move-result-object p0

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, p0}, Lyou/zta/sis/zta/wtn;->kth(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;

    move-result-object v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result p0

    if-gez p0, :cond_3

    invoke-virtual {v1}, Lyou/zta/sis/zta/wtn;->negate()Lyou/zta/sis/zta/wtn;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method public static sis(Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;)Lyou/zta/sis/zta/wtn;
    .locals 1

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v0

    invoke-static {v0, p2}, Lyou/zta/sis/zta/you;->sis(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Lyou/zta/sis/zta/you;->zta(Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    invoke-static {p0}, Lyou/zta/sis/zta/you;->tsu(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;

    return-object p0
.end method

.method public static sis(Lyou/zta/sis/you/you;)Z
    .locals 1

    invoke-interface {p0}, Lyou/zta/sis/you/you;->vdw()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static sis(Lyou/zta/sis/zta/rtg;)Z
    .locals 0

    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg;->getField()Lyou/zta/sis/you/you;

    move-result-object p0

    invoke-static {p0}, Lyou/zta/sis/zta/you;->you(Lyou/zta/sis/you/you;)Z

    move-result p0

    return p0
.end method

.method static tsu(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;
    .locals 1

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->Dk()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid result"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static tsu(Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;)Lyou/zta/sis/zta/wtn;
    .locals 4

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v0

    invoke-static {v0, p2}, Lyou/zta/sis/zta/you;->sis(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;

    move-result-object p2

    instance-of v1, v0, Lyou/zta/sis/zta/rtg$zta;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lyou/zta/sis/zta/rtg$zta;

    invoke-virtual {v1}, Lyou/zta/sis/zta/rtg$zta;->bk()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lyou/zta/sis/zta/wtn;->multiply(Ljava/math/BigInteger;)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    invoke-virtual {p2, p3}, Lyou/zta/sis/zta/wtn;->multiply(Ljava/math/BigInteger;)Lyou/zta/sis/zta/wtn;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyou/zta/sis/zta/wtn;->kth(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lyou/zta/sis/zta/you;->tsu(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lyou/zta/sis/zta/rtg;->_j()Lyou/zta/sis/zta/you/zta;

    move-result-object v0

    instance-of v1, v0, Lyou/zta/sis/zta/you/you;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    new-array v2, v1, [Lyou/zta/sis/zta/wtn;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p2, v2, p0

    new-array p2, v1, [Ljava/math/BigInteger;

    aput-object p1, p2, v3

    aput-object p3, p2, p0

    check-cast v0, Lyou/zta/sis/zta/you/you;

    invoke-static {v2, p2, v0}, Lyou/zta/sis/zta/you;->zta([Lyou/zta/sis/zta/wtn;[Ljava/math/BigInteger;Lyou/zta/sis/zta/you/you;)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lyou/zta/sis/zta/you;->you(Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    goto :goto_0
.end method

.method public static tsu(Lyou/zta/sis/zta/rtg;)Z
    .locals 0

    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg;->getField()Lyou/zta/sis/you/you;

    move-result-object p0

    invoke-static {p0}, Lyou/zta/sis/zta/you;->sis(Lyou/zta/sis/you/you;)Z

    move-result p0

    return p0
.end method

.method public static you(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;
    .locals 1

    invoke-virtual {p1}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lyou/zta/sis/zta/rtg;->rtg(Lyou/zta/sis/zta/rtg;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lyou/zta/sis/zta/wtn;->da(Z)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lyou/zta/sis/zta/rtg;->gwm([B)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Point must be on the same curve"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static you(Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;)Lyou/zta/sis/zta/wtn;
    .locals 11

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p3}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-gez v3, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p3}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    invoke-static {v3}, Lyou/zta/sis/zta/fto;->oa(I)I

    move-result v3

    const/16 v4, 0x10

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v5, 0x2

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p3}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    invoke-static {v6}, Lyou/zta/sis/zta/fto;->oa(I)I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {p0, v3, v2}, Lyou/zta/sis/zta/fto;->zta(Lyou/zta/sis/zta/wtn;IZ)Lyou/zta/sis/zta/ear;

    move-result-object p0

    invoke-static {p2, v4, v2}, Lyou/zta/sis/zta/fto;->zta(Lyou/zta/sis/zta/wtn;IZ)Lyou/zta/sis/zta/ear;

    move-result-object p2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lyou/zta/sis/zta/ear;->Wk()[Lyou/zta/sis/zta/wtn;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lyou/zta/sis/zta/ear;->Vk()[Lyou/zta/sis/zta/wtn;

    move-result-object v2

    :goto_1
    move-object v5, v2

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lyou/zta/sis/zta/ear;->Wk()[Lyou/zta/sis/zta/wtn;

    move-result-object v2

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Lyou/zta/sis/zta/ear;->Vk()[Lyou/zta/sis/zta/wtn;

    move-result-object v2

    :goto_2
    move-object v8, v2

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lyou/zta/sis/zta/ear;->Vk()[Lyou/zta/sis/zta/wtn;

    move-result-object p0

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lyou/zta/sis/zta/ear;->Wk()[Lyou/zta/sis/zta/wtn;

    move-result-object p0

    :goto_3
    move-object v6, p0

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Lyou/zta/sis/zta/ear;->Vk()[Lyou/zta/sis/zta/wtn;

    move-result-object p0

    goto :goto_4

    :cond_5
    invoke-virtual {p2}, Lyou/zta/sis/zta/ear;->Wk()[Lyou/zta/sis/zta/wtn;

    move-result-object p0

    :goto_4
    move-object v9, p0

    invoke-static {v3, p1}, Lyou/zta/sis/zta/fto;->sis(ILjava/math/BigInteger;)[B

    move-result-object v7

    invoke-static {v4, p3}, Lyou/zta/sis/zta/fto;->sis(ILjava/math/BigInteger;)[B

    move-result-object v10

    invoke-static/range {v5 .. v10}, Lyou/zta/sis/zta/you;->zta([Lyou/zta/sis/zta/wtn;[Lyou/zta/sis/zta/wtn;[B[Lyou/zta/sis/zta/wtn;[Lyou/zta/sis/zta/wtn;[B)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0
.end method

.method public static you([Lyou/zta/sis/zta/wtn;[Ljava/math/BigInteger;)Lyou/zta/sis/zta/wtn;
    .locals 6

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_4

    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_4

    array-length v0, p0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v4

    new-array v5, v0, [Lyou/zta/sis/zta/wtn;

    aput-object v3, v5, v2

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-static {v4, v2}, Lyou/zta/sis/zta/you;->sis(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;

    move-result-object v2

    aput-object v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lyou/zta/sis/zta/rtg;->_j()Lyou/zta/sis/zta/you/zta;

    move-result-object p0

    instance-of v0, p0, Lyou/zta/sis/zta/you/you;

    if-eqz v0, :cond_1

    check-cast p0, Lyou/zta/sis/zta/you/you;

    invoke-static {v5, p1, p0}, Lyou/zta/sis/zta/you;->zta([Lyou/zta/sis/zta/wtn;[Ljava/math/BigInteger;Lyou/zta/sis/zta/you/you;)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    invoke-static {p0}, Lyou/zta/sis/zta/you;->tsu(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;

    return-object p0

    :cond_1
    invoke-static {v5, p1}, Lyou/zta/sis/zta/you;->zta([Lyou/zta/sis/zta/wtn;[Ljava/math/BigInteger;)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    invoke-static {p0}, Lyou/zta/sis/zta/you;->tsu(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;

    return-object p0

    :cond_2
    aget-object v0, p0, v2

    aget-object v2, p1, v2

    aget-object p0, p0, v1

    aget-object p1, p1, v1

    invoke-static {v0, v2, p0, p1}, Lyou/zta/sis/zta/you;->tsu(Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0

    :cond_3
    aget-object p0, p0, v2

    aget-object p1, p1, v2

    invoke-virtual {p0, p1}, Lyou/zta/sis/zta/wtn;->multiply(Ljava/math/BigInteger;)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "point and scalar arrays should be non-null, and of equal, non-zero, length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static you(Lyou/zta/sis/you/you;)Z
    .locals 3

    invoke-interface {p0}, Lyou/zta/sis/you/you;->vdw()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-interface {p0}, Lyou/zta/sis/you/you;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v2, Lyou/zta/sis/zta/sis;->lra:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of p0, p0, Lyou/zta/sis/you/cno;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static zta(Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;Lyou/zta/sis/zta/gck;Ljava/math/BigInteger;)Lyou/zta/sis/zta/wtn;
    .locals 10

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p3}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-gez v3, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p3}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p3

    const/4 v3, 0x2

    const/16 v4, 0x10

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    invoke-virtual {p3}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5}, Lyou/zta/sis/zta/fto;->oa(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {p0, v3, v2, p2}, Lyou/zta/sis/zta/fto;->zta(Lyou/zta/sis/zta/wtn;IZLyou/zta/sis/zta/gck;)Lyou/zta/sis/zta/wtn;

    move-result-object p2

    invoke-static {p0}, Lyou/zta/sis/zta/fto;->qbh(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/ear;

    move-result-object p0

    invoke-static {p2}, Lyou/zta/sis/zta/fto;->qbh(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/ear;

    move-result-object p2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lyou/zta/sis/zta/ear;->Wk()[Lyou/zta/sis/zta/wtn;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lyou/zta/sis/zta/ear;->Vk()[Lyou/zta/sis/zta/wtn;

    move-result-object v2

    :goto_1
    move-object v4, v2

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lyou/zta/sis/zta/ear;->Wk()[Lyou/zta/sis/zta/wtn;

    move-result-object v2

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Lyou/zta/sis/zta/ear;->Vk()[Lyou/zta/sis/zta/wtn;

    move-result-object v2

    :goto_2
    move-object v7, v2

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lyou/zta/sis/zta/ear;->Vk()[Lyou/zta/sis/zta/wtn;

    move-result-object p0

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lyou/zta/sis/zta/ear;->Wk()[Lyou/zta/sis/zta/wtn;

    move-result-object p0

    :goto_3
    move-object v5, p0

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Lyou/zta/sis/zta/ear;->Vk()[Lyou/zta/sis/zta/wtn;

    move-result-object p0

    goto :goto_4

    :cond_5
    invoke-virtual {p2}, Lyou/zta/sis/zta/ear;->Wk()[Lyou/zta/sis/zta/wtn;

    move-result-object p0

    :goto_4
    move-object v8, p0

    invoke-static {v3, p1}, Lyou/zta/sis/zta/fto;->sis(ILjava/math/BigInteger;)[B

    move-result-object v6

    invoke-static {v3, p3}, Lyou/zta/sis/zta/fto;->sis(ILjava/math/BigInteger;)[B

    move-result-object v9

    invoke-static/range {v4 .. v9}, Lyou/zta/sis/zta/you;->zta([Lyou/zta/sis/zta/wtn;[Lyou/zta/sis/zta/wtn;[B[Lyou/zta/sis/zta/wtn;[Lyou/zta/sis/zta/wtn;[B)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0
.end method

.method static zta(Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;)Lyou/zta/sis/zta/wtn;
    .locals 7

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v0

    invoke-virtual {v0}, Lyou/zta/sis/zta/rtg;->getInfinity()Lyou/zta/sis/zta/wtn;

    move-result-object v1

    invoke-virtual {p0, p2}, Lyou/zta/sis/zta/wtn;->kth(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;

    move-result-object v2

    invoke-virtual {p0, p2}, Lyou/zta/sis/zta/wtn;->igw(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;

    move-result-object v3

    const/4 v4, 0x4

    new-array v5, v4, [Lyou/zta/sis/zta/wtn;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 p2, 0x1

    aput-object v3, v5, p2

    const/4 v3, 0x2

    aput-object p0, v5, v3

    const/4 p0, 0x3

    aput-object v2, v5, p0

    invoke-virtual {v0, v5}, Lyou/zta/sis/zta/rtg;->you([Lyou/zta/sis/zta/wtn;)V

    const/16 v0, 0x9

    new-array v0, v0, [Lyou/zta/sis/zta/wtn;

    aget-object v2, v5, p0

    invoke-virtual {v2}, Lyou/zta/sis/zta/wtn;->negate()Lyou/zta/sis/zta/wtn;

    move-result-object v2

    aput-object v2, v0, v6

    aget-object v2, v5, v3

    invoke-virtual {v2}, Lyou/zta/sis/zta/wtn;->negate()Lyou/zta/sis/zta/wtn;

    move-result-object v2

    aput-object v2, v0, p2

    aget-object v2, v5, p2

    invoke-virtual {v2}, Lyou/zta/sis/zta/wtn;->negate()Lyou/zta/sis/zta/wtn;

    move-result-object v2

    aput-object v2, v0, v3

    aget-object v2, v5, v6

    invoke-virtual {v2}, Lyou/zta/sis/zta/wtn;->negate()Lyou/zta/sis/zta/wtn;

    move-result-object v2

    aput-object v2, v0, p0

    aput-object v1, v0, v4

    aget-object v2, v5, v6

    const/4 v6, 0x5

    aput-object v2, v0, v6

    aget-object p2, v5, p2

    const/4 v2, 0x6

    aput-object p2, v0, v2

    aget-object p2, v5, v3

    const/4 v2, 0x7

    aput-object p2, v0, v2

    aget-object p2, v5, p0

    const/16 v2, 0x8

    aput-object p2, v0, v2

    invoke-static {p1, p3}, Lyou/zta/sis/zta/fto;->wtn(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object p1

    array-length p2, p1

    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_0

    aget-byte p3, p1, p2

    shl-int/lit8 v2, p3, 0x18

    shr-int/lit8 v2, v2, 0x1c

    shl-int/lit8 p3, p3, 0x1c

    shr-int/lit8 p3, p3, 0x1c

    mul-int/2addr v2, p0

    add-int/2addr v2, v4

    add-int/2addr v2, p3

    aget-object p3, v0, v2

    invoke-virtual {v1, p3}, Lyou/zta/sis/zta/wtn;->wtn(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;

    move-result-object v1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static zta([Lyou/zta/sis/zta/wtn;Lyou/zta/sis/zta/gck;[Ljava/math/BigInteger;)Lyou/zta/sis/zta/wtn;
    .locals 16

    move-object/from16 v0, p0

    array-length v1, v0

    shl-int/lit8 v2, v1, 0x1

    new-array v3, v2, [Z

    new-array v4, v2, [Lyou/zta/sis/zta/ear;

    new-array v2, v2, [[B

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v1, :cond_2

    shl-int/lit8 v7, v6, 0x1

    add-int/lit8 v8, v7, 0x1

    aget-object v9, p2, v7

    invoke-virtual {v9}, Ljava/math/BigInteger;->signum()I

    move-result v10

    const/4 v11, 0x1

    if-gez v10, :cond_0

    move v10, v11

    goto :goto_1

    :cond_0
    move v10, v5

    :goto_1
    aput-boolean v10, v3, v7

    invoke-virtual {v9}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v9

    aget-object v10, p2, v8

    invoke-virtual {v10}, Ljava/math/BigInteger;->signum()I

    move-result v12

    if-gez v12, :cond_1

    move v12, v11

    goto :goto_2

    :cond_1
    move v12, v5

    :goto_2
    aput-boolean v12, v3, v8

    invoke-virtual {v10}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v10

    const/4 v12, 0x2

    const/16 v13, 0x10

    invoke-virtual {v9}, Ljava/math/BigInteger;->bitLength()I

    move-result v14

    invoke-virtual {v10}, Ljava/math/BigInteger;->bitLength()I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-static {v14}, Lyou/zta/sis/zta/fto;->oa(I)I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    aget-object v13, v0, v6

    move-object/from16 v14, p1

    invoke-static {v13, v12, v11, v14}, Lyou/zta/sis/zta/fto;->zta(Lyou/zta/sis/zta/wtn;IZLyou/zta/sis/zta/gck;)Lyou/zta/sis/zta/wtn;

    move-result-object v11

    invoke-static {v13}, Lyou/zta/sis/zta/fto;->qbh(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/ear;

    move-result-object v13

    aput-object v13, v4, v7

    invoke-static {v11}, Lyou/zta/sis/zta/fto;->qbh(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/ear;

    move-result-object v11

    aput-object v11, v4, v8

    invoke-static {v12, v9}, Lyou/zta/sis/zta/fto;->sis(ILjava/math/BigInteger;)[B

    move-result-object v9

    aput-object v9, v2, v7

    invoke-static {v12, v10}, Lyou/zta/sis/zta/fto;->sis(ILjava/math/BigInteger;)[B

    move-result-object v7

    aput-object v7, v2, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v3, v4, v2}, Lyou/zta/sis/zta/you;->zta([Z[Lyou/zta/sis/zta/ear;[[B)Lyou/zta/sis/zta/wtn;

    move-result-object v0

    return-object v0
.end method

.method static zta([Lyou/zta/sis/zta/wtn;[Ljava/math/BigInteger;)Lyou/zta/sis/zta/wtn;
    .locals 11

    array-length v0, p0

    new-array v1, v0, [Z

    new-array v2, v0, [Lyou/zta/sis/zta/ear;

    new-array v3, v0, [[B

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_1

    aget-object v6, p1, v5

    invoke-virtual {v6}, Ljava/math/BigInteger;->signum()I

    move-result v7

    const/4 v8, 0x1

    if-gez v7, :cond_0

    move v7, v8

    goto :goto_1

    :cond_0
    move v7, v4

    :goto_1
    aput-boolean v7, v1, v5

    invoke-virtual {v6}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v6

    const/4 v7, 0x2

    const/16 v9, 0x10

    invoke-virtual {v6}, Ljava/math/BigInteger;->bitLength()I

    move-result v10

    invoke-static {v10}, Lyou/zta/sis/zta/fto;->oa(I)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    aget-object v9, p0, v5

    invoke-static {v9, v7, v8}, Lyou/zta/sis/zta/fto;->zta(Lyou/zta/sis/zta/wtn;IZ)Lyou/zta/sis/zta/ear;

    move-result-object v8

    aput-object v8, v2, v5

    invoke-static {v7, v6}, Lyou/zta/sis/zta/fto;->sis(ILjava/math/BigInteger;)[B

    move-result-object v6

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1, v2, v3}, Lyou/zta/sis/zta/you;->zta([Z[Lyou/zta/sis/zta/ear;[[B)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0
.end method

.method static zta([Lyou/zta/sis/zta/wtn;[Ljava/math/BigInteger;Lyou/zta/sis/zta/you/you;)Lyou/zta/sis/zta/wtn;
    .locals 10

    const/4 v0, 0x0

    aget-object v1, p0, v0

    invoke-virtual {v1}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v1

    invoke-virtual {v1}, Lyou/zta/sis/zta/rtg;->getOrder()Ljava/math/BigInteger;

    move-result-object v1

    array-length v2, p0

    shl-int/lit8 v3, v2, 0x1

    new-array v4, v3, [Ljava/math/BigInteger;

    move v5, v0

    move v6, v5

    :goto_0
    if-ge v5, v2, :cond_0

    aget-object v7, p1, v5

    invoke-virtual {v7, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-interface {p2, v7}, Lyou/zta/sis/zta/you/you;->zta(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v7

    add-int/lit8 v8, v6, 0x1

    aget-object v9, v7, v0

    aput-object v9, v4, v6

    add-int/lit8 v6, v8, 0x1

    const/4 v9, 0x1

    aget-object v7, v7, v9

    aput-object v7, v4, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lyou/zta/sis/zta/you/zta;->c()Lyou/zta/sis/zta/gck;

    move-result-object p1

    invoke-interface {p2}, Lyou/zta/sis/zta/you/zta;->qeg()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p0, p1, v4}, Lyou/zta/sis/zta/you;->zta([Lyou/zta/sis/zta/wtn;Lyou/zta/sis/zta/gck;[Ljava/math/BigInteger;)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0

    :cond_1
    new-array p2, v3, [Lyou/zta/sis/zta/wtn;

    move v1, v0

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v3, p0, v0

    invoke-interface {p1, v3}, Lyou/zta/sis/zta/gck;->zta(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    aput-object v3, p2, v1

    add-int/lit8 v1, v6, 0x1

    aput-object v5, p2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-static {p2, v4}, Lyou/zta/sis/zta/you;->zta([Lyou/zta/sis/zta/wtn;[Ljava/math/BigInteger;)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0
.end method

.method private static zta([Lyou/zta/sis/zta/wtn;[Lyou/zta/sis/zta/wtn;[B[Lyou/zta/sis/zta/wtn;[Lyou/zta/sis/zta/wtn;[B)Lyou/zta/sis/zta/wtn;
    .locals 8

    array-length v0, p2

    array-length v1, p5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v2

    invoke-virtual {v2}, Lyou/zta/sis/zta/rtg;->getInfinity()Lyou/zta/sis/zta/wtn;

    move-result-object v2

    add-int/lit8 v0, v0, -0x1

    move v3, v1

    move-object v4, v2

    :goto_0
    if-ltz v0, :cond_8

    array-length v5, p2

    if-ge v0, v5, :cond_0

    aget-byte v5, p2, v0

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    array-length v6, p5

    if-ge v0, v6, :cond_1

    aget-byte v6, p5, v0

    goto :goto_2

    :cond_1
    move v6, v1

    :goto_2
    or-int v7, v5, v6

    if-nez v7, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_2
    if-eqz v5, :cond_4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-gez v5, :cond_3

    move-object v5, p1

    goto :goto_3

    :cond_3
    move-object v5, p0

    :goto_3
    ushr-int/lit8 v7, v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual {v2, v5}, Lyou/zta/sis/zta/wtn;->kth(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;

    move-result-object v5

    goto :goto_4

    :cond_4
    move-object v5, v2

    :goto_4
    if-eqz v6, :cond_6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-gez v6, :cond_5

    move-object v6, p4

    goto :goto_5

    :cond_5
    move-object v6, p3

    :goto_5
    ushr-int/lit8 v7, v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lyou/zta/sis/zta/wtn;->kth(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;

    move-result-object v5

    :cond_6
    if-lez v3, :cond_7

    invoke-virtual {v4, v3}, Lyou/zta/sis/zta/wtn;->ta(I)Lyou/zta/sis/zta/wtn;

    move-result-object v4

    move v3, v1

    :cond_7
    invoke-virtual {v4, v5}, Lyou/zta/sis/zta/wtn;->wtn(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;

    move-result-object v4

    :goto_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_8
    if-lez v3, :cond_9

    invoke-virtual {v4, v3}, Lyou/zta/sis/zta/wtn;->ta(I)Lyou/zta/sis/zta/wtn;

    move-result-object v4

    :cond_9
    return-object v4
.end method

.method private static zta([Z[Lyou/zta/sis/zta/ear;[[B)Lyou/zta/sis/zta/wtn;
    .locals 13

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v4, p2, v2

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lyou/zta/sis/zta/ear;->Vk()[Lyou/zta/sis/zta/wtn;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v2

    invoke-virtual {v2}, Lyou/zta/sis/zta/rtg;->getInfinity()Lyou/zta/sis/zta/wtn;

    move-result-object v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move v5, v1

    move-object v6, v2

    :goto_1
    if-ltz v3, :cond_8

    move v7, v1

    move-object v8, v2

    :goto_2
    if-ge v7, v0, :cond_5

    aget-object v9, p2, v7

    array-length v10, v9

    if-ge v3, v10, :cond_1

    aget-byte v9, v9, v3

    goto :goto_3

    :cond_1
    move v9, v1

    :goto_3
    if-eqz v9, :cond_4

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v10

    aget-object v11, p1, v7

    if-gez v9, :cond_2

    move v9, v4

    goto :goto_4

    :cond_2
    move v9, v1

    :goto_4
    aget-boolean v12, p0, v7

    if-ne v9, v12, :cond_3

    invoke-virtual {v11}, Lyou/zta/sis/zta/ear;->Vk()[Lyou/zta/sis/zta/wtn;

    move-result-object v9

    goto :goto_5

    :cond_3
    invoke-virtual {v11}, Lyou/zta/sis/zta/ear;->Wk()[Lyou/zta/sis/zta/wtn;

    move-result-object v9

    :goto_5
    ushr-int/2addr v10, v4

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Lyou/zta/sis/zta/wtn;->kth(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;

    move-result-object v8

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    if-ne v8, v2, :cond_6

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_6
    if-lez v5, :cond_7

    invoke-virtual {v6, v5}, Lyou/zta/sis/zta/wtn;->ta(I)Lyou/zta/sis/zta/wtn;

    move-result-object v6

    move v5, v1

    :cond_7
    invoke-virtual {v6, v8}, Lyou/zta/sis/zta/wtn;->wtn(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;

    move-result-object v6

    :goto_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_8
    if-lez v5, :cond_9

    invoke-virtual {v6, v5}, Lyou/zta/sis/zta/wtn;->ta(I)Lyou/zta/sis/zta/wtn;

    move-result-object v6

    :cond_9
    return-object v6
.end method

.method public static zta([Lyou/zta/sis/zta/cno;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lyou/zta/sis/zta/you;->zta([Lyou/zta/sis/zta/cno;IILyou/zta/sis/zta/cno;)V

    return-void
.end method

.method public static zta([Lyou/zta/sis/zta/cno;IILyou/zta/sis/zta/cno;)V
    .locals 4

    new-array v0, p2, [Lyou/zta/sis/zta/cno;

    aget-object v1, p0, p1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    :goto_0
    add-int/lit8 v2, v2, 0x1

    if-ge v2, p2, :cond_0

    add-int/lit8 v1, v2, -0x1

    aget-object v1, v0, v1

    add-int v3, p1, v2

    aget-object v3, p0, v3

    invoke-virtual {v1, v3}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, -0x1

    if-eqz p3, :cond_1

    aget-object p2, v0, v2

    invoke-virtual {p2, p3}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object p2

    aput-object p2, v0, v2

    :cond_1
    aget-object p2, v0, v2

    invoke-virtual {p2}, Lyou/zta/sis/zta/cno;->invert()Lyou/zta/sis/zta/cno;

    move-result-object p2

    :goto_1
    if-lez v2, :cond_2

    add-int/lit8 p3, v2, -0x1

    add-int/2addr v2, p1

    aget-object v1, p0, v2

    aget-object v3, v0, p3

    invoke-virtual {v3, p2}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v3

    aput-object v3, p0, v2

    invoke-virtual {p2, v1}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object p2

    move v2, p3

    goto :goto_1

    :cond_2
    aput-object p2, p0, p1

    return-void
.end method
