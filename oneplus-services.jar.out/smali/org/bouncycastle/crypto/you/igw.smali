.class public Lorg/bouncycastle/crypto/you/igw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/qbh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/you/igw$zta;
    }
.end annotation


# instance fields
.field private yna:Lorg/bouncycastle/crypto/you/igw$zta;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/you/igw$zta;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/you/igw$zta;-><init>(Lorg/bouncycastle/crypto/you/bio;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/you/igw;->yna:Lorg/bouncycastle/crypto/you/igw$zta;

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/you/igw;->yna:Lorg/bouncycastle/crypto/you/igw$zta;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/you/igw;->yna:Lorg/bouncycastle/crypto/you/igw$zta;

    invoke-virtual {v1, p1, p2}, Lorg/bouncycastle/crypto/you/igw$zta;->sis([BI)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/you/igw;->reset()V

    return v0
.end method

.method public les()I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/you/igw;->yna:Lorg/bouncycastle/crypto/you/igw$zta;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    return p0
.end method

.method public reset()V
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/you/igw;->yna:Lorg/bouncycastle/crypto/you/igw$zta;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/you/igw$zta;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/you/igw;->yna:Lorg/bouncycastle/crypto/you/igw$zta;

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public update([BII)V
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/you/igw;->yna:Lorg/bouncycastle/crypto/you/igw$zta;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method

.method public vju()Ljava/lang/String;
    .locals 0

    const-string p0, "NULL"

    return-object p0
.end method
