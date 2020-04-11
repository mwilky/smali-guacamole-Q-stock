.class public final Lorg/bouncycastle/crypto/you/zta;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final BC:Lorg/bouncycastle/crypto/you/sis;

.field private static final Gxa:Lorg/bouncycastle/crypto/you/sis;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/you/you;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/you/you;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/you/zta;->BC:Lorg/bouncycastle/crypto/you/sis;

    const-string v0, "AndroidOpenSSL"

    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/you/tsu;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/you/tsu;-><init>()V

    :goto_0
    sput-object v0, Lorg/bouncycastle/crypto/you/zta;->Gxa:Lorg/bouncycastle/crypto/you/sis;

    goto :goto_1

    :cond_0
    const-string v0, "java.vendor"

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    return-void

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Provider AndroidOpenSSL must exist"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bud()Lorg/bouncycastle/crypto/qbh;
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/you/zta;->Gxa:Lorg/bouncycastle/crypto/you/sis;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lorg/bouncycastle/crypto/you/sis;->bud()Lorg/bouncycastle/crypto/qbh;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    sget-object v0, Lorg/bouncycastle/crypto/you/zta;->BC:Lorg/bouncycastle/crypto/you/sis;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/you/sis;->bud()Lorg/bouncycastle/crypto/qbh;

    move-result-object v0

    return-object v0
.end method

.method public static e()Lorg/bouncycastle/crypto/qbh;
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/you/zta;->Gxa:Lorg/bouncycastle/crypto/you/sis;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lorg/bouncycastle/crypto/you/sis;->e()Lorg/bouncycastle/crypto/qbh;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    sget-object v0, Lorg/bouncycastle/crypto/you/zta;->BC:Lorg/bouncycastle/crypto/you/sis;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/you/sis;->e()Lorg/bouncycastle/crypto/qbh;

    move-result-object v0

    return-object v0
.end method

.method public static oxb()Lorg/bouncycastle/crypto/qbh;
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/you/zta;->Gxa:Lorg/bouncycastle/crypto/you/sis;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lorg/bouncycastle/crypto/you/sis;->oxb()Lorg/bouncycastle/crypto/qbh;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    sget-object v0, Lorg/bouncycastle/crypto/you/zta;->BC:Lorg/bouncycastle/crypto/you/sis;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/you/sis;->oxb()Lorg/bouncycastle/crypto/qbh;

    move-result-object v0

    return-object v0
.end method

.method public static veq()Lorg/bouncycastle/crypto/qbh;
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/you/zta;->Gxa:Lorg/bouncycastle/crypto/you/sis;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lorg/bouncycastle/crypto/you/sis;->veq()Lorg/bouncycastle/crypto/qbh;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    sget-object v0, Lorg/bouncycastle/crypto/you/zta;->BC:Lorg/bouncycastle/crypto/you/sis;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/you/sis;->veq()Lorg/bouncycastle/crypto/qbh;

    move-result-object v0

    return-object v0
.end method

.method public static wtn()Lorg/bouncycastle/crypto/qbh;
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/you/zta;->Gxa:Lorg/bouncycastle/crypto/you/sis;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lorg/bouncycastle/crypto/you/sis;->wtn()Lorg/bouncycastle/crypto/qbh;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    sget-object v0, Lorg/bouncycastle/crypto/you/zta;->BC:Lorg/bouncycastle/crypto/you/sis;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/you/sis;->wtn()Lorg/bouncycastle/crypto/qbh;

    move-result-object v0

    return-object v0
.end method

.method public static ywr()Lorg/bouncycastle/crypto/qbh;
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/you/zta;->Gxa:Lorg/bouncycastle/crypto/you/sis;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lorg/bouncycastle/crypto/you/sis;->ywr()Lorg/bouncycastle/crypto/qbh;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    sget-object v0, Lorg/bouncycastle/crypto/you/zta;->BC:Lorg/bouncycastle/crypto/you/sis;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/you/sis;->ywr()Lorg/bouncycastle/crypto/qbh;

    move-result-object v0

    return-object v0
.end method
