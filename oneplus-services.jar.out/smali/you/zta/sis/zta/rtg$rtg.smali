.class public Lyou/zta/sis/zta/rtg$rtg;
.super Lyou/zta/sis/zta/rtg$you;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyou/zta/sis/zta/rtg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "rtg"
.end annotation


# static fields
.field private static final FGa:I = 0x4


# instance fields
.field DGa:Lyou/zta/sis/zta/wtn$tsu;

.field q:Ljava/math/BigInteger;

.field r:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lyou/zta/sis/zta/rtg$rtg;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2

    invoke-direct {p0, p1}, Lyou/zta/sis/zta/rtg$you;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lyou/zta/sis/zta/rtg$rtg;->q:Ljava/math/BigInteger;

    invoke-static {p1}, Lyou/zta/sis/zta/cno$tsu;->qbh(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lyou/zta/sis/zta/rtg$rtg;->r:Ljava/math/BigInteger;

    new-instance p1, Lyou/zta/sis/zta/wtn$tsu;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v0, v1}, Lyou/zta/sis/zta/wtn$tsu;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Z)V

    iput-object p1, p0, Lyou/zta/sis/zta/rtg$rtg;->DGa:Lyou/zta/sis/zta/wtn$tsu;

    invoke-virtual {p0, p2}, Lyou/zta/sis/zta/rtg$rtg;->dma(Ljava/math/BigInteger;)Lyou/zta/sis/zta/cno;

    move-result-object p1

    iput-object p1, p0, Lyou/zta/sis/zta/rtg;->a:Lyou/zta/sis/zta/cno;

    invoke-virtual {p0, p3}, Lyou/zta/sis/zta/rtg$rtg;->dma(Ljava/math/BigInteger;)Lyou/zta/sis/zta/cno;

    move-result-object p1

    iput-object p1, p0, Lyou/zta/sis/zta/rtg;->b:Lyou/zta/sis/zta/cno;

    iput-object p4, p0, Lyou/zta/sis/zta/rtg;->order:Ljava/math/BigInteger;

    iput-object p5, p0, Lyou/zta/sis/zta/rtg;->rGa:Ljava/math/BigInteger;

    const/4 p1, 0x4

    iput p1, p0, Lyou/zta/sis/zta/rtg;->mGa:I

    return-void
.end method

.method protected constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lyou/zta/sis/zta/rtg$rtg;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method protected constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    invoke-direct {p0, p1}, Lyou/zta/sis/zta/rtg$you;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lyou/zta/sis/zta/rtg$rtg;->q:Ljava/math/BigInteger;

    iput-object p2, p0, Lyou/zta/sis/zta/rtg$rtg;->r:Ljava/math/BigInteger;

    new-instance p1, Lyou/zta/sis/zta/wtn$tsu;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, p2, v0}, Lyou/zta/sis/zta/wtn$tsu;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Z)V

    iput-object p1, p0, Lyou/zta/sis/zta/rtg$rtg;->DGa:Lyou/zta/sis/zta/wtn$tsu;

    iput-object p3, p0, Lyou/zta/sis/zta/rtg;->a:Lyou/zta/sis/zta/cno;

    iput-object p4, p0, Lyou/zta/sis/zta/rtg;->b:Lyou/zta/sis/zta/cno;

    iput-object p5, p0, Lyou/zta/sis/zta/rtg;->order:Ljava/math/BigInteger;

    iput-object p6, p0, Lyou/zta/sis/zta/rtg;->rGa:Ljava/math/BigInteger;

    const/4 p1, 0x4

    iput p1, p0, Lyou/zta/sis/zta/rtg;->mGa:I

    return-void
.end method


# virtual methods
.method protected Uj()Lyou/zta/sis/zta/rtg;
    .locals 8

    new-instance v7, Lyou/zta/sis/zta/rtg$rtg;

    iget-object v1, p0, Lyou/zta/sis/zta/rtg$rtg;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lyou/zta/sis/zta/rtg$rtg;->r:Ljava/math/BigInteger;

    iget-object v3, p0, Lyou/zta/sis/zta/rtg;->a:Lyou/zta/sis/zta/cno;

    iget-object v4, p0, Lyou/zta/sis/zta/rtg;->b:Lyou/zta/sis/zta/cno;

    iget-object v5, p0, Lyou/zta/sis/zta/rtg;->order:Ljava/math/BigInteger;

    iget-object v6, p0, Lyou/zta/sis/zta/rtg;->rGa:Ljava/math/BigInteger;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lyou/zta/sis/zta/rtg$rtg;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v7
.end method

.method public cno(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;
    .locals 8

    invoke-virtual {p1}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v0

    if-eq p0, v0, :cond_1

    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg;->Yj()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lyou/zta/sis/zta/wtn;->Ak()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v0

    invoke-virtual {v0}, Lyou/zta/sis/zta/rtg;->Yj()I

    move-result v0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lyou/zta/sis/zta/wtn$tsu;

    iget-object v1, p1, Lyou/zta/sis/zta/wtn;->x:Lyou/zta/sis/zta/cno;

    invoke-virtual {v1}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lyou/zta/sis/zta/rtg$rtg;->dma(Ljava/math/BigInteger;)Lyou/zta/sis/zta/cno;

    move-result-object v4

    iget-object v1, p1, Lyou/zta/sis/zta/wtn;->y:Lyou/zta/sis/zta/cno;

    invoke-virtual {v1}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lyou/zta/sis/zta/rtg$rtg;->dma(Ljava/math/BigInteger;)Lyou/zta/sis/zta/cno;

    move-result-object v5

    const/4 v1, 0x1

    new-array v6, v1, [Lyou/zta/sis/zta/cno;

    iget-object v1, p1, Lyou/zta/sis/zta/wtn;->WGa:[Lyou/zta/sis/zta/cno;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lyou/zta/sis/zta/cno;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lyou/zta/sis/zta/rtg$rtg;->dma(Ljava/math/BigInteger;)Lyou/zta/sis/zta/cno;

    move-result-object v1

    aput-object v1, v6, v2

    iget-boolean v7, p1, Lyou/zta/sis/zta/wtn;->withCompression:Z

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lyou/zta/sis/zta/wtn$tsu;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;[Lyou/zta/sis/zta/cno;Z)V

    return-object v0

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lyou/zta/sis/zta/rtg;->cno(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0
.end method

.method public dma(Ljava/math/BigInteger;)Lyou/zta/sis/zta/cno;
    .locals 2

    new-instance v0, Lyou/zta/sis/zta/cno$tsu;

    iget-object v1, p0, Lyou/zta/sis/zta/rtg$rtg;->q:Ljava/math/BigInteger;

    iget-object p0, p0, Lyou/zta/sis/zta/rtg$rtg;->r:Ljava/math/BigInteger;

    invoke-direct {v0, v1, p0, p1}, Lyou/zta/sis/zta/cno$tsu;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public getFieldSize()I
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/rtg$rtg;->q:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0
.end method

.method public getInfinity()Lyou/zta/sis/zta/wtn;
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/rtg$rtg;->DGa:Lyou/zta/sis/zta/wtn$tsu;

    return-object p0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/rtg$rtg;->q:Ljava/math/BigInteger;

    return-object p0
.end method

.method public qa(I)Z
    .locals 1

    const/4 p0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, p0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method protected zta(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Z)Lyou/zta/sis/zta/wtn;
    .locals 1

    new-instance v0, Lyou/zta/sis/zta/wtn$tsu;

    invoke-direct {v0, p0, p1, p2, p3}, Lyou/zta/sis/zta/wtn$tsu;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Z)V

    return-object v0
.end method

.method protected zta(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;[Lyou/zta/sis/zta/cno;Z)Lyou/zta/sis/zta/wtn;
    .locals 7

    new-instance v6, Lyou/zta/sis/zta/wtn$tsu;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lyou/zta/sis/zta/wtn$tsu;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;[Lyou/zta/sis/zta/cno;Z)V

    return-object v6
.end method
