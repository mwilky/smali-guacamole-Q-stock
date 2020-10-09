.class public Lorg/bouncycastle/asn1/x509/sis;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# instance fields
.field Rta:Lorg/bouncycastle/asn1/wtn;

.field Sta:Lorg/bouncycastle/asn1/wtn;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/wtn;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/wtn;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/sis;->Rta:Lorg/bouncycastle/asn1/wtn;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/wtn;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/wtn;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/sis;->Sta:Lorg/bouncycastle/asn1/wtn;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad sequence size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/wtn;Lorg/bouncycastle/asn1/wtn;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/sis;->Rta:Lorg/bouncycastle/asn1/wtn;

    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/sis;->Sta:Lorg/bouncycastle/asn1/wtn;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/sis;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/sis;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/x509/sis;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x509/sis;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/sis;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public Ph()Lorg/bouncycastle/asn1/wtn;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/sis;->Sta:Lorg/bouncycastle/asn1/wtn;

    return-object p0
.end method

.method public Qh()Lorg/bouncycastle/asn1/wtn;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/sis;->Rta:Lorg/bouncycastle/asn1/wtn;

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/sis;->Rta:Lorg/bouncycastle/asn1/wtn;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/sis;->Sta:Lorg/bouncycastle/asn1/wtn;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance p0, Lorg/bouncycastle/asn1/G;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    return-object p0
.end method
