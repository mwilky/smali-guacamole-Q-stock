.class Lcom/android/server/l$ssp;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ssp"
.end annotation


# static fields
.field public static final MSG_INIT:I = 0x0

.field public static final bud:I = 0x4

.field public static final cgv:I = 0x2

.field public static final les:I = 0x5

.field public static final veq:I = 0x1

.field public static final vju:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/server/l;


# direct methods
.method constructor <init>(Lcom/android/server/l;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/l$ssp;->this$0:Lcom/android/server/l;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverHeatingDiagnosis"

    invoke-static {v1, v0}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_a

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/android/server/l$ssp;->this$0:Lcom/android/server/l;

    iget-object v0, v0, Lcom/android/server/l;->Lg:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/AppRecordManager;->cjf(I)I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/l$ssp;->this$0:Lcom/android/server/l;

    iget-object v1, v1, Lcom/android/server/l;->Lg:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/android/server/l$ssp;->this$0:Lcom/android/server/l;

    iget-object p0, p0, Lcom/android/server/l;->Lg:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit v0

    goto/16 :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    iget-object p1, p0, Lcom/android/server/l$ssp;->this$0:Lcom/android/server/l;

    invoke-static {p1}, Lcom/android/server/l;->tsu(Lcom/android/server/l;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_1
    iget-object p0, p0, Lcom/android/server/l$ssp;->this$0:Lcom/android/server/l;

    invoke-virtual {p0}, Lcom/android/server/l;->fa()V

    monitor-exit p1

    goto/16 :goto_1

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_3
    const-string p1, "OverHeatingDiagnosis"

    const-string v0, "enter MSG_MONITOR_UPDATE"

    invoke-static {p1, v0}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/l$ssp;->this$0:Lcom/android/server/l;

    invoke-static {p1}, Lcom/android/server/l;->tsu(Lcom/android/server/l;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_2
    iget-object p0, p0, Lcom/android/server/l$ssp;->this$0:Lcom/android/server/l;

    invoke-virtual {p0}, Lcom/android/server/l;->ha()V

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const-string p0, "OverHeatingDiagnosis"

    const-string p1, "leave MSG_MONITOR_UPDATE"

    goto/16 :goto_0

    :catchall_2
    move-exception p0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    :cond_4
    iget-object p1, p0, Lcom/android/server/l$ssp;->this$0:Lcom/android/server/l;

    invoke-static {p1}, Lcom/android/server/l;->tsu(Lcom/android/server/l;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_4
    iget-object p0, p0, Lcom/android/server/l$ssp;->this$0:Lcom/android/server/l;

    invoke-virtual {p0}, Lcom/android/server/l;->ga()V

    monitor-exit v0

    goto/16 :goto_1

    :catchall_3
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw p0

    :cond_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v6, p0, Lcom/android/server/l$ssp;->this$0:Lcom/android/server/l;

    invoke-virtual {v6}, Lcom/android/server/l;->getDeviceTemp()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/l$ssp;->this$0:Lcom/android/server/l;

    invoke-static {v7, v0}, Lcom/android/server/l;->bio(Lcom/android/server/l;I)I

    iget-object v7, p0, Lcom/android/server/l$ssp;->this$0:Lcom/android/server/l;

    invoke-static {v7, v5}, Lcom/android/server/l;->igw(Lcom/android/server/l;I)I

    iget-object v7, p0, Lcom/android/server/l$ssp;->this$0:Lcom/android/server/l;

    invoke-static {v7, v6}, Lcom/android/server/l;->zta(Lcom/android/server/l;I)I

    iget-object v7, p0, Lcom/android/server/l$ssp;->this$0:Lcom/android/server/l;

    invoke-static {v7}, Lcom/android/server/l;->zta(Lcom/android/server/l;)I

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/server/l$ssp;->this$0:Lcom/android/server/l;

    invoke-static {v7}, Lcom/android/server/l;->zta(Lcom/android/server/l;)I

    move-result v7

    if-eq v7, v4, :cond_6

    goto/16 :goto_1

    :cond_6
    iget-object v7, p0, Lcom/android/server/l$ssp;->this$0:Lcom/android/server/l;

    invoke-virtual {v7, v0, v6, v5, p1}, Lcom/android/server/l;->zta(IIIZ)V

    iget-object v0, p0, Lcom/android/server/l$ssp;->this$0:Lcom/android/server/l;

    invoke-static {v0}, Lcom/android/server/l;->you(Lcom/android/server/l;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "OverHeatingDiagnosis"

    const-string v5, "Temperature is up! Start monitoring"

    invoke-static {v0, v5}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/l$ssp;->this$0:Lcom/android/server/l;

    invoke-static {v0}, Lcom/android/server/l;->sis(Lcom/android/server/l;)Lcom/android/server/l$ssp;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_7
    iget-object v0, p0, Lcom/android/server/l$ssp;->this$0:Lcom/android/server/l;

    invoke-static {v0}, Lcom/android/server/l;->zta(Lcom/android/server/l;)I

    move-result v0

    if-ne v0, v4, :cond_b

    iget-object v0, p0, Lcom/android/server/l$ssp;->this$0:Lcom/android/server/l;

    invoke-static {v0, p1}, Lcom/android/server/l;->zta(Lcom/android/server/l;Z)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/server/l$ssp;->this$0:Lcom/android/server/l;

    invoke-static {p1}, Lcom/android/server/l;->sis(Lcom/android/server/l;)Lcom/android/server/l$ssp;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    iget-object p0, p0, Lcom/android/server/l$ssp;->this$0:Lcom/android/server/l;

    invoke-static {p0, v0}, Lcom/android/server/l;->you(Lcom/android/server/l;Z)Z

    goto :goto_1

    :cond_8
    iget-object p1, p0, Lcom/android/server/l$ssp;->this$0:Lcom/android/server/l;

    invoke-static {p1, v0}, Lcom/android/server/l;->you(Lcom/android/server/l;I)I

    iget-object p1, p0, Lcom/android/server/l$ssp;->this$0:Lcom/android/server/l;

    iget-object p1, p1, Lcom/android/server/l;->Jg:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v2, :cond_9

    iget-object p1, p0, Lcom/android/server/l$ssp;->this$0:Lcom/android/server/l;

    iget-object p1, p1, Lcom/android/server/l;->Jg:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/server/l$ssp;->this$0:Lcom/android/server/l;

    iget-object p1, p1, Lcom/android/server/l;->Jg:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/l$ssp;->this$0:Lcom/android/server/l;

    invoke-static {p0, v0}, Lcom/android/server/l;->you(Lcom/android/server/l;Z)Z

    :cond_9
    const-string p0, "OverHeatingDiagnosis"

    const-string p1, "the third level drop fail"

    :goto_0
    invoke-static {p0, p1}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_a
    iget-object p1, p0, Lcom/android/server/l$ssp;->this$0:Lcom/android/server/l;

    invoke-static {p1}, Lcom/android/server/l;->cjf(Lcom/android/server/l;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/l$ssp;->this$0:Lcom/android/server/l;

    invoke-static {v0}, Lcom/android/server/l;->ear(Lcom/android/server/l;)Lcom/android/server/l$you;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/l$ssp;->this$0:Lcom/android/server/l;

    invoke-static {v1}, Lcom/android/server/l;->ire(Lcom/android/server/l;)Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/server/l$ssp;->this$0:Lcom/android/server/l;

    invoke-virtual {p1}, Lcom/android/server/l;->registerOnlineConfig()V

    iget-object p0, p0, Lcom/android/server/l$ssp;->this$0:Lcom/android/server/l;

    invoke-virtual {p0}, Lcom/android/server/l;->grabOnlineConfig()V

    :cond_b
    :goto_1
    return-void
.end method
