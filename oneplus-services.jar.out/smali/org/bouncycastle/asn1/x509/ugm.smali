.class public Lorg/bouncycastle/asn1/x509/ugm;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# instance fields
.field private extensions:Ljava/util/Hashtable;

.field private ordering:Ljava/util/Vector;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/ugm;->extensions:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/ugm;->ordering:Ljava/util/Vector;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->Fg()Ljava/util/Enumeration;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/gwm;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/gwm;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/ugm;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/gwm;->Sh()Lorg/bouncycastle/asn1/bvj;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/ugm;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/gwm;->Sh()Lorg/bouncycastle/asn1/bvj;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/ugm;->ordering:Ljava/util/Vector;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/gwm;->Sh()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "repeated extension found: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/gwm;->Sh()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/gwm;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/ugm;->extensions:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/ugm;->ordering:Ljava/util/Vector;

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/ugm;->ordering:Ljava/util/Vector;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/gwm;->Sh()Lorg/bouncycastle/asn1/bvj;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/ugm;->extensions:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/gwm;->Sh()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/x509/gwm;)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/ugm;->extensions:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/ugm;->ordering:Ljava/util/Vector;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    aget-object v1, p1, v0

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/ugm;->ordering:Ljava/util/Vector;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/gwm;->Sh()Lorg/bouncycastle/asn1/bvj;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/ugm;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/gwm;->Sh()Lorg/bouncycastle/asn1/bvj;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private _a(Z)[Lorg/bouncycastle/asn1/bvj;
    .locals 4

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/ugm;->ordering:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/ugm;->ordering:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/ugm;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/x509/gwm;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/gwm;->isCritical()Z

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/x509/ugm;->you(Ljava/util/Vector;)[Lorg/bouncycastle/asn1/bvj;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/ugm;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/ugm;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/x509/ugm;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x509/ugm;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/ugm;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private you(Ljava/util/Vector;)[Lorg/bouncycastle/asn1/bvj;
    .locals 2

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p0

    new-array p0, p0, [Lorg/bouncycastle/asn1/bvj;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/bvj;

    aput-object v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/x509/ugm;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/obl;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/ugm;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/ugm;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public Vh()[Lorg/bouncycastle/asn1/bvj;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/ugm;->ordering:Ljava/util/Vector;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/x509/ugm;->you(Ljava/util/Vector;)[Lorg/bouncycastle/asn1/bvj;

    move-result-object p0

    return-object p0
.end method

.method public Wh()Ljava/util/Enumeration;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/ugm;->ordering:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public cno(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/ssp;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/x509/ugm;->ssp(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/x509/gwm;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/gwm;->Uh()Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCriticalExtensionOIDs()[Lorg/bouncycastle/asn1/bvj;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/x509/ugm;->_a(Z)[Lorg/bouncycastle/asn1/bvj;

    move-result-object p0

    return-object p0
.end method

.method public getNonCriticalExtensionOIDs()[Lorg/bouncycastle/asn1/bvj;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/x509/ugm;->_a(Z)[Lorg/bouncycastle/asn1/bvj;

    move-result-object p0

    return-object p0
.end method

.method public ssp(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/x509/gwm;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/ugm;->extensions:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/x509/gwm;

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/ugm;->ordering:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/bvj;

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/ugm;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/x509/gwm;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/bouncycastle/asn1/G;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    return-object p0
.end method

.method public you(Lorg/bouncycastle/asn1/x509/ugm;)Z
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/ugm;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    iget-object v1, p1, Lorg/bouncycastle/asn1/x509/ugm;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/ugm;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/ugm;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p1, Lorg/bouncycastle/asn1/x509/ugm;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
