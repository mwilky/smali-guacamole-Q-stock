.class public Lorg/bouncycastle/asn1/x509/ire;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# instance fields
.field private Era:Z

.field private Fra:Z

.field private Gra:Lorg/bouncycastle/asn1/x509/a;

.field private Hra:Z

.field private Ira:Z

.field private Jqa:Lorg/bouncycastle/asn1/x509/bvj;

.field private seq:Lorg/bouncycastle/asn1/obl;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/ire;->seq:Lorg/bouncycastle/asn1/obl;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v2

    if-eq v1, v2, :cond_6

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/lqr;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/lqr;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/lqr;->getTagNo()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    invoke-static {v2, v0}, Lorg/bouncycastle/asn1/tsu;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/tsu;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/tsu;->vg()Z

    move-result v2

    iput-boolean v2, p0, Lorg/bouncycastle/asn1/x509/ire;->Ira:Z

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown tag in IssuingDistributionPoint"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {v2, v0}, Lorg/bouncycastle/asn1/tsu;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/tsu;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/tsu;->vg()Z

    move-result v2

    iput-boolean v2, p0, Lorg/bouncycastle/asn1/x509/ire;->Hra:Z

    goto :goto_1

    :cond_2
    new-instance v3, Lorg/bouncycastle/asn1/x509/a;

    invoke-static {v2, v0}, Lorg/bouncycastle/asn1/n;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/n;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/bouncycastle/asn1/x509/a;-><init>(Lorg/bouncycastle/asn1/n;)V

    iput-object v3, p0, Lorg/bouncycastle/asn1/x509/ire;->Gra:Lorg/bouncycastle/asn1/x509/a;

    goto :goto_1

    :cond_3
    invoke-static {v2, v0}, Lorg/bouncycastle/asn1/tsu;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/tsu;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/tsu;->vg()Z

    move-result v2

    iput-boolean v2, p0, Lorg/bouncycastle/asn1/x509/ire;->Fra:Z

    goto :goto_1

    :cond_4
    invoke-static {v2, v0}, Lorg/bouncycastle/asn1/tsu;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/tsu;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/tsu;->vg()Z

    move-result v2

    iput-boolean v2, p0, Lorg/bouncycastle/asn1/x509/ire;->Era:Z

    goto :goto_1

    :cond_5
    invoke-static {v2, v4}, Lorg/bouncycastle/asn1/x509/bvj;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/x509/bvj;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/ire;->Jqa:Lorg/bouncycastle/asn1/x509/bvj;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/bvj;ZZ)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/asn1/x509/ire;-><init>(Lorg/bouncycastle/asn1/x509/bvj;ZZLorg/bouncycastle/asn1/x509/a;ZZ)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/bvj;ZZLorg/bouncycastle/asn1/x509/a;ZZ)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/ire;->Jqa:Lorg/bouncycastle/asn1/x509/bvj;

    iput-boolean p5, p0, Lorg/bouncycastle/asn1/x509/ire;->Hra:Z

    iput-boolean p6, p0, Lorg/bouncycastle/asn1/x509/ire;->Ira:Z

    iput-boolean p3, p0, Lorg/bouncycastle/asn1/x509/ire;->Fra:Z

    iput-boolean p2, p0, Lorg/bouncycastle/asn1/x509/ire;->Era:Z

    iput-object p4, p0, Lorg/bouncycastle/asn1/x509/ire;->Gra:Lorg/bouncycastle/asn1/x509/a;

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    new-instance v3, Lorg/bouncycastle/asn1/L;

    invoke-direct {v3, v2, v1, p1}, Lorg/bouncycastle/asn1/L;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_0
    if-eqz p2, :cond_1

    new-instance p1, Lorg/bouncycastle/asn1/L;

    invoke-static {v2}, Lorg/bouncycastle/asn1/tsu;->getInstance(Z)Lorg/bouncycastle/asn1/tsu;

    move-result-object p2

    invoke-direct {p1, v1, v2, p2}, Lorg/bouncycastle/asn1/L;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_1
    if-eqz p3, :cond_2

    new-instance p1, Lorg/bouncycastle/asn1/L;

    const/4 p2, 0x2

    invoke-static {v2}, Lorg/bouncycastle/asn1/tsu;->getInstance(Z)Lorg/bouncycastle/asn1/tsu;

    move-result-object p3

    invoke-direct {p1, v1, p2, p3}, Lorg/bouncycastle/asn1/L;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_2
    if-eqz p4, :cond_3

    new-instance p1, Lorg/bouncycastle/asn1/L;

    const/4 p2, 0x3

    invoke-direct {p1, v1, p2, p4}, Lorg/bouncycastle/asn1/L;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_3
    if-eqz p5, :cond_4

    new-instance p1, Lorg/bouncycastle/asn1/L;

    const/4 p2, 0x4

    invoke-static {v2}, Lorg/bouncycastle/asn1/tsu;->getInstance(Z)Lorg/bouncycastle/asn1/tsu;

    move-result-object p3

    invoke-direct {p1, v1, p2, p3}, Lorg/bouncycastle/asn1/L;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_4
    if-eqz p6, :cond_5

    new-instance p1, Lorg/bouncycastle/asn1/L;

    const/4 p2, 0x5

    invoke-static {v2}, Lorg/bouncycastle/asn1/tsu;->getInstance(Z)Lorg/bouncycastle/asn1/tsu;

    move-result-object p3

    invoke-direct {p1, v1, p2, p3}, Lorg/bouncycastle/asn1/L;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    :cond_5
    new-instance p1, Lorg/bouncycastle/asn1/G;

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/G;-><init>(Lorg/bouncycastle/asn1/cno;)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/ire;->seq:Lorg/bouncycastle/asn1/obl;

    return-void
.end method

.method private ab(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const-string p0, "true"

    goto :goto_0

    :cond_0
    const-string p0, "false"

    :goto_0
    return-object p0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/ire;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/ire;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/x509/ire;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x509/ire;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/ire;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/x509/ire;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/obl;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/ire;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/ire;

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
.method public Ph()Lorg/bouncycastle/asn1/x509/bvj;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/ire;->Jqa:Lorg/bouncycastle/asn1/x509/bvj;

    return-object p0
.end method

.method public ai()Lorg/bouncycastle/asn1/x509/a;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/ire;->Gra:Lorg/bouncycastle/asn1/x509/a;

    return-object p0
.end method

.method public bi()Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/asn1/x509/ire;->Hra:Z

    return p0
.end method

.method public ci()Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/asn1/x509/ire;->Ira:Z

    return p0
.end method

.method public di()Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/asn1/x509/ire;->Fra:Z

    return p0
.end method

.method public ei()Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/asn1/x509/ire;->Era:Z

    return p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/ire;->seq:Lorg/bouncycastle/asn1/obl;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lorg/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "IssuingDistributionPoint: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/ire;->Jqa:Lorg/bouncycastle/asn1/x509/bvj;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/bvj;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "distributionPoint"

    invoke-direct {p0, v1, v0, v3, v2}, Lorg/bouncycastle/asn1/x509/ire;->zta(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-boolean v2, p0, Lorg/bouncycastle/asn1/x509/ire;->Era:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, v2}, Lorg/bouncycastle/asn1/x509/ire;->ab(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onlyContainsUserCerts"

    invoke-direct {p0, v1, v0, v3, v2}, Lorg/bouncycastle/asn1/x509/ire;->zta(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-boolean v2, p0, Lorg/bouncycastle/asn1/x509/ire;->Fra:Z

    if-eqz v2, :cond_2

    invoke-direct {p0, v2}, Lorg/bouncycastle/asn1/x509/ire;->ab(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onlyContainsCACerts"

    invoke-direct {p0, v1, v0, v3, v2}, Lorg/bouncycastle/asn1/x509/ire;->zta(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/ire;->Gra:Lorg/bouncycastle/asn1/x509/a;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/sis;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onlySomeReasons"

    invoke-direct {p0, v1, v0, v3, v2}, Lorg/bouncycastle/asn1/x509/ire;->zta(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-boolean v2, p0, Lorg/bouncycastle/asn1/x509/ire;->Ira:Z

    if-eqz v2, :cond_4

    invoke-direct {p0, v2}, Lorg/bouncycastle/asn1/x509/ire;->ab(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onlyContainsAttributeCerts"

    invoke-direct {p0, v1, v0, v3, v2}, Lorg/bouncycastle/asn1/x509/ire;->zta(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-boolean v2, p0, Lorg/bouncycastle/asn1/x509/ire;->Hra:Z

    if-eqz v2, :cond_5

    invoke-direct {p0, v2}, Lorg/bouncycastle/asn1/x509/ire;->ab(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "indirectCRL"

    invoke-direct {p0, v1, v0, v3, v2}, Lorg/bouncycastle/asn1/x509/ire;->zta(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
