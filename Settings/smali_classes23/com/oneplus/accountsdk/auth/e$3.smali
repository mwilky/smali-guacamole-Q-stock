.class final Lcom/oneplus/accountsdk/auth/e$3;
.super Lcom/oneplus/accountsdk/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/accountsdk/auth/e;->a(Landroid/content/Context;Lcom/oneplus/accountsdk/auth/OPAuthInfo;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oneplus/accountsdk/auth/OPAuthListener;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/oneplus/accountsdk/auth/e;


# direct methods
.method constructor <init>(Lcom/oneplus/accountsdk/auth/e;Lcom/oneplus/accountsdk/auth/OPAuthListener;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/accountsdk/auth/e$3;->c:Lcom/oneplus/accountsdk/auth/e;

    iput-object p2, p0, Lcom/oneplus/accountsdk/auth/e$3;->a:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    iput-object p3, p0, Lcom/oneplus/accountsdk/auth/e$3;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/oneplus/accountsdk/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/accountsdk/auth/e$3;->a:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oneplus/accountsdk/auth/OPAuthListener;->onReqStart()V

    iget-object v0, p0, Lcom/oneplus/accountsdk/auth/e$3;->a:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    invoke-interface {v0}, Lcom/oneplus/accountsdk/auth/OPAuthListener;->onReqLoading()V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/accountsdk/auth/e$3;->c:Lcom/oneplus/accountsdk/auth/e;

    iget-object v1, p0, Lcom/oneplus/accountsdk/auth/e$3;->a:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    const-string v2, "3014"

    invoke-static {v0, v2, v1}, Lcom/oneplus/accountsdk/auth/e;->a(Lcom/oneplus/accountsdk/auth/e;Ljava/lang/String;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/accountsdk/auth/e$3;->a:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oneplus/accountsdk/auth/OPAuthListener;->onReqStart()V

    iget-object v0, p0, Lcom/oneplus/accountsdk/auth/e$3;->a:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    invoke-interface {v0}, Lcom/oneplus/accountsdk/auth/OPAuthListener;->onReqLoading()V

    :cond_0
    const-string v0, "extra_statusCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "2004"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/oneplus/accountsdk/auth/e$3;->c:Lcom/oneplus/accountsdk/auth/e;

    iget-object v0, p0, Lcom/oneplus/accountsdk/auth/e$3;->a:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    invoke-static {p1, v1, v0}, Lcom/oneplus/accountsdk/auth/e;->a(Lcom/oneplus/accountsdk/auth/e;Ljava/lang/String;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V

    return-void

    :cond_1
    const-string v0, "authtoken"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/accountsdk/auth/e$3;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/accountsdk/auth/e;->c(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x190

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lcom/oneplus/accountsdk/auth/e$3;->c:Lcom/oneplus/accountsdk/auth/e;

    iget-object v1, p0, Lcom/oneplus/accountsdk/auth/e$3;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/accountsdk/auth/e$3;->a:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    invoke-static {v0, v1, p1, v2}, Lcom/oneplus/accountsdk/auth/e;->a(Lcom/oneplus/accountsdk/auth/e;Landroid/content/Context;Ljava/lang/String;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/oneplus/accountsdk/auth/e$3;->c:Lcom/oneplus/accountsdk/auth/e;

    iget-object v1, p0, Lcom/oneplus/accountsdk/auth/e$3;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/accountsdk/auth/e$3;->a:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    invoke-static {v0, v1, p1, v2}, Lcom/oneplus/accountsdk/auth/e;->b(Lcom/oneplus/accountsdk/auth/e;Landroid/content/Context;Ljava/lang/String;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V

    return-void
.end method
