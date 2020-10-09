.class public Lorg/bouncycastle/crypto/wtn/you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/kth;


# instance fields
.field sta:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/wtn/you;->sta:Z

    return-void
.end method


# virtual methods
.method public isPrivate()Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/crypto/wtn/you;->sta:Z

    return p0
.end method
