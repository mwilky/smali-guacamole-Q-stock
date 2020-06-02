.class public abstract Lorg/bouncycastle/asn1/lqr;
.super Lorg/bouncycastle/asn1/vdb;
.source ""

# interfaces
.implements Lorg/bouncycastle/asn1/veq;


# instance fields
.field empty:Z

.field obj:Lorg/bouncycastle/asn1/ssp;

.field ssa:I

.field tsa:Z


# direct methods
.method public constructor <init>(ZILorg/bouncycastle/asn1/ssp;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/vdb;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/lqr;->empty:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/lqr;->tsa:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/asn1/lqr;->obj:Lorg/bouncycastle/asn1/ssp;

    instance-of v1, p3, Lorg/bouncycastle/asn1/rtg;

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/lqr;->tsa:Z

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lorg/bouncycastle/asn1/lqr;->tsa:Z

    :goto_0
    iput p2, p0, Lorg/bouncycastle/asn1/lqr;->ssa:I

    iget-boolean p1, p0, Lorg/bouncycastle/asn1/lqr;->tsa:Z

    if-eqz p1, :cond_1

    :goto_1
    iput-object p3, p0, Lorg/bouncycastle/asn1/lqr;->obj:Lorg/bouncycastle/asn1/ssp;

    goto :goto_2

    :cond_1
    invoke-interface {p3}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p1

    instance-of p1, p1, Lorg/bouncycastle/asn1/ear;

    goto :goto_1

    :goto_2
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/lqr;
    .locals 3

    if-eqz p0, :cond_2

    instance-of v0, p0, Lorg/bouncycastle/asn1/lqr;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    :try_start_0
    check-cast p0, [B

    invoke-static {p0}, Lorg/bouncycastle/asn1/vdb;->fromByteArray([B)Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/lqr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/lqr;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to construct tagged object from byte[]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    check-cast p0, Lorg/bouncycastle/asn1/lqr;

    return-object p0
.end method

.method public static zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/lqr;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/lqr;->getObject()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/lqr;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "implicitly tagged tagged object"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method Eg()Lorg/bouncycastle/asn1/vdb;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/L;

    iget-boolean v1, p0, Lorg/bouncycastle/asn1/lqr;->tsa:Z

    iget v2, p0, Lorg/bouncycastle/asn1/lqr;->ssa:I

    iget-object p0, p0, Lorg/bouncycastle/asn1/lqr;->obj:Lorg/bouncycastle/asn1/ssp;

    invoke-direct {v0, v1, v2, p0}, Lorg/bouncycastle/asn1/L;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    return-object v0
.end method

.method Fg()Lorg/bouncycastle/asn1/vdb;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/Z;

    iget-boolean v1, p0, Lorg/bouncycastle/asn1/lqr;->tsa:Z

    iget v2, p0, Lorg/bouncycastle/asn1/lqr;->ssa:I

    iget-object p0, p0, Lorg/bouncycastle/asn1/lqr;->obj:Lorg/bouncycastle/asn1/ssp;

    invoke-direct {v0, v1, v2, p0}, Lorg/bouncycastle/asn1/Z;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    return-object v0
.end method

.method public Tg()Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/asn1/lqr;->tsa:Z

    return p0
.end method

.method public cno()Lorg/bouncycastle/asn1/vdb;
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/vdb;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    return-object p0
.end method

.method public getObject()Lorg/bouncycastle/asn1/vdb;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/lqr;->obj:Lorg/bouncycastle/asn1/ssp;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTagNo()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/asn1/lqr;->ssa:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/lqr;->ssa:I

    iget-object p0, p0, Lorg/bouncycastle/asn1/lqr;->obj:Lorg/bouncycastle/asn1/ssp;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    xor-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public isEmpty()Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/asn1/lqr;->empty:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/bouncycastle/asn1/lqr;->ssa:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/bouncycastle/asn1/lqr;->obj:Lorg/bouncycastle/asn1/ssp;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public zta(IZ)Lorg/bouncycastle/asn1/ssp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/16 v0, 0x10

    if-eq p1, v0, :cond_2

    const/16 v0, 0x11

    if-eq p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/lqr;->getObject()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/asn1/ASN1Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "implicit tagging not implemented for tag: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p0, p2}, Lorg/bouncycastle/asn1/ear;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/ear;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ear;->parser()Lorg/bouncycastle/asn1/ire;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p0, p2}, Lorg/bouncycastle/asn1/obl;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/obl;->parser()Lorg/bouncycastle/asn1/oxb;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {p0, p2}, Lorg/bouncycastle/asn1/ibl;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/ibl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl;->parser()Lorg/bouncycastle/asn1/gwm;

    move-result-object p0

    return-object p0
.end method

.method abstract zta(Lorg/bouncycastle/asn1/ugm;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method zta(Lorg/bouncycastle/asn1/vdb;)Z
    .locals 3

    instance-of v0, p1, Lorg/bouncycastle/asn1/lqr;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/bouncycastle/asn1/lqr;

    iget v0, p0, Lorg/bouncycastle/asn1/lqr;->ssa:I

    iget v2, p1, Lorg/bouncycastle/asn1/lqr;->ssa:I

    if-ne v0, v2, :cond_4

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/lqr;->empty:Z

    iget-boolean v2, p1, Lorg/bouncycastle/asn1/lqr;->empty:Z

    if-ne v0, v2, :cond_4

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/lqr;->tsa:Z

    iget-boolean v2, p1, Lorg/bouncycastle/asn1/lqr;->tsa:Z

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/bouncycastle/asn1/lqr;->obj:Lorg/bouncycastle/asn1/ssp;

    if-nez p0, :cond_2

    iget-object p0, p1, Lorg/bouncycastle/asn1/lqr;->obj:Lorg/bouncycastle/asn1/ssp;

    if-eqz p0, :cond_3

    return v1

    :cond_2
    invoke-interface {p0}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    iget-object p1, p1, Lorg/bouncycastle/asn1/lqr;->obj:Lorg/bouncycastle/asn1/ssp;

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v1
.end method
