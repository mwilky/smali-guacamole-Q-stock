.class Lcom/oneplus/android/server/ywr;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/vdb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/vdb;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/ywr;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oneplus.intent.action.INCALLUI_ANSWER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isVideo"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {}, Lcom/oneplus/android/server/vdb;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOneplusTelReceiver isVideoTelConnect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpMotorManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/oneplus/android/server/vdb;->access$400()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/oneplus/android/server/vdb;->access$500()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/oneplus/android/server/ywr;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {v1}, Lcom/oneplus/android/server/vdb;->irq(Lcom/oneplus/android/server/vdb;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/android/server/ywr;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {v1, v0}, Lcom/oneplus/android/server/vdb;->tsu(Lcom/oneplus/android/server/vdb;Z)Z

    :cond_2
    iget-object v1, p0, Lcom/oneplus/android/server/ywr;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {v1}, Lcom/oneplus/android/server/vdb;->c(Lcom/oneplus/android/server/vdb;)Lcom/oneplus/android/server/scene/GameModeObserver;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/android/server/ywr;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {v1}, Lcom/oneplus/android/server/vdb;->c(Lcom/oneplus/android/server/vdb;)Lcom/oneplus/android/server/scene/GameModeObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/android/server/scene/GameModeObserver;->isGameModeOn()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/android/server/ywr;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {v1}, Lcom/oneplus/android/server/vdb;->c(Lcom/oneplus/android/server/vdb;)Lcom/oneplus/android/server/scene/GameModeObserver;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/oneplus/android/server/scene/GameModeObserver;->isAnswerCallBySpeaker(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v0, v2

    :cond_3
    if-nez v0, :cond_4

    if-nez p2, :cond_4

    invoke-static {}, Lcom/oneplus/android/server/vdb;->access$800()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oneplus/android/server/ywr;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p1, v2}, Lcom/oneplus/android/server/vdb;->rtg(Lcom/oneplus/android/server/vdb;Z)Z

    iget-object p1, p0, Lcom/oneplus/android/server/ywr;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p1}, Lcom/oneplus/android/server/vdb;->you(Lcom/oneplus/android/server/vdb;)V

    iget-object p0, p0, Lcom/oneplus/android/server/ywr;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p0}, Lcom/oneplus/android/server/vdb;->sis(Lcom/oneplus/android/server/vdb;)I

    :cond_4
    return-void
.end method
