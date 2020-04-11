.class public Lorg/bouncycastle/crypto/cno/you;
.super Ljava/io/OutputStream;
.source ""


# instance fields
.field protected digest:Lorg/bouncycastle/crypto/qbh;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/qbh;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/cno/you;->digest:Lorg/bouncycastle/crypto/qbh;

    return-void
.end method


# virtual methods
.method public Gf()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/cno/you;->digest:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/qbh;->les()I

    move-result v0

    new-array v0, v0, [B

    iget-object p0, p0, Lorg/bouncycastle/crypto/cno/you;->digest:Lorg/bouncycastle/crypto/qbh;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lorg/bouncycastle/crypto/qbh;->doFinal([BI)I

    return-object v0
.end method

.method public write(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/bouncycastle/crypto/cno/you;->digest:Lorg/bouncycastle/crypto/qbh;

    int-to-byte p1, p1

    invoke-interface {p0, p1}, Lorg/bouncycastle/crypto/qbh;->update(B)V

    return-void
.end method

.method public write([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/bouncycastle/crypto/cno/you;->digest:Lorg/bouncycastle/crypto/qbh;

    invoke-interface {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/qbh;->update([BII)V

    return-void
.end method
