.class public Lorg/bouncycastle/asn1/dma/zgw;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# static fields
.field public static final lta:Lorg/bouncycastle/asn1/x509/zta;

.field public static final mta:Lorg/bouncycastle/asn1/x509/zta;

.field public static final nta:Lorg/bouncycastle/asn1/x509/zta;


# instance fields
.field private ita:Lorg/bouncycastle/asn1/x509/zta;

.field private jta:Lorg/bouncycastle/asn1/x509/zta;

.field private kta:Lorg/bouncycastle/asn1/x509/zta;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/x509/zta;

    sget-object v1, Lorg/bouncycastle/asn1/gck/zta;->gQa:Lorg/bouncycastle/asn1/bvj;

    sget-object v2, Lorg/bouncycastle/asn1/z;->INSTANCE:Lorg/bouncycastle/asn1/z;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/zta;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    sput-object v0, Lorg/bouncycastle/asn1/dma/zgw;->lta:Lorg/bouncycastle/asn1/x509/zta;

    new-instance v0, Lorg/bouncycastle/asn1/x509/zta;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->id_mgf1:Lorg/bouncycastle/asn1/bvj;

    sget-object v2, Lorg/bouncycastle/asn1/dma/zgw;->lta:Lorg/bouncycastle/asn1/x509/zta;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/zta;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    sput-object v0, Lorg/bouncycastle/asn1/dma/zgw;->mta:Lorg/bouncycastle/asn1/x509/zta;

    new-instance v0, Lorg/bouncycastle/asn1/x509/zta;

    sget-object v1, Lorg/bouncycastle/asn1/dma/gwm;->id_pSpecified:Lorg/bouncycastle/asn1/bvj;

    new-instance v2, Lorg/bouncycastle/asn1/C;

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/C;-><init>([B)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/zta;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    sput-object v0, Lorg/bouncycastle/asn1/dma/zgw;->nta:Lorg/bouncycastle/asn1/x509/zta;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    sget-object v0, Lorg/bouncycastle/asn1/dma/zgw;->lta:Lorg/bouncycastle/asn1/x509/zta;

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/zgw;->ita:Lorg/bouncycastle/asn1/x509/zta;

    sget-object v0, Lorg/bouncycastle/asn1/dma/zgw;->mta:Lorg/bouncycastle/asn1/x509/zta;

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/zgw;->jta:Lorg/bouncycastle/asn1/x509/zta;

    sget-object v0, Lorg/bouncycastle/asn1/dma/zgw;->nta:Lorg/bouncycastle/asn1/x509/zta;

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/zgw;->kta:Lorg/bouncycastle/asn1/x509/zta;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    sget-object v0, Lorg/bouncycastle/asn1/dma/zgw;->lta:Lorg/bouncycastle/asn1/x509/zta;

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/zgw;->ita:Lorg/bouncycastle/asn1/x509/zta;

    sget-object v0, Lorg/bouncycastle/asn1/dma/zgw;->mta:Lorg/bouncycastle/asn1/x509/zta;

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/zgw;->jta:Lorg/bouncycastle/asn1/x509/zta;

    sget-object v0, Lorg/bouncycastle/asn1/dma/zgw;->nta:Lorg/bouncycastle/asn1/x509/zta;

    iput-object v0, p0, Lorg/bouncycastle/asn1/dma/zgw;->kta:Lorg/bouncycastle/asn1/x509/zta;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v1

    if-eq v0, v1, :cond_3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/lqr;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/lqr;->getTagNo()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/x509/zta;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/dma/zgw;->kta:Lorg/bouncycastle/asn1/x509/zta;

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown tag"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/x509/zta;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/dma/zgw;->jta:Lorg/bouncycastle/asn1/x509/zta;

    goto :goto_1

    :cond_2
    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/x509/zta;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/x509/zta;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/dma/zgw;->ita:Lorg/bouncycastle/asn1/x509/zta;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/zta;Lorg/bouncycastle/asn1/x509/zta;Lorg/bouncycastle/asn1/x509/zta;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/dma/zgw;->ita:Lorg/bouncycastle/asn1/x509/zta;

    iput-object p2, p0, Lorg/bouncycastle/asn1/dma/zgw;->jta:Lorg/bouncycastle/asn1/x509/zta;

    iput-object p3, p0, Lorg/bouncycastle/asn1/dma/zgw;->kta:Lorg/bouncycastle/asn1/x509/zta;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dma/zgw;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/dma/zgw;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/dma/zgw;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/dma/zgw;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/dma/zgw;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public Ah()Lorg/bouncycastle/asn1/x509/zta;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/zgw;->kta:Lorg/bouncycastle/asn1/x509/zta;

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 5

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/dma/zgw;->ita:Lorg/bouncycastle/asn1/x509/zta;

    sget-object v2, Lorg/bouncycastle/asn1/dma/zgw;->lta:Lorg/bouncycastle/asn1/x509/zta;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/oif;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/L;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/bouncycastle/asn1/dma/zgw;->ita:Lorg/bouncycastle/asn1/x509/zta;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/L;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/dma/zgw;->jta:Lorg/bouncycastle/asn1/x509/zta;

    sget-object v3, Lorg/bouncycastle/asn1/dma/zgw;->mta:Lorg/bouncycastle/asn1/x509/zta;

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/oif;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/L;

    iget-object v3, p0, Lorg/bouncycastle/asn1/dma/zgw;->jta:Lorg/bouncycastle/asn1/x509/zta;

    invoke-direct {v1, v2, v2, v3}, Lorg/bouncycastle/asn1/L;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/dma/zgw;->kta:Lorg/bouncycastle/asn1/x509/zta;

    sget-object v3, Lorg/bouncycastle/asn1/dma/zgw;->nta:Lorg/bouncycastle/asn1/x509/zta;

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/oif;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lorg/bouncycastle/asn1/L;

    const/4 v3, 0x2

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/zgw;->kta:Lorg/bouncycastle/asn1/x509/zta;

    invoke-direct {v1, v2, v3, p0}, Lorg/bouncycastle/asn1/L;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_2
    new-instance p0, Lorg/bouncycastle/asn1/G;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    return-object p0
.end method

.method public yh()Lorg/bouncycastle/asn1/x509/zta;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/zgw;->ita:Lorg/bouncycastle/asn1/x509/zta;

    return-object p0
.end method

.method public zh()Lorg/bouncycastle/asn1/x509/zta;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/dma/zgw;->jta:Lorg/bouncycastle/asn1/x509/zta;

    return-object p0
.end method
