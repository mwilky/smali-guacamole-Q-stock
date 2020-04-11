.class public Lorg/bouncycastle/asn1/x509/you;
.super Lorg/bouncycastle/asn1/oif;
.source ""

# interfaces
.implements Lorg/bouncycastle/asn1/rtg;


# instance fields
.field obj:Lorg/bouncycastle/asn1/ssp;

.field sqa:Lorg/bouncycastle/asn1/vdb;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x509/j;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/you;->obj:Lorg/bouncycastle/asn1/ssp;

    new-instance p1, Lorg/bouncycastle/asn1/L;

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/you;->obj:Lorg/bouncycastle/asn1/ssp;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, v0}, Lorg/bouncycastle/asn1/L;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/you;->sqa:Lorg/bouncycastle/asn1/vdb;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/obl;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/you;->obj:Lorg/bouncycastle/asn1/ssp;

    iget-object p1, p0, Lorg/bouncycastle/asn1/x509/you;->obj:Lorg/bouncycastle/asn1/ssp;

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/you;->sqa:Lorg/bouncycastle/asn1/vdb;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/you;
    .locals 3

    if-eqz p0, :cond_5

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/you;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/j;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x509/you;

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/j;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/j;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/you;-><init>(Lorg/bouncycastle/asn1/x509/j;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/obl;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/bouncycastle/asn1/x509/you;

    check-cast p0, Lorg/bouncycastle/asn1/x509/obl;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/you;-><init>(Lorg/bouncycastle/asn1/x509/obl;)V

    return-object v0

    :cond_2
    instance-of v0, p0, Lorg/bouncycastle/asn1/lqr;

    if-eqz v0, :cond_3

    new-instance v0, Lorg/bouncycastle/asn1/x509/you;

    check-cast p0, Lorg/bouncycastle/asn1/lqr;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lorg/bouncycastle/asn1/x509/j;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/x509/j;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/you;-><init>(Lorg/bouncycastle/asn1/x509/j;)V

    return-object v0

    :cond_3
    instance-of v0, p0, Lorg/bouncycastle/asn1/obl;

    if-eqz v0, :cond_4

    new-instance v0, Lorg/bouncycastle/asn1/x509/you;

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/you;-><init>(Lorg/bouncycastle/asn1/x509/obl;)V

    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

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

    :cond_5
    :goto_0
    check-cast p0, Lorg/bouncycastle/asn1/x509/you;

    return-object p0
.end method

.method public static zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/x509/you;
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/lqr;->getObject()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/you;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/you;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getIssuer()Lorg/bouncycastle/asn1/ssp;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/you;->obj:Lorg/bouncycastle/asn1/ssp;

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/you;->sqa:Lorg/bouncycastle/asn1/vdb;

    return-object p0
.end method
