.class Lorg/bouncycastle/jcajce/zta/you;
.super Ljava/io/OutputStream;
.source ""


# instance fields
.field private xka:Ljavax/crypto/Mac;


# direct methods
.method constructor <init>(Ljavax/crypto/Mac;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/zta/you;->xka:Ljavax/crypto/Mac;

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/bouncycastle/jcajce/zta/you;->xka:Ljavax/crypto/Mac;

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Ljavax/crypto/Mac;->update(B)V

    return-void
.end method

.method public write([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/bouncycastle/jcajce/zta/you;->xka:Ljavax/crypto/Mac;

    invoke-virtual {p0, p1}, Ljavax/crypto/Mac;->update([B)V

    return-void
.end method

.method public write([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/bouncycastle/jcajce/zta/you;->xka:Ljavax/crypto/Mac;

    invoke-virtual {p0, p1, p2, p3}, Ljavax/crypto/Mac;->update([BII)V

    return-void
.end method
