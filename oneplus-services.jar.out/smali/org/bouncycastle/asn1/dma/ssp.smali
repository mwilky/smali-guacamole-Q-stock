.class public Lorg/bouncycastle/asn1/dma/ssp;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# instance fields
.field Zsa:Lorg/bouncycastle/asn1/x509/c;

.field attributes:Lorg/bouncycastle/asn1/ear;

.field subject:Lorg/bouncycastle/asn1/bvj/tsu;

.field version:Lorg/bouncycastle/asn1/ywr;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/bvj/tsu;Lorg/bouncycastle/asn1/x509/c;Lorg/bouncycastle/asn1/ear;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/ywr;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ywr;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/ssp;->version:Lorg/bouncycastle/asn1/ywr;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/ssp;->attributes:Lorg/bouncycastle/asn1/ear;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p3}, Lorg/bouncycastle/asn1/dma/ssp;->you(Lorg/bouncycastle/asn1/ear;)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/dma/ssp;->subject:Lorg/bouncycastle/asn1/bvj/tsu;

    iput-object p2, p0, Lorg/bouncycastle/asn1/dma/ssp;->Zsa:Lorg/bouncycastle/asn1/x509/c;

    iput-object p3, p0, Lorg/bouncycastle/asn1/dma/ssp;->attributes:Lorg/bouncycastle/asn1/ear;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not all mandatory fields set in CertificationRequestInfo generator."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/ywr;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ywr;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/ssp;->version:Lorg/bouncycastle/asn1/ywr;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/ssp;->attributes:Lorg/bouncycastle/asn1/ear;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ywr;

    iput-object v1, p0, Lorg/bouncycastle/asn1/dma/ssp;->version:Lorg/bouncycastle/asn1/ywr;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/bvj/tsu;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bvj/tsu;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/dma/ssp;->subject:Lorg/bouncycastle/asn1/bvj/tsu;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/c;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/c;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/dma/ssp;->Zsa:Lorg/bouncycastle/asn1/x509/c;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/lqr;

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/ear;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/ear;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/dma/ssp;->attributes:Lorg/bouncycastle/asn1/ear;

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/asn1/dma/ssp;->attributes:Lorg/bouncycastle/asn1/ear;

    invoke-static {p1}, Lorg/bouncycastle/asn1/dma/ssp;->you(Lorg/bouncycastle/asn1/ear;)V

    iget-object p1, p0, Lorg/bouncycastle/asn1/dma/ssp;->subject:Lorg/bouncycastle/asn1/bvj/tsu;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/bouncycastle/asn1/dma/ssp;->version:Lorg/bouncycastle/asn1/ywr;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/ssp;->Zsa:Lorg/bouncycastle/asn1/x509/c;

    if-eqz p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not all mandatory fields set in CertificationRequestInfo generator."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/q;Lorg/bouncycastle/asn1/x509/c;Lorg/bouncycastle/asn1/ear;)V
    .locals 0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/q;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/bvj/tsu;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bvj/tsu;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/asn1/dma/ssp;-><init>(Lorg/bouncycastle/asn1/bvj/tsu;Lorg/bouncycastle/asn1/x509/c;Lorg/bouncycastle/asn1/ear;)V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/ssp;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/dma/ssp;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/dma/ssp;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/dma/ssp;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/dma/ssp;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static you(Lorg/bouncycastle/asn1/ear;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ear;->Sg()Ljava/util/Enumeration;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/dma/zta;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/zta;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/dma/zta;->Wg()Lorg/bouncycastle/asn1/bvj;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/asn1/dma/gwm;->pkcs_9_at_challengePassword:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/dma/zta;->Xg()Lorg/bouncycastle/asn1/ear;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ear;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "challengePassword attribute must have one value"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void
.end method


# virtual methods
.method public getAttributes()Lorg/bouncycastle/asn1/ear;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/ssp;->attributes:Lorg/bouncycastle/asn1/ear;

    return-object p0
.end method

.method public getSubject()Lorg/bouncycastle/asn1/bvj/tsu;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/ssp;->subject:Lorg/bouncycastle/asn1/bvj/tsu;

    return-object p0
.end method

.method public getVersion()Lorg/bouncycastle/asn1/ywr;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/ssp;->version:Lorg/bouncycastle/asn1/ywr;

    return-object p0
.end method

.method public ph()Lorg/bouncycastle/asn1/x509/c;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/ssp;->Zsa:Lorg/bouncycastle/asn1/x509/c;

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/dma/ssp;->version:Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/dma/ssp;->subject:Lorg/bouncycastle/asn1/bvj/tsu;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/dma/ssp;->Zsa:Lorg/bouncycastle/asn1/x509/c;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/ssp;->attributes:Lorg/bouncycastle/asn1/ear;

    if-eqz p0, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/L;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p0}, Lorg/bouncycastle/asn1/L;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_0
    new-instance p0, Lorg/bouncycastle/asn1/G;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    return-object p0
.end method
