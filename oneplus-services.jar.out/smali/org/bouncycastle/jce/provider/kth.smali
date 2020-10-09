.class public Lorg/bouncycastle/jce/provider/kth;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/KeyStore$LoadStoreParameter;


# instance fields
.field private eGa:Ljava/io/OutputStream;

.field private fGa:Z

.field private xEa:Ljava/security/KeyStore$ProtectionParameter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Pj()Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/jce/provider/kth;->fGa:Z

    return p0
.end method

.method public ba(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/jce/provider/kth;->fGa:Z

    return-void
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/kth;->eGa:Ljava/io/OutputStream;

    return-object p0
.end method

.method public getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/kth;->xEa:Ljava/security/KeyStore$ProtectionParameter;

    return-object p0
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/kth;->eGa:Ljava/io/OutputStream;

    return-void
.end method

.method public setPassword([C)V
    .locals 1

    new-instance v0, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v0, p1}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/kth;->xEa:Ljava/security/KeyStore$ProtectionParameter;

    return-void
.end method

.method public zta(Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/kth;->xEa:Ljava/security/KeyStore$ProtectionParameter;

    return-void
.end method
