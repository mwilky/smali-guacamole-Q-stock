.class public Lorg/bouncycastle/crypto/wtn/ire;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/kth;


# instance fields
.field private iv:[B

.field private parameters:Lorg/bouncycastle/crypto/kth;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/kth;[B)V
    .locals 2

    array-length v0, p2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lorg/bouncycastle/crypto/wtn/ire;-><init>(Lorg/bouncycastle/crypto/kth;[BII)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/kth;[BII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p4, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/wtn/ire;->iv:[B

    iput-object p1, p0, Lorg/bouncycastle/crypto/wtn/ire;->parameters:Lorg/bouncycastle/crypto/kth;

    iget-object p0, p0, Lorg/bouncycastle/crypto/wtn/ire;->iv:[B

    const/4 p1, 0x0

    invoke-static {p2, p3, p0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public getIV()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/wtn/ire;->iv:[B

    return-object p0
.end method

.method public getParameters()Lorg/bouncycastle/crypto/kth;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/wtn/ire;->parameters:Lorg/bouncycastle/crypto/kth;

    return-object p0
.end method
