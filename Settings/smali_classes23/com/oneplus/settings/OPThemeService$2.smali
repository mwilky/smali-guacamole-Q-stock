.class Lcom/oneplus/settings/OPThemeService$2;
.super Landroid/content/BroadcastReceiver;
.source "OPThemeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPThemeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPThemeService;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPThemeService;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/OPThemeService$2;->this$0:Lcom/oneplus/settings/OPThemeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.settings.oneplus_theme_ready"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive arg1.getAction() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPThemeService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/settings/OPThemeService$2;->this$0:Lcom/oneplus/settings/OPThemeService;

    invoke-static {v0}, Lcom/oneplus/settings/OPThemeService;->access$100(Lcom/oneplus/settings/OPThemeService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPThemeService$2;->this$0:Lcom/oneplus/settings/OPThemeService;

    invoke-static {v0}, Lcom/oneplus/settings/OPThemeService;->access$100(Lcom/oneplus/settings/OPThemeService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/OPThemeService$2;->this$0:Lcom/oneplus/settings/OPThemeService;

    invoke-static {v1}, Lcom/oneplus/settings/OPThemeService;->access$100(Lcom/oneplus/settings/OPThemeService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method
