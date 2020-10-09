.class public Lorg/bouncycastle/asn1/you/you;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private attributes:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/you/you;->attributes:Ljava/util/Hashtable;

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/you/you;->zta(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/you/you;->attributes:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cno;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/you/you;->attributes:Ljava/util/Hashtable;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cno;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/cno;->get(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/you/zta;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/you/zta;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/you/zta;->Xg()Lorg/bouncycastle/asn1/bvj;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lorg/bouncycastle/asn1/you/you;->zta(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/you/zta;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ear;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/you/you;->attributes:Ljava/util/Hashtable;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ear;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ear;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/you/zta;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/you/zta;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/you/zta;->Xg()Lorg/bouncycastle/asn1/bvj;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lorg/bouncycastle/asn1/you/you;->zta(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/you/zta;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/you/sis;)V
    .locals 0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/you/sis;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ear;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ear;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/you/you;-><init>(Lorg/bouncycastle/asn1/ear;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/you/zta;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/you/you;->attributes:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/you/zta;->Xg()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/asn1/you/you;->zta(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/you/zta;)V

    return-void
.end method

.method private zta(Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 3

    new-instance p0, Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private zta(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/you/zta;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/you/you;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/bouncycastle/asn1/you/you;->attributes:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    instance-of v1, v0, Lorg/bouncycastle/asn1/you/zta;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/util/Vector;

    :goto_0
    invoke-virtual {v1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/bouncycastle/asn1/you/you;->attributes:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method


# virtual methods
.method public bio(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/you/zta;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/you/you;->attributes:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/util/Vector;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/util/Vector;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/you/zta;

    return-object p0

    :cond_0
    check-cast p0, Lorg/bouncycastle/asn1/you/zta;

    return-object p0
.end method

.method public dj()Lorg/bouncycastle/asn1/cno;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    iget-object p0, p0, Lorg/bouncycastle/asn1/you/you;->attributes:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/util/Vector;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/you/zta;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/you/zta;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lorg/bouncycastle/asn1/you/zta;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/you/zta;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public ej()Lorg/bouncycastle/asn1/you/sis;
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/you/sis;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/you/you;->dj()Lorg/bouncycastle/asn1/cno;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/you/sis;-><init>(Lorg/bouncycastle/asn1/cno;)V

    return-object v0
.end method

.method public fj()Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/you/you;->attributes:Ljava/util/Hashtable;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/you/you;->zta(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object p0

    return-object p0
.end method

.method public igw(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/cno;
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    iget-object p0, p0, Lorg/bouncycastle/asn1/you/you;->attributes:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/util/Vector;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/you/zta;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    check-cast p0, Lorg/bouncycastle/asn1/you/zta;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_1
    return-object v0
.end method

.method public size()I
    .locals 3

    iget-object p0, p0, Lorg/bouncycastle/asn1/you/you;->attributes:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/util/Vector;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public wtn(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/you/you;
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/you/you;

    iget-object p0, p0, Lorg/bouncycastle/asn1/you/you;->attributes:Ljava/util/Hashtable;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/you/you;-><init>(Ljava/util/Hashtable;)V

    iget-object p0, v0, Lorg/bouncycastle/asn1/you/you;->attributes:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public you(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ssp;)Lorg/bouncycastle/asn1/you/you;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/you/you;

    iget-object p0, p0, Lorg/bouncycastle/asn1/you/you;->attributes:Ljava/util/Hashtable;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/you/you;-><init>(Ljava/util/Hashtable;)V

    new-instance p0, Lorg/bouncycastle/asn1/you/zta;

    new-instance v1, Lorg/bouncycastle/asn1/I;

    invoke-direct {v1, p2}, Lorg/bouncycastle/asn1/I;-><init>(Lorg/bouncycastle/asn1/ssp;)V

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/asn1/you/zta;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ear;)V

    invoke-direct {v0, p1, p0}, Lorg/bouncycastle/asn1/you/you;->zta(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/you/zta;)V

    return-object v0
.end method
