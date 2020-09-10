.class public Lorg/bouncycastle/asn1/you/gck;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# instance fields
.field private Isa:Lorg/bouncycastle/asn1/you/wtn;

.field private Jsa:Lorg/bouncycastle/asn1/x509/zta;

.field private Ksa:Lorg/bouncycastle/asn1/ear;

.field private Lsa:Lorg/bouncycastle/asn1/x509/zta;

.field private Msa:Lorg/bouncycastle/asn1/ibl;

.field private Nsa:Lorg/bouncycastle/asn1/ear;

.field private version:Lorg/bouncycastle/asn1/ywr;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->Rg()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ywr;

    iput-object v0, p0, Lorg/bouncycastle/asn1/you/gck;->version:Lorg/bouncycastle/asn1/ywr;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/you/wtn;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/you/wtn;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/you/gck;->Isa:Lorg/bouncycastle/asn1/you/wtn;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/zta;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/you/gck;->Jsa:Lorg/bouncycastle/asn1/x509/zta;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/bouncycastle/asn1/lqr;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lorg/bouncycastle/asn1/lqr;

    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/ear;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/ear;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/you/gck;->Ksa:Lorg/bouncycastle/asn1/ear;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iput-object v3, p0, Lorg/bouncycastle/asn1/you/gck;->Ksa:Lorg/bouncycastle/asn1/ear;

    :goto_0
    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/zta;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/you/gck;->Lsa:Lorg/bouncycastle/asn1/x509/zta;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ibl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ibl;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/you/gck;->Msa:Lorg/bouncycastle/asn1/ibl;

    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/lqr;

    invoke-static {p1, v2}, Lorg/bouncycastle/asn1/ear;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/ear;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/you/gck;->Nsa:Lorg/bouncycastle/asn1/ear;

    goto :goto_1

    :cond_1
    iput-object v3, p0, Lorg/bouncycastle/asn1/you/gck;->Nsa:Lorg/bouncycastle/asn1/ear;

    :goto_1
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/you/wtn;Lorg/bouncycastle/asn1/x509/zta;Lorg/bouncycastle/asn1/ear;Lorg/bouncycastle/asn1/x509/zta;Lorg/bouncycastle/asn1/ibl;Lorg/bouncycastle/asn1/ear;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/you/wtn;->dh()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/ywr;

    const-wide/16 v1, 0x3

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ywr;-><init>(J)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/ywr;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ywr;-><init>(J)V

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/asn1/you/gck;->version:Lorg/bouncycastle/asn1/ywr;

    iput-object p1, p0, Lorg/bouncycastle/asn1/you/gck;->Isa:Lorg/bouncycastle/asn1/you/wtn;

    iput-object p2, p0, Lorg/bouncycastle/asn1/you/gck;->Jsa:Lorg/bouncycastle/asn1/x509/zta;

    iput-object p3, p0, Lorg/bouncycastle/asn1/you/gck;->Ksa:Lorg/bouncycastle/asn1/ear;

    iput-object p4, p0, Lorg/bouncycastle/asn1/you/gck;->Lsa:Lorg/bouncycastle/asn1/x509/zta;

    iput-object p5, p0, Lorg/bouncycastle/asn1/you/gck;->Msa:Lorg/bouncycastle/asn1/ibl;

    iput-object p6, p0, Lorg/bouncycastle/asn1/you/gck;->Nsa:Lorg/bouncycastle/asn1/ear;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/you/wtn;Lorg/bouncycastle/asn1/x509/zta;Lorg/bouncycastle/asn1/you/sis;Lorg/bouncycastle/asn1/x509/zta;Lorg/bouncycastle/asn1/ibl;Lorg/bouncycastle/asn1/you/sis;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/you/wtn;->dh()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/ywr;

    const-wide/16 v1, 0x3

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ywr;-><init>(J)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/ywr;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ywr;-><init>(J)V

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/asn1/you/gck;->version:Lorg/bouncycastle/asn1/ywr;

    iput-object p1, p0, Lorg/bouncycastle/asn1/you/gck;->Isa:Lorg/bouncycastle/asn1/you/wtn;

    iput-object p2, p0, Lorg/bouncycastle/asn1/you/gck;->Jsa:Lorg/bouncycastle/asn1/x509/zta;

    invoke-static {p3}, Lorg/bouncycastle/asn1/ear;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ear;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/you/gck;->Ksa:Lorg/bouncycastle/asn1/ear;

    iput-object p4, p0, Lorg/bouncycastle/asn1/you/gck;->Lsa:Lorg/bouncycastle/asn1/x509/zta;

    iput-object p5, p0, Lorg/bouncycastle/asn1/you/gck;->Msa:Lorg/bouncycastle/asn1/ibl;

    invoke-static {p6}, Lorg/bouncycastle/asn1/ear;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ear;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/you/gck;->Nsa:Lorg/bouncycastle/asn1/ear;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/you/gck;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    instance-of v0, p0, Lorg/bouncycastle/asn1/you/gck;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/you/gck;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/you/gck;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/you/gck;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public eh()Lorg/bouncycastle/asn1/ear;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/you/gck;->Ksa:Lorg/bouncycastle/asn1/ear;

    return-object p0
.end method

.method public fh()Lorg/bouncycastle/asn1/x509/zta;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/you/gck;->Lsa:Lorg/bouncycastle/asn1/x509/zta;

    return-object p0
.end method

.method public getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/zta;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/you/gck;->Jsa:Lorg/bouncycastle/asn1/x509/zta;

    return-object p0
.end method

.method public getVersion()Lorg/bouncycastle/asn1/ywr;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/you/gck;->version:Lorg/bouncycastle/asn1/ywr;

    return-object p0
.end method

.method public gh()Lorg/bouncycastle/asn1/ibl;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/you/gck;->Msa:Lorg/bouncycastle/asn1/ibl;

    return-object p0
.end method

.method public hh()Lorg/bouncycastle/asn1/you/wtn;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/you/gck;->Isa:Lorg/bouncycastle/asn1/you/wtn;

    return-object p0
.end method

.method public ih()Lorg/bouncycastle/asn1/ear;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/you/gck;->Nsa:Lorg/bouncycastle/asn1/ear;

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/you/gck;->version:Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/you/gck;->Isa:Lorg/bouncycastle/asn1/you/wtn;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/you/gck;->Jsa:Lorg/bouncycastle/asn1/x509/zta;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/you/gck;->Ksa:Lorg/bouncycastle/asn1/ear;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v3, Lorg/bouncycastle/asn1/L;

    invoke-direct {v3, v2, v2, v1}, Lorg/bouncycastle/asn1/L;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/you/gck;->Lsa:Lorg/bouncycastle/asn1/x509/zta;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/you/gck;->Msa:Lorg/bouncycastle/asn1/ibl;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object p0, p0, Lorg/bouncycastle/asn1/you/gck;->Nsa:Lorg/bouncycastle/asn1/ear;

    if-eqz p0, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/L;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p0}, Lorg/bouncycastle/asn1/L;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_1
    new-instance p0, Lorg/bouncycastle/asn1/G;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    return-object p0
.end method
