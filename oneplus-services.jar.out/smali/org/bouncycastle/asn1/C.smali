.class public Lorg/bouncycastle/asn1/C;
.super Lorg/bouncycastle/asn1/ibl;
.source ""


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ssp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p1

    const-string v0, "DER"

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/oif;->getEncoded(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ibl;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ibl;-><init>([B)V

    return-void
.end method

.method static zta(Lorg/bouncycastle/asn1/E;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/asn1/ugm;->zta(I[B)V

    return-void
.end method


# virtual methods
.method Cg()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ibl;->string:[B

    array-length v0, v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ia;->ha(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object p0, p0, Lorg/bouncycastle/asn1/ibl;->string:[B

    array-length p0, p0

    add-int/2addr v0, p0

    return v0
.end method

.method isConstructed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method zta(Lorg/bouncycastle/asn1/ugm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/bouncycastle/asn1/ibl;->string:[B

    const/4 v0, 0x4

    invoke-virtual {p1, v0, p0}, Lorg/bouncycastle/asn1/ugm;->zta(I[B)V

    return-void
.end method
