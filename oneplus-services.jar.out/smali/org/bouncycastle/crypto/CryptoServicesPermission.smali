.class public Lorg/bouncycastle/crypto/CryptoServicesPermission;
.super Ljava/security/Permission;
.source ""


# static fields
.field public static final Cpa:Ljava/lang/String; = "globalConfig"

.field public static final Dpa:Ljava/lang/String; = "threadLocalConfig"

.field public static final Epa:Ljava/lang/String; = "defaultRandomConfig"


# instance fields
.field private final actions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/CryptoServicesPermission;->actions:Ljava/util/Set;

    iget-object p0, p0, Lorg/bouncycastle/crypto/CryptoServicesPermission;->actions:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/bouncycastle/crypto/CryptoServicesPermission;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/crypto/CryptoServicesPermission;

    iget-object p0, p0, Lorg/bouncycastle/crypto/CryptoServicesPermission;->actions:Ljava/util/Set;

    iget-object p1, p1, Lorg/bouncycastle/crypto/CryptoServicesPermission;->actions:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getActions()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/CryptoServicesPermission;->actions:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/CryptoServicesPermission;->actions:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->hashCode()I

    move-result p0

    return p0
.end method

.method public implies(Ljava/security/Permission;)Z
    .locals 2

    instance-of v0, p1, Lorg/bouncycastle/crypto/CryptoServicesPermission;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/bouncycastle/crypto/CryptoServicesPermission;

    invoke-virtual {p0}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lorg/bouncycastle/crypto/CryptoServicesPermission;->actions:Ljava/util/Set;

    iget-object p1, p1, Lorg/bouncycastle/crypto/CryptoServicesPermission;->actions:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
