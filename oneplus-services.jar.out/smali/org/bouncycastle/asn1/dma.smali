.class public Lorg/bouncycastle/asn1/dma;
.super Ljava/io/FilterInputStream;
.source ""

# interfaces
.implements Lorg/bouncycastle/asn1/j;


# instance fields
.field private final limit:I

.field private final vka:Z

.field private final wka:[[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ia;->you(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/dma;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/asn1/dma;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IZ)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput p2, p0, Lorg/bouncycastle/asn1/dma;->limit:I

    iput-boolean p3, p0, Lorg/bouncycastle/asn1/dma;->vka:Z

    const/16 p1, 0xb

    new-array p1, p1, [[B

    iput-object p1, p0, Lorg/bouncycastle/asn1/dma;->wka:[[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ia;->you(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lorg/bouncycastle/asn1/dma;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/asn1/dma;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/asn1/dma;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method static you(Ljava/io/InputStream;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1f

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    if-eqz v1, :cond_2

    :goto_0
    if-ltz v0, :cond_0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    and-int/lit8 v0, v0, 0x7f

    or-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0x7

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0

    :cond_0
    if-ltz v0, :cond_1

    and-int/lit8 p0, v0, 0x7f

    or-int/2addr p1, p0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "EOF found inside tag value."

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "corrupted stream - invalid high tag number found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return p1
.end method

.method private static you(Lorg/bouncycastle/asn1/ba;)[C
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ba;->getRemaining()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [C

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ba;->read()I

    move-result v3

    if-gez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ba;->read()I

    move-result v4

    if-gez v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v2, 0x1

    shl-int/lit8 v3, v3, 0x8

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v1, v2

    move v2, v5

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method static zta(Ljava/io/InputStream;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_7

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/16 v1, 0x7f

    if-le v0, v1, :cond_6

    and-int/lit8 v0, v0, 0x7f

    const/4 v1, 0x4

    if-gt v0, v1, :cond_5

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    if-ltz v3, :cond_1

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "EOF found reading length"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-ltz v2, :cond_4

    if-ge v2, p1, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "corrupted stream - out of bounds length found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "corrupted stream - negative length found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DER length more than 4 bytes: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    return v0

    :cond_7
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "EOF found when length expected"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static zta(ILorg/bouncycastle/asn1/ba;[[B)Lorg/bouncycastle/asn1/vdb;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    if-eq p0, v0, :cond_2

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown tag "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " encountered"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-instance p0, Lorg/bouncycastle/asn1/P;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ba;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/P;-><init>([B)V

    return-object p0

    :pswitch_1
    new-instance p0, Lorg/bouncycastle/asn1/u;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ba;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/u;-><init>([B)V

    return-object p0

    :pswitch_2
    new-instance p0, Lorg/bouncycastle/asn1/S;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ba;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/S;-><init>([B)V

    return-object p0

    :pswitch_3
    new-instance p0, Lorg/bouncycastle/asn1/w;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ba;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/w;-><init>([B)V

    return-object p0

    :pswitch_4
    new-instance p0, Lorg/bouncycastle/asn1/wtn;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ba;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/wtn;-><init>([B)V

    return-object p0

    :pswitch_5
    new-instance p0, Lorg/bouncycastle/asn1/cgv;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ba;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/cgv;-><init>([B)V

    return-object p0

    :pswitch_6
    new-instance p0, Lorg/bouncycastle/asn1/x;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ba;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/x;-><init>([B)V

    return-object p0

    :pswitch_7
    new-instance p0, Lorg/bouncycastle/asn1/Q;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ba;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/Q;-><init>([B)V

    return-object p0

    :pswitch_8
    new-instance p0, Lorg/bouncycastle/asn1/K;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ba;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/K;-><init>([B)V

    return-object p0

    :pswitch_9
    new-instance p0, Lorg/bouncycastle/asn1/F;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ba;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/F;-><init>([B)V

    return-object p0

    :pswitch_a
    new-instance p0, Lorg/bouncycastle/asn1/A;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ba;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/A;-><init>([B)V

    return-object p0

    :pswitch_b
    invoke-static {p1, p2}, Lorg/bouncycastle/asn1/dma;->zta(Lorg/bouncycastle/asn1/ba;[[B)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/bvj;->wtn([B)Lorg/bouncycastle/asn1/bvj;

    move-result-object p0

    return-object p0

    :pswitch_c
    sget-object p0, Lorg/bouncycastle/asn1/z;->INSTANCE:Lorg/bouncycastle/asn1/z;

    return-object p0

    :pswitch_d
    new-instance p0, Lorg/bouncycastle/asn1/C;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ba;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/C;-><init>([B)V

    return-object p0

    :pswitch_e
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ba;->getRemaining()I

    move-result p0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/sis;->zta(ILjava/io/InputStream;)Lorg/bouncycastle/asn1/sis;

    move-result-object p0

    return-object p0

    :pswitch_f
    new-instance p0, Lorg/bouncycastle/asn1/ywr;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ba;->toByteArray()[B

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/ywr;-><init>([BZ)V

    return-object p0

    :pswitch_10
    invoke-static {p1, p2}, Lorg/bouncycastle/asn1/dma;->zta(Lorg/bouncycastle/asn1/ba;[[B)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/tsu;->wtn([B)Lorg/bouncycastle/asn1/tsu;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/asn1/m;

    invoke-static {p1}, Lorg/bouncycastle/asn1/dma;->you(Lorg/bouncycastle/asn1/ba;)[C

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/m;-><init>([C)V

    return-object p0

    :cond_1
    new-instance p0, Lorg/bouncycastle/asn1/O;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ba;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/O;-><init>([B)V

    return-object p0

    :cond_2
    invoke-static {p1, p2}, Lorg/bouncycastle/asn1/dma;->zta(Lorg/bouncycastle/asn1/ba;[[B)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/bio;->wtn([B)Lorg/bouncycastle/asn1/bio;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static zta(Lorg/bouncycastle/asn1/ba;[[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ba;->getRemaining()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ba;->getRemaining()I

    move-result v1

    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v1, p1, v0

    if-nez v1, :cond_0

    new-array v1, v0, [B

    aput-object v1, p1, v0

    :cond_0
    invoke-static {p0, v1}, Lorg/bouncycastle/util/io/you;->readFully(Ljava/io/InputStream;[B)I

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ba;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method Qf()Lorg/bouncycastle/asn1/cno;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/cno;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/cno;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/dma;->readObject()Lorg/bouncycastle/asn1/vdb;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cno;->you(Lorg/bouncycastle/asn1/ssp;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected Rf()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/asn1/dma;->limit:I

    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/dma;->zta(Ljava/io/InputStream;I)I

    move-result p0

    return p0
.end method

.method getLimit()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/asn1/dma;->limit:I

    return p0
.end method

.method protected readFully([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/bouncycastle/util/io/you;->readFully(Ljava/io/InputStream;[B)I

    move-result p0

    array-length p1, p1

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "EOF encountered in middle of object"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readObject()Lorg/bouncycastle/asn1/vdb;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    if-gtz v0, :cond_1

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "unexpected end-of-contents marker"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/dma;->you(Ljava/io/InputStream;I)I

    move-result v1

    and-int/lit8 v2, v0, 0x20

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/dma;->Rf()I

    move-result v4

    if-gez v4, :cond_a

    if-eqz v2, :cond_9

    new-instance v2, Lorg/bouncycastle/asn1/da;

    iget v4, p0, Lorg/bouncycastle/asn1/dma;->limit:I

    invoke-direct {v2, p0, v4}, Lorg/bouncycastle/asn1/da;-><init>(Ljava/io/InputStream;I)V

    new-instance v4, Lorg/bouncycastle/asn1/hmo;

    iget p0, p0, Lorg/bouncycastle/asn1/dma;->limit:I

    invoke-direct {v4, v2, p0}, Lorg/bouncycastle/asn1/hmo;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 p0, v0, 0x40

    if-eqz p0, :cond_3

    new-instance p0, Lorg/bouncycastle/asn1/bud;

    invoke-direct {p0, v1, v4}, Lorg/bouncycastle/asn1/bud;-><init>(ILorg/bouncycastle/asn1/hmo;)V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/bud;->cno()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    return-object p0

    :cond_3
    and-int/lit16 p0, v0, 0x80

    if-eqz p0, :cond_4

    new-instance p0, Lorg/bouncycastle/asn1/i;

    invoke-direct {p0, v3, v1, v4}, Lorg/bouncycastle/asn1/i;-><init>(ZILorg/bouncycastle/asn1/hmo;)V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/i;->cno()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x4

    if-eq v1, p0, :cond_8

    const/16 p0, 0x8

    if-eq v1, p0, :cond_7

    const/16 p0, 0x10

    if-eq v1, p0, :cond_6

    const/16 p0, 0x11

    if-ne v1, p0, :cond_5

    new-instance p0, Lorg/bouncycastle/asn1/g;

    invoke-direct {p0, v4}, Lorg/bouncycastle/asn1/g;-><init>(Lorg/bouncycastle/asn1/hmo;)V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/g;->cno()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string v0, "unknown BER object encountered"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Lorg/bouncycastle/asn1/e;

    invoke-direct {p0, v4}, Lorg/bouncycastle/asn1/e;-><init>(Lorg/bouncycastle/asn1/hmo;)V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/e;->cno()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance p0, Lorg/bouncycastle/asn1/s;

    invoke-direct {p0, v4}, Lorg/bouncycastle/asn1/s;-><init>(Lorg/bouncycastle/asn1/hmo;)V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/s;->cno()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    return-object p0

    :cond_8
    new-instance p0, Lorg/bouncycastle/asn1/b;

    invoke-direct {p0, v4}, Lorg/bouncycastle/asn1/b;-><init>(Lorg/bouncycastle/asn1/hmo;)V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/b;->cno()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    return-object p0

    :cond_9
    new-instance p0, Ljava/io/IOException;

    const-string v0, "indefinite-length primitive encoding encountered"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :try_start_0
    invoke-virtual {p0, v0, v1, v4}, Lorg/bouncycastle/asn1/dma;->ssp(III)Lorg/bouncycastle/asn1/vdb;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Exception;

    const-string v1, "corrupted stream detected"

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected ssp(III)Lorg/bouncycastle/asn1/vdb;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p1, 0x20

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-instance v2, Lorg/bouncycastle/asn1/ba;

    invoke-direct {v2, p0, p3}, Lorg/bouncycastle/asn1/ba;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 p3, p1, 0x40

    if-eqz p3, :cond_1

    new-instance p0, Lorg/bouncycastle/asn1/T;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ba;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, v0, p2, p1}, Lorg/bouncycastle/asn1/T;-><init>(ZI[B)V

    return-object p0

    :cond_1
    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_2

    new-instance p0, Lorg/bouncycastle/asn1/hmo;

    invoke-direct {p0, v2}, Lorg/bouncycastle/asn1/hmo;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0, p2}, Lorg/bouncycastle/asn1/hmo;->tsu(ZI)Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz v0, :cond_9

    const/4 p1, 0x4

    if-eq p2, p1, :cond_7

    const/16 p1, 0x8

    if-eq p2, p1, :cond_6

    const/16 p1, 0x10

    if-eq p2, p1, :cond_4

    const/16 p1, 0x11

    if-ne p2, p1, :cond_3

    invoke-virtual {p0, v2}, Lorg/bouncycastle/asn1/dma;->zta(Lorg/bouncycastle/asn1/ba;)Lorg/bouncycastle/asn1/cno;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/t;->sis(Lorg/bouncycastle/asn1/cno;)Lorg/bouncycastle/asn1/ear;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unknown tag "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " encountered"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    iget-boolean p1, p0, Lorg/bouncycastle/asn1/dma;->vka:Z

    if-eqz p1, :cond_5

    new-instance p0, Lorg/bouncycastle/asn1/fa;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ba;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/fa;-><init>([B)V

    return-object p0

    :cond_5
    invoke-virtual {p0, v2}, Lorg/bouncycastle/asn1/dma;->zta(Lorg/bouncycastle/asn1/ba;)Lorg/bouncycastle/asn1/cno;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/t;->you(Lorg/bouncycastle/asn1/cno;)Lorg/bouncycastle/asn1/obl;

    move-result-object p0

    return-object p0

    :cond_6
    new-instance p1, Lorg/bouncycastle/asn1/V;

    invoke-virtual {p0, v2}, Lorg/bouncycastle/asn1/dma;->zta(Lorg/bouncycastle/asn1/ba;)Lorg/bouncycastle/asn1/cno;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/V;-><init>(Lorg/bouncycastle/asn1/cno;)V

    return-object p1

    :cond_7
    invoke-virtual {p0, v2}, Lorg/bouncycastle/asn1/dma;->zta(Lorg/bouncycastle/asn1/ba;)Lorg/bouncycastle/asn1/cno;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cno;->size()I

    move-result p1

    new-array p1, p1, [Lorg/bouncycastle/asn1/ibl;

    :goto_1
    array-length p2, p1

    if-eq v1, p2, :cond_8

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/cno;->get(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/asn1/ibl;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    new-instance p0, Lorg/bouncycastle/asn1/ivd;

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ivd;-><init>([Lorg/bouncycastle/asn1/ibl;)V

    return-object p0

    :cond_9
    iget-object p0, p0, Lorg/bouncycastle/asn1/dma;->wka:[[B

    invoke-static {p2, v2, p0}, Lorg/bouncycastle/asn1/dma;->zta(ILorg/bouncycastle/asn1/ba;[[B)Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    return-object p0
.end method

.method zta(Lorg/bouncycastle/asn1/ba;)Lorg/bouncycastle/asn1/cno;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Lorg/bouncycastle/asn1/dma;

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/dma;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/dma;->Qf()Lorg/bouncycastle/asn1/cno;

    move-result-object p0

    return-object p0
.end method
