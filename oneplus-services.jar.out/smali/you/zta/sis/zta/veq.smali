.class public Lyou/zta/sis/zta/veq;
.super Lyou/zta/sis/zta/zta;
.source ""


# static fields
.field static final iGa:Ljava/lang/String; = "bc_wtnaf"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyou/zta/sis/zta/zta;-><init>()V

    return-void
.end method

.method private static you(Lyou/zta/sis/zta/wtn$zta;[B)Lyou/zta/sis/zta/wtn$zta;
    .locals 6

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v0

    check-cast v0, Lyou/zta/sis/zta/rtg$zta;

    invoke-virtual {v0}, Lyou/zta/sis/zta/rtg;->getA()Lyou/zta/sis/zta/cno;

    move-result-object v1

    invoke-virtual {v1}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->byteValue()B

    move-result v1

    new-instance v2, Lyou/zta/sis/zta/lqr;

    invoke-direct {v2, p0, v1}, Lyou/zta/sis/zta/lqr;-><init>(Lyou/zta/sis/zta/wtn$zta;B)V

    const-string v1, "bc_wtnaf"

    invoke-virtual {v0, p0, v1, v2}, Lyou/zta/sis/zta/rtg;->zta(Lyou/zta/sis/zta/wtn;Ljava/lang/String;Lyou/zta/sis/zta/gwm;)Lyou/zta/sis/zta/ugm;

    move-result-object v0

    check-cast v0, Lyou/zta/sis/zta/cgv;

    invoke-virtual {v0}, Lyou/zta/sis/zta/cgv;->Uk()[Lyou/zta/sis/zta/wtn$zta;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Lyou/zta/sis/zta/wtn$zta;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lyou/zta/sis/zta/wtn;->negate()Lyou/zta/sis/zta/wtn;

    move-result-object v4

    check-cast v4, Lyou/zta/sis/zta/wtn$zta;

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object p0

    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg;->getInfinity()Lyou/zta/sis/zta/wtn;

    move-result-object p0

    check-cast p0, Lyou/zta/sis/zta/wtn$zta;

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    move-object v4, p0

    move p0, v2

    :goto_1
    if-ltz v3, :cond_3

    add-int/lit8 p0, p0, 0x1

    aget-byte v5, p1, v3

    if-eqz v5, :cond_2

    invoke-virtual {v4, p0}, Lyou/zta/sis/zta/wtn$zta;->ua(I)Lyou/zta/sis/zta/wtn$zta;

    move-result-object p0

    if-lez v5, :cond_1

    ushr-int/lit8 v4, v5, 0x1

    aget-object v4, v0, v4

    goto :goto_2

    :cond_1
    neg-int v4, v5

    ushr-int/lit8 v4, v4, 0x1

    aget-object v4, v1, v4

    :goto_2
    invoke-virtual {p0, v4}, Lyou/zta/sis/zta/wtn;->kth(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    check-cast p0, Lyou/zta/sis/zta/wtn$zta;

    move-object v4, p0

    move p0, v2

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    if-lez p0, :cond_4

    invoke-virtual {v4, p0}, Lyou/zta/sis/zta/wtn$zta;->ua(I)Lyou/zta/sis/zta/wtn$zta;

    move-result-object v4

    :cond_4
    return-object v4
.end method

.method private zta(Lyou/zta/sis/zta/wtn$zta;Lyou/zta/sis/zta/vju;BB)Lyou/zta/sis/zta/wtn$zta;
    .locals 6

    if-nez p3, :cond_0

    sget-object p0, Lyou/zta/sis/zta/obl;->nHa:[Lyou/zta/sis/zta/vju;

    goto :goto_0

    :cond_0
    sget-object p0, Lyou/zta/sis/zta/obl;->pHa:[Lyou/zta/sis/zta/vju;

    :goto_0
    move-object v5, p0

    const/4 p0, 0x4

    invoke-static {p4, p0}, Lyou/zta/sis/zta/obl;->zta(BI)Ljava/math/BigInteger;

    move-result-object v4

    const/4 v2, 0x4

    const-wide/16 v0, 0x10

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    move v0, p4

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lyou/zta/sis/zta/obl;->zta(BLyou/zta/sis/zta/vju;BLjava/math/BigInteger;Ljava/math/BigInteger;[Lyou/zta/sis/zta/vju;)[B

    move-result-object p0

    invoke-static {p1, p0}, Lyou/zta/sis/zta/veq;->you(Lyou/zta/sis/zta/wtn$zta;[B)Lyou/zta/sis/zta/wtn$zta;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected you(Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;)Lyou/zta/sis/zta/wtn;
    .locals 9

    instance-of v0, p1, Lyou/zta/sis/zta/wtn$zta;

    if-eqz v0, :cond_0

    check-cast p1, Lyou/zta/sis/zta/wtn$zta;

    invoke-virtual {p1}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v0

    check-cast v0, Lyou/zta/sis/zta/rtg$zta;

    invoke-virtual {v0}, Lyou/zta/sis/zta/rtg;->getFieldSize()I

    move-result v2

    invoke-virtual {v0}, Lyou/zta/sis/zta/rtg;->getA()Lyou/zta/sis/zta/cno;

    move-result-object v1

    invoke-virtual {v1}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->byteValue()B

    move-result v7

    invoke-static {v7}, Lyou/zta/sis/zta/obl;->xa(I)B

    move-result v8

    invoke-virtual {v0}, Lyou/zta/sis/zta/rtg$zta;->_j()[Ljava/math/BigInteger;

    move-result-object v4

    const/16 v6, 0xa

    move-object v1, p2

    move v3, v7

    move v5, v8

    invoke-static/range {v1 .. v6}, Lyou/zta/sis/zta/obl;->zta(Ljava/math/BigInteger;IB[Ljava/math/BigInteger;BB)Lyou/zta/sis/zta/vju;

    move-result-object p2

    invoke-direct {p0, p1, p2, v7, v8}, Lyou/zta/sis/zta/veq;->zta(Lyou/zta/sis/zta/wtn$zta;Lyou/zta/sis/zta/vju;BB)Lyou/zta/sis/zta/wtn$zta;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only ECPoint.AbstractF2m can be used in WTauNafMultiplier"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
