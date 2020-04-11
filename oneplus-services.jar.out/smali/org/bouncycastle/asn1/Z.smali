.class public Lorg/bouncycastle/asn1/Z;
.super Lorg/bouncycastle/asn1/lqr;
.source ""


# static fields
.field private static final gqa:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/bouncycastle/asn1/Z;->gqa:[B

    return-void
.end method

.method public constructor <init>(ZILorg/bouncycastle/asn1/ssp;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/asn1/lqr;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    return-void
.end method


# virtual methods
.method isConstructed()Z
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/lqr;->empty:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/lqr;->fqa:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lorg/bouncycastle/asn1/lqr;->obj:Lorg/bouncycastle/asn1/ssp;

    invoke-interface {p0}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/vdb;->wg()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/vdb;->isConstructed()Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method ug()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/lqr;->empty:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/asn1/lqr;->obj:Lorg/bouncycastle/asn1/ssp;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/vdb;->wg()Lorg/bouncycastle/asn1/vdb;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/vdb;->ug()I

    move-result v0

    iget-boolean v1, p0, Lorg/bouncycastle/asn1/lqr;->fqa:Z

    if-eqz v1, :cond_0

    iget p0, p0, Lorg/bouncycastle/asn1/lqr;->eqa:I

    invoke-static {p0}, Lorg/bouncycastle/asn1/ia;->fa(I)I

    move-result p0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ia;->ea(I)I

    move-result v1

    add-int/2addr p0, v1

    add-int/2addr p0, v0

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    iget p0, p0, Lorg/bouncycastle/asn1/lqr;->eqa:I

    invoke-static {p0}, Lorg/bouncycastle/asn1/ia;->fa(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0

    :cond_1
    iget p0, p0, Lorg/bouncycastle/asn1/lqr;->eqa:I

    invoke-static {p0}, Lorg/bouncycastle/asn1/ia;->fa(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method zta(Lorg/bouncycastle/asn1/ugm;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/lqr;->empty:Z

    const/16 v1, 0xa0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/asn1/lqr;->obj:Lorg/bouncycastle/asn1/ssp;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/vdb;->wg()Lorg/bouncycastle/asn1/vdb;

    move-result-object v0

    iget-boolean v2, p0, Lorg/bouncycastle/asn1/lqr;->fqa:Z

    if-eqz v2, :cond_0

    iget p0, p0, Lorg/bouncycastle/asn1/lqr;->eqa:I

    invoke-virtual {p1, v1, p0}, Lorg/bouncycastle/asn1/ugm;->writeTag(II)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/vdb;->ug()I

    move-result p0

    invoke-virtual {p1, p0}, Lorg/bouncycastle/asn1/ugm;->ca(I)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ugm;->sis(Lorg/bouncycastle/asn1/ssp;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/vdb;->isConstructed()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x80

    :goto_0
    iget p0, p0, Lorg/bouncycastle/asn1/lqr;->eqa:I

    invoke-virtual {p1, v1, p0}, Lorg/bouncycastle/asn1/ugm;->writeTag(II)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ugm;->you(Lorg/bouncycastle/asn1/vdb;)V

    goto :goto_1

    :cond_2
    iget p0, p0, Lorg/bouncycastle/asn1/lqr;->eqa:I

    sget-object v0, Lorg/bouncycastle/asn1/Z;->gqa:[B

    invoke-virtual {p1, v1, p0, v0}, Lorg/bouncycastle/asn1/ugm;->you(II[B)V

    :goto_1
    return-void
.end method
