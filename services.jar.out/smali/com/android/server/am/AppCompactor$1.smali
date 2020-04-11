.class Lcom/android/server/am/AppCompactor$1;
.super Ljava/lang/Object;
.source "AppCompactor.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppCompactor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppCompactor;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppCompactor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/AppCompactor$1;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/AppCompactor$1;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v0}, Lcom/android/server/am/AppCompactor;->access$000(Lcom/android/server/am/AppCompactor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "use_compaction"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/AppCompactor$1;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v3}, Lcom/android/server/am/AppCompactor;->access$100(Lcom/android/server/am/AppCompactor;)V

    goto/16 :goto_3

    :cond_0
    const-string v3, "compact_action_1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "compact_action_2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    const-string v3, "compact_throttle_1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "compact_throttle_2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "compact_throttle_3"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "compact_throttle_4"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const-string v3, "compact_statsd_sample_rate"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/am/AppCompactor$1;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v3}, Lcom/android/server/am/AppCompactor;->access$400(Lcom/android/server/am/AppCompactor;)V

    goto :goto_3

    :cond_3
    const-string v3, "compact_full_rss_throttle_kb"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/am/AppCompactor$1;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v3}, Lcom/android/server/am/AppCompactor;->access$500(Lcom/android/server/am/AppCompactor;)V

    goto :goto_3

    :cond_4
    const-string v3, "compact_full_delta_rss_throttle_kb"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/am/AppCompactor$1;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v3}, Lcom/android/server/am/AppCompactor;->access$600(Lcom/android/server/am/AppCompactor;)V

    goto :goto_3

    :cond_5
    const-string v3, "compact_proc_state_throttle"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/server/am/AppCompactor$1;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v3}, Lcom/android/server/am/AppCompactor;->access$700(Lcom/android/server/am/AppCompactor;)V

    goto :goto_3

    :cond_6
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/AppCompactor$1;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v3}, Lcom/android/server/am/AppCompactor;->access$300(Lcom/android/server/am/AppCompactor;)V

    goto :goto_3

    :cond_7
    :goto_2
    iget-object v3, p0, Lcom/android/server/am/AppCompactor$1;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v3}, Lcom/android/server/am/AppCompactor;->access$200(Lcom/android/server/am/AppCompactor;)V

    :cond_8
    :goto_3
    goto/16 :goto_0

    :cond_9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/am/AppCompactor$1;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v0}, Lcom/android/server/am/AppCompactor;->access$800(Lcom/android/server/am/AppCompactor;)Lcom/android/server/am/AppCompactor$PropertyChangedCallbackForTest;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/am/AppCompactor$1;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v0}, Lcom/android/server/am/AppCompactor;->access$800(Lcom/android/server/am/AppCompactor;)Lcom/android/server/am/AppCompactor$PropertyChangedCallbackForTest;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/am/AppCompactor$PropertyChangedCallbackForTest;->onPropertyChanged()V

    :cond_a
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
