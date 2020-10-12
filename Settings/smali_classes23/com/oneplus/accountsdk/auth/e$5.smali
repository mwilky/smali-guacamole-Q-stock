.class final Lcom/oneplus/accountsdk/auth/e$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/oneplus/accountbase/network/callback/OPHttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/accountsdk/auth/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oneplus/accountsdk/auth/OPAuthListener;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/oneplus/accountsdk/auth/e;


# direct methods
.method constructor <init>(Lcom/oneplus/accountsdk/auth/e;Lcom/oneplus/accountsdk/auth/OPAuthListener;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/accountsdk/auth/e$5;->d:Lcom/oneplus/accountsdk/auth/e;

    iput-object p2, p0, Lcom/oneplus/accountsdk/auth/e$5;->a:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    iput-object p3, p0, Lcom/oneplus/accountsdk/auth/e$5;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/oneplus/accountsdk/auth/e$5;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Lokhttp3/Call;Ljava/lang/Exception;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/oneplus/accountsdk/utils/OnePlusAuthLogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/oneplus/accountsdk/auth/e$5;->d:Lcom/oneplus/accountsdk/auth/e;

    iget-object p2, p0, Lcom/oneplus/accountsdk/auth/e$5;->a:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    const-string v0, "2002"

    invoke-static {p1, v0, p2}, Lcom/oneplus/accountsdk/auth/e;->a(Lcom/oneplus/accountsdk/auth/e;Ljava/lang/String;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V

    return-void
.end method

.method public final onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3

    const-string p1, "1000"

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/oneplus/accountsdk/b/e/a;

    invoke-direct {v0}, Lcom/oneplus/accountsdk/b/e/a;-><init>()V

    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/oneplus/accountsdk/b/e/a;->b(Ljava/lang/String;)Lcom/oneplus/accountsdk/b/e/b;

    iget-object v1, p0, Lcom/oneplus/accountsdk/auth/e$5;->a:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/oneplus/accountsdk/b/e/a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/accountsdk/auth/e$5;->d:Lcom/oneplus/accountsdk/auth/e;

    new-instance v2, Lcom/oneplus/accountsdk/entity/AuthUserInfo;

    invoke-direct {v2}, Lcom/oneplus/accountsdk/entity/AuthUserInfo;-><init>()V

    invoke-static {v1, v2}, Lcom/oneplus/accountsdk/auth/e;->a(Lcom/oneplus/accountsdk/auth/e;Lcom/oneplus/accountsdk/entity/AuthUserInfo;)Lcom/oneplus/accountsdk/entity/AuthUserInfo;

    iget-object v1, p0, Lcom/oneplus/accountsdk/auth/e$5;->d:Lcom/oneplus/accountsdk/auth/e;

    invoke-static {v1}, Lcom/oneplus/accountsdk/auth/e;->a(Lcom/oneplus/accountsdk/auth/e;)Lcom/oneplus/accountsdk/entity/AuthUserInfo;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/oneplus/accountsdk/entity/AuthUserInfo;->isLogin:Z

    iget-object v1, p0, Lcom/oneplus/accountsdk/auth/e$5;->d:Lcom/oneplus/accountsdk/auth/e;

    invoke-static {v1}, Lcom/oneplus/accountsdk/auth/e;->a(Lcom/oneplus/accountsdk/auth/e;)Lcom/oneplus/accountsdk/entity/AuthUserInfo;

    move-result-object v1

    iput-object p1, v1, Lcom/oneplus/accountsdk/entity/AuthUserInfo;->resultCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/accountsdk/auth/e$5;->d:Lcom/oneplus/accountsdk/auth/e;

    invoke-static {v1}, Lcom/oneplus/accountsdk/auth/e;->a(Lcom/oneplus/accountsdk/auth/e;)Lcom/oneplus/accountsdk/entity/AuthUserInfo;

    move-result-object v1

    invoke-static {p1}, Lcom/oneplus/accountsdk/auth/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/oneplus/accountsdk/entity/AuthUserInfo;->resultMsg:Ljava/lang/String;

    iget-object p1, p0, Lcom/oneplus/accountsdk/auth/e$5;->d:Lcom/oneplus/accountsdk/auth/e;

    invoke-static {p1}, Lcom/oneplus/accountsdk/auth/e;->a(Lcom/oneplus/accountsdk/auth/e;)Lcom/oneplus/accountsdk/entity/AuthUserInfo;

    move-result-object p1

    iget-object v1, p0, Lcom/oneplus/accountsdk/auth/e$5;->b:Ljava/lang/String;

    iput-object v1, p1, Lcom/oneplus/accountsdk/entity/AuthUserInfo;->authToken:Ljava/lang/String;

    iget-object p1, p0, Lcom/oneplus/accountsdk/auth/e$5;->d:Lcom/oneplus/accountsdk/auth/e;

    invoke-static {p1}, Lcom/oneplus/accountsdk/auth/e;->a(Lcom/oneplus/accountsdk/auth/e;)Lcom/oneplus/accountsdk/entity/AuthUserInfo;

    move-result-object p1

    iget-object v0, v0, Lcom/oneplus/accountsdk/b/e/a;->f:Ljava/lang/String;

    iput-object v0, p1, Lcom/oneplus/accountsdk/entity/AuthUserInfo;->userName:Ljava/lang/String;

    iget-object p1, p0, Lcom/oneplus/accountsdk/auth/e$5;->d:Lcom/oneplus/accountsdk/auth/e;

    invoke-static {p1}, Lcom/oneplus/accountsdk/auth/e;->a(Lcom/oneplus/accountsdk/auth/e;)Lcom/oneplus/accountsdk/entity/AuthUserInfo;

    move-result-object p1

    invoke-static {p2}, Lcom/oneplus/accountsdk/b/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/oneplus/accountsdk/entity/AuthUserInfo;->jsonString:Ljava/lang/String;

    iget-object p1, p0, Lcom/oneplus/accountsdk/auth/e$5;->a:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    iget-object p2, p0, Lcom/oneplus/accountsdk/auth/e$5;->d:Lcom/oneplus/accountsdk/auth/e;

    invoke-static {p2}, Lcom/oneplus/accountsdk/auth/e;->a(Lcom/oneplus/accountsdk/auth/e;)Lcom/oneplus/accountsdk/entity/AuthUserInfo;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/oneplus/accountsdk/auth/OPAuthListener;->onReqFinish(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/oneplus/accountsdk/auth/e$5;->a:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    invoke-interface {p1}, Lcom/oneplus/accountsdk/auth/OPAuthListener;->onReqComplete()V

    return-void

    :cond_1
    const-string p1, "1002"

    iget-object p2, v0, Lcom/oneplus/accountsdk/b/e/a;->o:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, v1}, Lcom/oneplus/accountsdk/utils/OnePlusAuthLogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p2, "SERVICE_AUTH_TOKEN_INVALID"

    iget-object v0, v0, Lcom/oneplus/accountsdk/b/e/a;->o:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p1, "3040"

    iget-object p2, p0, Lcom/oneplus/accountsdk/auth/e$5;->c:Landroid/content/Context;

    invoke-static {p2}, Lcom/oneplus/accountsdk/auth/e;->d(Landroid/content/Context;)V

    :cond_2
    iget-object p2, p0, Lcom/oneplus/accountsdk/auth/e$5;->d:Lcom/oneplus/accountsdk/auth/e;

    iget-object v0, p0, Lcom/oneplus/accountsdk/auth/e$5;->a:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    invoke-static {p2, p1, v0}, Lcom/oneplus/accountsdk/auth/e;->a(Lcom/oneplus/accountsdk/auth/e;Ljava/lang/String;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method
