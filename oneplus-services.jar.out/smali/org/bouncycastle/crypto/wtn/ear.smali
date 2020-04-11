.class public Lorg/bouncycastle/crypto/wtn/ear;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/kth;


# instance fields
.field private id:[B

.field private parameters:Lorg/bouncycastle/crypto/kth;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/kth;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/wtn/ear;->parameters:Lorg/bouncycastle/crypto/kth;

    iput-object p2, p0, Lorg/bouncycastle/crypto/wtn/ear;->id:[B

    return-void
.end method


# virtual methods
.method public getID()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/wtn/ear;->id:[B

    return-object p0
.end method

.method public getParameters()Lorg/bouncycastle/crypto/kth;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/wtn/ear;->parameters:Lorg/bouncycastle/crypto/kth;

    return-object p0
.end method
