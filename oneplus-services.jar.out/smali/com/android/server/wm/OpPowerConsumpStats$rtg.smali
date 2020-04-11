.class Lcom/android/server/wm/OpPowerConsumpStats$rtg;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OpPowerConsumpStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "rtg"
.end annotation


# instance fields
.field BP:Z

.field YP:Z

.field ZP:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

.field fragment:Lcom/android/server/wm/OpPowerConsumpStats$tsu;

.field lock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/server/wm/OpPowerConsumpStats;


# direct methods
.method constructor <init>(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-direct {p1, v0}, Lcom/android/server/wm/OpPowerConsumpStats$tsu;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->lock:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->BP:Z

    iput-boolean p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->YP:Z

    new-instance p1, Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    const-string v1, "chargeFragmentTimerScreenOn"

    invoke-direct {p1, v0, v1}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->ZP:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    return-void
.end method

.method private Cb(I)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->BP:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->BP:Z

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->zta(Lcom/android/server/wm/OpPowerConsumpStats$tsu;)V

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->ZP:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->sis(Lcom/android/server/wm/OpPowerConsumpStats$wtn;)V

    iput-boolean v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->YP:Z

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->wtn(Lcom/android/server/wm/OpPowerConsumpStats;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->NP:J

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->QP:J

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->qbh(Lcom/android/server/wm/OpPowerConsumpStats;)I

    move-result v3

    iput v3, v2, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->RP:I

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v3, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->tsu(Lcom/android/server/wm/OpPowerConsumpStats;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->XP:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats;->dma(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->ZP:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->NP:J

    invoke-static {p1, v2, v3}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->zta(Lcom/android/server/wm/OpPowerConsumpStats$wtn;J)Z

    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats;->qbh(Lcom/android/server/wm/OpPowerConsumpStats;)I

    move-result p1

    const/16 v2, 0x64

    if-ne p1, v2, :cond_2

    iput-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->YP:Z

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChargeFragmentTimer startTiming startRelativeTime:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->NP:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |realBeginTime:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->QP:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |beginPowerLevel:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    iget v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->RP:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |plugType:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->XP:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->ha(Ljava/lang/String;)V

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private Xo()Lcom/android/server/wm/OpPowerConsumpStats$tsu;
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->BP:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-direct {v1, v2}, Lcom/android/server/wm/OpPowerConsumpStats$tsu;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->NP:J

    iput-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->NP:J

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->wtn(Lcom/android/server/wm/OpPowerConsumpStats;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->PP:J

    iget-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->PP:J

    iget-wide v4, v1, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->NP:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->duration:J

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->QP:J

    iput-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->QP:J

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    iget v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->RP:I

    iput v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->RP:I

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->qbh(Lcom/android/server/wm/OpPowerConsumpStats;)I

    move-result v2

    iput v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->TP:I

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    iget-object v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->XP:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->XP:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->WP:J

    iput-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->WP:J

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->ZP:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    iget-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->PP:J

    invoke-static {p0, v2, v3}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->you(Lcom/android/server/wm/OpPowerConsumpStats$wtn;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->VP:J

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChargeFragmentTimer getCacheChargeFragment relativeBeginTime:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->NP:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |relativeEndTime:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->PP:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |duration:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->duration:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |realBeginTime:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->QP:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |beginPowerLevel:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->RP:I

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |endPowerLevel:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->TP:I

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |plugType:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->XP:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |firstFullTimeToRelativeBeginTime:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->WP:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |screenOnDuration:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->VP:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->ha(Ljava/lang/String;)V

    monitor-exit v0

    return-object v1

    :cond_0
    const-string p0, "ChargeFragmentTimer getCacheChargeFragment not Timing , return null"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->ha(Ljava/lang/String;)V

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

.method private Yo()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->BP:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->ZP:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->zta(Lcom/android/server/wm/OpPowerConsumpStats$wtn;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private Zo()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->BP:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->ZP:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->you(Lcom/android/server/wm/OpPowerConsumpStats$wtn;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private _o()Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->BP:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    iput-boolean v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->BP:Z

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->wtn(Lcom/android/server/wm/OpPowerConsumpStats;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->PP:J

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->PP:J

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    iget-wide v4, v4, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->NP:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->duration:J

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->qbh(Lcom/android/server/wm/OpPowerConsumpStats;)I

    move-result v2

    iput v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->TP:I

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->ZP:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    iget-wide v3, v3, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->PP:J

    invoke-static {v2, v3, v4}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->you(Lcom/android/server/wm/OpPowerConsumpStats$wtn;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->VP:J

    new-instance v1, Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    invoke-direct {v1, v2, v3}, Lcom/android/server/wm/OpPowerConsumpStats$tsu;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Lcom/android/server/wm/OpPowerConsumpStats$tsu;)V

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    iget-object v2, v2, Lcom/android/server/wm/OpPowerConsumpStats;->WQ:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChargeFragmentTimer stopTiming relativeEndTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->PP:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |duration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->duration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |endPowerLevel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    iget v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->TP:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |screenOnDuration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    iget-wide v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->VP:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->ha(Ljava/lang/String;)V

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

.method private ap()Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->BP:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->YP:Z

    if-eqz v1, :cond_1

    monitor-exit v0

    return v2

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->YP:Z

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->wtn(Lcom/android/server/wm/OpPowerConsumpStats;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    iget-wide v5, v5, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->NP:J

    sub-long/2addr v3, v5

    iput-wide v3, v2, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->WP:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChargeFragmentTimer updateFirstFullTime firstFullTimeToRelativeBeginTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    iget-wide v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->WP:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->ha(Ljava/lang/String;)V

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private bp()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->BP:Z

    if-nez v1, :cond_0

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    const-string v1, "FASTCHARGE"

    iput-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->XP:Ljava/lang/String;

    const-string p0, "ChargeFragmentTimer updatePlugType plugType:FASTCHARGE"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->ha(Ljava/lang/String;)V

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

.method private clear()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->fragment:Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats$tsu;->zta(Lcom/android/server/wm/OpPowerConsumpStats$tsu;)V

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->ZP:Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;->sis(Lcom/android/server/wm/OpPowerConsumpStats$wtn;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->YP:Z

    iput-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->BP:Z

    const-string p0, "ChargeFragmentTimer clear"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->ha(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic cno(Lcom/android/server/wm/OpPowerConsumpStats$rtg;)Lcom/android/server/wm/OpPowerConsumpStats$tsu;
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->Xo()Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    move-result-object p0

    return-object p0
.end method

.method static synthetic rtg(Lcom/android/server/wm/OpPowerConsumpStats$rtg;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->ap()Z

    move-result p0

    return p0
.end method

.method static synthetic sis(Lcom/android/server/wm/OpPowerConsumpStats$rtg;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->Yo()V

    return-void
.end method

.method static synthetic ssp(Lcom/android/server/wm/OpPowerConsumpStats$rtg;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->clear()V

    return-void
.end method

.method static synthetic tsu(Lcom/android/server/wm/OpPowerConsumpStats$rtg;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->bp()Z

    move-result p0

    return p0
.end method

.method static synthetic you(Lcom/android/server/wm/OpPowerConsumpStats$rtg;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->Zo()V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats$rtg;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->_o()Z

    move-result p0

    return p0
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats$rtg;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->Cb(I)Z

    move-result p0

    return p0
.end method
