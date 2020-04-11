.class public Lorg/bouncycastle/crypto/wtn/gck;
.super Lorg/bouncycastle/crypto/wtn/you;
.source ""


# instance fields
.field private params:Lorg/bouncycastle/crypto/wtn/ywr;


# direct methods
.method public constructor <init>(ZLorg/bouncycastle/crypto/wtn/ywr;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/wtn/you;-><init>(Z)V

    iput-object p2, p0, Lorg/bouncycastle/crypto/wtn/gck;->params:Lorg/bouncycastle/crypto/wtn/ywr;

    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/crypto/wtn/ywr;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/wtn/gck;->params:Lorg/bouncycastle/crypto/wtn/ywr;

    return-object p0
.end method
