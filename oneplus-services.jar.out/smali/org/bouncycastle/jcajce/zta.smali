.class public Lorg/bouncycastle/jcajce/zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/KeyStore$LoadStoreParameter;


# instance fields
.field private final aBa:Ljava/security/KeyStore$ProtectionParameter;

.field private final bBa:Z

.field private final out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/jcajce/zta;-><init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/zta;->out:Ljava/io/OutputStream;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/zta;->aBa:Ljava/security/KeyStore$ProtectionParameter;

    iput-boolean p3, p0, Lorg/bouncycastle/jcajce/zta;->bBa:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;[C)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/jcajce/zta;-><init>(Ljava/io/OutputStream;[CZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;[CZ)V
    .locals 1

    new-instance v0, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v0, p2}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    invoke-direct {p0, p1, v0, p3}, Lorg/bouncycastle/jcajce/zta;-><init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;Z)V

    return-void
.end method


# virtual methods
.method public getOutputStream()Ljava/io/OutputStream;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/zta;->out:Ljava/io/OutputStream;

    return-object p0
.end method

.method public getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/zta;->aBa:Ljava/security/KeyStore$ProtectionParameter;

    return-object p0
.end method

.method public nj()Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/jcajce/zta;->bBa:Z

    return p0
.end method
