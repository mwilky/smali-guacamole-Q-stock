.class final Lcom/oneplus/accountsdk/auth/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/oneplus/accountsdk/auth/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/accountsdk/auth/e;->a(Landroid/content/Context;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/oneplus/accountsdk/auth/OPAuthListener;

.field final synthetic c:Lcom/oneplus/accountsdk/auth/e;


# direct methods
.method constructor <init>(Lcom/oneplus/accountsdk/auth/e;Landroid/content/Context;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/accountsdk/auth/e$1;->c:Lcom/oneplus/accountsdk/auth/e;

    iput-object p2, p0, Lcom/oneplus/accountsdk/auth/e$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/oneplus/accountsdk/auth/e$1;->b:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/accountsdk/auth/e$1;->c:Lcom/oneplus/accountsdk/auth/e;

    iget-object v1, p0, Lcom/oneplus/accountsdk/auth/e$1;->b:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    const-string v2, "1002"

    invoke-static {v0, v2, v1}, Lcom/oneplus/accountsdk/auth/e;->a(Lcom/oneplus/accountsdk/auth/e;Ljava/lang/String;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "authtoken"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/accountsdk/auth/e$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/accountsdk/auth/e;->c(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x190

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/accountsdk/auth/e$1;->c:Lcom/oneplus/accountsdk/auth/e;

    iget-object v1, p0, Lcom/oneplus/accountsdk/auth/e$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/accountsdk/auth/e$1;->b:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    invoke-static {v0, v1, p1, v2}, Lcom/oneplus/accountsdk/auth/e;->a(Lcom/oneplus/accountsdk/auth/e;Landroid/content/Context;Ljava/lang/String;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/accountsdk/auth/e$1;->c:Lcom/oneplus/accountsdk/auth/e;

    iget-object v1, p0, Lcom/oneplus/accountsdk/auth/e$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/accountsdk/auth/e$1;->b:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    invoke-static {v0, v1, p1, v2}, Lcom/oneplus/accountsdk/auth/e;->b(Lcom/oneplus/accountsdk/auth/e;Landroid/content/Context;Ljava/lang/String;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V

    return-void
.end method
