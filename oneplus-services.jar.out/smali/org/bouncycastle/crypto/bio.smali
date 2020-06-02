.class Lorg/bouncycastle/crypto/bio;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/crypto/igw;->checkPermission(Ljava/security/Permission;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic uza:Ljava/lang/SecurityManager;

.field final synthetic vza:Ljava/security/Permission;


# direct methods
.method constructor <init>(Ljava/lang/SecurityManager;Ljava/security/Permission;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/bio;->uza:Ljava/lang/SecurityManager;

    iput-object p2, p0, Lorg/bouncycastle/crypto/bio;->vza:Ljava/security/Permission;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/bio;->uza:Ljava/lang/SecurityManager;

    iget-object p0, p0, Lorg/bouncycastle/crypto/bio;->vza:Ljava/security/Permission;

    invoke-virtual {v0, p0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    const/4 p0, 0x0

    return-object p0
.end method
