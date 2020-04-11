.class public Lorg/bouncycastle/crypto/wtn/ugm;
.super Lorg/bouncycastle/crypto/wtn/you;
.source ""


# instance fields
.field params:Lorg/bouncycastle/crypto/wtn/ibl;


# direct methods
.method protected constructor <init>(ZLorg/bouncycastle/crypto/wtn/ibl;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/wtn/you;-><init>(Z)V

    iput-object p2, p0, Lorg/bouncycastle/crypto/wtn/ugm;->params:Lorg/bouncycastle/crypto/wtn/ibl;

    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/crypto/wtn/ibl;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/wtn/ugm;->params:Lorg/bouncycastle/crypto/wtn/ibl;

    return-object p0
.end method
