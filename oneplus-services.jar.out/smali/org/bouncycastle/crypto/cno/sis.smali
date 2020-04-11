.class public Lorg/bouncycastle/crypto/cno/sis;
.super Ljava/io/FilterInputStream;
.source ""


# instance fields
.field protected jia:Lorg/bouncycastle/crypto/ibl;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/bouncycastle/crypto/ibl;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p2, p0, Lorg/bouncycastle/crypto/cno/sis;->jia:Lorg/bouncycastle/crypto/ibl;

    return-void
.end method


# virtual methods
.method public getMac()Lorg/bouncycastle/crypto/ibl;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/cno/sis;->jia:Lorg/bouncycastle/crypto/ibl;

    return-object p0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Lorg/bouncycastle/crypto/cno/sis;->jia:Lorg/bouncycastle/crypto/ibl;

    int-to-byte v1, v0

    invoke-interface {p0, v1}, Lorg/bouncycastle/crypto/ibl;->update(B)V

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    if-ltz p3, :cond_0

    iget-object p0, p0, Lorg/bouncycastle/crypto/cno/sis;->jia:Lorg/bouncycastle/crypto/ibl;

    invoke-interface {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/ibl;->update([BII)V

    :cond_0
    return p3
.end method
