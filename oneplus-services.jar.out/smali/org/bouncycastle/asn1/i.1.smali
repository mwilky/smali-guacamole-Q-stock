.class public Lorg/bouncycastle/asn1/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/asn1/veq;


# instance fields
.field private Hxa:Z

.field private Ixa:I

.field private Jka:Lorg/bouncycastle/asn1/hmo;


# direct methods
.method constructor <init>(ZILorg/bouncycastle/asn1/hmo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/bouncycastle/asn1/i;->Hxa:Z

    iput p2, p0, Lorg/bouncycastle/asn1/i;->Ixa:I

    iput-object p3, p0, Lorg/bouncycastle/asn1/i;->Jka:Lorg/bouncycastle/asn1/hmo;

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

    iget-object v0, p0, Lorg/bouncycastle/asn1/i;->Jka:Lorg/bouncycastle/asn1/hmo;

    iget-boolean v1, p0, Lorg/bouncycastle/asn1/i;->Hxa:Z

    iget p0, p0, Lorg/bouncycastle/asn1/i;->Ixa:I

    invoke-virtual {v0, v1, p0}, Lorg/bouncycastle/asn1/hmo;->tsu(ZI)Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    return-object p0
.end method

.method public getTagNo()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/asn1/i;->Ixa:I

    return p0
.end method

.method public isConstructed()Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/asn1/i;->Hxa:Z

    return p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/vdb;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/i;->cno()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ParsingException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zta(IZ)Lorg/bouncycastle/asn1/ssp;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_1

    iget-boolean p1, p0, Lorg/bouncycastle/asn1/i;->Hxa:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/bouncycastle/asn1/i;->Jka:Lorg/bouncycastle/asn1/hmo;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/hmo;->readObject()Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Explicit tags must be constructed (see X.690 8.14.2)"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object p2, p0, Lorg/bouncycastle/asn1/i;->Jka:Lorg/bouncycastle/asn1/hmo;

    iget-boolean p0, p0, Lorg/bouncycastle/asn1/i;->Hxa:Z

    invoke-virtual {p2, p0, p1}, Lorg/bouncycastle/asn1/hmo;->sis(ZI)Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    return-object p0
.end method
