.class public Lorg/bouncycastle/asn1/dma/ywr;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field Ppa:Lorg/bouncycastle/asn1/x509/qbh;

.field iterationCount:Ljava/math/BigInteger;

.field salt:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/dma/ywr;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/qbh;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/qbh;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/ywr;->Ppa:Lorg/bouncycastle/asn1/x509/qbh;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ibl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ibl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/zta;->vdb([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/ywr;->salt:[B

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ywr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ywr;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/bouncycastle/asn1/dma/ywr;->ONE:Ljava/math/BigInteger;

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/asn1/dma/ywr;->iterationCount:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/qbh;[BI)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/dma/ywr;->Ppa:Lorg/bouncycastle/asn1/x509/qbh;

    invoke-static {p2}, Lorg/bouncycastle/util/zta;->vdb([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/dma/ywr;->salt:[B

    int-to-long p1, p3

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/dma/ywr;->iterationCount:Ljava/math/BigInteger;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/ywr;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/dma/ywr;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/dma/ywr;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/dma/ywr;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/dma/ywr;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getIterationCount()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/ywr;->iterationCount:Ljava/math/BigInteger;

    return-object p0
.end method

.method public getMac()Lorg/bouncycastle/asn1/x509/qbh;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/ywr;->Ppa:Lorg/bouncycastle/asn1/x509/qbh;

    return-object p0
.end method

.method public getSalt()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/ywr;->salt:[B

    invoke-static {p0}, Lorg/bouncycastle/util/zta;->vdb([B)[B

    move-result-object p0

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/dma/ywr;->Ppa:Lorg/bouncycastle/asn1/x509/qbh;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance v1, Lorg/bouncycastle/asn1/C;

    iget-object v2, p0, Lorg/bouncycastle/asn1/dma/ywr;->salt:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/C;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/dma/ywr;->iterationCount:Ljava/math/BigInteger;

    sget-object v2, Lorg/bouncycastle/asn1/dma/ywr;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/ywr;

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/ywr;->iterationCount:Ljava/math/BigInteger;

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/ywr;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_0
    new-instance p0, Lorg/bouncycastle/asn1/G;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    return-object p0
.end method
