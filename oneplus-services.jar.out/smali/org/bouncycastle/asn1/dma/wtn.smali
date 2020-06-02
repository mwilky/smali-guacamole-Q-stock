.class public Lorg/bouncycastle/asn1/dma/wtn;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# instance fields
.field private Hpa:Lorg/bouncycastle/asn1/x509/zta;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/bvj;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/x509/zta;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/x509/zta;-><init>(Lorg/bouncycastle/asn1/bvj;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/wtn;->Hpa:Lorg/bouncycastle/asn1/x509/zta;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/x509/zta;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/asn1/x509/zta;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/wtn;->Hpa:Lorg/bouncycastle/asn1/x509/zta;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/zta;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/zta;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/dma/wtn;->Hpa:Lorg/bouncycastle/asn1/x509/zta;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/wtn;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/dma/wtn;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/dma/wtn;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/dma/wtn;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/dma/wtn;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getAlgorithm()Lorg/bouncycastle/asn1/bvj;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/wtn;->Hpa:Lorg/bouncycastle/asn1/x509/zta;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/zta;->getAlgorithm()Lorg/bouncycastle/asn1/bvj;

    move-result-object p0

    return-object p0
.end method

.method public getParameters()Lorg/bouncycastle/asn1/ssp;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/wtn;->Hpa:Lorg/bouncycastle/asn1/x509/zta;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/zta;->getParameters()Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/wtn;->Hpa:Lorg/bouncycastle/asn1/x509/zta;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/zta;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    return-object p0
.end method
