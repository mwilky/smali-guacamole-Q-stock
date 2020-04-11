.class public Lorg/bouncycastle/x509/ssp;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# instance fields
.field attr:Lorg/bouncycastle/asn1/x509/tsu;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/asn1/cno;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/x509/tsu;

    new-instance v1, Lorg/bouncycastle/asn1/bvj;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    new-instance p1, Lorg/bouncycastle/asn1/I;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/I;-><init>(Lorg/bouncycastle/asn1/cno;)V

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/asn1/x509/tsu;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ear;)V

    iput-object v0, p0, Lorg/bouncycastle/x509/ssp;->attr:Lorg/bouncycastle/asn1/x509/tsu;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/asn1/ssp;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/x509/tsu;

    new-instance v1, Lorg/bouncycastle/asn1/bvj;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    new-instance p1, Lorg/bouncycastle/asn1/I;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/I;-><init>(Lorg/bouncycastle/asn1/ssp;)V

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/asn1/x509/tsu;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ear;)V

    iput-object v0, p0, Lorg/bouncycastle/x509/ssp;->attr:Lorg/bouncycastle/asn1/x509/tsu;

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/asn1/ssp;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/tsu;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/tsu;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/x509/ssp;->attr:Lorg/bouncycastle/asn1/x509/tsu;

    return-void
.end method


# virtual methods
.method public Li()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/x509/ssp;->attr:Lorg/bouncycastle/asn1/x509/tsu;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/tsu;->Jg()Lorg/bouncycastle/asn1/bvj;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValues()[Lorg/bouncycastle/asn1/ssp;
    .locals 3

    iget-object p0, p0, Lorg/bouncycastle/x509/ssp;->attr:Lorg/bouncycastle/asn1/x509/tsu;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/tsu;->Kg()Lorg/bouncycastle/asn1/ear;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ear;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/ssp;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ear;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/ear;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/x509/ssp;->attr:Lorg/bouncycastle/asn1/x509/tsu;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/tsu;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    return-object p0
.end method
