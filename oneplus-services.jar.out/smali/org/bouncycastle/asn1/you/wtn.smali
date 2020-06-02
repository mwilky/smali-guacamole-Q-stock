.class public Lorg/bouncycastle/asn1/you/wtn;
.super Lorg/bouncycastle/asn1/oif;
.source ""

# interfaces
.implements Lorg/bouncycastle/asn1/rtg;


# instance fields
.field private id:Lorg/bouncycastle/asn1/ssp;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ibl;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/L;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1}, Lorg/bouncycastle/asn1/L;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/you/wtn;->id:Lorg/bouncycastle/asn1/ssp;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/vdb;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/you/wtn;->id:Lorg/bouncycastle/asn1/ssp;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/you/bio;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/you/wtn;->id:Lorg/bouncycastle/asn1/ssp;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/you/wtn;
    .locals 3

    if-eqz p0, :cond_4

    instance-of v0, p0, Lorg/bouncycastle/asn1/you/wtn;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/you/bio;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/you/wtn;

    check-cast p0, Lorg/bouncycastle/asn1/you/bio;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/you/wtn;-><init>(Lorg/bouncycastle/asn1/you/bio;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/ibl;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/bouncycastle/asn1/you/wtn;

    check-cast p0, Lorg/bouncycastle/asn1/ibl;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/you/wtn;-><init>(Lorg/bouncycastle/asn1/ibl;)V

    return-object v0

    :cond_2
    instance-of v0, p0, Lorg/bouncycastle/asn1/vdb;

    if-eqz v0, :cond_3

    new-instance v0, Lorg/bouncycastle/asn1/you/wtn;

    check-cast p0, Lorg/bouncycastle/asn1/vdb;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/you/wtn;-><init>(Lorg/bouncycastle/asn1/vdb;)V

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal object in SignerIdentifier: "

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

    :cond_4
    :goto_0
    check-cast p0, Lorg/bouncycastle/asn1/you/wtn;

    return-object p0
.end method


# virtual methods
.method public eh()Z
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/you/wtn;->id:Lorg/bouncycastle/asn1/ssp;

    instance-of p0, p0, Lorg/bouncycastle/asn1/lqr;

    return p0
.end method

.method public getId()Lorg/bouncycastle/asn1/ssp;
    .locals 1

    iget-object p0, p0, Lorg/bouncycastle/asn1/you/wtn;->id:Lorg/bouncycastle/asn1/ssp;

    instance-of v0, p0, Lorg/bouncycastle/asn1/lqr;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/lqr;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/ibl;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/ibl;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/you/wtn;->id:Lorg/bouncycastle/asn1/ssp;

    invoke-interface {p0}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    return-object p0
.end method
