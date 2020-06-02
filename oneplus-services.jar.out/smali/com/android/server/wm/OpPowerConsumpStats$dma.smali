.class Lcom/android/server/wm/OpPowerConsumpStats$dma;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OpPowerConsumpStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "dma"
.end annotation


# instance fields
.field private Df:J

.field private mStartTimeMs:J

.field final synthetic this$0:Lcom/android/server/wm/OpPowerConsumpStats;


# direct methods
.method constructor <init>(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$dma;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T()J
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/wm/OpPowerConsumpStats$dma;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$dma;->mStartTimeMs:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/OpPowerConsumpStats$dma;->stop()J

    move-result-wide v0

    return-wide v0
.end method

.method public isRunning()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/OpPowerConsumpStats$dma;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/OpPowerConsumpStats$dma;->isStopped()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStarted()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$dma;->mStartTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStopped()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$dma;->Df:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$dma;->mStartTimeMs:J

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$dma;->Df:J

    return-void
.end method

.method public start()Lcom/android/server/wm/OpPowerConsumpStats$dma;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/OpPowerConsumpStats$dma;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$dma;->mStartTimeMs:J

    :cond_0
    return-object p0
.end method

.method public stop()J
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/wm/OpPowerConsumpStats$dma;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$dma;->Df:J

    :cond_0
    iget-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$dma;->Df:J

    iget-wide v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$dma;->mStartTimeMs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
