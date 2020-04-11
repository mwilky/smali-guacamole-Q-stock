.class public Lorg/bouncycastle/asn1/r;
.super Lorg/bouncycastle/asn1/igw;
.source ""


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ywr;Lorg/bouncycastle/asn1/vdb;ILorg/bouncycastle/asn1/vdb;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/bouncycastle/asn1/igw;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ywr;Lorg/bouncycastle/asn1/vdb;ILorg/bouncycastle/asn1/vdb;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ywr;Lorg/bouncycastle/asn1/vdb;Lorg/bouncycastle/asn1/L;)V
    .locals 6

    invoke-virtual {p4}, Lorg/bouncycastle/asn1/lqr;->getTagNo()I

    move-result v4

    invoke-virtual {p4}, Lorg/bouncycastle/asn1/vdb;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/r;-><init>(Lorg/bouncycastle/asn1/bvj;Lorg/bouncycastle/asn1/ywr;Lorg/bouncycastle/asn1/vdb;ILorg/bouncycastle/asn1/vdb;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cno;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/igw;-><init>(Lorg/bouncycastle/asn1/cno;)V

    return-void
.end method


# virtual methods
.method ug()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/oif;->getEncoded()[B

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method zta(Lorg/bouncycastle/asn1/ugm;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/igw;->Qpa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "DER"

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/oif;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/igw;->Rpa:Lorg/bouncycastle/asn1/ywr;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/oif;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/igw;->Spa:Lorg/bouncycastle/asn1/vdb;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/oif;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/L;

    const/4 v3, 0x1

    iget v4, p0, Lorg/bouncycastle/asn1/igw;->encoding:I

    iget-object p0, p0, Lorg/bouncycastle/asn1/igw;->Tpa:Lorg/bouncycastle/asn1/vdb;

    invoke-direct {v1, v3, v4, p0}, Lorg/bouncycastle/asn1/L;-><init>(ZILorg/bouncycastle/asn1/ssp;)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/oif;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/16 p0, 0x20

    const/16 v1, 0x8

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, p0, v1, v0}, Lorg/bouncycastle/asn1/ugm;->you(II[B)V

    return-void
.end method
