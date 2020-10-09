.class public abstract Lyou/zta/sis/zta/wtn;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyou/zta/sis/zta/wtn$sis;,
        Lyou/zta/sis/zta/wtn$zta;,
        Lyou/zta/sis/zta/wtn$tsu;,
        Lyou/zta/sis/zta/wtn$you;
    }
.end annotation


# static fields
.field protected static final iHa:[Lyou/zta/sis/zta/cno;


# instance fields
.field protected curve:Lyou/zta/sis/zta/rtg;

.field protected gHa:[Lyou/zta/sis/zta/cno;

.field protected hHa:Ljava/util/Hashtable;

.field protected withCompression:Z

.field protected x:Lyou/zta/sis/zta/cno;

.field protected y:Lyou/zta/sis/zta/cno;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lyou/zta/sis/zta/cno;

    sput-object v0, Lyou/zta/sis/zta/wtn;->iHa:[Lyou/zta/sis/zta/cno;

    return-void
.end method

.method protected constructor <init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;)V
    .locals 1

    invoke-static {p1}, Lyou/zta/sis/zta/wtn;->ssp(Lyou/zta/sis/zta/rtg;)[Lyou/zta/sis/zta/cno;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lyou/zta/sis/zta/wtn;-><init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;[Lyou/zta/sis/zta/cno;)V

    return-void
.end method

.method protected constructor <init>(Lyou/zta/sis/zta/rtg;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;[Lyou/zta/sis/zta/cno;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lyou/zta/sis/zta/wtn;->hHa:Ljava/util/Hashtable;

    iput-object p1, p0, Lyou/zta/sis/zta/wtn;->curve:Lyou/zta/sis/zta/rtg;

    iput-object p2, p0, Lyou/zta/sis/zta/wtn;->x:Lyou/zta/sis/zta/cno;

    iput-object p3, p0, Lyou/zta/sis/zta/wtn;->y:Lyou/zta/sis/zta/cno;

    iput-object p4, p0, Lyou/zta/sis/zta/wtn;->gHa:[Lyou/zta/sis/zta/cno;

    return-void
.end method

.method protected static ssp(Lyou/zta/sis/zta/rtg;)[Lyou/zta/sis/zta/cno;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg;->_j()I

    move-result v1

    :goto_0
    if-eqz v1, :cond_5

    const/4 v2, 0x5

    if-eq v1, v2, :cond_5

    sget-object v2, Lyou/zta/sis/zta/sis;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v2}, Lyou/zta/sis/zta/rtg;->dma(Ljava/math/BigInteger;)Lyou/zta/sis/zta/cno;

    move-result-object v2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    const/4 v5, 0x3

    if-eq v1, v5, :cond_3

    const/4 v5, 0x4

    if-eq v1, v5, :cond_2

    const/4 p0, 0x6

    if-ne v1, p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown coordinate system"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-array v1, v4, [Lyou/zta/sis/zta/cno;

    aput-object v2, v1, v0

    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg;->getA()Lyou/zta/sis/zta/cno;

    move-result-object p0

    aput-object p0, v1, v3

    return-object v1

    :cond_3
    new-array p0, v5, [Lyou/zta/sis/zta/cno;

    aput-object v2, p0, v0

    aput-object v2, p0, v3

    aput-object v2, p0, v4

    return-object p0

    :cond_4
    :goto_1
    new-array p0, v3, [Lyou/zta/sis/zta/cno;

    aput-object v2, p0, v0

    return-object p0

    :cond_5
    sget-object p0, Lyou/zta/sis/zta/wtn;->iHa:[Lyou/zta/sis/zta/cno;

    return-object p0
.end method


# virtual methods
.method public Ak()[Lyou/zta/sis/zta/cno;
    .locals 3

    iget-object p0, p0, Lyou/zta/sis/zta/wtn;->gHa:[Lyou/zta/sis/zta/cno;

    array-length v0, p0

    if-nez v0, :cond_0

    sget-object p0, Lyou/zta/sis/zta/wtn;->iHa:[Lyou/zta/sis/zta/cno;

    return-object p0

    :cond_0
    new-array v1, v0, [Lyou/zta/sis/zta/cno;

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public Bk()Z
    .locals 0

    iget-boolean p0, p0, Lyou/zta/sis/zta/wtn;->withCompression:Z

    return p0
.end method

.method public Ck()Z
    .locals 2

    iget-object v0, p0, Lyou/zta/sis/zta/wtn;->x:Lyou/zta/sis/zta/cno;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyou/zta/sis/zta/wtn;->y:Lyou/zta/sis/zta/cno;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyou/zta/sis/zta/wtn;->gHa:[Lyou/zta/sis/zta/cno;

    array-length v0, p0

    if-lez v0, :cond_1

    aget-object p0, p0, v1

    invoke-virtual {p0}, Lyou/zta/sis/zta/cno;->isZero()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public Dk()Z
    .locals 3

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->tk()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->Ck()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lyou/zta/sis/zta/wtn;->gHa:[Lyou/zta/sis/zta/cno;

    aget-object p0, p0, v1

    invoke-virtual {p0}, Lyou/zta/sis/zta/cno;->jk()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method Ek()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lyou/zta/sis/zta/wtn;->you(ZZ)Z

    move-result p0

    return p0
.end method

.method protected abstract Fk()Z
.end method

.method protected Gk()Z
    .locals 2

    sget-object v0, Lyou/zta/sis/zta/sis;->ONE:Ljava/math/BigInteger;

    iget-object v1, p0, Lyou/zta/sis/zta/wtn;->curve:Lyou/zta/sis/zta/rtg;

    invoke-virtual {v1}, Lyou/zta/sis/zta/rtg;->getCofactor()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lyou/zta/sis/zta/wtn;->curve:Lyou/zta/sis/zta/rtg;

    invoke-virtual {v0}, Lyou/zta/sis/zta/rtg;->getOrder()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p0, v0}, Lyou/zta/sis/zta/you;->sis(Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->Ck()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public Hk()Lyou/zta/sis/zta/wtn;
    .locals 0

    invoke-virtual {p0, p0}, Lyou/zta/sis/zta/wtn;->wtn(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0
.end method

.method public abstract Ik()Lyou/zta/sis/zta/wtn;
.end method

.method public bio(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/wtn;
    .locals 3

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->Ck()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v0

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->vk()Lyou/zta/sis/zta/cno;

    move-result-object v1

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->wk()Lyou/zta/sis/zta/cno;

    move-result-object v2

    invoke-virtual {v2, p1}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object p1

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->xk()[Lyou/zta/sis/zta/cno;

    move-result-object v2

    iget-boolean p0, p0, Lyou/zta/sis/zta/wtn;->withCompression:Z

    invoke-virtual {v0, v1, p1, v2, p0}, Lyou/zta/sis/zta/rtg;->zta(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;[Lyou/zta/sis/zta/cno;Z)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public bio(Lyou/zta/sis/zta/wtn;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v1

    invoke-virtual {p1}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v1, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v0

    :goto_0
    if-nez v2, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v0

    :goto_1
    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->Ck()Z

    move-result v6

    invoke-virtual {p1}, Lyou/zta/sis/zta/wtn;->Ck()Z

    move-result v7

    if-nez v6, :cond_9

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {p1}, Lyou/zta/sis/zta/wtn;->normalize()Lyou/zta/sis/zta/wtn;

    move-result-object p1

    goto :goto_2

    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->normalize()Lyou/zta/sis/zta/wtn;

    move-result-object p0

    goto :goto_2

    :cond_6
    invoke-virtual {v1, v2}, Lyou/zta/sis/zta/rtg;->rtg(Lyou/zta/sis/zta/rtg;)Z

    move-result v2

    if-nez v2, :cond_7

    return v0

    :cond_7
    const/4 v2, 0x2

    new-array v2, v2, [Lyou/zta/sis/zta/wtn;

    aput-object p0, v2, v0

    invoke-virtual {v1, p1}, Lyou/zta/sis/zta/rtg;->cno(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-virtual {v1, v2}, Lyou/zta/sis/zta/rtg;->you([Lyou/zta/sis/zta/wtn;)V

    aget-object p0, v2, v0

    aget-object p1, v2, v3

    :goto_2
    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->yk()Lyou/zta/sis/zta/cno;

    move-result-object v1

    invoke-virtual {p1}, Lyou/zta/sis/zta/wtn;->yk()Lyou/zta/sis/zta/cno;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->zk()Lyou/zta/sis/zta/cno;

    move-result-object p0

    invoke-virtual {p1}, Lyou/zta/sis/zta/wtn;->zk()Lyou/zta/sis/zta/cno;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    move v0, v3

    :cond_8
    return v0

    :cond_9
    :goto_3
    if-eqz v6, :cond_b

    if-eqz v7, :cond_b

    if-nez v4, :cond_a

    if-nez v5, :cond_a

    invoke-virtual {v1, v2}, Lyou/zta/sis/zta/rtg;->rtg(Lyou/zta/sis/zta/rtg;)Z

    move-result p0

    if-eqz p0, :cond_b

    :cond_a
    move v0, v3

    :cond_b
    return v0
.end method

.method cno(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/wtn;
    .locals 2

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->tk()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "not a projective coordinate system"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p1}, Lyou/zta/sis/zta/cno;->square()Lyou/zta/sis/zta/cno;

    move-result-object v0

    invoke-virtual {v0, p1}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lyou/zta/sis/zta/wtn;->tsu(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p1}, Lyou/zta/sis/zta/wtn;->tsu(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0
.end method

.method public da(Z)[B
    .locals 4

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->Ck()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-array p0, v1, [B

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->normalize()Lyou/zta/sis/zta/wtn;

    move-result-object p0

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->yk()Lyou/zta/sis/zta/cno;

    move-result-object v0

    invoke-virtual {v0}, Lyou/zta/sis/zta/cno;->getEncoded()[B

    move-result-object v0

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    array-length p1, v0

    add-int/2addr p1, v1

    new-array p1, p1, [B

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->sk()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x3

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    :goto_0
    int-to-byte p0, p0

    aput-byte p0, p1, v2

    array-length p0, v0

    invoke-static {v0, v2, p1, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_2
    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->zk()Lyou/zta/sis/zta/cno;

    move-result-object p0

    invoke-virtual {p0}, Lyou/zta/sis/zta/cno;->getEncoded()[B

    move-result-object p0

    array-length p1, v0

    array-length v3, p0

    add-int/2addr p1, v3

    add-int/2addr p1, v1

    new-array p1, p1, [B

    const/4 v3, 0x4

    aput-byte v3, p1, v2

    array-length v3, v0

    invoke-static {v0, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v0, v1

    array-length v1, p0

    invoke-static {p0, v2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method protected abstract detach()Lyou/zta/sis/zta/wtn;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lyou/zta/sis/zta/wtn;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lyou/zta/sis/zta/wtn;

    invoke-virtual {p0, p1}, Lyou/zta/sis/zta/wtn;->bio(Lyou/zta/sis/zta/wtn;)Z

    move-result p0

    return p0
.end method

.method public getCurve()Lyou/zta/sis/zta/rtg;
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/wtn;->curve:Lyou/zta/sis/zta/rtg;

    return-object p0
.end method

.method public getEncoded()[B
    .locals 1

    iget-boolean v0, p0, Lyou/zta/sis/zta/wtn;->withCompression:Z

    invoke-virtual {p0, v0}, Lyou/zta/sis/zta/wtn;->da(Z)[B

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lyou/zta/sis/zta/rtg;->hashCode()I

    move-result v0

    not-int v0, v0

    :goto_0
    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->Ck()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->normalize()Lyou/zta/sis/zta/wtn;

    move-result-object p0

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->yk()Lyou/zta/sis/zta/cno;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x11

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->zk()Lyou/zta/sis/zta/cno;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    mul-int/lit16 p0, p0, 0x101

    xor-int/2addr v0, p0

    :cond_1
    return v0
.end method

.method public abstract igw(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;
.end method

.method public isValid()Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lyou/zta/sis/zta/wtn;->you(ZZ)Z

    move-result p0

    return p0
.end method

.method public kth(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/wtn;
    .locals 3

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->Ck()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v0

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->vk()Lyou/zta/sis/zta/cno;

    move-result-object v1

    invoke-virtual {v1, p1}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object p1

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->wk()Lyou/zta/sis/zta/cno;

    move-result-object v1

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->xk()[Lyou/zta/sis/zta/cno;

    move-result-object v2

    iget-boolean p0, p0, Lyou/zta/sis/zta/wtn;->withCompression:Z

    invoke-virtual {v0, p1, v1, v2, p0}, Lyou/zta/sis/zta/rtg;->zta(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;[Lyou/zta/sis/zta/cno;Z)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public abstract kth(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;
.end method

.method public multiply(Ljava/math/BigInteger;)Lyou/zta/sis/zta/wtn;
    .locals 1

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v0

    invoke-virtual {v0}, Lyou/zta/sis/zta/rtg;->getMultiplier()Lyou/zta/sis/zta/bio;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lyou/zta/sis/zta/bio;->zta(Lyou/zta/sis/zta/wtn;Ljava/math/BigInteger;)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0
.end method

.method public abstract negate()Lyou/zta/sis/zta/wtn;
.end method

.method public normalize()Lyou/zta/sis/zta/wtn;
    .locals 2

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->Ck()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->tk()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lyou/zta/sis/zta/wtn;->sa(I)Lyou/zta/sis/zta/cno;

    move-result-object v0

    invoke-virtual {v0}, Lyou/zta/sis/zta/cno;->jk()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {v0}, Lyou/zta/sis/zta/cno;->invert()Lyou/zta/sis/zta/cno;

    move-result-object v0

    invoke-virtual {p0, v0}, Lyou/zta/sis/zta/wtn;->cno(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method protected pk()V
    .locals 1

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->Dk()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "point not in normal form"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public qk()Lyou/zta/sis/zta/cno;
    .locals 0

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->pk()V

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->yk()Lyou/zta/sis/zta/cno;

    move-result-object p0

    return-object p0
.end method

.method public rk()Lyou/zta/sis/zta/cno;
    .locals 0

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->pk()V

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->zk()Lyou/zta/sis/zta/cno;

    move-result-object p0

    return-object p0
.end method

.method public sa(I)Lyou/zta/sis/zta/cno;
    .locals 1

    if-ltz p1, :cond_1

    iget-object p0, p0, Lyou/zta/sis/zta/wtn;->gHa:[Lyou/zta/sis/zta/cno;

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    aget-object p0, p0, p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method protected abstract sk()Z
.end method

.method public ta(I)Lyou/zta/sis/zta/wtn;
    .locals 0

    if-ltz p1, :cond_1

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->Ik()Lyou/zta/sis/zta/wtn;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'e\' cannot be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected tk()I
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/wtn;->curve:Lyou/zta/sis/zta/rtg;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lyou/zta/sis/zta/rtg;->_j()I

    move-result p0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->Ck()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "INF"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->vk()Lyou/zta/sis/zta/cno;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->wk()Lyou/zta/sis/zta/cno;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lyou/zta/sis/zta/wtn;->gHa:[Lyou/zta/sis/zta/cno;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lyou/zta/sis/zta/wtn;->gHa:[Lyou/zta/sis/zta/cno;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected tsu(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/wtn;
    .locals 2

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v0

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->vk()Lyou/zta/sis/zta/cno;

    move-result-object v1

    invoke-virtual {v1, p1}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object p1

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->wk()Lyou/zta/sis/zta/cno;

    move-result-object v1

    invoke-virtual {v1, p2}, Lyou/zta/sis/zta/cno;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object p2

    iget-boolean p0, p0, Lyou/zta/sis/zta/wtn;->withCompression:Z

    invoke-virtual {v0, p1, p2, p0}, Lyou/zta/sis/zta/rtg;->zta(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Z)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0
.end method

.method public final uk()Lyou/zta/sis/zta/wtn;
    .locals 0

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->normalize()Lyou/zta/sis/zta/wtn;

    move-result-object p0

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->detach()Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0
.end method

.method public final vk()Lyou/zta/sis/zta/cno;
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/wtn;->x:Lyou/zta/sis/zta/cno;

    return-object p0
.end method

.method public final wk()Lyou/zta/sis/zta/cno;
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/wtn;->y:Lyou/zta/sis/zta/cno;

    return-object p0
.end method

.method public wtn(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;
    .locals 0

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->Ik()Lyou/zta/sis/zta/wtn;

    move-result-object p0

    invoke-virtual {p0, p1}, Lyou/zta/sis/zta/wtn;->kth(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0
.end method

.method protected final xk()[Lyou/zta/sis/zta/cno;
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/wtn;->gHa:[Lyou/zta/sis/zta/cno;

    return-object p0
.end method

.method public yk()Lyou/zta/sis/zta/cno;
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/wtn;->x:Lyou/zta/sis/zta/cno;

    return-object p0
.end method

.method you(ZZ)Z
    .locals 3

    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->Ck()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lyou/zta/sis/zta/wtn;->getCurve()Lyou/zta/sis/zta/rtg;

    move-result-object v0

    new-instance v2, Lyou/zta/sis/zta/igw;

    invoke-direct {v2, p0, p1, p2}, Lyou/zta/sis/zta/igw;-><init>(Lyou/zta/sis/zta/wtn;ZZ)V

    const-string p1, "bc_validity"

    invoke-virtual {v0, p0, p1, v2}, Lyou/zta/sis/zta/rtg;->zta(Lyou/zta/sis/zta/wtn;Ljava/lang/String;Lyou/zta/sis/zta/gwm;)Lyou/zta/sis/zta/ugm;

    move-result-object p0

    check-cast p0, Lyou/zta/sis/zta/oxb;

    invoke-virtual {p0}, Lyou/zta/sis/zta/oxb;->Rk()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public zk()Lyou/zta/sis/zta/cno;
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/wtn;->y:Lyou/zta/sis/zta/cno;

    return-object p0
.end method
