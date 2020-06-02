.class public Lorg/bouncycastle/asn1/x509/i;
.super Ljava/lang/Object;
.source ""


# instance fields
.field Kta:Lorg/bouncycastle/asn1/bvj/tsu;

.field Xva:Lorg/bouncycastle/asn1/x509/h;

.field Yva:Lorg/bouncycastle/asn1/x509/h;

.field Zva:Lorg/bouncycastle/asn1/x509/c;

.field serialNumber:Lorg/bouncycastle/asn1/ywr;

.field signature:Lorg/bouncycastle/asn1/x509/zta;

.field subject:Lorg/bouncycastle/asn1/bvj/tsu;

.field version:Lorg/bouncycastle/asn1/L;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/L;

    new-instance v1, Lorg/bouncycastle/asn1/ywr;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ywr;-><init>(J)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/bouncycastle/asn1/L;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/i;->version:Lorg/bouncycastle/asn1/L;

    return-void
.end method


# virtual methods
.method public generateTBSCertificate()Lorg/bouncycastle/asn1/x509/f;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/i;->serialNumber:Lorg/bouncycastle/asn1/ywr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/i;->signature:Lorg/bouncycastle/asn1/x509/zta;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/i;->Kta:Lorg/bouncycastle/asn1/bvj/tsu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/i;->Xva:Lorg/bouncycastle/asn1/x509/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/i;->Yva:Lorg/bouncycastle/asn1/x509/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/i;->subject:Lorg/bouncycastle/asn1/bvj/tsu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/i;->Zva:Lorg/bouncycastle/asn1/x509/c;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/i;->serialNumber:Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/i;->signature:Lorg/bouncycastle/asn1/x509/zta;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/i;->Kta:Lorg/bouncycastle/asn1/bvj/tsu;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance v1, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/cno;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/i;->Xva:Lorg/bouncycastle/asn1/x509/h;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/i;->Yva:Lorg/bouncycastle/asn1/x509/h;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance v2, Lorg/bouncycastle/asn1/G;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/i;->subject:Lorg/bouncycastle/asn1/bvj/tsu;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/i;->Zva:Lorg/bouncycastle/asn1/x509/c;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance p0, Lorg/bouncycastle/asn1/G;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/f;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/f;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "not all mandatory fields set in V1 TBScertificate generator"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public sis(Lorg/bouncycastle/asn1/bvj/tsu;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/i;->Kta:Lorg/bouncycastle/asn1/bvj/tsu;

    return-void
.end method

.method public sis(Lorg/bouncycastle/asn1/x509/c;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/i;->Zva:Lorg/bouncycastle/asn1/x509/c;

    return-void
.end method

.method public tsu(Lorg/bouncycastle/asn1/bvj/tsu;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/i;->subject:Lorg/bouncycastle/asn1/bvj/tsu;

    return-void
.end method

.method public tsu(Lorg/bouncycastle/asn1/x509/zta;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/i;->signature:Lorg/bouncycastle/asn1/x509/zta;

    return-void
.end method

.method public you(Lorg/bouncycastle/asn1/cgv;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/x509/h;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/x509/h;-><init>(Lorg/bouncycastle/asn1/vdb;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/i;->Xva:Lorg/bouncycastle/asn1/x509/h;

    return-void
.end method

.method public you(Lorg/bouncycastle/asn1/x509/h;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/i;->Xva:Lorg/bouncycastle/asn1/x509/h;

    return-void
.end method

.method public you(Lorg/bouncycastle/asn1/x509/q;)V
    .locals 0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/q;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/bvj/tsu;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bvj/tsu;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/i;->subject:Lorg/bouncycastle/asn1/bvj/tsu;

    return-void
.end method

.method public zta(Lorg/bouncycastle/asn1/cgv;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/x509/h;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/x509/h;-><init>(Lorg/bouncycastle/asn1/vdb;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/i;->Yva:Lorg/bouncycastle/asn1/x509/h;

    return-void
.end method

.method public zta(Lorg/bouncycastle/asn1/x509/h;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/i;->Yva:Lorg/bouncycastle/asn1/x509/h;

    return-void
.end method

.method public zta(Lorg/bouncycastle/asn1/x509/q;)V
    .locals 0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/q;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/bvj/tsu;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bvj/tsu;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/i;->Kta:Lorg/bouncycastle/asn1/bvj/tsu;

    return-void
.end method

.method public zta(Lorg/bouncycastle/asn1/ywr;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/i;->serialNumber:Lorg/bouncycastle/asn1/ywr;

    return-void
.end method
