.class public Lorg/bouncycastle/asn1/x509/oif;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# instance fields
.field Wta:Lorg/bouncycastle/asn1/x509/bvj;

.field Xta:Lorg/bouncycastle/asn1/x509/a;

.field Yta:Lorg/bouncycastle/asn1/x509/obl;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v2

    if-eq v1, v2, :cond_3

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/lqr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/lqr;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/lqr;->getTagNo()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-static {v2, v0}, Lorg/bouncycastle/asn1/x509/obl;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/x509/obl;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/oif;->Yta:Lorg/bouncycastle/asn1/x509/obl;

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown tag encountered in structure: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/lqr;->getTagNo()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v3, Lorg/bouncycastle/asn1/x509/a;

    invoke-static {v2, v0}, Lorg/bouncycastle/asn1/n;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/n;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/bouncycastle/asn1/x509/a;-><init>(Lorg/bouncycastle/asn1/n;)V

    iput-object v3, p0, Lorg/bouncycastle/asn1/x509/oif;->Xta:Lorg/bouncycastle/asn1/x509/a;

    goto :goto_1

    :cond_2
    invoke-static {v2, v4}, Lorg/bouncycastle/asn1/x509/bvj;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/x509/bvj;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/oif;->Wta:Lorg/bouncycastle/asn1/x509/bvj;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/bvj;Lorg/bouncycastle/asn1/x509/a;Lorg/bouncycastle/asn1/x509/obl;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/oif;->Wta:Lorg/bouncycastle/asn1/x509/bvj;

    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/oif;->Xta:Lorg/bouncycastle/asn1/x509/a;

    iput-object p3, p0, Lorg/bouncycastle/asn1/x509/oif;->Yta:Lorg/bouncycastle/asn1/x509/obl;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/oif;
    .locals 3

    if-eqz p0, :cond_2

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/oif;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/obl;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x509/oif;

    check-cast p0, Lorg/bouncycastle/asn1/obl;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/oif;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid DistributionPoint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    check-cast p0, Lorg/bouncycastle/asn1/x509/oif;

    return-object p0
.end method

.method public static zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/x509/oif;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/obl;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/oif;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/oif;

    move-result-object p0

    return-object p0
.end method

.method private zta(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p0, "    "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, ":"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public _h()Lorg/bouncycastle/asn1/x509/obl;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/oif;->Yta:Lorg/bouncycastle/asn1/x509/obl;

    return-object p0
.end method

.method public ai()Lorg/bouncycastle/asn1/x509/bvj;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/oif;->Wta:Lorg/bouncycastle/asn1/x509/bvj;

    return-object p0
.end method

.method public bi()Lorg/bouncycastle/asn1/x509/a;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/oif;->Xta:Lorg/bouncycastle/asn1/x509/a;

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 5

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/oif;->Wta:Lorg/bouncycastle/asn1/x509/bvj;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v3, Lorg/bouncycastle/asn1/L;

    invoke-direct {v3, v2, v1}, Lorg/bouncycastle/asn1/L;-><init>(ILorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/oif;->Xta:Lorg/bouncycastle/asn1/x509/a;

    if-eqz v1, :cond_1

    new-instance v3, Lorg/bouncycastle/asn1/L;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4, v1}, Lorg/bouncycastle/asn1/L;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_1
    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/oif;->Yta:Lorg/bouncycastle/asn1/x509/obl;

    if-eqz p0, :cond_2

    new-instance v1, Lorg/bouncycastle/asn1/L;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, p0}, Lorg/bouncycastle/asn1/L;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_2
    new-instance p0, Lorg/bouncycastle/asn1/G;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lorg/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "DistributionPoint: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/oif;->Wta:Lorg/bouncycastle/asn1/x509/bvj;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/bvj;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "distributionPoint"

    invoke-direct {p0, v1, v0, v3, v2}, Lorg/bouncycastle/asn1/x509/oif;->zta(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/oif;->Xta:Lorg/bouncycastle/asn1/x509/a;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/sis;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "reasons"

    invoke-direct {p0, v1, v0, v3, v2}, Lorg/bouncycastle/asn1/x509/oif;->zta(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/oif;->Yta:Lorg/bouncycastle/asn1/x509/obl;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/obl;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cRLIssuer"

    invoke-direct {p0, v1, v0, v3, v2}, Lorg/bouncycastle/asn1/x509/oif;->zta(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
