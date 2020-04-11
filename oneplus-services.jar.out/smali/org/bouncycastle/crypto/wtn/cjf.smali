.class public Lorg/bouncycastle/crypto/wtn/cjf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/kth;


# instance fields
.field private key:[B


# direct methods
.method public constructor <init>([B)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/bouncycastle/crypto/wtn/cjf;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p3, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/wtn/cjf;->key:[B

    iget-object p0, p0, Lorg/bouncycastle/crypto/wtn/cjf;->key:[B

    const/4 v0, 0x0

    invoke-static {p1, p2, p0, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public getKey()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/wtn/cjf;->key:[B

    return-object p0
.end method
