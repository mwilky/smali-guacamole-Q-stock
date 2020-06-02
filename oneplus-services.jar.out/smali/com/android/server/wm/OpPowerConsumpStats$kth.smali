.class Lcom/android/server/wm/OpPowerConsumpStats$kth;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OpPowerConsumpStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "kth"
.end annotation


# instance fields
.field UR:Z

.field fragment:Lcom/android/server/wm/OpPowerConsumpStats$cno;

.field lock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/server/wm/OpPowerConsumpStats;


# direct methods
.method constructor <init>(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$kth;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/android/server/wm/OpPowerConsumpStats$cno;

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$kth;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-direct {p1, v0}, Lcom/android/server/wm/OpPowerConsumpStats$cno;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$kth;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$cno;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$kth;->lock:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$kth;->UR:Z

    return-void
.end method

.method private Hp()Lcom/android/server/wm/OpPowerConsumpStats$cno;
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$kth;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$kth;->UR:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/server/wm/OpPowerConsumpStats$cno;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$kth;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-direct {v1, v2}, Lcom/android/server/wm/OpPowerConsumpStats$cno;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$kth;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$cno;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$cno;->eS:J

    iput-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$cno;->eS:J

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$kth;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$cno;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$cno;->gS:J

    iput-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$cno;->gS:J

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$kth;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$cno;

    iget v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$cno;->hS:I

    iput v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$cno;->hS:I

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$kth;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->wtn(Lcom/android/server/wm/OpPowerConsumpStats;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$cno;->fS:J

    iget-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$cno;->fS:J

    iget-wide v4, v1, Lcom/android/server/wm/OpPowerConsumpStats$cno;->eS:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$cno;->duration:J

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$kth;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->qbh(Lcom/android/server/wm/OpPowerConsumpStats;)I

    move-result p0

    iput p0, v1, Lcom/android/server/wm/OpPowerConsumpStats$cno;->iS:I

    const-string p0, "StillContinuing"

    iput-object p0, v1, Lcom/android/server/wm/OpPowerConsumpStats$cno;->oS:Ljava/lang/String;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DozeFragmentTimer getCacheDozeFragment relativeBeginTime:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$cno;->eS:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |relativeEndTime:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$cno;->fS:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |duration:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$cno;->duration:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |realBeginTime:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$cno;->gS:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |beginPowerLevel:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$cno;->hS:I

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |endPowerLevel:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$cno;->iS:I

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |exitReason:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$cno;->oS:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->ka(Ljava/lang/String;)V

    monitor-exit v0

    return-object v1

    :cond_0
    const-string p0, "DozeFragmentTimer getCacheDozeFragment not Timing , return null"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->ka(Ljava/lang/String;)V

    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private clear()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$kth;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$kth;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$cno;

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats$cno;->zta(Lcom/android/server/wm/OpPowerConsumpStats$cno;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$kth;->UR:Z

    const-string p0, "DozeFragmentTimer clear"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->ka(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic sis(Lcom/android/server/wm/OpPowerConsumpStats$kth;)Lcom/android/server/wm/OpPowerConsumpStats$cno;
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats$kth;->Hp()Lcom/android/server/wm/OpPowerConsumpStats$cno;

    move-result-object p0

    return-object p0
.end method

.method private stopTiming(Ljava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$kth;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$kth;->UR:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    iput-boolean v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$kth;->UR:Z

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$kth;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$cno;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$kth;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->wtn(Lcom/android/server/wm/OpPowerConsumpStats;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$cno;->fS:J

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$kth;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$cno;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$kth;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$cno;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$cno;->fS:J

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats$kth;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$cno;

    iget-wide v4, v4, Lcom/android/server/wm/OpPowerConsumpStats$cno;->eS:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$cno;->duration:J

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$kth;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$cno;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$kth;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->qbh(Lcom/android/server/wm/OpPowerConsumpStats;)I

    move-result v2

    iput v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$cno;->iS:I

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$kth;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$cno;

    iput-object p1, v1, Lcom/android/server/wm/OpPowerConsumpStats$cno;->oS:Ljava/lang/String;

    new-instance p1, Lcom/android/server/wm/OpPowerConsumpStats$cno;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$kth;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$kth;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$cno;

    invoke-direct {p1, v1, v2}, Lcom/android/server/wm/OpPowerConsumpStats$cno;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Lcom/android/server/wm/OpPowerConsumpStats$cno;)V

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$kth;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    iget-object v1, v1, Lcom/android/server/wm/OpPowerConsumpStats;->lT:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DozeFragmentTimer stopTiming relativeEndTime:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$kth;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$cno;

    iget-wide v1, v1, Lcom/android/server/wm/OpPowerConsumpStats$cno;->fS:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " |duration:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$kth;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$cno;

    iget-wide v1, v1, Lcom/android/server/wm/OpPowerConsumpStats$cno;->duration:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " |endPowerLevel:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$kth;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$cno;

    iget v1, v1, Lcom/android/server/wm/OpPowerConsumpStats$cno;->iS:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |exitReason:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$kth;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$cno;

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$cno;->oS:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->ka(Ljava/lang/String;)V

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic you(Lcom/android/server/wm/OpPowerConsumpStats$kth;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats$kth;->clear()V

    return-void
.end method

.method private zp()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$kth;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$kth;->UR:Z

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$kth;->UR:Z

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$kth;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$cno;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats$cno;->zta(Lcom/android/server/wm/OpPowerConsumpStats$cno;)V

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$kth;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$cno;

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$kth;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->wtn(Lcom/android/server/wm/OpPowerConsumpStats;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/wm/OpPowerConsumpStats$cno;->eS:J

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$kth;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$cno;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/wm/OpPowerConsumpStats$cno;->gS:J

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$kth;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$cno;

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$kth;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->qbh(Lcom/android/server/wm/OpPowerConsumpStats;)I

    move-result v3

    iput v3, v2, Lcom/android/server/wm/OpPowerConsumpStats$cno;->hS:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DozeFragmentTimer startTiming startRelativeTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$kth;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$cno;

    iget-wide v3, v3, Lcom/android/server/wm/OpPowerConsumpStats$cno;->eS:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " |realBeginTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$kth;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$cno;

    iget-wide v3, v3, Lcom/android/server/wm/OpPowerConsumpStats$cno;->gS:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " |beginPowerLevel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$kth;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$cno;

    iget p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$cno;->hS:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->ka(Ljava/lang/String;)V

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats$kth;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats$kth;->zp()Z

    move-result p0

    return p0
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats$kth;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats$kth;->stopTiming(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
