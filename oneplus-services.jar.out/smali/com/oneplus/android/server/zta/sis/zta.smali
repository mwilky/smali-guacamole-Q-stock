.class Lcom/oneplus/android/server/zta/sis/zta;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/zta/sis/you;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/zta/sis/you;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/zta/sis/you;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/zta/sis/zta;->this$0:Lcom/oneplus/android/server/zta/sis/you;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "oneplus.intent.action.SAVE_JANK_DATE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/oneplus/android/server/zta/sis/zta;->this$0:Lcom/oneplus/android/server/zta/sis/you;

    invoke-static {p1}, Lcom/oneplus/android/server/zta/sis/you;->tsu(Lcom/oneplus/android/server/zta/sis/you;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/oneplus/android/server/zta/sis/you;->access$200()Ljava/util/HashMap;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/android/server/zta/sis/zta;->this$0:Lcom/oneplus/android/server/zta/sis/you;

    invoke-static {p0}, Lcom/oneplus/android/server/zta/sis/you;->rtg(Lcom/oneplus/android/server/zta/sis/you;)V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    iget-object p0, p0, Lcom/oneplus/android/server/zta/sis/zta;->this$0:Lcom/oneplus/android/server/zta/sis/you;

    invoke-static {p0, v0}, Lcom/oneplus/android/server/zta/sis/you;->you(Lcom/oneplus/android/server/zta/sis/you;Z)Z

    goto :goto_0

    :cond_2
    const-string p2, "oneplus.intent.action.MDM_JANK_DATE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oneplus/android/server/zta/sis/zta;->this$0:Lcom/oneplus/android/server/zta/sis/you;

    invoke-static {p1}, Lcom/oneplus/android/server/zta/sis/you;->ssp(Lcom/oneplus/android/server/zta/sis/you;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/oneplus/android/server/zta/sis/you;->access$200()Ljava/util/HashMap;

    move-result-object p1

    monitor-enter p1

    :try_start_1
    iget-object p0, p0, Lcom/oneplus/android/server/zta/sis/zta;->this$0:Lcom/oneplus/android/server/zta/sis/you;

    invoke-static {p0}, Lcom/oneplus/android/server/zta/sis/you;->you(Lcom/oneplus/android/server/zta/sis/you;)V

    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_3
    iget-object p0, p0, Lcom/oneplus/android/server/zta/sis/zta;->this$0:Lcom/oneplus/android/server/zta/sis/you;

    invoke-static {p0, v0}, Lcom/oneplus/android/server/zta/sis/you;->sis(Lcom/oneplus/android/server/zta/sis/you;Z)Z

    :cond_4
    :goto_0
    return-void
.end method
