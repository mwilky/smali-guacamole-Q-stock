.class Lcom/android/server/am/ugm;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/zgw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/zgw;


# direct methods
.method constructor <init>(Lcom/android/server/am/zgw;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ugm;->this$0:Lcom/android/server/am/zgw;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    sget-boolean p1, Lcom/android/server/am/zgw;->sInUsing:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    sget-boolean v0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# mGeneralReceiver # onReceive # action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_1
    const-string v0, "com.haha.action.test"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_11

    const-string p1, "code"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# mGeneralReceiver # onReceive # code = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    const-string v0, "persist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_4

    :cond_2
    const-string v0, "prop_using_on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sput-boolean v3, Lcom/android/server/am/zgw;->sInUsing:Z

    const-string p0, "persist.sys.appboot.using"

    :goto_0
    const-string p1, "true"

    :goto_1
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_3
    const-string v0, "prop_using_off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sput-boolean v4, Lcom/android/server/am/zgw;->sInUsing:Z

    const-string p0, "persist.sys.appboot.using"

    :goto_2
    const-string p1, "false"

    goto :goto_1

    :cond_4
    const-string v0, "prop_debug_on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sput-boolean v3, Lcom/android/server/am/zgw;->sDebug:Z

    const-string p0, "persist.sys.appboot.debug"

    goto :goto_0

    :cond_5
    const-string v0, "prop_debug_off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sput-boolean v4, Lcom/android/server/am/zgw;->sDebug:Z

    const-string p0, "persist.sys.appboot.debug"

    goto :goto_2

    :cond_6
    const-string v0, "prop_blacklist_on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sput-boolean v3, Lcom/android/server/am/zgw;->Hj:Z

    const-string p0, "persist.sys.appboot.blacklist"

    goto :goto_0

    :cond_7
    const-string v0, "prop_blacklist_off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sput-boolean v4, Lcom/android/server/am/zgw;->Hj:Z

    const-string p0, "persist.sys.appboot.blacklist"

    goto :goto_2

    :cond_8
    const-string v0, "setAdj"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "adj"

    invoke-virtual {p2, p0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setAdj:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OnePlusAppBootManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/server/am/zgw;->vju(I)I

    goto/16 :goto_5

    :cond_9
    const-string p2, "dump"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p1, p0, Lcom/android/server/am/ugm;->this$0:Lcom/android/server/am/zgw;

    invoke-static {p1}, Lcom/android/server/am/zgw;->cno(Lcom/android/server/am/zgw;)V

    iget-object p0, p0, Lcom/android/server/am/ugm;->this$0:Lcom/android/server/am/zgw;

    invoke-static {p0}, Lcom/android/server/am/zgw;->kth(Lcom/android/server/am/zgw;)V

    goto/16 :goto_5

    :cond_a
    const-string p2, "dumplist"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p0, p0, Lcom/android/server/am/ugm;->this$0:Lcom/android/server/am/zgw;

    invoke-static {p0}, Lcom/android/server/am/zgw;->bio(Lcom/android/server/am/zgw;)V

    goto/16 :goto_5

    :cond_b
    const-string p2, "dump_widget"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    iget-object p1, p0, Lcom/android/server/am/ugm;->this$0:Lcom/android/server/am/zgw;

    invoke-static {p1}, Lcom/android/server/am/zgw;->zta(Lcom/android/server/am/zgw;)Ljava/util/HashSet;

    move-result-object p2

    monitor-enter p2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ugm;->this$0:Lcom/android/server/am/zgw;

    invoke-static {p0}, Lcom/android/server/am/zgw;->zta(Lcom/android/server/am/zgw;)Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "widgetpkg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_c
    monitor-exit p2

    goto/16 :goto_5

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_d
    const-string p2, "@"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_15

    const-string p2, "@huge@dump"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_e

    iget-object p0, p0, Lcom/android/server/am/ugm;->this$0:Lcom/android/server/am/zgw;

    invoke-static {p0}, Lcom/android/server/am/zgw;->you(Lcom/android/server/am/zgw;)V

    goto/16 :goto_5

    :cond_e
    const-string p2, "@huge@add@"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_f

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/ugm;->this$0:Lcom/android/server/am/zgw;

    const/4 p2, 0x2

    invoke-static {p0, p1, v3, p2}, Lcom/android/server/am/zgw;->zta(Lcom/android/server/am/zgw;Ljava/lang/String;ZI)V

    goto/16 :goto_5

    :cond_f
    const-string p2, "@huge@start@"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_10

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/ugm;->this$0:Lcom/android/server/am/zgw;

    const/4 p2, 0x4

    invoke-static {p0, p1, v4, p2}, Lcom/android/server/am/zgw;->zta(Lcom/android/server/am/zgw;Ljava/lang/String;ZI)V

    goto/16 :goto_5

    :cond_10
    const-string p2, "@record"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_15

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/ugm;->this$0:Lcom/android/server/am/zgw;

    invoke-static {p0}, Lcom/android/server/am/zgw;->sis(Lcom/android/server/am/zgw;)Lcom/android/server/am/oxb;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/oxb;->les(I)V

    goto :goto_5

    :cond_11
    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/16 v0, 0x1f

    if-eqz p2, :cond_13

    invoke-static {v4}, Lcom/android/server/am/zgw;->oxb(Z)Z

    iget-object p1, p0, Lcom/android/server/am/ugm;->this$0:Lcom/android/server/am/zgw;

    iget-object p1, p1, Lcom/android/server/am/zgw;->Cj:Lcom/android/server/am/zgw$you;

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    iput v4, p1, Landroid/os/Message;->arg1:I

    iget-object p2, p0, Lcom/android/server/am/ugm;->this$0:Lcom/android/server/am/zgw;

    iget-object p2, p2, Lcom/android/server/am/zgw;->Cj:Lcom/android/server/am/zgw$you;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    invoke-static {}, Lcom/android/server/am/zgw;->access$1500()Z

    move-result p1

    if-eqz p1, :cond_12

    new-array p1, v3, [I

    const/16 p2, 0x28

    aput p2, p1, v4

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/android/server/am/ugm;->this$0:Lcom/android/server/am/zgw;

    iget-object p1, p1, Lcom/android/server/am/zgw;->Cj:Lcom/android/server/am/zgw$you;

    const/16 p2, 0x21

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_12
    :goto_4
    iget-object p0, p0, Lcom/android/server/am/ugm;->this$0:Lcom/android/server/am/zgw;

    invoke-static {p0, v1, v2}, Lcom/android/server/am/zgw;->you(Lcom/android/server/am/zgw;J)V

    goto :goto_5

    :cond_13
    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_14

    invoke-static {v3}, Lcom/android/server/am/zgw;->oxb(Z)Z

    iget-object p1, p0, Lcom/android/server/am/ugm;->this$0:Lcom/android/server/am/zgw;

    iget-object p1, p1, Lcom/android/server/am/zgw;->Cj:Lcom/android/server/am/zgw$you;

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    iput v3, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/android/server/am/ugm;->this$0:Lcom/android/server/am/zgw;

    iget-object p0, p0, Lcom/android/server/am/zgw;->Cj:Lcom/android/server/am/zgw$you;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_5

    :cond_14
    const-string p2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p0, p0, Lcom/android/server/am/ugm;->this$0:Lcom/android/server/am/zgw;

    invoke-static {p0}, Lcom/android/server/am/zgw;->tsu(Lcom/android/server/am/zgw;)Z

    :cond_15
    :goto_5
    return-void
.end method
