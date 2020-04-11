.class public Lorg/bouncycastle/asn1/dma/bvj;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# static fields
.field private static final Rqa:Lorg/bouncycastle/asn1/x509/zta;


# instance fields
.field private final Pqa:Lorg/bouncycastle/asn1/ibl;

.field private final Qqa:Lorg/bouncycastle/asn1/ywr;

.field private final iterationCount:Lorg/bouncycastle/asn1/ywr;

.field private final opa:Lorg/bouncycastle/asn1/x509/zta;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/x509/zta;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->id_hmacWithSHA1:Lorg/bouncycastle/asn1/bvj;

    sget-object v2, Lorg/bouncycastle/asn1/z;->INSTANCE:Lorg/bouncycastle/asn1/z;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/zta;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    sput-object v0, Lorg/bouncycastle/asn1/dma/bvj;->Rqa:Lorg/bouncycastle/asn1/x509/zta;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->Jg()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ibl;

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/bvj;->Pqa:Lorg/bouncycastle/asn1/ibl;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ywr;

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/bvj;->iterationCount:Lorg/bouncycastle/asn1/ywr;

    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lorg/bouncycastle/asn1/ywr;

    if-eqz v2, :cond_1

    invoke-static {v0}, Lorg/bouncycastle/asn1/ywr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ywr;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/bvj;->Qqa:Lorg/bouncycastle/asn1/ywr;

    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lorg/bouncycastle/asn1/dma/bvj;->Qqa:Lorg/bouncycastle/asn1/ywr;

    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_3

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/zta;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/zta;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/dma/bvj;->opa:Lorg/bouncycastle/asn1/x509/zta;

    goto :goto_1

    :cond_2
    iput-object v1, p0, Lorg/bouncycastle/asn1/dma/bvj;->Qqa:Lorg/bouncycastle/asn1/ywr;

    :cond_3
    iput-object v1, p0, Lorg/bouncycastle/asn1/dma/bvj;->opa:Lorg/bouncycastle/asn1/x509/zta;

    :goto_1
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/asn1/dma/bvj;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/asn1/dma/bvj;-><init>([BIILorg/bouncycastle/asn1/x509/zta;)V

    return-void
.end method

.method public constructor <init>([BIILorg/bouncycastle/asn1/x509/zta;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/C;

    invoke-static {p1}, Lorg/bouncycastle/util/zta;->vdb([B)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/C;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/bvj;->Pqa:Lorg/bouncycastle/asn1/ibl;

    new-instance p1, Lorg/bouncycastle/asn1/ywr;

    int-to-long v0, p2

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/asn1/ywr;-><init>(J)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/dma/bvj;->iterationCount:Lorg/bouncycastle/asn1/ywr;

    if-lez p3, :cond_0

    new-instance p1, Lorg/bouncycastle/asn1/ywr;

    int-to-long p2, p3

    invoke-direct {p1, p2, p3}, Lorg/bouncycastle/asn1/ywr;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/asn1/dma/bvj;->Qqa:Lorg/bouncycastle/asn1/ywr;

    iput-object p4, p0, Lorg/bouncycastle/asn1/dma/bvj;->opa:Lorg/bouncycastle/asn1/x509/zta;

    return-void
.end method

.method public constructor <init>([BILorg/bouncycastle/asn1/x509/zta;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/bouncycastle/asn1/dma/bvj;-><init>([BIILorg/bouncycastle/asn1/x509/zta;)V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/bvj;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/dma/bvj;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/dma/bvj;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/dma/bvj;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/dma/bvj;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getIterationCount()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/bvj;->iterationCount:Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public getKeyLength()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/bvj;->Qqa:Lorg/bouncycastle/asn1/ywr;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSalt()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/bvj;->Pqa:Lorg/bouncycastle/asn1/ibl;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object p0

    return-object p0
.end method

.method public pg()Lorg/bouncycastle/asn1/x509/zta;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/bvj;->opa:Lorg/bouncycastle/asn1/x509/zta;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lorg/bouncycastle/asn1/dma/bvj;->Rqa:Lorg/bouncycastle/asn1/x509/zta;

    return-object p0
.end method

.method public qg()Z
    .locals 1

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/bvj;->opa:Lorg/bouncycastle/asn1/x509/zta;

    if-eqz p0, :cond_1

    sget-object v0, Lorg/bouncycastle/asn1/dma/bvj;->Rqa:Lorg/bouncycastle/asn1/x509/zta;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/oif;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/dma/bvj;->Pqa:Lorg/bouncycastle/asn1/ibl;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/dma/bvj;->iterationCount:Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/dma/bvj;->Qqa:Lorg/bouncycastle/asn1/ywr;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/dma/bvj;->opa:Lorg/bouncycastle/asn1/x509/zta;

    if-eqz v1, :cond_1

    sget-object v2, Lorg/bouncycastle/asn1/dma/bvj;->Rqa:Lorg/bouncycastle/asn1/x509/zta;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/oif;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/bvj;->opa:Lorg/bouncycastle/asn1/x509/zta;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_1
    new-instance p0, Lorg/bouncycastle/asn1/G;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    return-object p0
.end method
