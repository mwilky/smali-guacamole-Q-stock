.class public Lorg/bouncycastle/asn1/bvj/rtg;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private Dta:Ljava/util/Vector;

.field private template:Lorg/bouncycastle/asn1/bvj/ssp;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/bvj/zta/sis;->INSTANCE:Lorg/bouncycastle/asn1/bvj/ssp;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/bvj/rtg;-><init>(Lorg/bouncycastle/asn1/bvj/ssp;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/bvj/ssp;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/bvj/rtg;->Dta:Ljava/util/Vector;

    iput-object p1, p0, Lorg/bouncycastle/asn1/bvj/rtg;->template:Lorg/bouncycastle/asn1/bvj/ssp;

    return-void
.end method


# virtual methods
.method public build()Lorg/bouncycastle/asn1/bvj/tsu;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/asn1/bvj/rtg;->Dta:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/bvj/sis;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/asn1/bvj/rtg;->Dta:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/bvj/sis;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/bvj/tsu;

    iget-object p0, p0, Lorg/bouncycastle/asn1/bvj/rtg;->template:Lorg/bouncycastle/asn1/bvj/ssp;

    invoke-direct {v1, p0, v0}, Lorg/bouncycastle/asn1/bvj/tsu;-><init>(Lorg/bouncycastle/asn1/bvj/ssp;[Lorg/bouncycastle/asn1/bvj/sis;)V

    return-object v1
.end method

.method public sis(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)Lorg/bouncycastle/asn1/bvj/rtg;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/bvj/rtg;->Dta:Ljava/util/Vector;

    new-instance v1, Lorg/bouncycastle/asn1/bvj/sis;

    invoke-direct {v1, p1, p2}, Lorg/bouncycastle/asn1/bvj/sis;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object p0
.end method

.method public you(Lorg/bouncycastle/asn1/bvj;Ljava/lang/String;)Lorg/bouncycastle/asn1/bvj/rtg;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/bvj/rtg;->template:Lorg/bouncycastle/asn1/bvj/ssp;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/asn1/bvj/ssp;->zta(Lorg/bouncycastle/asn1/bvj;Ljava/lang/String;)Lorg/bouncycastle/asn1/ssp;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/asn1/bvj/rtg;->sis(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)Lorg/bouncycastle/asn1/bvj/rtg;

    return-object p0
.end method

.method public zta(Lorg/bouncycastle/asn1/bvj/zta;)Lorg/bouncycastle/asn1/bvj/rtg;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/bvj/rtg;->Dta:Ljava/util/Vector;

    new-instance v1, Lorg/bouncycastle/asn1/bvj/sis;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/bvj/sis;-><init>(Lorg/bouncycastle/asn1/bvj/zta;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object p0
.end method

.method public zta([Lorg/bouncycastle/asn1/bvj/zta;)Lorg/bouncycastle/asn1/bvj/rtg;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/bvj/rtg;->Dta:Ljava/util/Vector;

    new-instance v1, Lorg/bouncycastle/asn1/bvj/sis;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/bvj/sis;-><init>([Lorg/bouncycastle/asn1/bvj/zta;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object p0
.end method

.method public zta([Lorg/bouncycastle/asn1/bvj;[Ljava/lang/String;)Lorg/bouncycastle/asn1/bvj/rtg;
    .locals 5

    array-length v0, p2

    new-array v0, v0, [Lorg/bouncycastle/asn1/ssp;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/asn1/bvj/rtg;->template:Lorg/bouncycastle/asn1/bvj/ssp;

    aget-object v3, p1, v1

    aget-object v4, p2, v1

    invoke-interface {v2, v3, v4}, Lorg/bouncycastle/asn1/bvj/ssp;->zta(Lorg/bouncycastle/asn1/bvj;Ljava/lang/String;)Lorg/bouncycastle/asn1/ssp;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/asn1/bvj/rtg;->zta([Lorg/bouncycastle/asn1/bvj;[Lorg/bouncycastle/asn1/ssp;)Lorg/bouncycastle/asn1/bvj/rtg;

    move-result-object p0

    return-object p0
.end method

.method public zta([Lorg/bouncycastle/asn1/bvj;[Lorg/bouncycastle/asn1/ssp;)Lorg/bouncycastle/asn1/bvj/rtg;
    .locals 5

    array-length v0, p1

    new-array v0, v0, [Lorg/bouncycastle/asn1/bvj/zta;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_0

    new-instance v2, Lorg/bouncycastle/asn1/bvj/zta;

    aget-object v3, p1, v1

    aget-object v4, p2, v1

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/bvj/zta;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/bvj/rtg;->zta([Lorg/bouncycastle/asn1/bvj/zta;)Lorg/bouncycastle/asn1/bvj/rtg;

    move-result-object p0

    return-object p0
.end method
