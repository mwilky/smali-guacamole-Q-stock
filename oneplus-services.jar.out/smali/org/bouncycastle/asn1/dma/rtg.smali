.class public Lorg/bouncycastle/asn1/dma/rtg;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# instance fields
.field protected Hpa:Lorg/bouncycastle/asn1/dma/ssp;

.field protected Ipa:Lorg/bouncycastle/asn1/x509/zta;

.field protected Jpa:Lorg/bouncycastle/asn1/n;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/rtg;->Hpa:Lorg/bouncycastle/asn1/dma/ssp;

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/rtg;->Ipa:Lorg/bouncycastle/asn1/x509/zta;

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/rtg;->Jpa:Lorg/bouncycastle/asn1/n;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/dma/ssp;Lorg/bouncycastle/asn1/x509/zta;Lorg/bouncycastle/asn1/n;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/rtg;->Hpa:Lorg/bouncycastle/asn1/dma/ssp;

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/rtg;->Ipa:Lorg/bouncycastle/asn1/x509/zta;

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/rtg;->Jpa:Lorg/bouncycastle/asn1/n;

    iput-object p1, p0, Lorg/bouncycastle/asn1/dma/rtg;->Hpa:Lorg/bouncycastle/asn1/dma/ssp;

    iput-object p2, p0, Lorg/bouncycastle/asn1/dma/rtg;->Ipa:Lorg/bouncycastle/asn1/x509/zta;

    iput-object p3, p0, Lorg/bouncycastle/asn1/dma/rtg;->Jpa:Lorg/bouncycastle/asn1/n;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/rtg;->Hpa:Lorg/bouncycastle/asn1/dma/ssp;

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/rtg;->Ipa:Lorg/bouncycastle/asn1/x509/zta;

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/rtg;->Jpa:Lorg/bouncycastle/asn1/n;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/dma/ssp;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/ssp;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/rtg;->Hpa:Lorg/bouncycastle/asn1/dma/ssp;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/zta;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/rtg;->Ipa:Lorg/bouncycastle/asn1/x509/zta;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/n;

    iput-object p1, p0, Lorg/bouncycastle/asn1/dma/rtg;->Jpa:Lorg/bouncycastle/asn1/n;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/rtg;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/dma/rtg;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/dma/rtg;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/dma/rtg;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/dma/rtg;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public Ng()Lorg/bouncycastle/asn1/x509/zta;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/rtg;->Ipa:Lorg/bouncycastle/asn1/x509/zta;

    return-object p0
.end method

.method public bh()Lorg/bouncycastle/asn1/dma/ssp;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/rtg;->Hpa:Lorg/bouncycastle/asn1/dma/ssp;

    return-object p0
.end method

.method public getSignature()Lorg/bouncycastle/asn1/n;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/rtg;->Jpa:Lorg/bouncycastle/asn1/n;

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/dma/rtg;->Hpa:Lorg/bouncycastle/asn1/dma/ssp;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/dma/rtg;->Ipa:Lorg/bouncycastle/asn1/x509/zta;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/rtg;->Jpa:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance p0, Lorg/bouncycastle/asn1/G;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    return-object p0
.end method
