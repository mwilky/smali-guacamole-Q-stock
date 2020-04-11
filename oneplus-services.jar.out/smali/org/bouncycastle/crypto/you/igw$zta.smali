.class Lorg/bouncycastle/crypto/you/igw$zta;
.super Ljava/io/ByteArrayOutputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/you/igw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zta"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/crypto/you/bio;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/you/igw$zta;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 0

    invoke-super {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object p0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    invoke-static {p0}, Lorg/bouncycastle/util/zta;->ugm([B)V

    return-void
.end method

.method sis([BI)V
    .locals 2

    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
