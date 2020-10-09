.class public Lorg/bouncycastle/asn1/J;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/asn1/ire;


# instance fields
.field private Jka:Lorg/bouncycastle/asn1/hmo;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/hmo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/J;->Jka:Lorg/bouncycastle/asn1/hmo;

    return-void
.end method


# virtual methods
.method public cno()Lorg/bouncycastle/asn1/vdb;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/I;

    iget-object p0, p0, Lorg/bouncycastle/asn1/J;->Jka:Lorg/bouncycastle/asn1/hmo;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/hmo;->cj()Lorg/bouncycastle/asn1/cno;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/asn1/I;-><init>(Lorg/bouncycastle/asn1/cno;Z)V

    return-object v0
.end method

.method public readObject()Lorg/bouncycastle/asn1/ssp;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/bouncycastle/asn1/J;->Jka:Lorg/bouncycastle/asn1/hmo;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/hmo;->readObject()Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/J;->cno()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ParsingException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
