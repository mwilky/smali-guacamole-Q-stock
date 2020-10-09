.class Lcom/android/server/wm/OpScreenModeService$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/OnePlusUtil$zta$zta;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OpScreenModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zta"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/OpScreenModeService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/OpScreenModeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OpScreenModeService$zta;->this$0:Lcom/android/server/wm/OpScreenModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sis(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService$zta;->this$0:Lcom/android/server/wm/OpScreenModeService;

    invoke-static {v0}, Lcom/android/server/wm/OpScreenModeService;->access$700(Lcom/android/server/wm/OpScreenModeService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/OpScreenModeService$zta;->this$0:Lcom/android/server/wm/OpScreenModeService;

    invoke-static {v1}, Lcom/android/server/wm/OpScreenModeService;->access$900(Lcom/android/server/wm/OpScreenModeService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/OnePlusUtil$zta;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService$zta;->this$0:Lcom/android/server/wm/OpScreenModeService;

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/OnePlusUtil$zta;->z()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/wm/OpScreenModeService;->access$1002(Lcom/android/server/wm/OpScreenModeService;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService$zta;->this$0:Lcom/android/server/wm/OpScreenModeService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/wm/OpScreenModeService;->access$1002(Lcom/android/server/wm/OpScreenModeService;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
