.class public Lorg/bouncycastle/asn1/W;
.super Lorg/bouncycastle/asn1/ugm;
.source ""


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ugm;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
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

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/vdb;->Eg()Lorg/bouncycastle/asn1/vdb;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/bouncycastle/asn1/vdb;->zta(Lorg/bouncycastle/asn1/ugm;)V

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "null object detected"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
