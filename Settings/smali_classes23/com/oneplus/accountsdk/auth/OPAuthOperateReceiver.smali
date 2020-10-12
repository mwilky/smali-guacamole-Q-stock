.class public Lcom/oneplus/accountsdk/auth/OPAuthOperateReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "5000"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.oneplus.account.bind.info"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    const-string v0, "extra_bind_result"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "extra_error_code"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/oneplus/accountsdk/entity/UserBindInfo;

    invoke-direct {v1}, Lcom/oneplus/accountsdk/entity/UserBindInfo;-><init>()V

    iput-boolean v0, v1, Lcom/oneplus/accountsdk/entity/UserBindInfo;->bindSuccess:Z

    if-eqz v0, :cond_0

    iput-object p1, v1, Lcom/oneplus/accountsdk/entity/UserBindInfo;->resultCode:Ljava/lang/String;

    invoke-static {p1}, Lcom/oneplus/accountsdk/auth/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, v1, Lcom/oneplus/accountsdk/entity/UserBindInfo;->resultMsg:Ljava/lang/String;

    goto :goto_1

    :cond_0
    iput-object p2, v1, Lcom/oneplus/accountsdk/entity/UserBindInfo;->resultCode:Ljava/lang/String;

    invoke-static {p2}, Lcom/oneplus/accountsdk/auth/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_1
    invoke-static {v1}, Lcom/oneplus/accountsdk/auth/OPAuth;->sendBindResult(Lcom/oneplus/accountsdk/entity/UserBindInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    :cond_1
    return-void
.end method
