.class public Lorg/bouncycastle/jcajce/you/you/ssp$zta;
.super Lorg/bouncycastle/jcajce/you/you/zta;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/you/you/ssp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zta"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/you/ywr;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/you/ywr;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/you/you/zta;-><init>(Lorg/bouncycastle/crypto/qbh;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jcajce/you/you/ssp$zta;

    new-instance v1, Lorg/bouncycastle/crypto/you/ywr;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/you/you/zta;->digest:Lorg/bouncycastle/crypto/qbh;

    check-cast p0, Lorg/bouncycastle/crypto/you/ywr;

    invoke-direct {v1, p0}, Lorg/bouncycastle/crypto/you/ywr;-><init>(Lorg/bouncycastle/crypto/you/ywr;)V

    iput-object v1, v0, Lorg/bouncycastle/jcajce/you/you/zta;->digest:Lorg/bouncycastle/crypto/qbh;

    return-object v0
.end method
