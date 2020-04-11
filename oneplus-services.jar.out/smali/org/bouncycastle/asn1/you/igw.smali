.class public Lorg/bouncycastle/asn1/you/igw;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# static fields
.field private static final VERSION_1:Lorg/bouncycastle/asn1/ywr;

.field private static final rqa:Lorg/bouncycastle/asn1/ywr;

.field private static final sqa:Lorg/bouncycastle/asn1/ywr;

.field private static final tqa:Lorg/bouncycastle/asn1/ywr;


# instance fields
.field private certificates:Lorg/bouncycastle/asn1/ear;

.field private lqa:Lorg/bouncycastle/asn1/ear;

.field private mqa:Lorg/bouncycastle/asn1/you/cno;

.field private nqa:Lorg/bouncycastle/asn1/ear;

.field private oqa:Lorg/bouncycastle/asn1/ear;

.field private pqa:Z

.field private qqa:Z

.field private version:Lorg/bouncycastle/asn1/ywr;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/ywr;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ywr;-><init>(J)V

    sput-object v0, Lorg/bouncycastle/asn1/you/igw;->VERSION_1:Lorg/bouncycastle/asn1/ywr;

    new-instance v0, Lorg/bouncycastle/asn1/ywr;

    const-wide/16 v1, 0x3

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ywr;-><init>(J)V

    sput-object v0, Lorg/bouncycastle/asn1/you/igw;->rqa:Lorg/bouncycastle/asn1/ywr;

    new-instance v0, Lorg/bouncycastle/asn1/ywr;

    const-wide/16 v1, 0x4

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ywr;-><init>(J)V

    sput-object v0, Lorg/bouncycastle/asn1/you/igw;->sqa:Lorg/bouncycastle/asn1/ywr;

    new-instance v0, Lorg/bouncycastle/asn1/ywr;

    const-wide/16 v1, 0x5

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ywr;-><init>(J)V

    sput-object v0, Lorg/bouncycastle/asn1/you/igw;->tqa:Lorg/bouncycastle/asn1/ywr;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ear;Lorg/bouncycastle/asn1/you/cno;Lorg/bouncycastle/asn1/ear;Lorg/bouncycastle/asn1/ear;Lorg/bouncycastle/asn1/ear;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/you/cno;->getContentType()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4, p5}, Lorg/bouncycastle/asn1/you/igw;->zta(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ear;Lorg/bouncycastle/asn1/ear;Lorg/bouncycastle/asn1/ear;)Lorg/bouncycastle/asn1/ywr;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/you/igw;->version:Lorg/bouncycastle/asn1/ywr;

    iput-object p1, p0, Lorg/bouncycastle/asn1/you/igw;->lqa:Lorg/bouncycastle/asn1/ear;

    iput-object p2, p0, Lorg/bouncycastle/asn1/you/igw;->mqa:Lorg/bouncycastle/asn1/you/cno;

    iput-object p3, p0, Lorg/bouncycastle/asn1/you/igw;->certificates:Lorg/bouncycastle/asn1/ear;

    iput-object p4, p0, Lorg/bouncycastle/asn1/you/igw;->nqa:Lorg/bouncycastle/asn1/ear;

    iput-object p5, p0, Lorg/bouncycastle/asn1/you/igw;->oqa:Lorg/bouncycastle/asn1/ear;

    instance-of p1, p4, Lorg/bouncycastle/asn1/f;

    iput-boolean p1, p0, Lorg/bouncycastle/asn1/you/igw;->qqa:Z

    instance-of p1, p3, Lorg/bouncycastle/asn1/f;

    iput-boolean p1, p0, Lorg/bouncycastle/asn1/you/igw;->pqa:Z

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->Jg()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ywr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ywr;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/you/igw;->version:Lorg/bouncycastle/asn1/ywr;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ear;

    iput-object v0, p0, Lorg/bouncycastle/asn1/you/igw;->lqa:Lorg/bouncycastle/asn1/ear;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/you/cno;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/you/cno;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/you/igw;->mqa:Lorg/bouncycastle/asn1/you/cno;

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/vdb;

    instance-of v1, v0, Lorg/bouncycastle/asn1/lqr;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/bouncycastle/asn1/lqr;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/lqr;->getTagNo()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    instance-of v1, v0, Lorg/bouncycastle/asn1/h;

    iput-boolean v1, p0, Lorg/bouncycastle/asn1/you/igw;->qqa:Z

    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/ear;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/ear;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/you/igw;->nqa:Lorg/bouncycastle/asn1/ear;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown tag value "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/lqr;->getTagNo()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    instance-of v1, v0, Lorg/bouncycastle/asn1/h;

    iput-boolean v1, p0, Lorg/bouncycastle/asn1/you/igw;->pqa:Z

    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/ear;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/ear;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/you/igw;->certificates:Lorg/bouncycastle/asn1/ear;

    goto :goto_0

    :cond_2
    check-cast v0, Lorg/bouncycastle/asn1/ear;

    iput-object v0, p0, Lorg/bouncycastle/asn1/you/igw;->oqa:Lorg/bouncycastle/asn1/ear;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/you/igw;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/you/igw;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/you/igw;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/you/igw;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/you/igw;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private zta(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ear;Lorg/bouncycastle/asn1/ear;Lorg/bouncycastle/asn1/ear;)Lorg/bouncycastle/asn1/ywr;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ear;->Jg()Ljava/util/Enumeration;

    move-result-object p2

    move v2, v0

    move v3, v2

    move v4, v3

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lorg/bouncycastle/asn1/lqr;

    if-eqz v6, :cond_0

    invoke-static {v5}, Lorg/bouncycastle/asn1/lqr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/lqr;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/lqr;->getTagNo()I

    move-result v6

    if-ne v6, v1, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/lqr;->getTagNo()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/lqr;->getTagNo()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    move v2, v1

    goto :goto_0

    :cond_3
    move v2, v0

    move v3, v2

    move v4, v3

    :cond_4
    if-eqz v2, :cond_5

    new-instance p0, Lorg/bouncycastle/asn1/ywr;

    const-wide/16 p1, 0x5

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/ywr;-><init>(J)V

    return-object p0

    :cond_5
    if-eqz p3, :cond_7

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/ear;->Jg()Ljava/util/Enumeration;

    move-result-object p2

    :cond_6
    :goto_1
    invoke-interface {p2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p3

    instance-of p3, p3, Lorg/bouncycastle/asn1/lqr;

    if-eqz p3, :cond_6

    move v0, v1

    goto :goto_1

    :cond_7
    if-eqz v0, :cond_8

    sget-object p0, Lorg/bouncycastle/asn1/you/igw;->tqa:Lorg/bouncycastle/asn1/ywr;

    return-object p0

    :cond_8
    if-eqz v4, :cond_9

    sget-object p0, Lorg/bouncycastle/asn1/you/igw;->sqa:Lorg/bouncycastle/asn1/ywr;

    return-object p0

    :cond_9
    if-eqz v3, :cond_a

    sget-object p0, Lorg/bouncycastle/asn1/you/igw;->rqa:Lorg/bouncycastle/asn1/ywr;

    return-object p0

    :cond_a
    invoke-direct {p0, p4}, Lorg/bouncycastle/asn1/you/igw;->zta(Lorg/bouncycastle/asn1/ear;)Z

    move-result p0

    if-eqz p0, :cond_b

    sget-object p0, Lorg/bouncycastle/asn1/you/igw;->rqa:Lorg/bouncycastle/asn1/ywr;

    return-object p0

    :cond_b
    sget-object p0, Lorg/bouncycastle/asn1/you/ssp;->data:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    sget-object p0, Lorg/bouncycastle/asn1/you/igw;->rqa:Lorg/bouncycastle/asn1/ywr;

    return-object p0

    :cond_c
    sget-object p0, Lorg/bouncycastle/asn1/you/igw;->VERSION_1:Lorg/bouncycastle/asn1/ywr;

    return-object p0
.end method

.method private zta(Lorg/bouncycastle/asn1/ear;)Z
    .locals 1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ear;->Jg()Ljava/util/Enumeration;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/you/gck;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/you/gck;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/you/gck;->getVersion()Lorg/bouncycastle/asn1/ywr;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ywr;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public Tg()Lorg/bouncycastle/asn1/ear;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/you/igw;->nqa:Lorg/bouncycastle/asn1/ear;

    return-object p0
.end method

.method public Ug()Lorg/bouncycastle/asn1/ear;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/you/igw;->lqa:Lorg/bouncycastle/asn1/ear;

    return-object p0
.end method

.method public Vg()Lorg/bouncycastle/asn1/you/cno;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/you/igw;->mqa:Lorg/bouncycastle/asn1/you/cno;

    return-object p0
.end method

.method public getCertificates()Lorg/bouncycastle/asn1/ear;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/you/igw;->certificates:Lorg/bouncycastle/asn1/ear;

    return-object p0
.end method

.method public getSignerInfos()Lorg/bouncycastle/asn1/ear;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/you/igw;->oqa:Lorg/bouncycastle/asn1/ear;

    return-object p0
.end method

.method public getVersion()Lorg/bouncycastle/asn1/ywr;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/you/igw;->version:Lorg/bouncycastle/asn1/ywr;

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 5

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/you/igw;->version:Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/you/igw;->lqa:Lorg/bouncycastle/asn1/ear;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/you/igw;->mqa:Lorg/bouncycastle/asn1/you/cno;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/you/igw;->certificates:Lorg/bouncycastle/asn1/ear;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-boolean v3, p0, Lorg/bouncycastle/asn1/you/igw;->pqa:Z

    if-eqz v3, :cond_0

    new-instance v3, Lorg/bouncycastle/asn1/h;

    invoke-direct {v3, v2, v2, v1}, Lorg/bouncycastle/asn1/h;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    goto :goto_0

    :cond_0
    new-instance v3, Lorg/bouncycastle/asn1/L;

    invoke-direct {v3, v2, v2, v1}, Lorg/bouncycastle/asn1/L;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    :goto_0
    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/you/igw;->nqa:Lorg/bouncycastle/asn1/ear;

    if-eqz v1, :cond_3

    iget-boolean v3, p0, Lorg/bouncycastle/asn1/you/igw;->qqa:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    new-instance v3, Lorg/bouncycastle/asn1/h;

    invoke-direct {v3, v2, v4, v1}, Lorg/bouncycastle/asn1/h;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    goto :goto_1

    :cond_2
    new-instance v3, Lorg/bouncycastle/asn1/L;

    invoke-direct {v3, v2, v4, v1}, Lorg/bouncycastle/asn1/L;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    :goto_1
    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_3
    iget-object p0, p0, Lorg/bouncycastle/asn1/you/igw;->oqa:Lorg/bouncycastle/asn1/ear;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    new-instance p0, Lorg/bouncycastle/asn1/d;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/d;-><init>(Lorg/bouncycastle/asn1/cno;)V

    return-object p0
.end method
