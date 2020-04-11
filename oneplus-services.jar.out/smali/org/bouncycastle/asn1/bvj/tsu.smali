.class public Lorg/bouncycastle/asn1/bvj/tsu;
.super Lorg/bouncycastle/asn1/oif;
.source ""

# interfaces
.implements Lorg/bouncycastle/asn1/rtg;


# static fields
.field private static pra:Lorg/bouncycastle/asn1/bvj/ssp;


# instance fields
.field private mra:Z

.field private nra:Lorg/bouncycastle/asn1/bvj/ssp;

.field private ora:[Lorg/bouncycastle/asn1/bvj/sis;

.field private xna:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/bvj/zta/sis;->INSTANCE:Lorg/bouncycastle/asn1/bvj/ssp;

    sput-object v0, Lorg/bouncycastle/asn1/bvj/tsu;->pra:Lorg/bouncycastle/asn1/bvj/ssp;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/bvj/tsu;->pra:Lorg/bouncycastle/asn1/bvj/ssp;

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/asn1/bvj/tsu;-><init>(Lorg/bouncycastle/asn1/bvj/ssp;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/bvj/ssp;Ljava/lang/String;)V
    .locals 0

    invoke-interface {p1, p2}, Lorg/bouncycastle/asn1/bvj/ssp;->fromString(Ljava/lang/String;)[Lorg/bouncycastle/asn1/bvj/sis;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/bouncycastle/asn1/bvj/tsu;-><init>([Lorg/bouncycastle/asn1/bvj/sis;)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/bvj/tsu;->nra:Lorg/bouncycastle/asn1/bvj/ssp;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/bvj/ssp;Lorg/bouncycastle/asn1/bvj/tsu;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    iget-object p2, p2, Lorg/bouncycastle/asn1/bvj/tsu;->ora:[Lorg/bouncycastle/asn1/bvj/sis;

    iput-object p2, p0, Lorg/bouncycastle/asn1/bvj/tsu;->ora:[Lorg/bouncycastle/asn1/bvj/sis;

    iput-object p1, p0, Lorg/bouncycastle/asn1/bvj/tsu;->nra:Lorg/bouncycastle/asn1/bvj/ssp;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/bvj/ssp;Lorg/bouncycastle/asn1/obl;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/bvj/tsu;->nra:Lorg/bouncycastle/asn1/bvj/ssp;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result p1

    new-array p1, p1, [Lorg/bouncycastle/asn1/bvj/sis;

    iput-object p1, p0, Lorg/bouncycastle/asn1/bvj/tsu;->ora:[Lorg/bouncycastle/asn1/bvj/sis;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/obl;->Jg()Ljava/util/Enumeration;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/bvj/tsu;->ora:[Lorg/bouncycastle/asn1/bvj/sis;

    add-int/lit8 v1, p2, 0x1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/bvj/sis;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bvj/sis;

    move-result-object v2

    aput-object v2, v0, p2

    move p2, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/bvj/ssp;[Lorg/bouncycastle/asn1/bvj/sis;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/oif;-><init>()V

    invoke-direct {p0, p2}, Lorg/bouncycastle/asn1/bvj/tsu;->zta([Lorg/bouncycastle/asn1/bvj/sis;)[Lorg/bouncycastle/asn1/bvj/sis;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/asn1/bvj/tsu;->ora:[Lorg/bouncycastle/asn1/bvj/sis;

    iput-object p1, p0, Lorg/bouncycastle/asn1/bvj/tsu;->nra:Lorg/bouncycastle/asn1/bvj/ssp;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/obl;)V
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/bvj/tsu;->pra:Lorg/bouncycastle/asn1/bvj/ssp;

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/asn1/bvj/tsu;-><init>(Lorg/bouncycastle/asn1/bvj/ssp;Lorg/bouncycastle/asn1/obl;)V

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/bvj/sis;)V
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/bvj/tsu;->pra:Lorg/bouncycastle/asn1/bvj/ssp;

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/asn1/bvj/tsu;-><init>(Lorg/bouncycastle/asn1/bvj/ssp;[Lorg/bouncycastle/asn1/bvj/sis;)V

    return-void
.end method

.method public static Dh()Lorg/bouncycastle/asn1/bvj/ssp;
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/bvj/tsu;->pra:Lorg/bouncycastle/asn1/bvj/ssp;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bvj/tsu;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/bvj/tsu;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/bvj/tsu;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/bvj/tsu;

    invoke-static {p0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/bvj/tsu;-><init>(Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zta(Lorg/bouncycastle/asn1/bvj/ssp;Ljava/lang/Object;)Lorg/bouncycastle/asn1/bvj/tsu;
    .locals 1

    instance-of v0, p1, Lorg/bouncycastle/asn1/bvj/tsu;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/bvj/tsu;

    check-cast p1, Lorg/bouncycastle/asn1/bvj/tsu;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/asn1/bvj/tsu;-><init>(Lorg/bouncycastle/asn1/bvj/ssp;Lorg/bouncycastle/asn1/bvj/tsu;)V

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/bvj/tsu;

    invoke-static {p1}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/asn1/bvj/tsu;-><init>(Lorg/bouncycastle/asn1/bvj/ssp;Lorg/bouncycastle/asn1/obl;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/bvj/tsu;
    .locals 0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/obl;->zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/bvj/tsu;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bvj/tsu;

    move-result-object p0

    return-object p0
.end method

.method public static zta(Lorg/bouncycastle/asn1/bvj/ssp;)V
    .locals 1

    if-eqz p0, :cond_0

    sput-object p0, Lorg/bouncycastle/asn1/bvj/tsu;->pra:Lorg/bouncycastle/asn1/bvj/ssp;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "cannot set style to null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private zta([Lorg/bouncycastle/asn1/bvj/sis;)[Lorg/bouncycastle/asn1/bvj/sis;
    .locals 2

    array-length p0, p1

    new-array p0, p0, [Lorg/bouncycastle/asn1/bvj/sis;

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method


# virtual methods
.method public Ch()[Lorg/bouncycastle/asn1/bvj;
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/asn1/bvj/tsu;->ora:[Lorg/bouncycastle/asn1/bvj/sis;

    array-length v4, v3

    if-eq v1, v4, :cond_0

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/bvj/sis;->size()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-array v1, v2, [Lorg/bouncycastle/asn1/bvj;

    move v2, v0

    move v3, v2

    :goto_1
    iget-object v4, p0, Lorg/bouncycastle/asn1/bvj/tsu;->ora:[Lorg/bouncycastle/asn1/bvj/sis;

    array-length v5, v4

    if-eq v2, v5, :cond_4

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/bvj/sis;->Bh()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/bvj/sis;->Ah()[Lorg/bouncycastle/asn1/bvj/zta;

    move-result-object v4

    move v5, v3

    move v3, v0

    :goto_2
    array-length v6, v4

    if-eq v3, v6, :cond_2

    add-int/lit8 v6, v5, 0x1

    aget-object v7, v4, v3

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/bvj/zta;->getType()Lorg/bouncycastle/asn1/bvj;

    move-result-object v7

    aput-object v7, v1, v5

    add-int/lit8 v3, v3, 0x1

    move v5, v6

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/bvj/sis;->size()I

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/bvj/sis;->getFirst()Lorg/bouncycastle/asn1/bvj/zta;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/bvj/zta;->getType()Lorg/bouncycastle/asn1/bvj;

    move-result-object v4

    aput-object v4, v1, v3

    :cond_2
    move v3, v5

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object v1
.end method

.method public Eh()[Lorg/bouncycastle/asn1/bvj/sis;
    .locals 3

    iget-object p0, p0, Lorg/bouncycastle/asn1/bvj/tsu;->ora:[Lorg/bouncycastle/asn1/bvj/sis;

    array-length v0, p0

    new-array v0, v0, [Lorg/bouncycastle/asn1/bvj/sis;

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/bouncycastle/asn1/bvj/tsu;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    instance-of v1, p1, Lorg/bouncycastle/asn1/obl;

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/asn1/ssp;

    invoke-interface {v1}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/bvj/tsu;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/bvj/tsu;->nra:Lorg/bouncycastle/asn1/bvj/ssp;

    new-instance v1, Lorg/bouncycastle/asn1/bvj/tsu;

    check-cast p1, Lorg/bouncycastle/asn1/ssp;

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/bvj/tsu;-><init>(Lorg/bouncycastle/asn1/obl;)V

    invoke-interface {v0, p0, v1}, Lorg/bouncycastle/asn1/bvj/ssp;->zta(Lorg/bouncycastle/asn1/bvj/tsu;Lorg/bouncycastle/asn1/bvj/tsu;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v2
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/bvj/tsu;->mra:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lorg/bouncycastle/asn1/bvj/tsu;->xna:I

    return p0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/bvj/tsu;->mra:Z

    iget-object v0, p0, Lorg/bouncycastle/asn1/bvj/tsu;->nra:Lorg/bouncycastle/asn1/bvj/ssp;

    invoke-interface {v0, p0}, Lorg/bouncycastle/asn1/bvj/ssp;->zta(Lorg/bouncycastle/asn1/bvj/tsu;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/asn1/bvj/tsu;->xna:I

    iget p0, p0, Lorg/bouncycastle/asn1/bvj/tsu;->xna:I

    return p0
.end method

.method public rtg(Lorg/bouncycastle/asn1/bvj;)[Lorg/bouncycastle/asn1/bvj/sis;
    .locals 8

    iget-object v0, p0, Lorg/bouncycastle/asn1/bvj/tsu;->ora:[Lorg/bouncycastle/asn1/bvj/sis;

    array-length v0, v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/bvj/sis;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    iget-object v4, p0, Lorg/bouncycastle/asn1/bvj/tsu;->ora:[Lorg/bouncycastle/asn1/bvj/sis;

    array-length v5, v4

    if-eq v2, v5, :cond_3

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/bvj/sis;->Bh()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/bvj/sis;->Ah()[Lorg/bouncycastle/asn1/bvj/zta;

    move-result-object v5

    move v6, v1

    :goto_1
    array-length v7, v5

    if-eq v6, v7, :cond_2

    aget-object v7, v5, v6

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/bvj/zta;->getType()Lorg/bouncycastle/asn1/bvj;

    move-result-object v7

    invoke-virtual {v7, p1}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    add-int/lit8 v5, v3, 0x1

    aput-object v4, v0, v3

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/bvj/sis;->getFirst()Lorg/bouncycastle/asn1/bvj/zta;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/bvj/zta;->getType()Lorg/bouncycastle/asn1/bvj;

    move-result-object v5

    invoke-virtual {v5, p1}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v5, v3, 0x1

    aput-object v4, v0, v3

    :goto_2
    move v3, v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    new-array p0, v3, [Lorg/bouncycastle/asn1/bvj/sis;

    array-length p1, p0

    invoke-static {v0, v1, p0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/G;

    iget-object p0, p0, Lorg/bouncycastle/asn1/bvj/tsu;->ora:[Lorg/bouncycastle/asn1/bvj/sis;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/G;-><init>([Lorg/bouncycastle/asn1/ssp;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/bvj/tsu;->nra:Lorg/bouncycastle/asn1/bvj/ssp;

    invoke-interface {v0, p0}, Lorg/bouncycastle/asn1/bvj/ssp;->you(Lorg/bouncycastle/asn1/bvj/tsu;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
