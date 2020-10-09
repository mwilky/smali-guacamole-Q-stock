.class public Lorg/bouncycastle/crypto/cno/tsu;
.super Ljava/io/OutputStream;
.source ""


# instance fields
.field protected Ika:Lorg/bouncycastle/crypto/ibl;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/ibl;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/cno/tsu;->Ika:Lorg/bouncycastle/crypto/ibl;

    return-void
.end method


# virtual methods
.method public getMac()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/cno/tsu;->Ika:Lorg/bouncycastle/crypto/ibl;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/ibl;->you()I

    move-result v0

    new-array v0, v0, [B

    iget-object p0, p0, Lorg/bouncycastle/crypto/cno/tsu;->Ika:Lorg/bouncycastle/crypto/ibl;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lorg/bouncycastle/crypto/ibl;->doFinal([BI)I

    return-object v0
.end method

.method public write(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/bouncycastle/crypto/cno/tsu;->Ika:Lorg/bouncycastle/crypto/ibl;

    int-to-byte p1, p1

    invoke-interface {p0, p1}, Lorg/bouncycastle/crypto/ibl;->update(B)V

    return-void
.end method

.method public write([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/bouncycastle/crypto/cno/tsu;->Ika:Lorg/bouncycastle/crypto/ibl;

    invoke-interface {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/ibl;->update([BII)V

    return-void
.end method
