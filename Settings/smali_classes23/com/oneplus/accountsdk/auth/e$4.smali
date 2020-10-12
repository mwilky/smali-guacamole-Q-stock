.class final Lcom/oneplus/accountsdk/auth/e$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/oneplus/accountsdk/auth/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/accountsdk/auth/e;->a(Landroid/app/Activity;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oneplus/accountsdk/auth/OPAuthListener;

.field final synthetic b:Lcom/oneplus/accountsdk/auth/e;


# direct methods
.method constructor <init>(Lcom/oneplus/accountsdk/auth/e;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/accountsdk/auth/e$4;->b:Lcom/oneplus/accountsdk/auth/e;

    iput-object p2, p0, Lcom/oneplus/accountsdk/auth/e$4;->a:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/accountsdk/auth/e$4;->a:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/oneplus/accountsdk/entity/UserConfirmInfo;

    invoke-direct {v0}, Lcom/oneplus/accountsdk/entity/UserConfirmInfo;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oneplus/accountsdk/entity/UserConfirmInfo;->isCorrect:Z

    const-string v1, "1003"

    iput-object v1, v0, Lcom/oneplus/accountsdk/entity/UserConfirmInfo;->resultCode:Ljava/lang/String;

    invoke-static {v1}, Lcom/oneplus/accountsdk/auth/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/accountsdk/entity/UserConfirmInfo;->resultMsg:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/accountsdk/auth/e$4;->a:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    invoke-interface {v1, v0}, Lcom/oneplus/accountsdk/auth/OPAuthListener;->onReqFinish(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/oneplus/accountsdk/auth/e$4;->a:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    invoke-interface {v0}, Lcom/oneplus/accountsdk/auth/OPAuthListener;->onReqComplete()V

    :cond_0
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/accountsdk/auth/e$4;->a:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    if-eqz v0, :cond_1

    const-string v0, "booleanResult"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/oneplus/accountsdk/entity/UserConfirmInfo;

    invoke-direct {v0}, Lcom/oneplus/accountsdk/entity/UserConfirmInfo;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/accountsdk/entity/UserConfirmInfo;->isCorrect:Z

    const-string v1, "1000"

    iput-object v1, v0, Lcom/oneplus/accountsdk/entity/UserConfirmInfo;->resultCode:Ljava/lang/String;

    invoke-static {v1}, Lcom/oneplus/accountsdk/auth/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/accountsdk/entity/UserConfirmInfo;->resultMsg:Ljava/lang/String;

    iput-object p1, v0, Lcom/oneplus/accountsdk/entity/UserConfirmInfo;->bundle:Landroid/os/Bundle;

    iget-object p1, p0, Lcom/oneplus/accountsdk/auth/e$4;->a:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    invoke-interface {p1, v0}, Lcom/oneplus/accountsdk/auth/OPAuthListener;->onReqFinish(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/oneplus/accountsdk/auth/e$4;->a:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    invoke-interface {p1}, Lcom/oneplus/accountsdk/auth/OPAuthListener;->onReqComplete()V

    return-void

    :cond_0
    new-instance p1, Lcom/oneplus/accountsdk/entity/UserConfirmInfo;

    invoke-direct {p1}, Lcom/oneplus/accountsdk/entity/UserConfirmInfo;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/oneplus/accountsdk/entity/UserConfirmInfo;->isCorrect:Z

    const-string v0, "3014"

    iput-object v0, p1, Lcom/oneplus/accountsdk/entity/UserConfirmInfo;->resultCode:Ljava/lang/String;

    invoke-static {v0}, Lcom/oneplus/accountsdk/auth/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oneplus/accountsdk/entity/UserConfirmInfo;->resultMsg:Ljava/lang/String;

    iget-object v0, p0, Lcom/oneplus/accountsdk/auth/e$4;->a:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    invoke-interface {v0, p1}, Lcom/oneplus/accountsdk/auth/OPAuthListener;->onReqFinish(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/oneplus/accountsdk/auth/e$4;->a:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    invoke-interface {p1}, Lcom/oneplus/accountsdk/auth/OPAuthListener;->onReqComplete()V

    :cond_1
    return-void
.end method
