.class public Lyou/zta/sis/zta/zta/zta/bvj;
.super Lyou/zta/sis/zta/rtg$you;
.source ""


# static fields
.field private static final JGa:I = 0x2

.field public static final q:Ljava/math/BigInteger;


# instance fields
.field protected DGa:Lyou/zta/sis/zta/zta/zta/ugm;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000001"

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/tsu;->decode(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    sput-object v0, Lyou/zta/sis/zta/zta/zta/bvj;->q:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    sget-object v0, Lyou/zta/sis/zta/zta/zta/bvj;->q:Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Lyou/zta/sis/zta/rtg$you;-><init>(Ljava/math/BigInteger;)V

    new-instance v0, Lyou/zta/sis/zta/zta/zta/ugm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lyou/zta/sis/zta/zta/zta/ugm;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;)V

    iput-object v0, p0, Lyou/zta/sis/zta/zta/zta/bvj;->DGa:Lyou/zta/sis/zta/zta/zta/ugm;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFE"

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/tsu;->decode(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p0, v0}, Lyou/zta/sis/zta/zta/zta/bvj;->dma(Ljava/math/BigInteger;)Lyou/zta/sis/zta/cno;

    move-result-object v0

    iput-object v0, p0, Lyou/zta/sis/zta/rtg;->a:Lyou/zta/sis/zta/cno;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "B4050A850C04B3ABF54132565044B0B7D7BFD8BA270B39432355FFB4"

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/tsu;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p0, v0}, Lyou/zta/sis/zta/zta/zta/bvj;->dma(Ljava/math/BigInteger;)Lyou/zta/sis/zta/cno;

    move-result-object v0

    iput-object v0, p0, Lyou/zta/sis/zta/rtg;->b:Lyou/zta/sis/zta/cno;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFF16A2E0B8F03E13DD29455C5C2A3D"

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/tsu;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Lyou/zta/sis/zta/rtg;->order:Ljava/math/BigInteger;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lyou/zta/sis/zta/rtg;->rGa:Ljava/math/BigInteger;

    const/4 v0, 0x2

    iput v0, p0, Lyou/zta/sis/zta/rtg;->mGa:I

    return-void
.end method


# virtual methods
.method protected Vj()Lyou/zta/sis/zta/rtg;
    .locals 0

    new-instance p0, Lyou/zta/sis/zta/zta/zta/bvj;

    invoke-direct {p0}, Lyou/zta/sis/zta/zta/zta/bvj;-><init>()V

    return-object p0
.end method

.method public dma(Ljava/math/BigInteger;)Lyou/zta/sis/zta/cno;
    .locals 0

    new-instance p0, Lyou/zta/sis/zta/zta/zta/gwm;

    invoke-direct {p0, p1}, Lyou/zta/sis/zta/zta/zta/gwm;-><init>(Ljava/math/BigInteger;)V

    return-object p0
.end method

.method public getFieldSize()I
    .locals 0

    sget-object p0, Lyou/zta/sis/zta/zta/zta/bvj;->q:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0
.end method

.method public getInfinity()Lyou/zta/sis/zta/wtn;
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/zta/zta/bvj;->DGa:Lyou/zta/sis/zta/zta/zta/ugm;

    return-object p0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 0

    sget-object p0, Lyou/zta/sis/zta/zta/zta/bvj;->q:Ljava/math/BigInteger;

    return-object p0
.end method

.method public qa(I)Z
    .locals 0

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public you([Lyou/zta/sis/zta/wtn;II)Lyou/zta/sis/zta/kth;
    .locals 6

    mul-int/lit8 v0, p3, 0x7

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, p3, :cond_0

    add-int v4, p2, v2

    aget-object v4, p1, v4

    invoke-virtual {v4}, Lyou/zta/sis/zta/wtn;->uk()Lyou/zta/sis/zta/cno;

    move-result-object v5

    check-cast v5, Lyou/zta/sis/zta/zta/zta/gwm;

    iget-object v5, v5, Lyou/zta/sis/zta/zta/zta/gwm;->x:[I

    invoke-static {v5, v1, v0, v3}, Lyou/zta/sis/sis/tsu;->you([II[II)V

    add-int/lit8 v3, v3, 0x7

    invoke-virtual {v4}, Lyou/zta/sis/zta/wtn;->vk()Lyou/zta/sis/zta/cno;

    move-result-object v4

    check-cast v4, Lyou/zta/sis/zta/zta/zta/gwm;

    iget-object v4, v4, Lyou/zta/sis/zta/zta/zta/gwm;->x:[I

    invoke-static {v4, v1, v0, v3}, Lyou/zta/sis/sis/tsu;->you([II[II)V

    add-int/lit8 v3, v3, 0x7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lyou/zta/sis/zta/zta/zta/oif;

    invoke-direct {p1, p0, p3, v0}, Lyou/zta/sis/zta/zta/zta/oif;-><init>(Lyou/zta/sis/zta/zta/zta/bvj;I[I)V

    return-object p1
.end method

.method protected zta(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Z)Lyou/zta/sis/zta/wtn;
    .locals 1

    new-instance v0, Lyou/zta/sis/zta/zta/zta/ugm;

    invoke-direct {v0, p0, p1, p2, p3}, Lyou/zta/sis/zta/zta/zta/ugm;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Z)V

    return-object v0
.end method

.method protected zta(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;[Lyou/zta/sis/zta/cno;Z)Lyou/zta/sis/zta/wtn;
    .locals 7

    new-instance v6, Lyou/zta/sis/zta/zta/zta/ugm;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lyou/zta/sis/zta/zta/zta/ugm;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;[Lyou/zta/sis/zta/cno;Z)V

    return-object v6
.end method
