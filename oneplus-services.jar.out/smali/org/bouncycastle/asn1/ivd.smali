.class public Lorg/bouncycastle/asn1/ivd;
.super Lorg/bouncycastle/asn1/ibl;
.source ""


# static fields
.field private static final cpa:I = 0x3e8


# instance fields
.field private final bpa:[Lorg/bouncycastle/asn1/ibl;

.field private final chunkSize:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const/16 v0, 0x3e8

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/ivd;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/bouncycastle/asn1/ivd;-><init>([B[Lorg/bouncycastle/asn1/ibl;I)V

    return-void
.end method

.method private constructor <init>([B[Lorg/bouncycastle/asn1/ibl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ibl;-><init>([B)V

    iput-object p2, p0, Lorg/bouncycastle/asn1/ivd;->bpa:[Lorg/bouncycastle/asn1/ibl;

    iput p3, p0, Lorg/bouncycastle/asn1/ivd;->chunkSize:I

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/ibl;)V
    .locals 1

    const/16 v0, 0x3e8

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/ivd;-><init>([Lorg/bouncycastle/asn1/ibl;I)V

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/ibl;I)V
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ivd;->zta([Lorg/bouncycastle/asn1/ibl;)[B

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/asn1/ivd;-><init>([B[Lorg/bouncycastle/asn1/ibl;I)V

    return-void
.end method

.method private _s()Ljava/util/Vector;
    .locals 7

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/asn1/ibl;->string:[B

    array-length v4, v3

    if-ge v2, v4, :cond_1

    iget v4, p0, Lorg/bouncycastle/asn1/ivd;->chunkSize:I

    add-int v5, v2, v4

    array-length v6, v3

    if-le v5, v6, :cond_0

    array-length v3, v3

    goto :goto_1

    :cond_0
    add-int v3, v2, v4

    :goto_1
    sub-int/2addr v3, v2

    new-array v3, v3, [B

    iget-object v4, p0, Lorg/bouncycastle/asn1/ibl;->string:[B

    array-length v5, v3

    invoke-static {v4, v2, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v4, Lorg/bouncycastle/asn1/C;

    invoke-direct {v4, v3}, Lorg/bouncycastle/asn1/C;-><init>([B)V

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget v3, p0, Lorg/bouncycastle/asn1/ivd;->chunkSize:I

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static zta(Lorg/bouncycastle/asn1/obl;)Lorg/bouncycastle/asn1/ivd;
    .locals 4

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/obl;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/ibl;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/obl;->Fg()Ljava/util/Enumeration;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ibl;

    aput-object v3, v0, v1

    move v1, v2

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/bouncycastle/asn1/ivd;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/ivd;-><init>([Lorg/bouncycastle/asn1/ibl;)V

    return-object p0
.end method

.method private static zta([Lorg/bouncycastle/asn1/ibl;)[B
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_0

    :try_start_0
    aget-object v2, p0, v1

    check-cast v2, Lorg/bouncycastle/asn1/C;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ibl;->getOctets()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception converting octets "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " found in input should only contain DEROctetString"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic zta(Lorg/bouncycastle/asn1/ivd;)[Lorg/bouncycastle/asn1/ibl;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/ivd;->bpa:[Lorg/bouncycastle/asn1/ibl;

    return-object p0
.end method


# virtual methods
.method public Fg()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ivd;->bpa:[Lorg/bouncycastle/asn1/ibl;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ivd;->_s()Ljava/util/Vector;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/qeg;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/qeg;-><init>(Lorg/bouncycastle/asn1/ivd;)V

    return-object v0
.end method

.method public getOctets()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/ibl;->string:[B

    return-object p0
.end method

.method isConstructed()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method qg()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ivd;->Fg()Ljava/util/Enumeration;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ssp;

    invoke-interface {v1}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/vdb;->qg()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public zta(Lorg/bouncycastle/asn1/ugm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ugm;->write(I)V

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ugm;->write(I)V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ivd;->Fg()Ljava/util/Enumeration;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ssp;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ugm;->sis(Lorg/bouncycastle/asn1/ssp;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lorg/bouncycastle/asn1/ugm;->write(I)V

    invoke-virtual {p1, p0}, Lorg/bouncycastle/asn1/ugm;->write(I)V

    return-void
.end method
