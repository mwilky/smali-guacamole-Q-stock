.class public final Lcom/oneplus/accountsdk/auth/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/oneplus/accountsdk/auth/g;


# static fields
.field private static b:I


# instance fields
.field private a:Lcom/oneplus/accountsdk/entity/AuthUserInfo;

.field private c:Lcom/oneplus/accountsdk/auth/OPAuthListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/accountsdk/auth/OPAuthListener<",
            "Lcom/oneplus/accountsdk/entity/UserBindInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/oneplus/accountsdk/auth/e;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/oneplus/accountsdk/auth/e;)Lcom/oneplus/accountsdk/entity/AuthUserInfo;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/accountsdk/auth/e;->a:Lcom/oneplus/accountsdk/entity/AuthUserInfo;

    return-object p0
.end method

.method static synthetic a(Lcom/oneplus/accountsdk/auth/e;Lcom/oneplus/accountsdk/entity/AuthUserInfo;)Lcom/oneplus/accountsdk/entity/AuthUserInfo;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/accountsdk/auth/e;->a:Lcom/oneplus/accountsdk/entity/AuthUserInfo;

    return-object p1
.end method

.method static synthetic a(Lcom/oneplus/accountsdk/auth/e;Landroid/content/Context;Ljava/lang/String;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V
    .locals 1

    invoke-static {}, Lcom/oneplus/accountsdk/b/a/b;->a()Lcom/oneplus/accountsdk/b/a/b;

    new-instance v0, Lcom/oneplus/accountsdk/auth/e$6;

    invoke-direct {v0, p0, p3, p1}, Lcom/oneplus/accountsdk/auth/e$6;-><init>(Lcom/oneplus/accountsdk/auth/e;Lcom/oneplus/accountsdk/auth/OPAuthListener;Landroid/content/Context;)V

    const-string p0, "account.mob.token.exchange"

    invoke-static {p0}, Lcom/oneplus/accountsdk/b/d/a;->a(Ljava/lang/String;)Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;

    move-result-object p0

    sget-object p1, Lcom/oneplus/accountsdk/utils/OPAuthConstants;->ALITA_API_URL:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;->url(Ljava/lang/String;)Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;

    invoke-static {}, Lcom/oneplus/accountsdk/b/d/a;->a()Lorg/json/JSONObject;

    move-result-object p1

    :try_start_0
    const-string p3, "token"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "biz_content"

    invoke-virtual {p0, p2, p1}, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;

    invoke-static {}, Lcom/oneplus/accountbase/network/OPHttpClient;->getInstance()Lcom/oneplus/accountbase/network/OPHttpClient;

    move-result-object p1

    new-instance p2, Lcom/oneplus/accountbase/network/request/PostFormRequest;

    invoke-virtual {p0}, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;->build()Lcom/oneplus/accountbase/network/params/PostFormRequsetParams;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/oneplus/accountbase/network/request/PostFormRequest;-><init>(Lcom/oneplus/accountbase/network/params/PostFormRequsetParams;)V

    invoke-virtual {p1, p2, v0}, Lcom/oneplus/accountbase/network/OPHttpClient;->execute(Lcom/oneplus/accountbase/network/request/OPHttpRequest;Lcom/oneplus/accountbase/network/callback/OPHttpCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/oneplus/accountsdk/auth/e;Ljava/lang/String;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/accountsdk/auth/e;->a(Ljava/lang/String;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oneplus/accountsdk/auth/OPAuthListener<",
            "Lcom/oneplus/accountsdk/entity/AuthUserInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    new-instance v0, Lcom/oneplus/accountsdk/entity/AuthUserInfo;

    invoke-direct {v0}, Lcom/oneplus/accountsdk/entity/AuthUserInfo;-><init>()V

    iput-object v0, p0, Lcom/oneplus/accountsdk/auth/e;->a:Lcom/oneplus/accountsdk/entity/AuthUserInfo;

    iget-object v0, p0, Lcom/oneplus/accountsdk/auth/e;->a:Lcom/oneplus/accountsdk/entity/AuthUserInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oneplus/accountsdk/entity/AuthUserInfo;->isLogin:Z

    iput-object p1, v0, Lcom/oneplus/accountsdk/entity/AuthUserInfo;->resultCode:Ljava/lang/String;

    invoke-static {p1}, Lcom/oneplus/accountsdk/auth/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/oneplus/accountsdk/entity/AuthUserInfo;->resultMsg:Ljava/lang/String;

    iget-object p1, p0, Lcom/oneplus/accountsdk/auth/e;->a:Lcom/oneplus/accountsdk/entity/AuthUserInfo;

    invoke-interface {p2, p1}, Lcom/oneplus/accountsdk/auth/OPAuthListener;->onReqFinish(Ljava/lang/Object;)V

    invoke-interface {p2}, Lcom/oneplus/accountsdk/auth/OPAuthListener;->onReqComplete()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/oneplus/accountsdk/auth/e;Landroid/content/Context;Ljava/lang/String;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V
    .locals 1

    invoke-static {}, Lcom/oneplus/accountsdk/b/a/b;->a()Lcom/oneplus/accountsdk/b/a/b;

    new-instance v0, Lcom/oneplus/accountsdk/auth/e$5;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/oneplus/accountsdk/auth/e$5;-><init>(Lcom/oneplus/accountsdk/auth/e;Lcom/oneplus/accountsdk/auth/OPAuthListener;Ljava/lang/String;Landroid/content/Context;)V

    const-string p0, "user.get.internal"

    invoke-static {p0}, Lcom/oneplus/accountsdk/b/d/a;->a(Ljava/lang/String;)Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;

    move-result-object p0

    sget-object p1, Lcom/oneplus/accountsdk/utils/OPAuthConstants;->ALITA_API_URL:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;->url(Ljava/lang/String;)Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;

    invoke-static {}, Lcom/oneplus/accountsdk/b/d/a;->a()Lorg/json/JSONObject;

    move-result-object p1

    :try_start_0
    const-string p3, "token"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "biz_content"

    invoke-virtual {p0, p2, p1}, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;

    invoke-static {}, Lcom/oneplus/accountbase/network/OPHttpClient;->getInstance()Lcom/oneplus/accountbase/network/OPHttpClient;

    move-result-object p1

    new-instance p2, Lcom/oneplus/accountbase/network/request/PostFormRequest;

    invoke-virtual {p0}, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;->build()Lcom/oneplus/accountbase/network/params/PostFormRequsetParams;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/oneplus/accountbase/network/request/PostFormRequest;-><init>(Lcom/oneplus/accountbase/network/params/PostFormRequsetParams;)V

    invoke-virtual {p1, p2, v0}, Lcom/oneplus/accountbase/network/OPHttpClient;->execute(Lcom/oneplus/accountbase/network/request/OPHttpRequest;Lcom/oneplus/accountbase/network/callback/OPHttpCallback;)V

    return-void
.end method

.method private static b(Ljava/lang/String;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oneplus/accountsdk/auth/OPAuthListener<",
            "Lcom/oneplus/accountsdk/entity/UserBindInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Lcom/oneplus/accountsdk/entity/UserBindInfo;

    invoke-direct {v0}, Lcom/oneplus/accountsdk/entity/UserBindInfo;-><init>()V

    iput-object p0, v0, Lcom/oneplus/accountsdk/entity/UserBindInfo;->resultCode:Ljava/lang/String;

    invoke-static {p0}, Lcom/oneplus/accountsdk/auth/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/oneplus/accountsdk/entity/UserBindInfo;->resultMsg:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/oneplus/accountsdk/auth/OPAuthListener;->onReqFinish(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/oneplus/accountsdk/auth/OPAuthListener;->onReqComplete()V

    :cond_0
    return-void
.end method

.method static synthetic c(Landroid/content/Context;)I
    .locals 0

    invoke-static {p0}, Lcom/oneplus/accountsdk/auth/e;->e(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method private static c(Ljava/lang/String;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oneplus/accountsdk/auth/OPAuthListener<",
            "Lcom/oneplus/accountsdk/entity/UserConfirmInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Lcom/oneplus/accountsdk/entity/UserConfirmInfo;

    invoke-direct {v0}, Lcom/oneplus/accountsdk/entity/UserConfirmInfo;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oneplus/accountsdk/entity/UserConfirmInfo;->isCorrect:Z

    iput-object p0, v0, Lcom/oneplus/accountsdk/entity/UserConfirmInfo;->resultCode:Ljava/lang/String;

    invoke-static {p0}, Lcom/oneplus/accountsdk/auth/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/oneplus/accountsdk/entity/UserConfirmInfo;->resultMsg:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/oneplus/accountsdk/auth/OPAuthListener;->onReqFinish(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/oneplus/accountsdk/auth/OPAuthListener;->onReqComplete()V

    :cond_0
    return-void
.end method

.method static synthetic d(Landroid/content/Context;)V
    .locals 3

    if-eqz p0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.oneplus.account.authentication.failure"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.oneplus.account"

    const-string v2, "com.oneplus.account.authenticator.AuthenticationService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method private static e(Landroid/content/Context;)I
    .locals 3

    const-string v0, "com.oneplus.account"

    sget v1, Lcom/oneplus/accountsdk/auth/e;->b:I

    if-gez v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput p0, Lcom/oneplus/accountsdk/auth/e;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "versionCode: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/oneplus/accountsdk/auth/e;->b:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "sdk"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget p0, Lcom/oneplus/accountsdk/auth/e;->b:I

    return p0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/oneplus/accountsdk/auth/OPAuthListener<",
            "Lcom/oneplus/accountsdk/entity/UserConfirmInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/oneplus/accountsdk/auth/OPAuthListener;->onReqStart()V

    invoke-interface {p2}, Lcom/oneplus/accountsdk/auth/OPAuthListener;->onReqLoading()V

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/accountsdk/auth/e;->e(Landroid/content/Context;)I

    move-result v0

    if-gtz v0, :cond_1

    const-string p1, "2004"

    invoke-static {p1, p2}, Lcom/oneplus/accountsdk/auth/e;->c(Ljava/lang/String;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V

    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_2

    const-string p1, "2005"

    invoke-static {p1, p2}, Lcom/oneplus/accountsdk/auth/e;->c(Ljava/lang/String;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/accountsdk/auth/e;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/oneplus/accountsdk/auth/e$4;

    invoke-direct {v0, p0, p2}, Lcom/oneplus/accountsdk/auth/e$4;-><init>(Lcom/oneplus/accountsdk/auth/e;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {v0}, Lcom/oneplus/accountsdk/auth/c$a;->a()V

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p2

    const-string v2, "com.oneplus.account"

    invoke-virtual {p2, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p2

    array-length v2, p2

    if-gtz v2, :cond_4

    invoke-interface {v0}, Lcom/oneplus/accountsdk/auth/c$a;->a()V

    return-void

    :cond_4
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    aget-object v4, p2, v1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, p1

    invoke-virtual/range {v3 .. v8}, Landroid/accounts/AccountManager;->confirmCredentials(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/oneplus/accountsdk/auth/b;->a(Landroid/accounts/AccountManagerFuture;Lcom/oneplus/accountsdk/auth/c$a;)V

    return-void

    :cond_5
    if-eqz p2, :cond_7

    new-instance v0, Lcom/oneplus/accountsdk/entity/UserConfirmInfo;

    invoke-direct {v0}, Lcom/oneplus/accountsdk/entity/UserConfirmInfo;-><init>()V

    iput-boolean v1, v0, Lcom/oneplus/accountsdk/entity/UserConfirmInfo;->isCorrect:Z

    const-string v1, "1001"

    iput-object v1, v0, Lcom/oneplus/accountsdk/entity/UserConfirmInfo;->resultCode:Ljava/lang/String;

    invoke-static {v1}, Lcom/oneplus/accountsdk/auth/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/accountsdk/entity/UserConfirmInfo;->resultMsg:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/accountsdk/auth/a;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "2003"

    iput-object p1, v0, Lcom/oneplus/accountsdk/entity/UserConfirmInfo;->resultCode:Ljava/lang/String;

    invoke-static {p1}, Lcom/oneplus/accountsdk/auth/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/oneplus/accountsdk/entity/UserConfirmInfo;->resultMsg:Ljava/lang/String;

    :cond_6
    invoke-interface {p2, v0}, Lcom/oneplus/accountsdk/auth/OPAuthListener;->onReqFinish(Ljava/lang/Object;)V

    invoke-interface {p2}, Lcom/oneplus/accountsdk/auth/OPAuthListener;->onReqComplete()V

    :cond_7
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/oneplus/accountsdk/auth/OPAuthInfo;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V
    .locals 3
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

    invoke-static {p1}, Lcom/oneplus/accountsdk/auth/e;->e(Landroid/content/Context;)I

    move-result v0

    if-gtz v0, :cond_0

    const-string p1, "2004"

    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/oneplus/accountsdk/auth/e;->a(Ljava/lang/String;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/oneplus/accountsdk/auth/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "2003"

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/oneplus/accountsdk/auth/e$3;

    invoke-direct {v0, p0, p3, p1}, Lcom/oneplus/accountsdk/auth/e$3;-><init>(Lcom/oneplus/accountsdk/auth/e;Lcom/oneplus/accountsdk/auth/OPAuthListener;Landroid/content/Context;)V

    new-instance p3, Landroid/content/Intent;

    const-class v1, Lcom/oneplus/accountsdk/auth/OPAuthorizeActivity;

    invoke-direct {p3, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Lcom/oneplus/accountsdk/auth/OPAuthResponse;

    invoke-direct {v2, v0}, Lcom/oneplus/accountsdk/auth/OPAuthResponse;-><init>(Lcom/oneplus/accountsdk/a;)V

    const-string v0, "response"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "extra_bundle"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v0, 0x1

    const-string v1, "extra_middle"

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p2}, Lcom/oneplus/accountsdk/auth/a;->a(Lcom/oneplus/accountsdk/auth/OPAuthInfo;)[Ljava/lang/String;

    move-result-object p2

    const-string v0, "extra_bind_info_array"

    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    instance-of p2, p1, Landroid/app/Activity;

    if-nez p2, :cond_2

    const/high16 p2, 0x10000000

    invoke-virtual {p3, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_2
    invoke-virtual {p1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/oneplus/accountsdk/auth/OPAuthListener<",
            "Lcom/oneplus/accountsdk/entity/AuthUserInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/oneplus/accountsdk/auth/OPAuthListener;->onReqStart()V

    invoke-interface {p2}, Lcom/oneplus/accountsdk/auth/OPAuthListener;->onReqLoading()V

    :cond_0
    invoke-static {p1}, Lcom/oneplus/accountsdk/auth/e;->e(Landroid/content/Context;)I

    move-result v0

    if-gtz v0, :cond_1

    const-string p1, "2004"

    invoke-direct {p0, p1, p2}, Lcom/oneplus/accountsdk/auth/e;->a(Ljava/lang/String;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/oneplus/accountsdk/auth/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/oneplus/accountsdk/auth/e$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/accountsdk/auth/e$1;-><init>(Lcom/oneplus/accountsdk/auth/e;Landroid/content/Context;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V

    invoke-static {p1, v0}, Lcom/oneplus/accountsdk/auth/b;->a(Landroid/content/Context;Lcom/oneplus/accountsdk/auth/c$a;)V

    return-void

    :cond_2
    invoke-static {p1}, Lcom/oneplus/accountsdk/auth/a;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "2003"

    goto :goto_0

    :cond_3
    const-string p1, "1001"

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/oneplus/accountsdk/auth/e;->a(Ljava/lang/String;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V

    return-void
.end method

.method public final a(Lcom/oneplus/accountsdk/auth/OPAuthInfo;Landroid/content/Context;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/accountsdk/auth/OPAuthInfo;",
            "Landroid/content/Context;",
            "Lcom/oneplus/accountsdk/auth/OPAuthListener<",
            "Lcom/oneplus/accountsdk/entity/UserBindInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p3, p0, Lcom/oneplus/accountsdk/auth/e;->c:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/oneplus/accountsdk/auth/OPAuthListener;->onReqStart()V

    invoke-interface {p3}, Lcom/oneplus/accountsdk/auth/OPAuthListener;->onReqLoading()V

    :cond_0
    invoke-static {p2}, Lcom/oneplus/accountsdk/auth/e;->e(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x1a4

    if-ge v0, v1, :cond_1

    const-string p1, "2005"

    invoke-static {p1, p3}, Lcom/oneplus/accountsdk/auth/e;->b(Ljava/lang/String;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V

    return-void

    :cond_1
    invoke-virtual {p0, p2}, Lcom/oneplus/accountsdk/auth/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->isNeedEmail()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->isNeedPhoneNum()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "1003"

    invoke-static {p1, p3}, Lcom/oneplus/accountsdk/auth/e;->b(Ljava/lang/String;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V

    return-void

    :cond_2
    :try_start_0
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.oneplus.account.action.bind.info.page"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "extra_request_from"

    const-string v1, "oneplus_sdk"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "extra_package_name"

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "extra_bind_info_array"

    invoke-static {p1}, Lcom/oneplus/accountsdk/auth/a;->a(Lcom/oneplus/accountsdk/auth/OPAuthInfo;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    instance-of p1, p2, Landroid/app/Activity;

    if-nez p1, :cond_3

    const/high16 p1, 0x10000000

    invoke-virtual {p3, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    :try_start_1
    invoke-virtual {p2, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-exception p1

    return-void

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string p1, "OPAccountSDK"

    const-string p2, "OnePlus Account is not existed. Please check the phone has OnePlus Account"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const-string p1, "1001"

    invoke-static {p1, p3}, Lcom/oneplus/accountsdk/auth/e;->b(Ljava/lang/String;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V

    return-void
.end method

.method public final a(Lcom/oneplus/accountsdk/auth/OPAuthListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/accountsdk/auth/OPAuthListener<",
            "Lcom/oneplus/accountsdk/entity/UserConfirmInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/oneplus/accountsdk/auth/OPAuthListener;->onReqStart()V

    invoke-interface {p1}, Lcom/oneplus/accountsdk/auth/OPAuthListener;->onReqLoading()V

    :cond_0
    const-string v0, "2005"

    invoke-static {v0, p1}, Lcom/oneplus/accountsdk/auth/e;->c(Ljava/lang/String;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V

    return-void
.end method

.method public final a(Lcom/oneplus/accountsdk/entity/UserBindInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/accountsdk/auth/e;->c:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/oneplus/accountsdk/auth/OPAuthListener;->onReqFinish(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/oneplus/accountsdk/auth/e;->c:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    invoke-interface {p1}, Lcom/oneplus/accountsdk/auth/OPAuthListener;->onReqComplete()V

    return-void

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "listener is null"

    invoke-static {v0, p1}, Lcom/oneplus/accountsdk/utils/OnePlusAuthLogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Landroid/app/Activity;I[Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const/4 v3, 0x1

    if-lt v1, v2, :cond_3

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/accountsdk/auth/e;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v3

    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    :try_start_0
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v1, "flag"

    const-string v2, ""

    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "extra_bind_info_array"

    invoke-virtual {v8, v1, p3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string p3, "com.oneplus.account"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v8}, Landroid/accounts/AccountManager;->newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/oneplus/accountsdk/utils/OnePlusAuthLogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p3, p1, p2}, Lcom/oneplus/accountsdk/auth/a;->a([Ljava/lang/String;Landroid/content/Context;I)V

    :goto_0
    return v0

    :cond_3
    const-string v1, "android.permission.GET_ACCOUNTS"

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/accountsdk/auth/e;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v3

    :cond_4
    invoke-static {p3, p1, p2}, Lcom/oneplus/accountsdk/auth/a;->a([Ljava/lang/String;Landroid/content/Context;I)V

    :cond_5
    return v0
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Lcom/oneplus/accountsdk/auth/b;->a(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object p1

    array-length p1, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Landroid/content/Context;)V
    .locals 3

    const-string v0, "OPAccountSDK"

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/oneplus/accountsdk/auth/e;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/oneplus/accountsdk/auth/a;->a(Landroid/content/Context;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/oneplus/accountsdk/auth/e;->e(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0x14a

    if-lt v1, v2, :cond_1

    invoke-static {p1}, Lcom/oneplus/accountsdk/auth/a;->a(Landroid/content/Context;)V

    return-void

    :cond_1
    const-string p1, "Account versioncode is lower than 330"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string p1, "OnePlus Account is not existed. Please check the phone has OnePlus Account"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final b(Landroid/content/Context;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/oneplus/accountsdk/auth/OPAuthListener<",
            "Lcom/oneplus/accountsdk/entity/UserTokenInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/oneplus/accountsdk/auth/OPAuthListener;->onReqStart()V

    invoke-interface {p2}, Lcom/oneplus/accountsdk/auth/OPAuthListener;->onReqLoading()V

    :cond_0
    new-instance v0, Lcom/oneplus/accountsdk/auth/e$2;

    invoke-direct {v0, p0, p2}, Lcom/oneplus/accountsdk/auth/e$2;-><init>(Lcom/oneplus/accountsdk/auth/e;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V

    invoke-static {p1, v0}, Lcom/oneplus/accountsdk/auth/b;->a(Landroid/content/Context;Lcom/oneplus/accountsdk/auth/c$a;)V

    return-void
.end method
