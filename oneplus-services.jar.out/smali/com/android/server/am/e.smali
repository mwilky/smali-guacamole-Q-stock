.class Lcom/android/server/am/e;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/OnePlusHighPowerDetector;->kl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusHighPowerDetector;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusHighPowerDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/e;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 p1, 0x1

    new-array v0, p1, [I

    const/4 v1, 0x0

    const/16 v2, 0x11

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    const-string v2, "level"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "scale"

    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-nez p2, :cond_1

    const-string p0, "OHPD"

    const-string p1, "[BgDetect] batt scale is 0"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/16 v0, 0x64

    mul-int/2addr v2, v0

    div-int/2addr v2, p2

    if-gt v2, v0, :cond_5

    if-gez v2, :cond_2

    goto/16 :goto_0

    :cond_2
    sget-object p2, Lcom/android/server/am/OnePlusHighPowerDetector;->mu:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/e;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    iget v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->Hr:I

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/e;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    iget v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->Hr:I

    sub-int/2addr v0, v2

    if-lt v0, p1, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v0, p0, Lcom/android/server/am/e;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    iget-wide v5, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->Ir:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/e;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    iget-wide v5, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->Ir:J

    sub-long v5, v3, v5

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->au:[I

    aget v0, v0, v1

    int-to-long v7, v0

    cmp-long v0, v5, v7

    if-gtz v0, :cond_3

    const-string v0, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BgDetect] batt level ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/e;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    iget v6, v6, Lcom/android/server/am/OnePlusHighPowerDetector;->Hr:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") within "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/e;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    iget-wide v6, v6, Lcom/android/server/am/OnePlusHighPowerDetector;->Ir:J

    sub-long v6, v3, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/e;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    iput-boolean p1, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->Jr:Z

    iget-object v0, p0, Lcom/android/server/am/e;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    iget-boolean v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->ws:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/e;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    iput v2, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->ys:I

    iget-object v0, p0, Lcom/android/server/am/e;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    iput-boolean p1, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->ws:Z

    iget-object p1, p0, Lcom/android/server/am/e;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    iput-boolean v1, p1, Lcom/android/server/am/OnePlusHighPowerDetector;->xs:Z

    iget-object p1, p0, Lcom/android/server/am/e;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    iput v1, p1, Lcom/android/server/am/OnePlusHighPowerDetector;->zs:I

    const-string p1, "OHPD"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[BgDetect] Native monitoring start, reset the counter, level = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/e;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    iget v1, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->ys:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object p1, p0, Lcom/android/server/am/e;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    iput-wide v3, p1, Lcom/android/server/am/OnePlusHighPowerDetector;->Ir:J

    :cond_4
    iget-object p0, p0, Lcom/android/server/am/e;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    iput v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Hr:I

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    :goto_0
    return-void
.end method
