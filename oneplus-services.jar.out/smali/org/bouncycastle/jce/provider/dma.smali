.class public Lorg/bouncycastle/jce/provider/dma;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private Mva:Ljava/util/Set;

.field private Nva:Ljava/util/Set;

.field private Ova:Ljava/util/Set;

.field private Pva:Ljava/util/Set;

.field private Qva:Ljava/util/Set;

.field private Sva:Ljava/util/Set;

.field private Tva:Ljava/util/Set;

.field private Uva:Ljava/util/Set;

.field private Vva:Ljava/util/Set;

.field private Wva:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/dma;->Mva:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/dma;->Nva:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/dma;->Ova:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/dma;->Pva:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/dma;->Qva:Ljava/util/Set;

    return-void
.end method

.method private static Yc(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "//"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v3, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method private static bio([B[B)I
    .locals 1

    invoke-static {p0, p1}, Lorg/bouncycastle/util/zta;->sis([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0, p1}, Lorg/bouncycastle/jce/provider/dma;->ywr([B[B)[B

    move-result-object p1

    invoke-static {p1, p0}, Lorg/bouncycastle/util/zta;->sis([B[B)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private bio(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;
    .locals 2

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1, p2, v0}, Lorg/bouncycastle/jce/provider/dma;->tsu(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private bvj([B[B)Ljava/util/Set;
    .locals 1

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1, p2}, Lorg/bouncycastle/util/zta;->sis([B[B)Z

    move-result v0

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object p0
.end method

.method private cno(Ljava/util/Set;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, p2, v1}, Lorg/bouncycastle/jce/provider/dma;->irq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_3

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p0

    if-nez p0, :cond_3

    return-void

    :cond_3
    new-instance p0, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;

    const-string p1, "URI is not from a permitted subtree."

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private dma([B[B)Z
    .locals 6

    array-length p0, p1

    array-length v0, p2

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eq p0, v0, :cond_0

    return v1

    :cond_0
    new-array v0, p0, [B

    invoke-static {p2, p0, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v2, p0, [B

    new-array v3, p0, [B

    :goto_0
    if-ge v1, p0, :cond_1

    aget-byte v4, p2, v1

    aget-byte v5, v0, v1

    and-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    aget-byte v4, p1, v1

    aget-byte v5, v0, v1

    and-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v2, v3}, Lorg/bouncycastle/util/zta;->sis([B[B)Z

    move-result p0

    return p0
.end method

.method private equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    instance-of p0, p1, [B

    if-eqz p0, :cond_2

    instance-of p0, p2, [B

    if-eqz p0, :cond_2

    check-cast p1, [B

    check-cast p2, [B

    invoke-static {p1, p2}, Lorg/bouncycastle/util/zta;->sis([B[B)Z

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private gck([B[B)[B
    .locals 2

    array-length p0, p1

    mul-int/lit8 v0, p0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p2, v1, v0, p0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private igw(Ljava/util/Set;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/dma;->les([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 p1, 0x1

    if-le p0, p1, :cond_1

    const/4 p0, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private igw([B[B)[[B
    .locals 5

    array-length p0, p1

    const/4 v0, 0x2

    div-int/2addr p0, v0

    new-array v1, p0, [B

    new-array v2, p0, [B

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, p0, v2, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array p1, p0, [B

    new-array v4, p0, [B

    invoke-static {p2, v3, p1, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p2, p0, v4, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p0, 0x4

    new-array p0, p0, [[B

    aput-object v1, p0, v3

    const/4 p2, 0x1

    aput-object v2, p0, p2

    aput-object p1, p0, v0

    const/4 p1, 0x3

    aput-object v4, p0, p1

    return-object p0
.end method

.method private irq(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Lorg/bouncycastle/jce/provider/dma;->Yc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jce/provider/dma;->vdw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private kth(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;
    .locals 2

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1, p2, v0}, Lorg/bouncycastle/jce/provider/dma;->sis(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private les([B)Ljava/lang/String;
    .locals 4

    const/4 p0, 0x0

    const-string v0, ""

    move-object v1, v0

    move v0, p0

    :goto_0
    array-length v2, p1

    div-int/lit8 v2, v2, 0x2

    const-string v3, "."

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private les(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_1
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x2e

    if-eq p1, v0, :cond_2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_2
    invoke-direct {p0, v1, p2}, Lorg/bouncycastle/jce/provider/dma;->vdw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v3
.end method

.method private static oif([B[B)[B
    .locals 4

    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static qbh([B[B)[B
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-byte v1, p0, v0

    const v2, 0xffff

    and-int/2addr v1, v2

    aget-byte v3, p1, v0

    and-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private rtg(Ljava/util/Set;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, p2, v1}, Lorg/bouncycastle/jce/provider/dma;->vdw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_4

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p0

    if-nez p0, :cond_4

    return-void

    :cond_4
    new-instance p0, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;

    const-string p1, "DNS is not from a permitted subtree."

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private sis(Lorg/bouncycastle/asn1/x509/zgw;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/zgw;->getName()Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private sis(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/x509/oxb;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/oxb;->getBase()Lorg/bouncycastle/asn1/x509/zgw;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/jce/provider/dma;->sis(Lorg/bouncycastle/asn1/x509/zgw;)Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v1, v3, v0}, Lorg/bouncycastle/jce/provider/dma;->zta(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private sis(Ljava/util/Set;Lorg/bouncycastle/asn1/obl;)Ljava/util/Set;
    .locals 2

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_1
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/obl;

    invoke-static {p2, v0}, Lorg/bouncycastle/jce/provider/dma;->zta(Lorg/bouncycastle/asn1/obl;Lorg/bouncycastle/asn1/obl;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v0, p2}, Lorg/bouncycastle/jce/provider/dma;->zta(Lorg/bouncycastle/asn1/obl;Lorg/bouncycastle/asn1/obl;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method private sis(Ljava/util/Set;[B)Ljava/util/Set;
    .locals 2

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-direct {p0, v1, p2}, Lorg/bouncycastle/jce/provider/dma;->bvj([B[B)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private sis(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 4

    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "."

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v3, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1, p2}, Lorg/bouncycastle/jce/provider/dma;->vdw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/jce/provider/dma;->vdw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_1

    :cond_3
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jce/provider/dma;->vdw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-direct {p0, p2, p1}, Lorg/bouncycastle/jce/provider/dma;->vdw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_1

    :cond_5
    invoke-direct {p0, p2, p1}, Lorg/bouncycastle/jce/provider/dma;->vdw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_1

    :cond_6
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_7

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_1

    :cond_7
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jce/provider/dma;->vdw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    :goto_0
    goto :goto_2

    :cond_8
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    :goto_1
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_2
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_3
    return-void
.end method

.method private sis(Ljava/util/Set;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lorg/bouncycastle/jce/provider/dma;->les(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;

    const-string p1, "Email address is from an excluded subtree."

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method private ssp(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/x509/oxb;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/oxb;->getBase()Lorg/bouncycastle/asn1/x509/zgw;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/jce/provider/dma;->sis(Lorg/bouncycastle/asn1/x509/zgw;)Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3, v1, v0}, Lorg/bouncycastle/jce/provider/dma;->you(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private ssp(Ljava/util/Set;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, p2, v1}, Lorg/bouncycastle/jce/provider/dma;->les(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_3

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p0

    if-nez p0, :cond_3

    return-void

    :cond_3
    new-instance p0, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;

    const-string p1, "Subject email address is not from a permitted subtree."

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private tsu(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/x509/oxb;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/oxb;->getBase()Lorg/bouncycastle/asn1/x509/zgw;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/zgw;->getName()Lorg/bouncycastle/asn1/ssp;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ibl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ibl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object v1

    if-nez p1, :cond_1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-direct {p0, v3, v1}, Lorg/bouncycastle/jce/provider/dma;->wtn([B[B)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private tsu(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 4

    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "."

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v3, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1, p2}, Lorg/bouncycastle/jce/provider/dma;->vdw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/jce/provider/dma;->vdw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_1

    :cond_3
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jce/provider/dma;->vdw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-direct {p0, p2, p1}, Lorg/bouncycastle/jce/provider/dma;->vdw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_1

    :cond_5
    invoke-direct {p0, p2, p1}, Lorg/bouncycastle/jce/provider/dma;->vdw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_1

    :cond_6
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_7

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_1

    :cond_7
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jce/provider/dma;->vdw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    :goto_0
    goto :goto_2

    :cond_8
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    :goto_1
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_2
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_3
    return-void
.end method

.method private tsu(Ljava/util/Set;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lorg/bouncycastle/jce/provider/dma;->irq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;

    const-string p1, "URI is from an excluded subtree."

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method private vdw(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const-string p0, "."

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    const/16 p0, 0x2e

    invoke-static {p2, p0}, Lorg/bouncycastle/util/Strings;->zta(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p0}, Lorg/bouncycastle/util/Strings;->zta(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0

    array-length v1, p2

    const/4 v2, 0x0

    if-gt p1, v1, :cond_1

    return v2

    :cond_1
    array-length p1, p0

    array-length v1, p2

    sub-int/2addr p1, v1

    const/4 v1, -0x1

    move v3, v1

    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_4

    if-ne v3, v1, :cond_2

    add-int v4, v3, p1

    aget-object v4, p0, v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v2

    :cond_2
    aget-object v4, p2, v3

    add-int v5, v3, p1

    aget-object v5, p0, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    return v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method private wtn([B[B)Ljava/util/Set;
    .locals 7

    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p0

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jce/provider/dma;->igw([B[B)[[B

    move-result-object p1

    const/4 p2, 0x0

    aget-object v0, p1, p2

    const/4 v1, 0x1

    aget-object v2, p1, v1

    const/4 v3, 0x2

    aget-object v4, p1, v3

    const/4 v5, 0x3

    aget-object p1, p1, v5

    invoke-direct {p0, v0, v2, v4, p1}, Lorg/bouncycastle/jce/provider/dma;->you([B[B[B[B)[[B

    move-result-object v0

    aget-object v4, v0, v1

    aget-object v5, v0, v5

    invoke-static {v4, v5}, Lorg/bouncycastle/jce/provider/dma;->qbh([B[B)[B

    move-result-object v4

    aget-object v5, v0, p2

    aget-object v6, v0, v3

    invoke-static {v5, v6}, Lorg/bouncycastle/jce/provider/dma;->ywr([B[B)[B

    move-result-object v5

    invoke-static {v5, v4}, Lorg/bouncycastle/jce/provider/dma;->bio([B[B)I

    move-result v4

    if-ne v4, v1, :cond_1

    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p0

    :cond_1
    aget-object p2, v0, p2

    aget-object v0, v0, v3

    invoke-static {p2, v0}, Lorg/bouncycastle/jce/provider/dma;->oif([B[B)[B

    move-result-object p2

    invoke-static {v2, p1}, Lorg/bouncycastle/jce/provider/dma;->oif([B[B)[B

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/bouncycastle/jce/provider/dma;->gck([B[B)[B

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private you(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/x509/oxb;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/oxb;->getBase()Lorg/bouncycastle/asn1/x509/zgw;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/jce/provider/dma;->sis(Lorg/bouncycastle/asn1/x509/zgw;)Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3, v1}, Lorg/bouncycastle/jce/provider/dma;->vdw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-direct {p0, v1, v3}, Lorg/bouncycastle/jce/provider/dma;->vdw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private you(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 4

    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "."

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v3, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1, p2}, Lorg/bouncycastle/jce/provider/dma;->vdw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/jce/provider/dma;->vdw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    :goto_0
    goto :goto_1

    :cond_3
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jce/provider/dma;->vdw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-direct {p0, p2, p1}, Lorg/bouncycastle/jce/provider/dma;->vdw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_1

    :cond_5
    invoke-direct {p0, p2, p1}, Lorg/bouncycastle/jce/provider/dma;->vdw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    :goto_1
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_7

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_0

    :cond_7
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jce/provider/dma;->vdw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_2

    :cond_8
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    :cond_9
    :goto_2
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_3
    return-void
.end method

.method private you(Ljava/util/Set;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lorg/bouncycastle/jce/provider/dma;->vdw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;

    const-string p1, "DNS is from an excluded subtree."

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method private you(Ljava/util/Set;Lorg/bouncycastle/asn1/obl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/obl;

    invoke-static {p2, p1}, Lorg/bouncycastle/jce/provider/dma;->zta(Lorg/bouncycastle/asn1/obl;Lorg/bouncycastle/asn1/obl;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_3
    new-instance p0, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;

    const-string p1, "Subject distinguished name is not from a permitted subtree"

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private you(Ljava/util/Set;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-direct {p0, p2, v1}, Lorg/bouncycastle/jce/provider/dma;->dma([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_2
    array-length p0, p2

    if-nez p0, :cond_3

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p0

    if-nez p0, :cond_3

    return-void

    :cond_3
    new-instance p0, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;

    const-string p1, "IP is not from a permitted subtree."

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private you([B[B[B[B)[[B
    .locals 8

    array-length p0, p1

    new-array v0, p0, [B

    new-array v1, p0, [B

    new-array v2, p0, [B

    new-array v3, p0, [B

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, p0, :cond_0

    aget-byte v6, p1, v5

    aget-byte v7, p2, v5

    and-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    aget-byte v6, p1, v5

    aget-byte v7, p2, v5

    and-int/2addr v6, v7

    aget-byte v7, p2, v5

    not-int v7, v7

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    aget-byte v6, p3, v5

    aget-byte v7, p4, v5

    and-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    aget-byte v6, p3, v5

    aget-byte v7, p4, v5

    and-int/2addr v6, v7

    aget-byte v7, p4, v5

    not-int v7, v7

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    new-array p0, p0, [[B

    aput-object v0, p0, v4

    const/4 p1, 0x1

    aput-object v1, p0, p1

    const/4 p1, 0x2

    aput-object v2, p0, p1

    const/4 p1, 0x3

    aput-object v3, p0, p1

    return-object p0
.end method

.method private static ywr([B[B)[B
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-byte v1, p0, v0

    const v2, 0xffff

    and-int/2addr v1, v2

    aget-byte v3, p1, v0

    and-int/2addr v2, v3

    if-le v1, v2, :cond_0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private zta(Ljava/util/Collection;)I
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, [B

    if-eqz v1, :cond_1

    check-cast v0, [B

    invoke-static {v0}, Lorg/bouncycastle/util/zta;->hashCode([B)I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr p0, v0

    goto :goto_0

    :cond_2
    return p0
.end method

.method private zta(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 4

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/x509/oxb;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/oxb;->getBase()Lorg/bouncycastle/asn1/x509/zgw;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/zgw;->getName()Lorg/bouncycastle/asn1/ssp;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object v0

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/obl;

    invoke-static {v0, v2}, Lorg/bouncycastle/jce/provider/dma;->zta(Lorg/bouncycastle/asn1/obl;Lorg/bouncycastle/asn1/obl;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {v2, v0}, Lorg/bouncycastle/jce/provider/dma;->zta(Lorg/bouncycastle/asn1/obl;Lorg/bouncycastle/asn1/obl;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object p0
.end method

.method private zta(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 4

    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "."

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v3, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1, p2}, Lorg/bouncycastle/jce/provider/dma;->vdw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/jce/provider/dma;->vdw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    :goto_0
    goto :goto_1

    :cond_3
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jce/provider/dma;->vdw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-direct {p0, p2, p1}, Lorg/bouncycastle/jce/provider/dma;->vdw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_1

    :cond_5
    invoke-direct {p0, p2, p1}, Lorg/bouncycastle/jce/provider/dma;->vdw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    :goto_1
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_7

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_0

    :cond_7
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jce/provider/dma;->vdw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_2

    :cond_8
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    :cond_9
    :goto_2
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_3
    return-void
.end method

.method private zta(Ljava/util/Set;Lorg/bouncycastle/asn1/obl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/obl;

    invoke-static {p2, p1}, Lorg/bouncycastle/jce/provider/dma;->zta(Lorg/bouncycastle/asn1/obl;Lorg/bouncycastle/asn1/obl;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;

    const-string p1, "Subject distinguished name is from an excluded subtree"

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method private zta(Ljava/util/Set;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {p0, p2, v0}, Lorg/bouncycastle/jce/provider/dma;->dma([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;

    const-string p1, "IP is from an excluded subtree."

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method private zta(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lorg/bouncycastle/jce/provider/dma;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v2, v0

    goto :goto_0

    :cond_5
    move v2, v1

    :goto_0
    if-nez v2, :cond_3

    return v1

    :cond_6
    return v0

    :cond_7
    :goto_1
    return v1
.end method

.method private static zta(Lorg/bouncycastle/asn1/obl;Lorg/bouncycastle/asn1/obl;)Z
    .locals 5

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v3

    if-le v0, v3, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v3

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/obl;->getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/bouncycastle/jce/provider/dma;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/bouncycastle/jce/provider/dma;

    iget-object v0, p1, Lorg/bouncycastle/jce/provider/dma;->Mva:Ljava/util/Set;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/dma;->Mva:Ljava/util/Set;

    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/jce/provider/dma;->zta(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/bouncycastle/jce/provider/dma;->Nva:Ljava/util/Set;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/dma;->Nva:Ljava/util/Set;

    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/jce/provider/dma;->zta(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/bouncycastle/jce/provider/dma;->Ova:Ljava/util/Set;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/dma;->Ova:Ljava/util/Set;

    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/jce/provider/dma;->zta(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/bouncycastle/jce/provider/dma;->Qva:Ljava/util/Set;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/dma;->Qva:Ljava/util/Set;

    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/jce/provider/dma;->zta(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/bouncycastle/jce/provider/dma;->Pva:Ljava/util/Set;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/dma;->Pva:Ljava/util/Set;

    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/jce/provider/dma;->zta(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/bouncycastle/jce/provider/dma;->Sva:Ljava/util/Set;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/dma;->Sva:Ljava/util/Set;

    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/jce/provider/dma;->zta(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/bouncycastle/jce/provider/dma;->Tva:Ljava/util/Set;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/dma;->Tva:Ljava/util/Set;

    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/jce/provider/dma;->zta(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/bouncycastle/jce/provider/dma;->Uva:Ljava/util/Set;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/dma;->Uva:Ljava/util/Set;

    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/jce/provider/dma;->zta(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/bouncycastle/jce/provider/dma;->Wva:Ljava/util/Set;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/dma;->Wva:Ljava/util/Set;

    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/jce/provider/dma;->zta(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lorg/bouncycastle/jce/provider/dma;->Vva:Ljava/util/Set;

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/dma;->Vva:Ljava/util/Set;

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jce/provider/dma;->zta(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/dma;->Mva:Ljava/util/Set;

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/dma;->zta(Ljava/util/Collection;)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/dma;->Nva:Ljava/util/Set;

    invoke-direct {p0, v1}, Lorg/bouncycastle/jce/provider/dma;->zta(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/dma;->Ova:Ljava/util/Set;

    invoke-direct {p0, v1}, Lorg/bouncycastle/jce/provider/dma;->zta(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/dma;->Qva:Ljava/util/Set;

    invoke-direct {p0, v1}, Lorg/bouncycastle/jce/provider/dma;->zta(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/dma;->Pva:Ljava/util/Set;

    invoke-direct {p0, v1}, Lorg/bouncycastle/jce/provider/dma;->zta(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/dma;->Sva:Ljava/util/Set;

    invoke-direct {p0, v1}, Lorg/bouncycastle/jce/provider/dma;->zta(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/dma;->Tva:Ljava/util/Set;

    invoke-direct {p0, v1}, Lorg/bouncycastle/jce/provider/dma;->zta(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/dma;->Uva:Ljava/util/Set;

    invoke-direct {p0, v1}, Lorg/bouncycastle/jce/provider/dma;->zta(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/dma;->Wva:Ljava/util/Set;

    invoke-direct {p0, v1}, Lorg/bouncycastle/jce/provider/dma;->zta(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/dma;->Vva:Ljava/util/Set;

    invoke-direct {p0, v1}, Lorg/bouncycastle/jce/provider/dma;->zta(Ljava/util/Collection;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public sis(Lorg/bouncycastle/asn1/obl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/dma;->Mva:Ljava/util/Set;

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/jce/provider/dma;->zta(Ljava/util/Set;Lorg/bouncycastle/asn1/obl;)V

    return-void
.end method

.method public ssp(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/dma;->Wva:Ljava/util/Set;

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/dma;->Vva:Ljava/util/Set;

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/dma;->Sva:Ljava/util/Set;

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/dma;->Tva:Ljava/util/Set;

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/dma;->Uva:Ljava/util/Set;

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "permitted:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/dma;->Sva:Ljava/util/Set;

    const-string v2, "DN:\n"

    const-string v3, "\n"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/dma;->Sva:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/dma;->Tva:Ljava/util/Set;

    const-string v4, "DNS:\n"

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/dma;->Tva:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/dma;->Uva:Ljava/util/Set;

    const-string v5, "Email:\n"

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/dma;->Uva:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/dma;->Vva:Ljava/util/Set;

    const-string v6, "URI:\n"

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/dma;->Vva:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/dma;->Wva:Ljava/util/Set;

    const-string v7, "IP:\n"

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/dma;->Wva:Ljava/util/Set;

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/dma;->igw(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "excluded:\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/dma;->Mva:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/dma;->Mva:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/dma;->Nva:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/dma;->Nva:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/dma;->Ova:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/dma;->Ova:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/dma;->Pva:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/dma;->Pva:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/dma;->Qva:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/dma;->Qva:Ljava/util/Set;

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/dma;->igw(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_9
    return-object v0
.end method

.method public tsu(Lorg/bouncycastle/asn1/obl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/dma;->Sva:Ljava/util/Set;

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/jce/provider/dma;->you(Ljava/util/Set;Lorg/bouncycastle/asn1/obl;)V

    return-void
.end method

.method public you(Lorg/bouncycastle/asn1/x509/oxb;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bouncycastle/asn1/x509/oxb;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jce/provider/dma;->zta([Lorg/bouncycastle/asn1/x509/oxb;)V

    return-void
.end method

.method public you(Lorg/bouncycastle/asn1/x509/zgw;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/zgw;->getTagNo()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/zgw;->getName()Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ibl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ibl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/dma;->Qva:Ljava/util/Set;

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/jce/provider/dma;->zta(Ljava/util/Set;[B)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/dma;->Pva:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/zgw;->getName()Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/jce/provider/dma;->tsu(Ljava/util/Set;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/zgw;->getName()Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jce/provider/dma;->sis(Lorg/bouncycastle/asn1/obl;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/dma;->Nva:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/zgw;->getName()Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/jce/provider/dma;->you(Ljava/util/Set;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/dma;->Ova:Ljava/util/Set;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/dma;->sis(Lorg/bouncycastle/asn1/x509/zgw;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/jce/provider/dma;->sis(Ljava/util/Set;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected zta(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;
    .locals 3

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1, p2}, Lorg/bouncycastle/jce/provider/dma;->vdw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2, v1}, Lorg/bouncycastle/jce/provider/dma;->vdw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public zta(Lorg/bouncycastle/asn1/x509/oxb;)V
    .locals 2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/oxb;->getBase()Lorg/bouncycastle/asn1/x509/zgw;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/zgw;->getTagNo()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/dma;->Qva:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/zgw;->getName()Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ibl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ibl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/jce/provider/dma;->sis(Ljava/util/Set;[B)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/dma;->Qva:Ljava/util/Set;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/dma;->Pva:Ljava/util/Set;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/dma;->sis(Lorg/bouncycastle/asn1/x509/zgw;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/jce/provider/dma;->bio(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/dma;->Pva:Ljava/util/Set;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/dma;->Mva:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/zgw;->getName()Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/obl;

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/jce/provider/dma;->sis(Ljava/util/Set;Lorg/bouncycastle/asn1/obl;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/dma;->Mva:Ljava/util/Set;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/dma;->Nva:Ljava/util/Set;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/dma;->sis(Lorg/bouncycastle/asn1/x509/zgw;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/jce/provider/dma;->zta(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/dma;->Nva:Ljava/util/Set;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/dma;->Ova:Ljava/util/Set;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/dma;->sis(Lorg/bouncycastle/asn1/x509/zgw;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/jce/provider/dma;->kth(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/dma;->Ova:Ljava/util/Set;

    :goto_0
    return-void
.end method

.method public zta(Lorg/bouncycastle/asn1/x509/zgw;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/zgw;->getTagNo()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/zgw;->getName()Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ibl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ibl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/dma;->Wva:Ljava/util/Set;

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/jce/provider/dma;->you(Ljava/util/Set;[B)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/dma;->Vva:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/zgw;->getName()Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/jce/provider/dma;->cno(Ljava/util/Set;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/zgw;->getName()Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/obl;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/obl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jce/provider/dma;->tsu(Lorg/bouncycastle/asn1/obl;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/dma;->Tva:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/zgw;->getName()Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/jce/provider/dma;->rtg(Ljava/util/Set;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/dma;->Uva:Ljava/util/Set;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/dma;->sis(Lorg/bouncycastle/asn1/x509/zgw;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/jce/provider/dma;->ssp(Ljava/util/Set;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public zta([Lorg/bouncycastle/asn1/x509/oxb;)V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/oxb;->getBase()Lorg/bouncycastle/asn1/x509/zgw;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/zgw;->getTagNo()I

    move-result v3

    invoke-static {v3}, Lorg/bouncycastle/util/cno;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    const/4 v2, 0x4

    if-eq v1, v2, :cond_4

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/dma;->Wva:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/jce/provider/dma;->tsu(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/dma;->Wva:Ljava/util/Set;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/dma;->Vva:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/jce/provider/dma;->ssp(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/dma;->Vva:Ljava/util/Set;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/dma;->Sva:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/jce/provider/dma;->zta(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/dma;->Sva:Ljava/util/Set;

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/dma;->Tva:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/jce/provider/dma;->you(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/dma;->Tva:Ljava/util/Set;

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/dma;->Uva:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/jce/provider/dma;->sis(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/dma;->Uva:Ljava/util/Set;

    goto :goto_1

    :cond_7
    return-void
.end method
