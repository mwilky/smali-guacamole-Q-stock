.class public Lyou/zta/sis/zta/cno$sis;
.super Lyou/zta/sis/zta/cno$zta;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyou/zta/sis/zta/cno;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "sis"
.end annotation


# static fields
.field public static final CEa:I = 0x1

.field public static final DEa:I = 0x2

.field public static final EEa:I = 0x3


# instance fields
.field private AEa:I

.field private BEa:[I

.field private kpa:I

.field x:Lyou/zta/sis/zta/ibl;


# direct methods
.method public constructor <init>(IIIILjava/math/BigInteger;)V
    .locals 4

    invoke-direct {p0}, Lyou/zta/sis/zta/cno$zta;-><init>()V

    if-eqz p5, :cond_3

    invoke-virtual {p5}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_3

    invoke-virtual {p5}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-gt v0, p1, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    iput v2, p0, Lyou/zta/sis/zta/cno$sis;->AEa:I

    new-array p3, v1, [I

    aput p2, p3, v0

    iput-object p3, p0, Lyou/zta/sis/zta/cno$sis;->BEa:[I

    goto :goto_0

    :cond_0
    if-ge p3, p4, :cond_2

    if-lez p3, :cond_1

    const/4 v3, 0x3

    iput v3, p0, Lyou/zta/sis/zta/cno$sis;->AEa:I

    new-array v3, v3, [I

    aput p2, v3, v0

    aput p3, v3, v1

    aput p4, v3, v2

    iput-object v3, p0, Lyou/zta/sis/zta/cno$sis;->BEa:[I

    :goto_0
    iput p1, p0, Lyou/zta/sis/zta/cno$sis;->kpa:I

    new-instance p1, Lyou/zta/sis/zta/ibl;

    invoke-direct {p1, p5}, Lyou/zta/sis/zta/ibl;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lyou/zta/sis/zta/cno$sis;->x:Lyou/zta/sis/zta/ibl;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "k2 must be larger than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "k2 must be smaller than k3"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "x value invalid in F2m field element"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method constructor <init>(I[ILyou/zta/sis/zta/ibl;)V
    .locals 1

    invoke-direct {p0}, Lyou/zta/sis/zta/cno$zta;-><init>()V

    iput p1, p0, Lyou/zta/sis/zta/cno$sis;->kpa:I

    array-length p1, p2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    iput p1, p0, Lyou/zta/sis/zta/cno$sis;->AEa:I

    iput-object p2, p0, Lyou/zta/sis/zta/cno$sis;->BEa:[I

    iput-object p3, p0, Lyou/zta/sis/zta/cno$sis;->x:Lyou/zta/sis/zta/ibl;

    return-void
.end method

.method public static sis(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;)V
    .locals 2

    instance-of v0, p0, Lyou/zta/sis/zta/cno$sis;

    if-eqz v0, :cond_2

    instance-of v0, p1, Lyou/zta/sis/zta/cno$sis;

    if-eqz v0, :cond_2

    check-cast p0, Lyou/zta/sis/zta/cno$sis;

    check-cast p1, Lyou/zta/sis/zta/cno$sis;

    iget v0, p0, Lyou/zta/sis/zta/cno$sis;->AEa:I

    iget v1, p1, Lyou/zta/sis/zta/cno$sis;->AEa:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lyou/zta/sis/zta/cno$sis;->kpa:I

    iget v1, p1, Lyou/zta/sis/zta/cno$sis;->kpa:I

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lyou/zta/sis/zta/cno$sis;->BEa:[I

    iget-object p1, p1, Lyou/zta/sis/zta/cno$sis;->BEa:[I

    invoke-static {p0, p1}, Lorg/bouncycastle/util/zta;->bvj([I[I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Field elements are not elements of the same field F2m"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "One of the F2m field elements has incorrect representation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Field elements are not both instances of ECFieldElement.F2m"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public Uj()I
    .locals 1

    iget-object p0, p0, Lyou/zta/sis/zta/cno$sis;->BEa:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public Vj()I
    .locals 2

    iget-object p0, p0, Lyou/zta/sis/zta/cno$sis;->BEa:[I

    array-length v0, p0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    aget p0, p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public Wj()I
    .locals 2

    iget-object p0, p0, Lyou/zta/sis/zta/cno$sis;->BEa:[I

    array-length v0, p0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    aget p0, p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public Yj()Lyou/zta/sis/zta/cno;
    .locals 3

    new-instance v0, Lyou/zta/sis/zta/cno$sis;

    iget v1, p0, Lyou/zta/sis/zta/cno$sis;->kpa:I

    iget-object v2, p0, Lyou/zta/sis/zta/cno$sis;->BEa:[I

    iget-object p0, p0, Lyou/zta/sis/zta/cno$sis;->x:Lyou/zta/sis/zta/ibl;

    invoke-virtual {p0}, Lyou/zta/sis/zta/ibl;->Yj()Lyou/zta/sis/zta/ibl;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lyou/zta/sis/zta/cno$sis;-><init>(I[ILyou/zta/sis/zta/ibl;)V

    return-object v0
.end method

.method public Zj()Ljava/lang/String;
    .locals 0

    const-string p0, "F2m"

    return-object p0
.end method

.method public _j()Z
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/cno$sis;->x:Lyou/zta/sis/zta/ibl;

    invoke-virtual {p0}, Lyou/zta/sis/zta/ibl;->_j()Z

    move-result p0

    return p0
.end method

.method public ak()Lyou/zta/sis/zta/cno;
    .locals 1

    iget-object v0, p0, Lyou/zta/sis/zta/cno$sis;->x:Lyou/zta/sis/zta/ibl;

    invoke-virtual {v0}, Lyou/zta/sis/zta/ibl;->isZero()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lyou/zta/sis/zta/cno$sis;->x:Lyou/zta/sis/zta/ibl;

    invoke-virtual {v0}, Lyou/zta/sis/zta/ibl;->_j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lyou/zta/sis/zta/cno$sis;->kpa:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lyou/zta/sis/zta/cno$sis;->oa(I)Lyou/zta/sis/zta/cno;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public bitLength()I
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/cno$sis;->x:Lyou/zta/sis/zta/ibl;

    invoke-virtual {p0}, Lyou/zta/sis/zta/ibl;->Ck()I

    move-result p0

    return p0
.end method

.method public bk()Z
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/cno$sis;->x:Lyou/zta/sis/zta/ibl;

    invoke-virtual {p0}, Lyou/zta/sis/zta/ibl;->bk()Z

    move-result p0

    return p0
.end method

.method public ek()I
    .locals 0

    iget p0, p0, Lyou/zta/sis/zta/cno$sis;->AEa:I

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyou/zta/sis/zta/cno$sis;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyou/zta/sis/zta/cno$sis;

    iget v1, p0, Lyou/zta/sis/zta/cno$sis;->kpa:I

    iget v3, p1, Lyou/zta/sis/zta/cno$sis;->kpa:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lyou/zta/sis/zta/cno$sis;->AEa:I

    iget v3, p1, Lyou/zta/sis/zta/cno$sis;->AEa:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lyou/zta/sis/zta/cno$sis;->BEa:[I

    iget-object v3, p1, Lyou/zta/sis/zta/cno$sis;->BEa:[I

    invoke-static {v1, v3}, Lorg/bouncycastle/util/zta;->bvj([I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lyou/zta/sis/zta/cno$sis;->x:Lyou/zta/sis/zta/ibl;

    iget-object p1, p1, Lyou/zta/sis/zta/cno$sis;->x:Lyou/zta/sis/zta/ibl;

    invoke-virtual {p0, p1}, Lyou/zta/sis/zta/ibl;->equals(Ljava/lang/Object;)Z

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

    iget p0, p0, Lyou/zta/sis/zta/cno$sis;->kpa:I

    return p0
.end method

.method public getM()I
    .locals 0

    iget p0, p0, Lyou/zta/sis/zta/cno$sis;->kpa:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lyou/zta/sis/zta/cno$sis;->x:Lyou/zta/sis/zta/ibl;

    invoke-virtual {v0}, Lyou/zta/sis/zta/ibl;->hashCode()I

    move-result v0

    iget v1, p0, Lyou/zta/sis/zta/cno$sis;->kpa:I

    xor-int/2addr v0, v1

    iget-object p0, p0, Lyou/zta/sis/zta/cno$sis;->BEa:[I

    invoke-static {p0}, Lorg/bouncycastle/util/zta;->hashCode([I)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public invert()Lyou/zta/sis/zta/cno;
    .locals 3

    new-instance v0, Lyou/zta/sis/zta/cno$sis;

    iget v1, p0, Lyou/zta/sis/zta/cno$sis;->kpa:I

    iget-object v2, p0, Lyou/zta/sis/zta/cno$sis;->BEa:[I

    iget-object p0, p0, Lyou/zta/sis/zta/cno$sis;->x:Lyou/zta/sis/zta/ibl;

    invoke-virtual {p0, v1, v2}, Lyou/zta/sis/zta/ibl;->zta(I[I)Lyou/zta/sis/zta/ibl;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lyou/zta/sis/zta/cno$sis;-><init>(I[ILyou/zta/sis/zta/ibl;)V

    return-object v0
.end method

.method public isZero()Z
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/cno$sis;->x:Lyou/zta/sis/zta/ibl;

    invoke-virtual {p0}, Lyou/zta/sis/zta/ibl;->isZero()Z

    move-result p0

    return p0
.end method

.method public negate()Lyou/zta/sis/zta/cno;
    .locals 0

    return-object p0
.end method

.method public oa(I)Lyou/zta/sis/zta/cno;
    .locals 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lyou/zta/sis/zta/cno$sis;

    iget v1, p0, Lyou/zta/sis/zta/cno$sis;->kpa:I

    iget-object v2, p0, Lyou/zta/sis/zta/cno$sis;->BEa:[I

    iget-object p0, p0, Lyou/zta/sis/zta/cno$sis;->x:Lyou/zta/sis/zta/ibl;

    invoke-virtual {p0, p1, v1, v2}, Lyou/zta/sis/zta/ibl;->zta(II[I)Lyou/zta/sis/zta/ibl;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lyou/zta/sis/zta/cno$sis;-><init>(I[ILyou/zta/sis/zta/ibl;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;
    .locals 3

    new-instance v0, Lyou/zta/sis/zta/cno$sis;

    iget v1, p0, Lyou/zta/sis/zta/cno$sis;->kpa:I

    iget-object v2, p0, Lyou/zta/sis/zta/cno$sis;->BEa:[I

    iget-object p0, p0, Lyou/zta/sis/zta/cno$sis;->x:Lyou/zta/sis/zta/ibl;

    check-cast p1, Lyou/zta/sis/zta/cno$sis;

    iget-object p1, p1, Lyou/zta/sis/zta/cno$sis;->x:Lyou/zta/sis/zta/ibl;

    invoke-virtual {p0, p1, v1, v2}, Lyou/zta/sis/zta/ibl;->zta(Lyou/zta/sis/zta/ibl;I[I)Lyou/zta/sis/zta/ibl;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lyou/zta/sis/zta/cno$sis;-><init>(I[ILyou/zta/sis/zta/ibl;)V

    return-object v0
.end method

.method public sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;
    .locals 2

    iget-object v0, p0, Lyou/zta/sis/zta/cno$sis;->x:Lyou/zta/sis/zta/ibl;

    invoke-virtual {v0}, Lyou/zta/sis/zta/ibl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyou/zta/sis/zta/ibl;

    check-cast p1, Lyou/zta/sis/zta/cno$sis;

    iget-object p1, p1, Lyou/zta/sis/zta/cno$sis;->x:Lyou/zta/sis/zta/ibl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lyou/zta/sis/zta/ibl;->zta(Lyou/zta/sis/zta/ibl;I)V

    new-instance p1, Lyou/zta/sis/zta/cno$sis;

    iget v1, p0, Lyou/zta/sis/zta/cno$sis;->kpa:I

    iget-object p0, p0, Lyou/zta/sis/zta/cno$sis;->BEa:[I

    invoke-direct {p1, v1, p0, v0}, Lyou/zta/sis/zta/cno$sis;-><init>(I[ILyou/zta/sis/zta/ibl;)V

    return-object p1
.end method

.method public square()Lyou/zta/sis/zta/cno;
    .locals 3

    new-instance v0, Lyou/zta/sis/zta/cno$sis;

    iget v1, p0, Lyou/zta/sis/zta/cno$sis;->kpa:I

    iget-object v2, p0, Lyou/zta/sis/zta/cno$sis;->BEa:[I

    iget-object p0, p0, Lyou/zta/sis/zta/cno$sis;->x:Lyou/zta/sis/zta/ibl;

    invoke-virtual {p0, v1, v2}, Lyou/zta/sis/zta/ibl;->sis(I[I)Lyou/zta/sis/zta/ibl;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lyou/zta/sis/zta/cno$sis;-><init>(I[ILyou/zta/sis/zta/ibl;)V

    return-object v0
.end method

.method public ssp(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;
    .locals 0

    invoke-virtual {p0, p1}, Lyou/zta/sis/zta/cno$sis;->sis(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object p0

    return-object p0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/cno$sis;->x:Lyou/zta/sis/zta/ibl;

    invoke-virtual {p0}, Lyou/zta/sis/zta/ibl;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public tsu(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;
    .locals 0

    invoke-virtual {p1}, Lyou/zta/sis/zta/cno;->invert()Lyou/zta/sis/zta/cno;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyou/zta/sis/zta/cno$sis;->rtg(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object p0

    return-object p0
.end method

.method public you(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;
    .locals 4

    iget-object v0, p0, Lyou/zta/sis/zta/cno$sis;->x:Lyou/zta/sis/zta/ibl;

    check-cast p1, Lyou/zta/sis/zta/cno$sis;

    iget-object p1, p1, Lyou/zta/sis/zta/cno$sis;->x:Lyou/zta/sis/zta/ibl;

    check-cast p2, Lyou/zta/sis/zta/cno$sis;

    iget-object p2, p2, Lyou/zta/sis/zta/cno$sis;->x:Lyou/zta/sis/zta/ibl;

    iget v1, p0, Lyou/zta/sis/zta/cno$sis;->kpa:I

    iget-object v2, p0, Lyou/zta/sis/zta/cno$sis;->BEa:[I

    invoke-virtual {v0, v1, v2}, Lyou/zta/sis/zta/ibl;->rtg(I[I)Lyou/zta/sis/zta/ibl;

    move-result-object v1

    iget v2, p0, Lyou/zta/sis/zta/cno$sis;->kpa:I

    iget-object v3, p0, Lyou/zta/sis/zta/cno$sis;->BEa:[I

    invoke-virtual {p1, p2, v2, v3}, Lyou/zta/sis/zta/ibl;->tsu(Lyou/zta/sis/zta/ibl;I[I)Lyou/zta/sis/zta/ibl;

    move-result-object p1

    if-ne v1, v0, :cond_0

    invoke-virtual {v1}, Lyou/zta/sis/zta/ibl;->clone()Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lyou/zta/sis/zta/ibl;

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {v1, p1, p2}, Lyou/zta/sis/zta/ibl;->zta(Lyou/zta/sis/zta/ibl;I)V

    iget p1, p0, Lyou/zta/sis/zta/cno$sis;->kpa:I

    iget-object p2, p0, Lyou/zta/sis/zta/cno$sis;->BEa:[I

    invoke-virtual {v1, p1, p2}, Lyou/zta/sis/zta/ibl;->tsu(I[I)V

    new-instance p1, Lyou/zta/sis/zta/cno$sis;

    iget p2, p0, Lyou/zta/sis/zta/cno$sis;->kpa:I

    iget-object p0, p0, Lyou/zta/sis/zta/cno$sis;->BEa:[I

    invoke-direct {p1, p2, p0, v1}, Lyou/zta/sis/zta/cno$sis;-><init>(I[ILyou/zta/sis/zta/ibl;)V

    return-object p1
.end method

.method public you(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;
    .locals 4

    iget-object v0, p0, Lyou/zta/sis/zta/cno$sis;->x:Lyou/zta/sis/zta/ibl;

    check-cast p1, Lyou/zta/sis/zta/cno$sis;

    iget-object p1, p1, Lyou/zta/sis/zta/cno$sis;->x:Lyou/zta/sis/zta/ibl;

    check-cast p2, Lyou/zta/sis/zta/cno$sis;

    iget-object p2, p2, Lyou/zta/sis/zta/cno$sis;->x:Lyou/zta/sis/zta/ibl;

    check-cast p3, Lyou/zta/sis/zta/cno$sis;

    iget-object p3, p3, Lyou/zta/sis/zta/cno$sis;->x:Lyou/zta/sis/zta/ibl;

    iget v1, p0, Lyou/zta/sis/zta/cno$sis;->kpa:I

    iget-object v2, p0, Lyou/zta/sis/zta/cno$sis;->BEa:[I

    invoke-virtual {v0, p1, v1, v2}, Lyou/zta/sis/zta/ibl;->tsu(Lyou/zta/sis/zta/ibl;I[I)Lyou/zta/sis/zta/ibl;

    move-result-object v1

    iget v2, p0, Lyou/zta/sis/zta/cno$sis;->kpa:I

    iget-object v3, p0, Lyou/zta/sis/zta/cno$sis;->BEa:[I

    invoke-virtual {p2, p3, v2, v3}, Lyou/zta/sis/zta/ibl;->tsu(Lyou/zta/sis/zta/ibl;I[I)Lyou/zta/sis/zta/ibl;

    move-result-object p2

    if-eq v1, v0, :cond_0

    if-ne v1, p1, :cond_1

    :cond_0
    invoke-virtual {v1}, Lyou/zta/sis/zta/ibl;->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lyou/zta/sis/zta/ibl;

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {v1, p2, p1}, Lyou/zta/sis/zta/ibl;->zta(Lyou/zta/sis/zta/ibl;I)V

    iget p1, p0, Lyou/zta/sis/zta/cno$sis;->kpa:I

    iget-object p2, p0, Lyou/zta/sis/zta/cno$sis;->BEa:[I

    invoke-virtual {v1, p1, p2}, Lyou/zta/sis/zta/ibl;->tsu(I[I)V

    new-instance p1, Lyou/zta/sis/zta/cno$sis;

    iget p2, p0, Lyou/zta/sis/zta/cno$sis;->kpa:I

    iget-object p0, p0, Lyou/zta/sis/zta/cno$sis;->BEa:[I

    invoke-direct {p1, p2, p0, v1}, Lyou/zta/sis/zta/cno$sis;-><init>(I[ILyou/zta/sis/zta/ibl;)V

    return-object p1
.end method

.method public zta(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lyou/zta/sis/zta/cno$sis;->you(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object p0

    return-object p0
.end method

.method public zta(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lyou/zta/sis/zta/cno$sis;->you(Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/cno;

    move-result-object p0

    return-object p0
.end method
