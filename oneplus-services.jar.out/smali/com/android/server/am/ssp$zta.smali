.class Lcom/android/server/am/ssp$zta;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ssp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zta"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ssp;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ssp;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private bio(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-object v1, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {v1}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {p0}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object p0

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->Fia:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/gwm;

    invoke-interface {v2, v0, p1}, Lcom/android/server/am/gwm;->tsu(II)V

    goto :goto_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private cno(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "using"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-object v1, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {v1}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {p0}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object p0

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->SENSOR:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/gwm;

    invoke-interface {v2, v0, p1}, Lcom/android/server/am/gwm;->tsu(IZ)V

    goto :goto_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private igw(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "using"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-object v1, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {v1}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {p0}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object p0

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->VIBRATOR:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/gwm;

    invoke-interface {v2, v0, p1}, Lcom/android/server/am/gwm;->bio(IZ)V

    goto :goto_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private kth(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "using"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-object v1, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {v1}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {p0}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object p0

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->TRAFFIC:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/gwm;

    invoke-interface {v2, v0, p1}, Lcom/android/server/am/gwm;->kth(IZ)V

    goto :goto_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private rtg(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "using"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-object v1, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {v1}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {p0}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object p0

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->GPS:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/gwm;

    invoke-interface {v2, v0, p1}, Lcom/android/server/am/gwm;->you(IZ)V

    goto :goto_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private sis(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "using"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-object v1, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {v1}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {p0}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object p0

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->CAMERA:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/gwm;

    invoke-interface {v2, v0, p1}, Lcom/android/server/am/gwm;->cno(IZ)V

    goto :goto_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private ssp(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "procState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-object v1, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {v1}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {p0}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object p0

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->Eia:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/gwm;

    invoke-interface {v2, v0, p1}, Lcom/android/server/am/gwm;->rtg(II)V

    goto :goto_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private tsu(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "using"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-object v1, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {v1}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {p0}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object p0

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->FLASHLIGHT:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/gwm;

    invoke-interface {v2, v0, p1}, Lcom/android/server/am/gwm;->rtg(IZ)V

    goto :goto_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private wtn(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "using"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-object v1, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {v1}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {p0}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object p0

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->VIDEO:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/gwm;

    invoke-interface {v2, v0, p1}, Lcom/android/server/am/gwm;->ssp(IZ)V

    goto :goto_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private you(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "using"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-object v1, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {v1}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {p0}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;)Ljava/util/HashMap;

    move-result-object p0

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->AUDIO:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/gwm;

    invoke-interface {v2, v0, p1}, Lcom/android/server/am/gwm;->sis(IZ)V

    goto :goto_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/android/server/am/ssp;->access$000(ILjava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v2, "AppRecordManager"

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", data is null!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v3, Lcom/android/server/am/AppRecordManager$ListenerType;->GPS:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v3}, Lcom/android/server/am/AppRecordManager$ListenerType;->value()I

    move-result v3

    if-ne v1, v3, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/am/ssp$zta;->rtg(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v3, Lcom/android/server/am/AppRecordManager$ListenerType;->TRAFFIC:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v3}, Lcom/android/server/am/AppRecordManager$ListenerType;->value()I

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-direct {p0, v0}, Lcom/android/server/am/ssp$zta;->kth(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v3, Lcom/android/server/am/AppRecordManager$ListenerType;->SENSOR:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v3}, Lcom/android/server/am/AppRecordManager$ListenerType;->value()I

    move-result v3

    if-ne v1, v3, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/am/ssp$zta;->cno(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_3
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v3, Lcom/android/server/am/AppRecordManager$ListenerType;->AUDIO:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v3}, Lcom/android/server/am/AppRecordManager$ListenerType;->value()I

    move-result v3

    if-ne v1, v3, :cond_4

    invoke-direct {p0, v0}, Lcom/android/server/am/ssp$zta;->you(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_4
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v3, Lcom/android/server/am/AppRecordManager$ListenerType;->VIDEO:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v3}, Lcom/android/server/am/AppRecordManager$ListenerType;->value()I

    move-result v3

    if-ne v1, v3, :cond_5

    invoke-direct {p0, v0}, Lcom/android/server/am/ssp$zta;->wtn(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_5
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v3, Lcom/android/server/am/AppRecordManager$ListenerType;->CAMERA:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v3}, Lcom/android/server/am/AppRecordManager$ListenerType;->value()I

    move-result v3

    if-ne v1, v3, :cond_6

    invoke-direct {p0, v0}, Lcom/android/server/am/ssp$zta;->sis(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_6
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v3, Lcom/android/server/am/AppRecordManager$ListenerType;->FLASHLIGHT:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v3}, Lcom/android/server/am/AppRecordManager$ListenerType;->value()I

    move-result v3

    if-ne v1, v3, :cond_7

    invoke-direct {p0, v0}, Lcom/android/server/am/ssp$zta;->tsu(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_7
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v3, Lcom/android/server/am/AppRecordManager$ListenerType;->VIBRATOR:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v3}, Lcom/android/server/am/AppRecordManager$ListenerType;->value()I

    move-result v3

    if-ne v1, v3, :cond_8

    invoke-direct {p0, v0}, Lcom/android/server/am/ssp$zta;->igw(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_8
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v3, Lcom/android/server/am/AppRecordManager$ListenerType;->Eia:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v3}, Lcom/android/server/am/AppRecordManager$ListenerType;->value()I

    move-result v3

    if-ne v1, v3, :cond_9

    invoke-direct {p0, v0}, Lcom/android/server/am/ssp$zta;->ssp(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_9
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v3, Lcom/android/server/am/AppRecordManager$ListenerType;->Fia:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v3}, Lcom/android/server/am/AppRecordManager$ListenerType;->value()I

    move-result v3

    if-ne v1, v3, :cond_a

    invoke-direct {p0, v0}, Lcom/android/server/am/ssp$zta;->bio(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_a
    iget p1, p1, Landroid/os/Message;->what:I

    sget-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->Gia:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v1}, Lcom/android/server/am/AppRecordManager$ListenerType;->value()I

    move-result v1

    if-ne p1, v1, :cond_b

    iget-object p0, p0, Lcom/android/server/am/ssp$zta;->this$0:Lcom/android/server/am/ssp;

    invoke-static {p0, v0}, Lcom/android/server/am/ssp;->zta(Lcom/android/server/am/ssp;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_b
    const-string p0, "error for reviced UNKNOW type!"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
