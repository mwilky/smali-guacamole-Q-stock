.class public Lorg/bouncycastle/asn1/f;
.super Lorg/bouncycastle/asn1/ear;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ear;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cno;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/ear;-><init>(Lorg/bouncycastle/asn1/cno;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ssp;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ear;-><init>(Lorg/bouncycastle/asn1/ssp;)V

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/ssp;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/ear;-><init>([Lorg/bouncycastle/asn1/ssp;Z)V

    return-void
.end method


# virtual methods
.method Cg()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ear;->Rg()Ljava/util/Enumeration;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ssp;

    invoke-interface {v1}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/vdb;->Cg()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method zta(Lorg/bouncycastle/asn1/ugm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ugm;->write(I)V

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ugm;->write(I)V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ear;->Rg()Ljava/util/Enumeration;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ssp;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ugm;->sis(Lorg/bouncycastle/asn1/ssp;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lorg/bouncycastle/asn1/ugm;->write(I)V

    invoke-virtual {p1, p0}, Lorg/bouncycastle/asn1/ugm;->write(I)V

    return-void
.end method
