.class public Lorg/bouncycastle/asn1/dma/hmo;
.super Lorg/bouncycastle/asn1/oif;
.source ""

# interfaces
.implements Lorg/bouncycastle/asn1/dma/gwm;


# instance fields
.field private Ksa:Lorg/bouncycastle/asn1/ear;

.field private Lsa:Lorg/bouncycastle/asn1/dma/cno;

.field private Msa:Lorg/bouncycastle/asn1/ear;

.field private Nsa:Lorg/bouncycastle/asn1/ear;

.field private certificates:Lorg/bouncycastle/asn1/ear;

.field private version:Lorg/bouncycastle/asn1/ywr;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->Tg()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ywr;

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/hmo;->version:Lorg/bouncycastle/asn1/ywr;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ear;

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/hmo;->Ksa:Lorg/bouncycastle/asn1/ear;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/dma/cno;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/cno;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/hmo;->Lsa:Lorg/bouncycastle/asn1/dma/cno;

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/vdb;

    instance-of v1, v0, Lorg/bouncycastle/asn1/lqr;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/bouncycastle/asn1/lqr;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/lqr;->getTagNo()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/ear;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/ear;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/hmo;->Msa:Lorg/bouncycastle/asn1/ear;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown tag value "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/lqr;->getTagNo()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/ear;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/ear;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/hmo;->certificates:Lorg/bouncycastle/asn1/ear;

    goto :goto_0

    :cond_2
    check-cast v0, Lorg/bouncycastle/asn1/ear;

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/hmo;->Nsa:Lorg/bouncycastle/asn1/ear;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ywr;Lorg/bouncycastle/asn1/ear;Lorg/bouncycastle/asn1/dma/cno;Lorg/bouncycastle/asn1/ear;Lorg/bouncycastle/asn1/ear;Lorg/bouncycastle/asn1/ear;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/dma/hmo;->version:Lorg/bouncycastle/asn1/ywr;

    iput-object p2, p0, Lorg/bouncycastle/asn1/dma/hmo;->Ksa:Lorg/bouncycastle/asn1/ear;

    iput-object p3, p0, Lorg/bouncycastle/asn1/dma/hmo;->Lsa:Lorg/bouncycastle/asn1/dma/cno;

    iput-object p4, p0, Lorg/bouncycastle/asn1/dma/hmo;->certificates:Lorg/bouncycastle/asn1/ear;

    iput-object p5, p0, Lorg/bouncycastle/asn1/dma/hmo;->Msa:Lorg/bouncycastle/asn1/ear;

    iput-object p6, p0, Lorg/bouncycastle/asn1/dma/hmo;->Nsa:Lorg/bouncycastle/asn1/ear;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/hmo;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/dma/hmo;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/dma/hmo;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/dma/hmo;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/dma/hmo;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public ch()Lorg/bouncycastle/asn1/ear;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/hmo;->Msa:Lorg/bouncycastle/asn1/ear;

    return-object p0
.end method

.method public dh()Lorg/bouncycastle/asn1/ear;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/hmo;->Ksa:Lorg/bouncycastle/asn1/ear;

    return-object p0
.end method

.method public getCertificates()Lorg/bouncycastle/asn1/ear;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/hmo;->certificates:Lorg/bouncycastle/asn1/ear;

    return-object p0
.end method

.method public getContentInfo()Lorg/bouncycastle/asn1/dma/cno;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/hmo;->Lsa:Lorg/bouncycastle/asn1/dma/cno;

    return-object p0
.end method

.method public getSignerInfos()Lorg/bouncycastle/asn1/ear;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/hmo;->Nsa:Lorg/bouncycastle/asn1/ear;

    return-object p0
.end method

.method public getVersion()Lorg/bouncycastle/asn1/ywr;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/hmo;->version:Lorg/bouncycastle/asn1/ywr;

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 5

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/dma/hmo;->version:Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/dma/hmo;->Ksa:Lorg/bouncycastle/asn1/ear;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/dma/hmo;->Lsa:Lorg/bouncycastle/asn1/dma/cno;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/dma/hmo;->certificates:Lorg/bouncycastle/asn1/ear;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v3, Lorg/bouncycastle/asn1/L;

    invoke-direct {v3, v2, v2, v1}, Lorg/bouncycastle/asn1/L;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/dma/hmo;->Msa:Lorg/bouncycastle/asn1/ear;

    if-eqz v1, :cond_1

    new-instance v3, Lorg/bouncycastle/asn1/L;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4, v1}, Lorg/bouncycastle/asn1/L;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_1
    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/hmo;->Nsa:Lorg/bouncycastle/asn1/ear;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance p0, Lorg/bouncycastle/asn1/d;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/d;-><init>(Lorg/bouncycastle/asn1/cno;)V

    return-object p0
.end method
