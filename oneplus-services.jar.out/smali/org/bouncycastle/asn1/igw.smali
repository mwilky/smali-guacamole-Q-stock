.class public abstract Lorg/bouncycastle/asn1/igw;
.super Lorg/bouncycastle/asn1/vdb;
.source ""


# instance fields
.field protected Soa:Lorg/bouncycastle/asn1/bvj;

.field protected Toa:Lorg/bouncycastle/asn1/ywr;

.field protected Uoa:Lorg/bouncycastle/asn1/vdb;

.field protected Voa:Lorg/bouncycastle/asn1/vdb;

.field protected encoding:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ywr;Lorg/bouncycastle/asn1/vdb;ILorg/bouncycastle/asn1/vdb;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/vdb;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/igw;->obl(Lorg/bouncycastle/asn1/bvj;)V

    invoke-direct {p0, p2}, Lorg/bouncycastle/asn1/igw;->you(Lorg/bouncycastle/asn1/ywr;)V

    invoke-direct {p0, p3}, Lorg/bouncycastle/asn1/igw;->tsu(Lorg/bouncycastle/asn1/vdb;)V

    invoke-direct {p0, p4}, Lorg/bouncycastle/asn1/igw;->setEncoding(I)V

    invoke-virtual {p5}, Lorg/bouncycastle/asn1/vdb;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/igw;->rtg(Lorg/bouncycastle/asn1/vdb;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ywr;Lorg/bouncycastle/asn1/vdb;Lorg/bouncycastle/asn1/L;)V
    .locals 6

    invoke-virtual {p4}, Lorg/bouncycastle/asn1/lqr;->getTagNo()I

    move-result v4

    invoke-virtual {p4}, Lorg/bouncycastle/asn1/vdb;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/igw;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ywr;Lorg/bouncycastle/asn1/vdb;ILorg/bouncycastle/asn1/vdb;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cno;)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/vdb;-><init>()V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/igw;->zta(Lorg/bouncycastle/asn1/cno;I)Lorg/bouncycastle/asn1/vdb;

    move-result-object v1

    instance-of v2, v1, Lorg/bouncycastle/asn1/bvj;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    check-cast v1, Lorg/bouncycastle/asn1/bvj;

    iput-object v1, p0, Lorg/bouncycastle/asn1/igw;->Soa:Lorg/bouncycastle/asn1/bvj;

    invoke-direct {p0, p1, v3}, Lorg/bouncycastle/asn1/igw;->zta(Lorg/bouncycastle/asn1/cno;I)Lorg/bouncycastle/asn1/vdb;

    move-result-object v1

    move v0, v3

    :cond_0
    instance-of v2, v1, Lorg/bouncycastle/asn1/ywr;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/bouncycastle/asn1/ywr;

    iput-object v1, p0, Lorg/bouncycastle/asn1/igw;->Toa:Lorg/bouncycastle/asn1/ywr;

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/igw;->zta(Lorg/bouncycastle/asn1/cno;I)Lorg/bouncycastle/asn1/vdb;

    move-result-object v1

    :cond_1
    instance-of v2, v1, Lorg/bouncycastle/asn1/lqr;

    if-nez v2, :cond_2

    iput-object v1, p0, Lorg/bouncycastle/asn1/igw;->Uoa:Lorg/bouncycastle/asn1/vdb;

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/igw;->zta(Lorg/bouncycastle/asn1/cno;I)Lorg/bouncycastle/asn1/vdb;

    move-result-object v1

    :cond_2
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cno;->size()I

    move-result p1

    add-int/2addr v0, v3

    if-ne p1, v0, :cond_4

    instance-of p1, v1, Lorg/bouncycastle/asn1/lqr;

    if-eqz p1, :cond_3

    check-cast v1, Lorg/bouncycastle/asn1/lqr;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/lqr;->getTagNo()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/igw;->setEncoding(I)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/lqr;->getObject()Lorg/bouncycastle/asn1/vdb;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/igw;->Voa:Lorg/bouncycastle/asn1/vdb;

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No tagged object found in vector. Structure doesn\'t seem to be of type External"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "input vector too large"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private obl(Lorg/bouncycastle/asn1/bvj;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/igw;->Soa:Lorg/bouncycastle/asn1/bvj;

    return-void
.end method

.method private rtg(Lorg/bouncycastle/asn1/vdb;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/igw;->Voa:Lorg/bouncycastle/asn1/vdb;

    return-void
.end method

.method private setEncoding(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    iput p1, p0, Lorg/bouncycastle/asn1/igw;->encoding:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid encoding value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private tsu(Lorg/bouncycastle/asn1/vdb;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/igw;->Uoa:Lorg/bouncycastle/asn1/vdb;

    return-void
.end method

.method private you(Lorg/bouncycastle/asn1/ywr;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/igw;->Toa:Lorg/bouncycastle/asn1/ywr;

    return-void
.end method

.method private zta(Lorg/bouncycastle/asn1/cno;I)Lorg/bouncycastle/asn1/vdb;
    .locals 0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cno;->size()I

    move-result p0

    if-le p0, p2, :cond_0

    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/cno;->get(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    invoke-interface {p0}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "too few objects in input vector"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getEncoding()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/asn1/igw;->encoding:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/igw;->Soa:Lorg/bouncycastle/asn1/bvj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/igw;->Toa:Lorg/bouncycastle/asn1/ywr;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ywr;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/igw;->Uoa:Lorg/bouncycastle/asn1/vdb;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/vdb;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_2
    iget-object p0, p0, Lorg/bouncycastle/asn1/igw;->Voa:Lorg/bouncycastle/asn1/vdb;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/vdb;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method isConstructed()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method qg()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/oif;->getEncoded()[B

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method rg()Lorg/bouncycastle/asn1/vdb;
    .locals 7

    instance-of v0, p0, Lorg/bouncycastle/asn1/r;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/r;

    iget-object v2, p0, Lorg/bouncycastle/asn1/igw;->Soa:Lorg/bouncycastle/asn1/bvj;

    iget-object v3, p0, Lorg/bouncycastle/asn1/igw;->Toa:Lorg/bouncycastle/asn1/ywr;

    iget-object v4, p0, Lorg/bouncycastle/asn1/igw;->Uoa:Lorg/bouncycastle/asn1/vdb;

    iget v5, p0, Lorg/bouncycastle/asn1/igw;->encoding:I

    iget-object v6, p0, Lorg/bouncycastle/asn1/igw;->Voa:Lorg/bouncycastle/asn1/vdb;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/asn1/r;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ywr;Lorg/bouncycastle/asn1/vdb;ILorg/bouncycastle/asn1/vdb;)V

    return-object v0
.end method

.method public wg()Lorg/bouncycastle/asn1/vdb;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/igw;->Uoa:Lorg/bouncycastle/asn1/vdb;

    return-object p0
.end method

.method public xg()Lorg/bouncycastle/asn1/bvj;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/igw;->Soa:Lorg/bouncycastle/asn1/bvj;

    return-object p0
.end method

.method public yg()Lorg/bouncycastle/asn1/vdb;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/igw;->Voa:Lorg/bouncycastle/asn1/vdb;

    return-object p0
.end method

.method public zg()Lorg/bouncycastle/asn1/ywr;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/igw;->Toa:Lorg/bouncycastle/asn1/ywr;

    return-object p0
.end method

.method zta(Lorg/bouncycastle/asn1/vdb;)Z
    .locals 3

    instance-of v0, p1, Lorg/bouncycastle/asn1/igw;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    check-cast p1, Lorg/bouncycastle/asn1/igw;

    iget-object v0, p0, Lorg/bouncycastle/asn1/igw;->Soa:Lorg/bouncycastle/asn1/bvj;

    if-eqz v0, :cond_3

    iget-object v2, p1, Lorg/bouncycastle/asn1/igw;->Soa:Lorg/bouncycastle/asn1/bvj;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    return v1

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/asn1/igw;->Toa:Lorg/bouncycastle/asn1/ywr;

    if-eqz v0, :cond_5

    iget-object v2, p1, Lorg/bouncycastle/asn1/igw;->Toa:Lorg/bouncycastle/asn1/ywr;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    return v1

    :cond_5
    iget-object v0, p0, Lorg/bouncycastle/asn1/igw;->Uoa:Lorg/bouncycastle/asn1/vdb;

    if-eqz v0, :cond_7

    iget-object v2, p1, Lorg/bouncycastle/asn1/igw;->Uoa:Lorg/bouncycastle/asn1/vdb;

    if-eqz v2, :cond_6

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    return v1

    :cond_7
    iget-object p0, p0, Lorg/bouncycastle/asn1/igw;->Voa:Lorg/bouncycastle/asn1/vdb;

    iget-object p1, p1, Lorg/bouncycastle/asn1/igw;->Voa:Lorg/bouncycastle/asn1/vdb;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
