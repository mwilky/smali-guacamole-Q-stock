.class Lorg/bouncycastle/jce/provider/you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/jcajce/provider/config/sis;


# static fields
.field private static AFa:Ljava/security/Permission;

.field private static BFa:Ljava/security/Permission;

.field private static CFa:Ljava/security/Permission;

.field private static DFa:Ljava/security/Permission;

.field private static EFa:Ljava/security/Permission;

.field private static FFa:Ljava/security/Permission;


# instance fields
.field private uFa:Ljava/lang/ThreadLocal;

.field private vFa:Ljava/lang/ThreadLocal;

.field private volatile wFa:Lyou/zta/you/you/rtg;

.field private volatile xFa:Ljava/lang/Object;

.field private volatile yFa:Ljava/util/Set;

.field private volatile zFa:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v1, "BC"

    const-string v2, "threadLocalEcImplicitlyCa"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jce/provider/you;->AFa:Ljava/security/Permission;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v2, "ecImplicitlyCa"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jce/provider/you;->BFa:Ljava/security/Permission;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v2, "threadLocalDhDefaultParams"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jce/provider/you;->CFa:Ljava/security/Permission;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v2, "DhDefaultParams"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jce/provider/you;->DFa:Ljava/security/Permission;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v2, "acceptableEcCurves"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jce/provider/you;->EFa:Ljava/security/Permission;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const-string v2, "additionalEcParameters"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/jce/provider/you;->FFa:Ljava/security/Permission;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/you;->uFa:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/you;->vFa:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/you;->yFa:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/you;->zFa:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public cjf()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/you;->yFa:Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public cno(I)Ljavax/crypto/spec/DHParameterSpec;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/you;->vFa:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/you;->xFa:Ljava/lang/Object;

    :cond_0
    instance-of p0, v0, Ljavax/crypto/spec/DHParameterSpec;

    if-eqz p0, :cond_1

    check-cast v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    if-ne p0, p1, :cond_3

    return-object v0

    :cond_1
    instance-of p0, v0, [Ljavax/crypto/spec/DHParameterSpec;

    if-eqz p0, :cond_3

    check-cast v0, [Ljavax/crypto/spec/DHParameterSpec;

    const/4 p0, 0x0

    :goto_0
    array-length v1, v0

    if-eq p0, v1, :cond_3

    aget-object v1, v0, p0

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    if-ne v1, p1, :cond_2

    aget-object p0, v0, p0

    return-object p0

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    sget-object p0, Lorg/bouncycastle/crypto/igw$zta;->DH_DEFAULT_PARAMS:Lorg/bouncycastle/crypto/igw$zta;

    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/igw;->zta(Lorg/bouncycastle/crypto/igw$zta;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/wtn/cno;

    if-eqz p0, :cond_4

    new-instance p1, Lorg/bouncycastle/jcajce/sis/you;

    invoke-direct {p1, p0}, Lorg/bouncycastle/jcajce/sis/you;-><init>(Lorg/bouncycastle/crypto/wtn/cno;)V

    return-object p1

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public gwm()Lyou/zta/you/you/rtg;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/you;->uFa:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyou/zta/you/you/rtg;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lorg/bouncycastle/jce/provider/you;->wFa:Lyou/zta/you/you/rtg;

    return-object p0
.end method

.method public lqr()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/you;->zFa:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    const-string v1, "threadLocalEcImplicitlyCa"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    if-eqz v0, :cond_0

    sget-object p1, Lorg/bouncycastle/jce/provider/you;->AFa:Ljava/security/Permission;

    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_0
    instance-of p1, p2, Lyou/zta/you/you/rtg;

    if-nez p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p2, Ljava/security/spec/ECParameterSpec;

    invoke-static {p2, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->you(Ljava/security/spec/ECParameterSpec;Z)Lyou/zta/you/you/rtg;

    move-result-object p1

    goto :goto_1

    :cond_2
    :goto_0
    move-object p1, p2

    check-cast p1, Lyou/zta/you/you/rtg;

    :goto_1
    iget-object p0, p0, Lorg/bouncycastle/jce/provider/you;->uFa:Ljava/lang/ThreadLocal;

    if-nez p1, :cond_3

    :goto_2
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    goto/16 :goto_6

    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_4
    const-string v1, "ecImplicitlyCa"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz v0, :cond_5

    sget-object p1, Lorg/bouncycastle/jce/provider/you;->BFa:Ljava/security/Permission;

    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_5
    instance-of p1, p2, Lyou/zta/you/you/rtg;

    if-nez p1, :cond_7

    if-nez p2, :cond_6

    goto :goto_3

    :cond_6
    check-cast p2, Ljava/security/spec/ECParameterSpec;

    invoke-static {p2, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/kth;->you(Ljava/security/spec/ECParameterSpec;Z)Lyou/zta/you/you/rtg;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/you;->wFa:Lyou/zta/you/you/rtg;

    goto/16 :goto_6

    :cond_7
    :goto_3
    check-cast p2, Lyou/zta/you/you/rtg;

    iput-object p2, p0, Lorg/bouncycastle/jce/provider/you;->wFa:Lyou/zta/you/you/rtg;

    goto/16 :goto_6

    :cond_8
    const-string v1, "threadLocalDhDefaultParams"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    if-eqz v0, :cond_9

    sget-object p1, Lorg/bouncycastle/jce/provider/you;->CFa:Ljava/security/Permission;

    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_9
    instance-of p1, p2, Ljavax/crypto/spec/DHParameterSpec;

    if-nez p1, :cond_b

    instance-of p1, p2, [Ljavax/crypto/spec/DHParameterSpec;

    if-nez p1, :cond_b

    if-nez p2, :cond_a

    goto :goto_4

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "not a valid DHParameterSpec"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    :goto_4
    iget-object p0, p0, Lorg/bouncycastle/jce/provider/you;->vFa:Ljava/lang/ThreadLocal;

    if-nez p2, :cond_c

    goto :goto_2

    :cond_c
    invoke-virtual {p0, p2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_6

    :cond_d
    const-string v1, "DhDefaultParams"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    if-eqz v0, :cond_e

    sget-object p1, Lorg/bouncycastle/jce/provider/you;->DFa:Ljava/security/Permission;

    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_e
    instance-of p1, p2, Ljavax/crypto/spec/DHParameterSpec;

    if-nez p1, :cond_10

    instance-of p1, p2, [Ljavax/crypto/spec/DHParameterSpec;

    if-nez p1, :cond_10

    if-nez p2, :cond_f

    goto :goto_5

    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "not a valid DHParameterSpec or DHParameterSpec[]"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    :goto_5
    iput-object p2, p0, Lorg/bouncycastle/jce/provider/you;->xFa:Ljava/lang/Object;

    goto :goto_6

    :cond_11
    const-string v1, "acceptableEcCurves"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    if-eqz v0, :cond_12

    sget-object p1, Lorg/bouncycastle/jce/provider/you;->EFa:Ljava/security/Permission;

    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_12
    check-cast p2, Ljava/util/Set;

    iput-object p2, p0, Lorg/bouncycastle/jce/provider/you;->yFa:Ljava/util/Set;

    goto :goto_6

    :cond_13
    const-string v1, "additionalEcParameters"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    if-eqz v0, :cond_14

    sget-object p1, Lorg/bouncycastle/jce/provider/you;->FFa:Ljava/security/Permission;

    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_14
    check-cast p2, Ljava/util/Map;

    iput-object p2, p0, Lorg/bouncycastle/jce/provider/you;->zFa:Ljava/util/Map;

    :cond_15
    :goto_6
    return-void
.end method

.method public tsu(I)Ljava/security/spec/DSAParameterSpec;
    .locals 2

    sget-object p0, Lorg/bouncycastle/crypto/igw$zta;->Hza:Lorg/bouncycastle/crypto/igw$zta;

    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/igw;->zta(Lorg/bouncycastle/crypto/igw$zta;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/wtn/ywr;

    if-eqz p0, :cond_0

    new-instance p1, Ljava/security/spec/DSAParameterSpec;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/wtn/ywr;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/wtn/ywr;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/wtn/ywr;->getG()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Ljava/security/spec/DSAParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
