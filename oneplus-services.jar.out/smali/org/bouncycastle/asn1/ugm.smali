.class public Lorg/bouncycastle/asn1/ugm;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/asn1/ugm$zta;
    }
.end annotation


# instance fields
.field private txa:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/ugm;->txa:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method Yi()Lorg/bouncycastle/asn1/ugm;
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/E;

    iget-object p0, p0, Lorg/bouncycastle/asn1/ugm;->txa:Ljava/io/OutputStream;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/E;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method Zi()Lorg/bouncycastle/asn1/ugm;
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/W;

    iget-object p0, p0, Lorg/bouncycastle/asn1/ugm;->txa:Ljava/io/OutputStream;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/W;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method protected _i()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/ugm;->txa:Ljava/io/OutputStream;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object p0, p0, Lorg/bouncycastle/asn1/ugm;->txa:Ljava/io/OutputStream;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/bouncycastle/asn1/ugm;->txa:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method fa(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x7f

    if-le p1, v0, :cond_1

    const/4 v0, 0x1

    move v1, p1

    move v2, v0

    :goto_0
    ushr-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    or-int/lit16 v1, v2, 0x80

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/ugm;->write(I)V

    sub-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x8

    :goto_1
    if-ltz v2, :cond_2

    shr-int v0, p1, v2

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ugm;->write(I)V

    add-int/lit8 v2, v2, -0x8

    goto :goto_1

    :cond_1
    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/ugm;->write(I)V

    :cond_2
    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/bouncycastle/asn1/ugm;->txa:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public sis(Lorg/bouncycastle/asn1/ssp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/bouncycastle/asn1/vdb;->zta(Lorg/bouncycastle/asn1/ugm;)V

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "null object detected"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method write(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/bouncycastle/asn1/ugm;->txa:Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method write([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/bouncycastle/asn1/ugm;->txa:Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method write([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/bouncycastle/asn1/ugm;->txa:Ljava/io/OutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method writeTag(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1f

    if-ge p2, v0, :cond_0

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/ugm;->write(I)V

    goto :goto_0

    :cond_0
    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/ugm;->write(I)V

    const/16 p1, 0x80

    if-ge p2, p1, :cond_1

    invoke-virtual {p0, p2}, Lorg/bouncycastle/asn1/ugm;->write(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    new-array v0, v0, [B

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    and-int/lit8 v2, p2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :cond_2
    shr-int/lit8 p2, p2, 0x7

    add-int/lit8 v1, v1, -0x1

    and-int/lit8 v2, p2, 0x7f

    or-int/2addr v2, p1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v2, 0x7f

    if-gt p2, v2, :cond_2

    array-length p1, v0

    sub-int/2addr p1, v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/bouncycastle/asn1/ugm;->write([BII)V

    :goto_0
    return-void
.end method

.method you(II[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/asn1/ugm;->writeTag(II)V

    array-length p1, p3

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/ugm;->fa(I)V

    invoke-virtual {p0, p3}, Lorg/bouncycastle/asn1/ugm;->write([B)V

    return-void
.end method

.method you(Lorg/bouncycastle/asn1/vdb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/ugm$zta;

    iget-object v1, p0, Lorg/bouncycastle/asn1/ugm;->txa:Ljava/io/OutputStream;

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/asn1/ugm$zta;-><init>(Lorg/bouncycastle/asn1/ugm;Ljava/io/OutputStream;)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/vdb;->zta(Lorg/bouncycastle/asn1/ugm;)V

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "null object detected"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method zta(I[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/ugm;->write(I)V

    array-length p1, p2

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/ugm;->fa(I)V

    invoke-virtual {p0, p2}, Lorg/bouncycastle/asn1/ugm;->write([B)V

    return-void
.end method
