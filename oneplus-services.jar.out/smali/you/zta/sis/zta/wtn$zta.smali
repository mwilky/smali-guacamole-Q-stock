.class public abstract Lyou/zta/sis/zta/wtn$zta;
.super Lyou/zta/sis/zta/wtn;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyou/zta/sis/zta/wtn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zta"
.end annotation


# direct methods
.method protected constructor <init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lyou/zta/sis/zta/wtn;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;)V

    return-void
.end method

.method protected constructor <init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;[Lyou/zta/sis/zta/cno;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lyou/zta/sis/zta/wtn;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;[Lyou/zta/sis/zta/cno;)V

    return-void
.end method


# virtual methods
.method public bio(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/wtn;
    .locals 3

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->sk()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->jk()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1}, Lyou/zta/sis/zta/wtn;->bio(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->lk()Lyou/zta/sis/zta/cno;

    move-result-object v0

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->mk()Lyou/zta/sis/zta/cno;

    move-result-object v1

    invoke-virtual {v1, v0}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v1

    invoke-virtual {v1, p1}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object p1

    invoke-virtual {p1, v0}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object p1

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v1

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->nk()[Lyou/zta/sis/zta/cno;

    move-result-object v2

    iget-boolean p0, p0, Lyou/zta/sis/zta/wtn;->withCompression:Z

    invoke-virtual {v1, v0, p1, v2, p0}, Lyou/zta/sis/zta/rtg;->zta(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;[Lyou/zta/sis/zta/cno;Z)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0
.end method

.method public igw(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;
    .locals 1

    invoke-virtual {p1}, Lyou/zta/sis/zta/wtn;->sk()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lyou/zta/sis/zta/wtn;->negate()Lyou/zta/sis/zta/wtn;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyou/zta/sis/zta/wtn;->kth(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0
.end method

.method public kth(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/wtn;
    .locals 5

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->sk()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->jk()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1}, Lyou/zta/sis/zta/wtn;->kth(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->lk()Lyou/zta/sis/zta/cno;

    move-result-object v0

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->mk()Lyou/zta/sis/zta/cno;

    move-result-object v1

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->nk()[Lyou/zta/sis/zta/cno;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {p1}, Lyou/zta/sis/zta/cno;->square()Lyou/zta/sis/zta/cno;

    move-result-object v4

    invoke-virtual {v0, v4}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v4

    invoke-virtual {v1, v0}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v0

    invoke-virtual {v0, v4}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v0

    invoke-virtual {v2, p1}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object p1

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lyou/zta/sis/zta/cno;

    aput-object p1, v2, v3

    iget-boolean p0, p0, Lyou/zta/sis/zta/wtn;->withCompression:Z

    invoke-virtual {v1, v4, v0, v2, p0}, Lyou/zta/sis/zta/rtg;->zta(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;[Lyou/zta/sis/zta/cno;Z)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->lk()Lyou/zta/sis/zta/cno;

    move-result-object v0

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->mk()Lyou/zta/sis/zta/cno;

    move-result-object v1

    invoke-virtual {v0, p1}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v2

    invoke-virtual {v1, v0}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v1

    invoke-virtual {v1, p1}, Lyou/zta/sis/zta/cno;->tsu(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object p1

    invoke-virtual {p1, v2}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object p1

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v1

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->nk()[Lyou/zta/sis/zta/cno;

    move-result-object v2

    iget-boolean p0, p0, Lyou/zta/sis/zta/wtn;->withCompression:Z

    invoke-virtual {v1, v0, p1, v2, p0}, Lyou/zta/sis/zta/rtg;->zta(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;[Lyou/zta/sis/zta/cno;Z)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0
.end method

.method public ra(I)Lyou/zta/sis/zta/wtn$zta;
    .locals 6

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->sk()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v0

    invoke-virtual {v0}, Lyou/zta/sis/zta/rtg;->Qj()I

    move-result v1

    iget-object v2, p0, Lyou/zta/sis/zta/wtn;->x:Lyou/zta/sis/zta/cno;

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v4, 0x5

    if-eq v1, v4, :cond_3

    const/4 v4, 0x6

    if-ne v1, v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unsupported coordinate system"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iget-object v1, p0, Lyou/zta/sis/zta/wtn;->y:Lyou/zta/sis/zta/cno;

    iget-object v4, p0, Lyou/zta/sis/zta/wtn;->IEa:[Lyou/zta/sis/zta/cno;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v2, p1}, Lyou/zta/sis/zta/cno;->oa(I)Lyou/zta/sis/zta/cno;

    move-result-object v2

    invoke-virtual {v1, p1}, Lyou/zta/sis/zta/cno;->oa(I)Lyou/zta/sis/zta/cno;

    move-result-object v1

    new-array v3, v3, [Lyou/zta/sis/zta/cno;

    invoke-virtual {v4, p1}, Lyou/zta/sis/zta/cno;->oa(I)Lyou/zta/sis/zta/cno;

    move-result-object p1

    aput-object p1, v3, v5

    iget-boolean p0, p0, Lyou/zta/sis/zta/wtn;->withCompression:Z

    invoke-virtual {v0, v2, v1, v3, p0}, Lyou/zta/sis/zta/rtg;->zta(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;[Lyou/zta/sis/zta/cno;Z)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    :goto_1
    check-cast p0, Lyou/zta/sis/zta/wtn$zta;

    return-object p0

    :cond_3
    iget-object v1, p0, Lyou/zta/sis/zta/wtn;->y:Lyou/zta/sis/zta/cno;

    invoke-virtual {v2, p1}, Lyou/zta/sis/zta/cno;->oa(I)Lyou/zta/sis/zta/cno;

    move-result-object v2

    invoke-virtual {v1, p1}, Lyou/zta/sis/zta/cno;->oa(I)Lyou/zta/sis/zta/cno;

    move-result-object p1

    iget-boolean p0, p0, Lyou/zta/sis/zta/wtn;->withCompression:Z

    invoke-virtual {v0, v2, p1, p0}, Lyou/zta/sis/zta/rtg;->zta(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Z)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    goto :goto_1
.end method

.method protected vk()Z
    .locals 7

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v0

    iget-object v1, p0, Lyou/zta/sis/zta/wtn;->x:Lyou/zta/sis/zta/cno;

    invoke-virtual {v0}, Lyou/zta/sis/zta/rtg;->getA()Lyou/zta/sis/zta/cno;

    move-result-object v2

    invoke-virtual {v0}, Lyou/zta/sis/zta/rtg;->getB()Lyou/zta/sis/zta/cno;

    move-result-object v3

    invoke-virtual {v0}, Lyou/zta/sis/zta/rtg;->Qj()I

    move-result v0

    const/4 v4, 0x0

    const/4 v5, 0x6

    if-ne v0, v5, :cond_3

    iget-object v0, p0, Lyou/zta/sis/zta/wtn;->IEa:[Lyou/zta/sis/zta/cno;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lyou/zta/sis/zta/cno;->_j()Z

    move-result v4

    invoke-virtual {v1}, Lyou/zta/sis/zta/cno;->isZero()Z

    move-result v5

    iget-object p0, p0, Lyou/zta/sis/zta/wtn;->y:Lyou/zta/sis/zta/cno;

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lyou/zta/sis/zta/cno;->square()Lyou/zta/sis/zta/cno;

    move-result-object p0

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lyou/zta/sis/zta/cno;->square()Lyou/zta/sis/zta/cno;

    move-result-object v0

    invoke-virtual {v3, v0}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v3

    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {v1}, Lyou/zta/sis/zta/cno;->square()Lyou/zta/sis/zta/cno;

    move-result-object v1

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lyou/zta/sis/zta/cno;->square()Lyou/zta/sis/zta/cno;

    move-result-object v0

    invoke-virtual {v0, p0}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object p0

    invoke-virtual {p0, v2}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object p0

    invoke-virtual {v1}, Lyou/zta/sis/zta/cno;->square()Lyou/zta/sis/zta/cno;

    move-result-object v0

    invoke-virtual {v0, v3}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lyou/zta/sis/zta/cno;->square()Lyou/zta/sis/zta/cno;

    move-result-object v4

    invoke-virtual {v4}, Lyou/zta/sis/zta/cno;->square()Lyou/zta/sis/zta/cno;

    move-result-object v5

    invoke-virtual {p0, v0}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v4}, Lyou/zta/sis/zta/cno;->you(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object p0

    invoke-virtual {v1, v3, v5}, Lyou/zta/sis/zta/cno;->you(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v1}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    iget-object v5, p0, Lyou/zta/sis/zta/wtn;->y:Lyou/zta/sis/zta/cno;

    invoke-virtual {v5, v1}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v6

    invoke-virtual {v6, v5}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v5

    if-eqz v0, :cond_5

    const/4 v6, 0x1

    if-ne v0, v6, :cond_4

    iget-object p0, p0, Lyou/zta/sis/zta/wtn;->IEa:[Lyou/zta/sis/zta/cno;

    aget-object p0, p0, v4

    invoke-virtual {p0}, Lyou/zta/sis/zta/cno;->_j()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lyou/zta/sis/zta/cno;->square()Lyou/zta/sis/zta/cno;

    move-result-object v0

    invoke-virtual {p0, v0}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v0

    invoke-virtual {v5, p0}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v5

    invoke-virtual {v2, p0}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v2

    invoke-virtual {v3, v0}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v3

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "unsupported coordinate system"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    invoke-virtual {v1, v2}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object p0

    invoke-virtual {v1}, Lyou/zta/sis/zta/cno;->square()Lyou/zta/sis/zta/cno;

    move-result-object v0

    invoke-virtual {p0, v0}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object p0

    invoke-virtual {p0, v3}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected wk()Z
    .locals 6

    iget-object v0, p0, Lyou/zta/sis/zta/wtn;->curve:Lyou/zta/sis/zta/rtg;

    invoke-virtual {v0}, Lyou/zta/sis/zta/rtg;->getCofactor()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lyou/zta/sis/zta/sis;->Yoa:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->normalize()Lyou/zta/sis/zta/wtn;

    move-result-object v0

    invoke-virtual {v0}, Lyou/zta/sis/zta/wtn;->gk()Lyou/zta/sis/zta/cno;

    move-result-object v0

    iget-object p0, p0, Lyou/zta/sis/zta/wtn;->curve:Lyou/zta/sis/zta/rtg;

    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg;->getA()Lyou/zta/sis/zta/cno;

    move-result-object p0

    invoke-virtual {v0, p0}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object p0

    check-cast p0, Lyou/zta/sis/zta/cno$zta;

    invoke-virtual {p0}, Lyou/zta/sis/zta/cno$zta;->dk()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :cond_1
    sget-object v1, Lyou/zta/sis/zta/sis;->rPa:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->normalize()Lyou/zta/sis/zta/wtn;

    move-result-object v0

    invoke-virtual {v0}, Lyou/zta/sis/zta/wtn;->gk()Lyou/zta/sis/zta/cno;

    move-result-object v1

    iget-object v4, p0, Lyou/zta/sis/zta/wtn;->curve:Lyou/zta/sis/zta/rtg;

    move-object v5, v4

    check-cast v5, Lyou/zta/sis/zta/rtg$zta;

    invoke-virtual {v4}, Lyou/zta/sis/zta/rtg;->getA()Lyou/zta/sis/zta/cno;

    move-result-object v4

    invoke-virtual {v1, v4}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v4

    invoke-virtual {v5, v4}, Lyou/zta/sis/zta/rtg$zta;->you(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v4

    if-nez v4, :cond_2

    return v3

    :cond_2
    invoke-virtual {v1, v4}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v4

    invoke-virtual {v0}, Lyou/zta/sis/zta/wtn;->hk()Lyou/zta/sis/zta/cno;

    move-result-object v0

    invoke-virtual {v4, v0}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object v0

    iget-object p0, p0, Lyou/zta/sis/zta/wtn;->curve:Lyou/zta/sis/zta/rtg;

    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg;->getA()Lyou/zta/sis/zta/cno;

    move-result-object p0

    invoke-virtual {v0, p0}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lyou/zta/sis/zta/cno$zta;

    invoke-virtual {v0}, Lyou/zta/sis/zta/cno$zta;->dk()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v1}, Lyou/zta/sis/zta/cno;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object p0

    check-cast p0, Lyou/zta/sis/zta/cno$zta;

    invoke-virtual {p0}, Lyou/zta/sis/zta/cno$zta;->dk()I

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :cond_4
    :goto_1
    return v2

    :cond_5
    invoke-super {p0}, Lyou/zta/sis/zta/wtn;->wk()Z

    move-result p0

    return p0
.end method

.method public zk()Lyou/zta/sis/zta/wtn$zta;
    .locals 6

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->sk()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v0

    invoke-virtual {v0}, Lyou/zta/sis/zta/rtg;->Qj()I

    move-result v1

    iget-object v2, p0, Lyou/zta/sis/zta/wtn;->x:Lyou/zta/sis/zta/cno;

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v4, 0x5

    if-eq v1, v4, :cond_3

    const/4 v4, 0x6

    if-ne v1, v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "unsupported coordinate system"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iget-object v1, p0, Lyou/zta/sis/zta/wtn;->y:Lyou/zta/sis/zta/cno;

    iget-object v4, p0, Lyou/zta/sis/zta/wtn;->IEa:[Lyou/zta/sis/zta/cno;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v2}, Lyou/zta/sis/zta/cno;->square()Lyou/zta/sis/zta/cno;

    move-result-object v2

    invoke-virtual {v1}, Lyou/zta/sis/zta/cno;->square()Lyou/zta/sis/zta/cno;

    move-result-object v1

    new-array v3, v3, [Lyou/zta/sis/zta/cno;

    invoke-virtual {v4}, Lyou/zta/sis/zta/cno;->square()Lyou/zta/sis/zta/cno;

    move-result-object v4

    aput-object v4, v3, v5

    iget-boolean p0, p0, Lyou/zta/sis/zta/wtn;->withCompression:Z

    invoke-virtual {v0, v2, v1, v3, p0}, Lyou/zta/sis/zta/rtg;->zta(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;[Lyou/zta/sis/zta/cno;Z)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    :goto_1
    check-cast p0, Lyou/zta/sis/zta/wtn$zta;

    return-object p0

    :cond_3
    iget-object v1, p0, Lyou/zta/sis/zta/wtn;->y:Lyou/zta/sis/zta/cno;

    invoke-virtual {v2}, Lyou/zta/sis/zta/cno;->square()Lyou/zta/sis/zta/cno;

    move-result-object v2

    invoke-virtual {v1}, Lyou/zta/sis/zta/cno;->square()Lyou/zta/sis/zta/cno;

    move-result-object v1

    iget-boolean p0, p0, Lyou/zta/sis/zta/wtn;->withCompression:Z

    invoke-virtual {v0, v2, v1, p0}, Lyou/zta/sis/zta/rtg;->zta(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Z)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    goto :goto_1
.end method
