.class public Lorg/bouncycastle/asn1/x509/ibl;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# instance fields
.field aua:Ljava/util/Hashtable;

.field seq:Lorg/bouncycastle/asn1/obl;


# direct methods
.method public constructor <init>(Ljava/util/Vector;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/ibl;->aua:Ljava/util/Hashtable;

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    invoke-virtual {p1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/hmo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/hmo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/ibl;->aua:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/asn1/G;

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/ibl;->seq:Lorg/bouncycastle/asn1/obl;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/ibl;->aua:Ljava/util/Hashtable;

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/ibl;->seq:Lorg/bouncycastle/asn1/obl;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->Rg()Ljava/util/Enumeration;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ssp;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/bvj;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/ibl;->aua:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only ASN1ObjectIdentifiers allowed in ExtendedKeyUsage."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/hmo;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/ibl;->aua:Ljava/util/Hashtable;

    new-instance v0, Lorg/bouncycastle/asn1/G;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/ssp;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/ibl;->seq:Lorg/bouncycastle/asn1/obl;

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/ibl;->aua:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/x509/hmo;)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/ibl;->aua:Ljava/util/Hashtable;

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/ibl;->aua:Ljava/util/Hashtable;

    aget-object v3, p1, v1

    aget-object v4, p1, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/asn1/G;

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/ibl;->seq:Lorg/bouncycastle/asn1/obl;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/ibl;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/ibl;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/x509/ibl;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x509/ibl;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/ibl;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/x509/ibl;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/obl;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/ibl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/ibl;

    move-result-object p0

    return-object p0
.end method

.method public static zta(Lorg/bouncycastle/asn1/x509/ugm;)Lorg/bouncycastle/asn1/x509/ibl;
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/x509/gwm;->qua:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/x509/ugm;->cno(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/ibl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/ibl;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public ci()[Lorg/bouncycastle/asn1/x509/hmo;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/ibl;->seq:Lorg/bouncycastle/asn1/obl;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/x509/hmo;

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/ibl;->seq:Lorg/bouncycastle/asn1/obl;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/obl;->Rg()Ljava/util/Enumeration;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/hmo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/hmo;

    move-result-object v3

    aput-object v3, v0, v1

    move v1, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/ibl;->aua:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->size()I

    move-result p0

    return p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/ibl;->seq:Lorg/bouncycastle/asn1/obl;

    return-object p0
.end method

.method public zta(Lorg/bouncycastle/asn1/x509/hmo;)Z
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/ibl;->aua:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
