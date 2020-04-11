.class public Lorg/bouncycastle/jcajce/zta/sis;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zta(Ljava/security/MessageDigest;)Ljava/io/OutputStream;
    .locals 1

    new-instance v0, Lorg/bouncycastle/jcajce/zta/zta;

    invoke-direct {v0, p0}, Lorg/bouncycastle/jcajce/zta/zta;-><init>(Ljava/security/MessageDigest;)V

    return-object v0
.end method

.method public static zta(Ljava/security/Signature;)Ljava/io/OutputStream;
    .locals 1

    new-instance v0, Lorg/bouncycastle/jcajce/zta/tsu;

    invoke-direct {v0, p0}, Lorg/bouncycastle/jcajce/zta/tsu;-><init>(Ljava/security/Signature;)V

    return-object v0
.end method

.method public static zta(Ljavax/crypto/Mac;)Ljava/io/OutputStream;
    .locals 1

    new-instance v0, Lorg/bouncycastle/jcajce/zta/you;

    invoke-direct {v0, p0}, Lorg/bouncycastle/jcajce/zta/you;-><init>(Ljavax/crypto/Mac;)V

    return-object v0
.end method
