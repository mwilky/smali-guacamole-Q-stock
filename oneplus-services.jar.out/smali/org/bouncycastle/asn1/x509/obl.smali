.class public Lorg/bouncycastle/asn1/x509/obl;
.super Lorg/bouncycastle/asn1/oif;
.source ""


# instance fields
.field private final tsa:[Lorg/bouncycastle/asn1/x509/zgw;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/x509/zgw;

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/obl;->tsa:[Lorg/bouncycastle/asn1/x509/zgw;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/obl;->tsa:[Lorg/bouncycastle/asn1/x509/zgw;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/zgw;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/zgw;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/zgw;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bouncycastle/asn1/x509/zgw;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/obl;->tsa:[Lorg/bouncycastle/asn1/x509/zgw;

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/x509/zgw;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/x509/obl;->zta([Lorg/bouncycastle/asn1/x509/zgw;)[Lorg/bouncycastle/asn1/x509/zgw;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/obl;->tsa:[Lorg/bouncycastle/asn1/x509/zgw;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/obl;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/obl;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/x509/obl;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x509/obl;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/obl;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/x509/obl;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/obl;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/obl;

    move-result-object p0

    return-object p0
.end method

.method public static zta(Lorg/bouncycastle/asn1/x509/ugm;Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/x509/obl;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/x509/ugm;->cno(Lorg/bouncycastle/asn1/bvj;)Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/obl;

    move-result-object p0

    return-object p0
.end method

.method private zta([Lorg/bouncycastle/asn1/x509/zgw;)[Lorg/bouncycastle/asn1/x509/zgw;
    .locals 2

    array-length p0, p1

    new-array p0, p0, [Lorg/bouncycastle/asn1/x509/zgw;

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method


# virtual methods
.method public getNames()[Lorg/bouncycastle/asn1/x509/zgw;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/obl;->tsa:[Lorg/bouncycastle/asn1/x509/zgw;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/x509/obl;->zta([Lorg/bouncycastle/asn1/x509/zgw;)[Lorg/bouncycastle/asn1/x509/zgw;

    move-result-object p0

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/G;

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/obl;->tsa:[Lorg/bouncycastle/asn1/x509/zgw;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/G;-><init>([Lorg/bouncycastle/asn1/ssp;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lorg/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GeneralNames:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/obl;->tsa:[Lorg/bouncycastle/asn1/x509/zgw;

    array-length v3, v3

    if-eq v2, v3, :cond_0

    const-string v3, "    "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/obl;->tsa:[Lorg/bouncycastle/asn1/x509/zgw;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
