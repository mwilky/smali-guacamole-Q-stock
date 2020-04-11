.class public Lyou/zta/sis/zta/rtg$tsu;
.super Lyou/zta/sis/zta/rtg$zta;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyou/zta/sis/zta/rtg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "tsu"
.end annotation


# static fields
.field private static final sDa:I = 0x6


# instance fields
.field private loa:I

.field private oDa:I

.field private pDa:I

.field private qDa:I

.field private rDa:Lyou/zta/sis/zta/wtn$sis;


# direct methods
.method public constructor <init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v8}, Lyou/zta/sis/zta/rtg$tsu;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lyou/zta/sis/zta/rtg$zta;-><init>(IIII)V

    iput p1, p0, Lyou/zta/sis/zta/rtg$tsu;->loa:I

    iput p2, p0, Lyou/zta/sis/zta/rtg$tsu;->oDa:I

    iput p3, p0, Lyou/zta/sis/zta/rtg$tsu;->pDa:I

    iput p4, p0, Lyou/zta/sis/zta/rtg$tsu;->qDa:I

    iput-object p7, p0, Lyou/zta/sis/zta/rtg;->order:Ljava/math/BigInteger;

    iput-object p8, p0, Lyou/zta/sis/zta/rtg;->fDa:Ljava/math/BigInteger;

    new-instance p1, Lyou/zta/sis/zta/wtn$sis;

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-direct {p1, p0, p2, p2, p3}, Lyou/zta/sis/zta/wtn$sis;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Z)V

    iput-object p1, p0, Lyou/zta/sis/zta/rtg$tsu;->rDa:Lyou/zta/sis/zta/wtn$sis;

    invoke-virtual {p0, p5}, Lyou/zta/sis/zta/rtg$tsu;->dma(Ljava/math/BigInteger;)Lyou/zta/sis/zta/cno;

    move-result-object p1

    iput-object p1, p0, Lyou/zta/sis/zta/rtg;->a:Lyou/zta/sis/zta/cno;

    invoke-virtual {p0, p6}, Lyou/zta/sis/zta/rtg$tsu;->dma(Ljava/math/BigInteger;)Lyou/zta/sis/zta/cno;

    move-result-object p1

    iput-object p1, p0, Lyou/zta/sis/zta/rtg;->b:Lyou/zta/sis/zta/cno;

    const/4 p1, 0x6

    iput p1, p0, Lyou/zta/sis/zta/rtg;->aDa:I

    return-void
.end method

.method protected constructor <init>(IIIILyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lyou/zta/sis/zta/rtg$zta;-><init>(IIII)V

    iput p1, p0, Lyou/zta/sis/zta/rtg$tsu;->loa:I

    iput p2, p0, Lyou/zta/sis/zta/rtg$tsu;->oDa:I

    iput p3, p0, Lyou/zta/sis/zta/rtg$tsu;->pDa:I

    iput p4, p0, Lyou/zta/sis/zta/rtg$tsu;->qDa:I

    iput-object p7, p0, Lyou/zta/sis/zta/rtg;->order:Ljava/math/BigInteger;

    iput-object p8, p0, Lyou/zta/sis/zta/rtg;->fDa:Ljava/math/BigInteger;

    new-instance p1, Lyou/zta/sis/zta/wtn$sis;

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-direct {p1, p0, p2, p2, p3}, Lyou/zta/sis/zta/wtn$sis;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Z)V

    iput-object p1, p0, Lyou/zta/sis/zta/rtg$tsu;->rDa:Lyou/zta/sis/zta/wtn$sis;

    iput-object p5, p0, Lyou/zta/sis/zta/rtg;->a:Lyou/zta/sis/zta/cno;

    iput-object p6, p0, Lyou/zta/sis/zta/rtg;->b:Lyou/zta/sis/zta/cno;

    const/4 p1, 0x6

    iput p1, p0, Lyou/zta/sis/zta/rtg;->aDa:I

    return-void
.end method

.method public constructor <init>(IILjava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Lyou/zta/sis/zta/rtg$tsu;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 9

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lyou/zta/sis/zta/rtg$tsu;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method static synthetic zta(Lyou/zta/sis/zta/rtg$tsu;)I
    .locals 0

    iget p0, p0, Lyou/zta/sis/zta/rtg$tsu;->loa:I

    return p0
.end method


# virtual methods
.method protected Ij()Lyou/zta/sis/zta/rtg;
    .locals 10

    new-instance v9, Lyou/zta/sis/zta/rtg$tsu;

    iget v1, p0, Lyou/zta/sis/zta/rtg$tsu;->loa:I

    iget v2, p0, Lyou/zta/sis/zta/rtg$tsu;->oDa:I

    iget v3, p0, Lyou/zta/sis/zta/rtg$tsu;->pDa:I

    iget v4, p0, Lyou/zta/sis/zta/rtg$tsu;->qDa:I

    iget-object v5, p0, Lyou/zta/sis/zta/rtg;->a:Lyou/zta/sis/zta/cno;

    iget-object v6, p0, Lyou/zta/sis/zta/rtg;->b:Lyou/zta/sis/zta/cno;

    iget-object v7, p0, Lyou/zta/sis/zta/rtg;->order:Ljava/math/BigInteger;

    iget-object v8, p0, Lyou/zta/sis/zta/rtg;->fDa:Ljava/math/BigInteger;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lyou/zta/sis/zta/rtg$tsu;-><init>(IIIILyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v9
.end method

.method protected Kj()Lyou/zta/sis/zta/bio;
    .locals 1

    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg$zta;->Pj()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lyou/zta/sis/zta/veq;

    invoke-direct {p0}, Lyou/zta/sis/zta/veq;-><init>()V

    return-object p0

    :cond_0
    invoke-super {p0}, Lyou/zta/sis/zta/rtg;->Kj()Lyou/zta/sis/zta/bio;

    move-result-object p0

    return-object p0
.end method

.method public Qj()I
    .locals 0

    iget p0, p0, Lyou/zta/sis/zta/rtg$tsu;->oDa:I

    return p0
.end method

.method public Rj()I
    .locals 0

    iget p0, p0, Lyou/zta/sis/zta/rtg$tsu;->pDa:I

    return p0
.end method

.method public Sj()I
    .locals 0

    iget p0, p0, Lyou/zta/sis/zta/rtg$tsu;->qDa:I

    return p0
.end method

.method public Tj()Z
    .locals 1

    iget v0, p0, Lyou/zta/sis/zta/rtg$tsu;->pDa:I

    if-nez v0, :cond_0

    iget p0, p0, Lyou/zta/sis/zta/rtg$tsu;->qDa:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public dma(Ljava/math/BigInteger;)Lyou/zta/sis/zta/cno;
    .locals 7

    new-instance v6, Lyou/zta/sis/zta/cno$sis;

    iget v1, p0, Lyou/zta/sis/zta/rtg$tsu;->loa:I

    iget v2, p0, Lyou/zta/sis/zta/rtg$tsu;->oDa:I

    iget v3, p0, Lyou/zta/sis/zta/rtg$tsu;->pDa:I

    iget v4, p0, Lyou/zta/sis/zta/rtg$tsu;->qDa:I

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lyou/zta/sis/zta/cno$sis;-><init>(IIIILjava/math/BigInteger;)V

    return-object v6
.end method

.method public getFieldSize()I
    .locals 0

    iget p0, p0, Lyou/zta/sis/zta/rtg$tsu;->loa:I

    return p0
.end method

.method public getInfinity()Lyou/zta/sis/zta/wtn;
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/rtg$tsu;->rDa:Lyou/zta/sis/zta/wtn$sis;

    return-object p0
.end method

.method public getM()I
    .locals 0

    iget p0, p0, Lyou/zta/sis/zta/rtg$tsu;->loa:I

    return p0
.end method

.method public ka(I)Z
    .locals 1

    const/4 p0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, p0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method public you([Lyou/zta/sis/zta/wtn;II)Lyou/zta/sis/zta/kth;
    .locals 7

    iget v0, p0, Lyou/zta/sis/zta/rtg$tsu;->loa:I

    add-int/lit8 v0, v0, 0x3f

    ushr-int/lit8 v4, v0, 0x6

    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg$tsu;->Tj()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    new-array v0, v2, [I

    iget v2, p0, Lyou/zta/sis/zta/rtg$tsu;->oDa:I

    aput v2, v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [I

    iget v5, p0, Lyou/zta/sis/zta/rtg$tsu;->oDa:I

    aput v5, v0, v3

    iget v5, p0, Lyou/zta/sis/zta/rtg$tsu;->pDa:I

    aput v5, v0, v2

    iget v2, p0, Lyou/zta/sis/zta/rtg$tsu;->qDa:I

    aput v2, v0, v1

    :goto_0
    move-object v6, v0

    mul-int v0, p3, v4

    mul-int/2addr v0, v1

    new-array v5, v0, [J

    move v0, v3

    :goto_1
    if-ge v3, p3, :cond_1

    add-int v1, p2, v3

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lyou/zta/sis/zta/wtn;->hk()Lyou/zta/sis/zta/cno;

    move-result-object v2

    check-cast v2, Lyou/zta/sis/zta/cno$sis;

    iget-object v2, v2, Lyou/zta/sis/zta/cno$sis;->x:Lyou/zta/sis/zta/ibl;

    invoke-virtual {v2, v5, v0}, Lyou/zta/sis/zta/ibl;->copyTo([JI)V

    add-int/2addr v0, v4

    invoke-virtual {v1}, Lyou/zta/sis/zta/wtn;->ik()Lyou/zta/sis/zta/cno;

    move-result-object v1

    check-cast v1, Lyou/zta/sis/zta/cno$sis;

    iget-object v1, v1, Lyou/zta/sis/zta/cno$sis;->x:Lyou/zta/sis/zta/ibl;

    invoke-virtual {v1, v5, v0}, Lyou/zta/sis/zta/ibl;->copyTo([JI)V

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    new-instance p1, Lyou/zta/sis/zta/ssp;

    move-object v1, p1

    move-object v2, p0

    move v3, p3

    invoke-direct/range {v1 .. v6}, Lyou/zta/sis/zta/ssp;-><init>(Lyou/zta/sis/zta/rtg$tsu;II[J[I)V

    return-object p1
.end method

.method protected zta(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Z)Lyou/zta/sis/zta/wtn;
    .locals 1

    new-instance v0, Lyou/zta/sis/zta/wtn$sis;

    invoke-direct {v0, p0, p1, p2, p3}, Lyou/zta/sis/zta/wtn$sis;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Z)V

    return-object v0
.end method

.method protected zta(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;[Lyou/zta/sis/zta/cno;Z)Lyou/zta/sis/zta/wtn;
    .locals 7

    new-instance v6, Lyou/zta/sis/zta/wtn$sis;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lyou/zta/sis/zta/wtn$sis;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;[Lyou/zta/sis/zta/cno;Z)V

    return-object v6
.end method
