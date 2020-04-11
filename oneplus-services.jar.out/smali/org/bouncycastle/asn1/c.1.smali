.class public Lorg/bouncycastle/asn1/c;
.super Lorg/bouncycastle/asn1/E;
.source ""


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/E;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public writeObject(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ugm;->Oi()V

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/asn1/vdb;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/bouncycastle/asn1/vdb;

    :goto_0
    invoke-virtual {p1, p0}, Lorg/bouncycastle/asn1/vdb;->zta(Lorg/bouncycastle/asn1/ugm;)V

    goto :goto_1

    :cond_1
    instance-of v0, p1, Lorg/bouncycastle/asn1/ssp;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/bouncycastle/asn1/ssp;

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "object not BEREncodable"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
