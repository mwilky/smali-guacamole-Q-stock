.class public Lorg/bouncycastle/asn1/a;
.super Lorg/bouncycastle/asn1/vdw;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/asn1/a$zta;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/vdw;-><init>(Ljava/io/OutputStream;)V

    const/16 p1, 0x24

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/vdw;->Z(I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/asn1/vdw;-><init>(Ljava/io/OutputStream;IZ)V

    const/16 p1, 0x24

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/vdw;->Z(I)V

    return-void
.end method


# virtual methods
.method public bio([B)Ljava/io/OutputStream;
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/a$zta;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/asn1/a$zta;-><init>(Lorg/bouncycastle/asn1/a;[B)V

    return-object v0
.end method

.method public sg()Ljava/io/OutputStream;
    .locals 1

    const/16 v0, 0x3e8

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/a;->bio([B)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method
