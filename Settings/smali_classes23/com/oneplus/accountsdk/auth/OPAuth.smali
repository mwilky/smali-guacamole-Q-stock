.class public Lcom/oneplus/accountsdk/auth/OPAuth;
.super Ljava/lang/Object;


# static fields
.field private static mAuth:Lcom/oneplus/accountsdk/auth/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/accountsdk/auth/e;

    invoke-direct {v0}, Lcom/oneplus/accountsdk/auth/e;-><init>()V

    sput-object v0, Lcom/oneplus/accountsdk/auth/OPAuth;->mAuth:Lcom/oneplus/accountsdk/auth/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindInfo(Landroid/content/Context;Lcom/oneplus/accountsdk/auth/OPAuthInfo;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/oneplus/accountsdk/auth/OPAuthInfo;",
            "Lcom/oneplus/accountsdk/auth/OPAuthListener<",
            "Lcom/oneplus/accountsdk/entity/UserBindInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/oneplus/accountsdk/auth/OPAuth;->checkContextNotNull(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/oneplus/accountsdk/auth/OPAuth;->createConfig(Lcom/oneplus/accountsdk/auth/OPAuthInfo;)V

    sget-object v0, Lcom/oneplus/accountsdk/auth/OPAuth;->mAuth:Lcom/oneplus/accountsdk/auth/g;

    invoke-interface {v0, p1, p0, p2}, Lcom/oneplus/accountsdk/auth/g;->a(Lcom/oneplus/accountsdk/auth/OPAuthInfo;Landroid/content/Context;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V

    return-void
.end method

.method private static checkContextNotNull(Landroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Please check context, it must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static confirmCredentials(Landroid/app/Activity;Lcom/oneplus/accountsdk/auth/OPAuthInfo;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/oneplus/accountsdk/auth/OPAuthInfo;",
            "Lcom/oneplus/accountsdk/auth/OPAuthListener<",
            "Lcom/oneplus/accountsdk/entity/UserConfirmInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/oneplus/accountsdk/b;->a:Landroid/content/Context;

    sget-object p1, Lcom/oneplus/accountsdk/auth/OPAuth;->mAuth:Lcom/oneplus/accountsdk/auth/g;

    invoke-interface {p1, p0, p2}, Lcom/oneplus/accountsdk/auth/g;->a(Landroid/app/Activity;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static createConfig(Lcom/oneplus/accountsdk/auth/OPAuthInfo;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/oneplus/accountsdk/b;->a:Landroid/content/Context;

    new-instance v0, Lcom/oneplus/accountsdk/auth/d;

    invoke-direct {v0, p0}, Lcom/oneplus/accountsdk/auth/d;-><init>(Lcom/oneplus/accountsdk/auth/OPAuthInfo;)V

    sput-object v0, Lcom/oneplus/accountsdk/auth/d;->a:Lcom/oneplus/accountsdk/auth/d;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "OPAuthInfo should not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static getAccessAccountPremission(Landroid/app/Activity;I[Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/oneplus/accountsdk/auth/OPAuth;->mAuth:Lcom/oneplus/accountsdk/auth/g;

    invoke-interface {v0, p0, p1, p2}, Lcom/oneplus/accountsdk/auth/g;->a(Landroid/app/Activity;I[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getAccountInfo(Landroid/content/Context;Lcom/oneplus/accountsdk/auth/OPAuthInfo;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/oneplus/accountsdk/auth/OPAuthInfo;",
            "Lcom/oneplus/accountsdk/auth/OPAuthListener<",
            "Lcom/oneplus/accountsdk/entity/AuthUserInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/oneplus/accountsdk/auth/OPAuth;->checkContextNotNull(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/oneplus/accountsdk/auth/OPAuth;->createConfig(Lcom/oneplus/accountsdk/auth/OPAuthInfo;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/oneplus/accountsdk/b;->a:Landroid/content/Context;

    sget-object p1, Lcom/oneplus/accountsdk/auth/OPAuth;->mAuth:Lcom/oneplus/accountsdk/auth/g;

    invoke-interface {p1, p0, p2}, Lcom/oneplus/accountsdk/auth/g;->a(Landroid/content/Context;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V

    return-void
.end method

.method public static getAuthToken(Landroid/content/Context;Lcom/oneplus/accountsdk/auth/OPAuthInfo;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/oneplus/accountsdk/auth/OPAuthInfo;",
            "Lcom/oneplus/accountsdk/auth/OPAuthListener<",
            "Lcom/oneplus/accountsdk/entity/UserTokenInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/oneplus/accountsdk/auth/OPAuth;->checkContextNotNull(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/oneplus/accountsdk/b;->a:Landroid/content/Context;

    sget-object p1, Lcom/oneplus/accountsdk/auth/OPAuth;->mAuth:Lcom/oneplus/accountsdk/auth/g;

    invoke-interface {p1, p0, p2}, Lcom/oneplus/accountsdk/auth/g;->b(Landroid/content/Context;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V

    return-void
.end method

.method public static isLogin(Landroid/content/Context;Lcom/oneplus/accountsdk/auth/OPAuthInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/oneplus/accountsdk/auth/OPAuth;->checkContextNotNull(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/oneplus/accountsdk/auth/OPAuth;->createConfig(Lcom/oneplus/accountsdk/auth/OPAuthInfo;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/oneplus/accountsdk/b;->a:Landroid/content/Context;

    sget-object p1, Lcom/oneplus/accountsdk/auth/OPAuth;->mAuth:Lcom/oneplus/accountsdk/auth/g;

    invoke-interface {p1, p0}, Lcom/oneplus/accountsdk/auth/g;->a(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static reqAccountInfo(Landroid/content/Context;Lcom/oneplus/accountsdk/auth/OPAuthInfo;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/oneplus/accountsdk/auth/OPAuthInfo;",
            "Lcom/oneplus/accountsdk/auth/OPAuthListener<",
            "Lcom/oneplus/accountsdk/entity/AuthUserInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/oneplus/accountsdk/auth/OPAuth;->checkContextNotNull(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/oneplus/accountsdk/auth/OPAuth;->createConfig(Lcom/oneplus/accountsdk/auth/OPAuthInfo;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/oneplus/accountsdk/b;->a:Landroid/content/Context;

    sget-object v0, Lcom/oneplus/accountsdk/auth/OPAuth;->mAuth:Lcom/oneplus/accountsdk/auth/g;

    invoke-interface {v0, p0, p1, p2}, Lcom/oneplus/accountsdk/auth/g;->a(Landroid/content/Context;Lcom/oneplus/accountsdk/auth/OPAuthInfo;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V

    return-void
.end method

.method public static reqLogout(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/oneplus/accountsdk/auth/OPAuth;->checkContextNotNull(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/oneplus/accountsdk/b;->a:Landroid/content/Context;

    return-void
.end method

.method protected static sendBindResult(Lcom/oneplus/accountsdk/entity/UserBindInfo;)V
    .locals 1

    sget-object v0, Lcom/oneplus/accountsdk/auth/OPAuth;->mAuth:Lcom/oneplus/accountsdk/auth/g;

    invoke-interface {v0, p0}, Lcom/oneplus/accountsdk/auth/g;->a(Lcom/oneplus/accountsdk/entity/UserBindInfo;)V

    return-void
.end method

.method public static startAccountSettingsActivity(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/oneplus/accountsdk/auth/OPAuth;->checkContextNotNull(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/oneplus/accountsdk/b;->a:Landroid/content/Context;

    sget-object v0, Lcom/oneplus/accountsdk/auth/OPAuth;->mAuth:Lcom/oneplus/accountsdk/auth/g;

    invoke-interface {v0, p0}, Lcom/oneplus/accountsdk/auth/g;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static updateCredentials(Landroid/app/Activity;Lcom/oneplus/accountsdk/auth/OPAuthInfo;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/oneplus/accountsdk/auth/OPAuthInfo;",
            "Lcom/oneplus/accountsdk/auth/OPAuthListener<",
            "Lcom/oneplus/accountsdk/entity/UserConfirmInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/oneplus/accountsdk/b;->a:Landroid/content/Context;

    sget-object p0, Lcom/oneplus/accountsdk/auth/OPAuth;->mAuth:Lcom/oneplus/accountsdk/auth/g;

    invoke-interface {p0, p2}, Lcom/oneplus/accountsdk/auth/g;->a(Lcom/oneplus/accountsdk/auth/OPAuthListener;)V

    :cond_1
    :goto_0
    return-void
.end method
