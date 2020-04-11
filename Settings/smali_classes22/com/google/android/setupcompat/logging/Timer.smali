.class public final Lcom/google/android/setupcompat/logging/Timer;
.super Ljava/lang/Object;
.source "Timer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SetupCompat.Timer"


# instance fields
.field private final metricKey:Lcom/google/android/setupcompat/logging/MetricKey;

.field private startInNanos:J

.field private stopInNanos:J


# direct methods
.method public constructor <init>(Lcom/google/android/setupcompat/logging/MetricKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupcompat/logging/Timer;->metricKey:Lcom/google/android/setupcompat/logging/MetricKey;

    return-void
.end method

.method private isStarted()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/setupcompat/logging/Timer;->startInNanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method getDurationInNanos()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/setupcompat/logging/Timer;->stopInNanos:J

    iget-wide v2, p0, Lcom/google/android/setupcompat/logging/Timer;->startInNanos:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method getMetricKey()Lcom/google/android/setupcompat/logging/MetricKey;
    .locals 1

    iget-object v0, p0, Lcom/google/android/setupcompat/logging/Timer;->metricKey:Lcom/google/android/setupcompat/logging/MetricKey;

    return-object v0
.end method

.method isStopped()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/setupcompat/logging/Timer;->stopInNanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public start()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/setupcompat/logging/Timer;->isStopped()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Timer cannot be started once stopped."

    invoke-static {v0, v2}, Lcom/google/android/setupcompat/internal/Preconditions;->checkState(ZLjava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/setupcompat/logging/Timer;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/setupcompat/logging/Timer;->metricKey:Lcom/google/android/setupcompat/logging/MetricKey;

    aput-object v3, v0, v2

    iget-wide v2, p0, Lcom/google/android/setupcompat/logging/Timer;->startInNanos:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Timer instance was already started for: %s at [%s]."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SetupCompat.Timer"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/setupcompat/internal/ClockProvider;->timeInNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/setupcompat/logging/Timer;->startInNanos:J

    return-void
.end method

.method public stop()V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/setupcompat/logging/Timer;->isStarted()Z

    move-result v0

    const-string v1, "Timer must be started before it can be stopped."

    invoke-static {v0, v1}, Lcom/google/android/setupcompat/internal/Preconditions;->checkState(ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/setupcompat/logging/Timer;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/setupcompat/logging/Timer;->metricKey:Lcom/google/android/setupcompat/logging/MetricKey;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/setupcompat/logging/Timer;->stopInNanos:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Timer instance was already stopped for: %s at [%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SetupCompat.Timer"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/setupcompat/internal/ClockProvider;->timeInNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/setupcompat/logging/Timer;->stopInNanos:J

    return-void
.end method
