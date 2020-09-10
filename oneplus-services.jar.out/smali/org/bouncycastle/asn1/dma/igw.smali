.class public Lorg/bouncycastle/asn1/dma/igw;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# instance fields
.field private Hpa:Lorg/bouncycastle/asn1/x509/zta;

.field private data:Lorg/bouncycastle/asn1/ibl;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->Rg()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/zta;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/igw;->Hpa:Lorg/bouncycastle/asn1/x509/zta;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ibl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ibl;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/dma/igw;->data:Lorg/bouncycastle/asn1/ibl;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/zta;[B)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/dma/igw;->Hpa:Lorg/bouncycastle/asn1/x509/zta;

    new-instance p1, Lorg/bouncycastle/asn1/C;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/C;-><init>([B)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/dma/igw;->data:Lorg/bouncycastle/asn1/ibl;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/igw;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/dma/igw;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/dma/igw;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/dma/igw;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/dma/igw;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getEncryptedData()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/igw;->data:Lorg/bouncycastle/asn1/ibl;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object p0

    return-object p0
.end method

.method public getEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/zta;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/igw;->Hpa:Lorg/bouncycastle/asn1/x509/zta;

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/dma/igw;->Hpa:Lorg/bouncycastle/asn1/x509/zta;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/igw;->data:Lorg/bouncycastle/asn1/ibl;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance p0, Lorg/bouncycastle/asn1/G;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    return-object p0
.end method
