.class Lcom/android/server/ire;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fto;


# direct methods
.method constructor <init>(Lcom/android/server/fto;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ire;->this$0:Lcom/android/server/fto;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_a

    const/4 v0, 0x2

    const/4 v2, 0x0

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p1, p0, Lcom/android/server/ire;->this$0:Lcom/android/server/fto;

    invoke-static {p1}, Lcom/android/server/fto;->zta(Lcom/android/server/fto;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/ire;->this$0:Lcom/android/server/fto;

    invoke-static {v0}, Lcom/android/server/fto;->tsu(Lcom/android/server/fto;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/ire;->this$0:Lcom/android/server/fto;

    invoke-static {v0}, Lcom/android/server/fto;->rtg(Lcom/android/server/fto;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/server/fto;->access$300()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CommonFrontMonitor"

    const-string v2, "settings changed registerFrontPackageListener"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/ire;->this$0:Lcom/android/server/fto;

    invoke-virtual {v0, v2}, Lcom/android/server/OnePlusUtil$zta;->zta(Lcom/android/server/OnePlusUtil$zta$you;)V

    iget-object p0, p0, Lcom/android/server/ire;->this$0:Lcom/android/server/fto;

    invoke-static {p0, v1}, Lcom/android/server/fto;->you(Lcom/android/server/fto;Z)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/ire;->this$0:Lcom/android/server/fto;

    invoke-static {v0}, Lcom/android/server/fto;->rtg(Lcom/android/server/fto;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/server/fto;->access$300()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "CommonFrontMonitor"

    const-string v1, "settings changed unregisterFrontPackageListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ire;->this$0:Lcom/android/server/fto;

    invoke-virtual {v0, v1}, Lcom/android/server/OnePlusUtil$zta;->you(Lcom/android/server/OnePlusUtil$zta$you;)V

    iget-object p0, p0, Lcom/android/server/ire;->this$0:Lcom/android/server/fto;

    invoke-static {p0, v2}, Lcom/android/server/fto;->you(Lcom/android/server/fto;Z)Z

    :cond_4
    :goto_0
    monitor-exit p1

    goto/16 :goto_2

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    iget-object p1, p0, Lcom/android/server/ire;->this$0:Lcom/android/server/fto;

    invoke-static {p1}, Lcom/android/server/fto;->zta(Lcom/android/server/fto;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/ire;->this$0:Lcom/android/server/fto;

    invoke-static {v0}, Lcom/android/server/fto;->you(Lcom/android/server/fto;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/ire;->this$0:Lcom/android/server/fto;

    invoke-static {v0}, Lcom/android/server/fto;->sis(Lcom/android/server/fto;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/android/server/fto;->access$300()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "CommonFrontMonitor"

    const-string v2, "settings changed registerFrontPackageListener"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/ire;->this$0:Lcom/android/server/fto;

    invoke-virtual {v0, v2}, Lcom/android/server/OnePlusUtil$zta;->zta(Lcom/android/server/OnePlusUtil$zta$you;)V

    iget-object p0, p0, Lcom/android/server/ire;->this$0:Lcom/android/server/fto;

    invoke-static {p0, v1}, Lcom/android/server/fto;->zta(Lcom/android/server/fto;Z)Z

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/server/ire;->this$0:Lcom/android/server/fto;

    invoke-static {v0}, Lcom/android/server/fto;->sis(Lcom/android/server/fto;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/server/fto;->access$300()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "CommonFrontMonitor"

    const-string v1, "settings changed unregisterFrontPackageListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ire;->this$0:Lcom/android/server/fto;

    invoke-virtual {v0, v1}, Lcom/android/server/OnePlusUtil$zta;->you(Lcom/android/server/OnePlusUtil$zta$you;)V

    iget-object p0, p0, Lcom/android/server/ire;->this$0:Lcom/android/server/fto;

    invoke-static {p0, v2}, Lcom/android/server/fto;->zta(Lcom/android/server/fto;Z)Z

    :cond_9
    :goto_1
    monitor-exit p1

    goto :goto_2

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_a
    if-nez v0, :cond_b

    const-string p0, "CommonFrontMonitor"

    const-string p1, "[scene] arguments is null while handling CMD_FETCH_CONFIG"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    const-string p1, "CONFIG_NAME"

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object p0, p0, Lcom/android/server/ire;->this$0:Lcom/android/server/fto;

    invoke-static {p0, p1}, Lcom/android/server/fto;->zta(Lcom/android/server/fto;Ljava/lang/String;)V

    :cond_c
    :goto_2
    return-void
.end method
