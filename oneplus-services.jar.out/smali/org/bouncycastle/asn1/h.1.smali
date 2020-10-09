.class public Lorg/bouncycastle/asn1/h;
.super Lorg/bouncycastle/asn1/lqr;
.source ""


# direct methods
.method public constructor <init>(I)V
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/d;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/d;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lorg/bouncycastle/asn1/lqr;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/asn1/ssp;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/asn1/lqr;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    return-void
.end method

.method public constructor <init>(ZILorg/bouncycastle/asn1/ssp;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/asn1/lqr;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    return-void
.end method


# virtual methods
.method Eg()I
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

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/vdb;->Eg()I

    move-result v0

    iget-boolean v1, p0, Lorg/bouncycastle/asn1/lqr;->Esa:Z

    if-eqz v1, :cond_0

    iget p0, p0, Lorg/bouncycastle/asn1/lqr;->Dsa:I

    invoke-static {p0}, Lorg/bouncycastle/asn1/ia;->ia(I)I

    move-result p0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ia;->ha(I)I

    move-result v1

    add-int/2addr p0, v1

    add-int/2addr p0, v0

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    iget p0, p0, Lorg/bouncycastle/asn1/lqr;->Dsa:I

    invoke-static {p0}, Lorg/bouncycastle/asn1/ia;->ia(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0

    :cond_1
    iget p0, p0, Lorg/bouncycastle/asn1/lqr;->Dsa:I

    invoke-static {p0}, Lorg/bouncycastle/asn1/ia;->ia(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method isConstructed()Z
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/lqr;->empty:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/lqr;->Esa:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lorg/bouncycastle/asn1/lqr;->obj:Lorg/bouncycastle/asn1/ssp;

    invoke-interface {p0}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/vdb;->Fg()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/vdb;->isConstructed()Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method zta(Lorg/bouncycastle/asn1/ugm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/asn1/lqr;->Dsa:I

    const/16 v1, 0xa0

    invoke-virtual {p1, v1, v0}, Lorg/bouncycastle/asn1/ugm;->writeTag(II)V

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ugm;->write(I)V

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/lqr;->empty:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/lqr;->Esa:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/asn1/lqr;->obj:Lorg/bouncycastle/asn1/ssp;

    instance-of v1, v0, Lorg/bouncycastle/asn1/ibl;

    if-eqz v1, :cond_1

    instance-of p0, v0, Lorg/bouncycastle/asn1/ivd;

    if-eqz p0, :cond_0

    check-cast v0, Lorg/bouncycastle/asn1/ivd;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ivd;->Tg()Ljava/util/Enumeration;

    move-result-object p0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/bouncycastle/asn1/ibl;

    new-instance p0, Lorg/bouncycastle/asn1/ivd;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/ivd;-><init>([B)V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ivd;->Tg()Ljava/util/Enumeration;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lorg/bouncycastle/asn1/obl;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/bouncycastle/asn1/obl;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/obl;->Tg()Ljava/util/Enumeration;

    move-result-object p0

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lorg/bouncycastle/asn1/ear;

    if-eqz v1, :cond_3

    check-cast v0, Lorg/bouncycastle/asn1/ear;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ear;->Tg()Ljava/util/Enumeration;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ssp;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ugm;->sis(Lorg/bouncycastle/asn1/ssp;)V

    goto :goto_0

    :cond_3
    new-instance p1, Lorg/bouncycastle/asn1/ASN1Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not implemented: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/bouncycastle/asn1/lqr;->obj:Lorg/bouncycastle/asn1/ssp;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    iget-object p0, p0, Lorg/bouncycastle/asn1/lqr;->obj:Lorg/bouncycastle/asn1/ssp;

    invoke-virtual {p1, p0}, Lorg/bouncycastle/asn1/ugm;->sis(Lorg/bouncycastle/asn1/ssp;)V

    :cond_5
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lorg/bouncycastle/asn1/ugm;->write(I)V

    invoke-virtual {p1, p0}, Lorg/bouncycastle/asn1/ugm;->write(I)V

    return-void
.end method
