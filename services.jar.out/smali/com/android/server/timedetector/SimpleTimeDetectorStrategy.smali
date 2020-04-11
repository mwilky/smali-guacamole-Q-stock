.class public final Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;
.super Ljava/lang/Object;
.source "SimpleTimeDetectorStrategy.java"

# interfaces
.implements Lcom/android/server/timedetector/TimeDetectorStrategy;


# static fields
.field private static final SYSTEM_CLOCK_PARANOIA_THRESHOLD_MILLIS:J = 0x7d0L

.field private static final TAG:Ljava/lang/String; = "timedetector.SimpleTimeDetectorStrategy"


# instance fields
.field private mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

.field private mLastNitzTime:Landroid/util/TimestampedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLastSystemClockTime:Landroid/util/TimestampedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLastSystemClockTimeSendNetworkBroadcast:Z

.field private mLastSystemClockTimeSet:Landroid/util/TimestampedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private adjustAndSetDeviceSystemClock(Landroid/util/TimestampedValue;ZJJLjava/lang/String;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;ZJJ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    move-object/from16 v4, p7

    invoke-static {v1, v2, v3}, Lcom/android/server/timedetector/TimeDetectorStrategy;->getTimeAt(Landroid/util/TimestampedValue;J)J

    move-result-wide v5

    sub-long v7, v5, p5

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    iget-object v9, v0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v9}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->systemClockUpdateThresholdMillis()I

    move-result v9

    int-to-long v9, v9

    cmp-long v11, v7, v9

    const-string v12, " reason="

    const-string/jumbo v13, "timedetector.SimpleTimeDetectorStrategy"

    if-gez v11, :cond_0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "adjustAndSetDeviceSystemClock: Not setting system clock. New time and system clock are close enough. elapsedRealtimeMillis="

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, " newTime="

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " systemClockUpdateThreshold="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " absTimeDifference="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Setting system clock using time="

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " elapsedRealtimeMillis="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " newTimeMillis="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, v0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v11, v5, v6}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->setSystemClock(J)V

    iput-object v1, v0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mLastSystemClockTimeSet:Landroid/util/TimestampedValue;

    if-eqz p2, :cond_1

    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.NETWORK_SET_TIME"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v12, 0x20000000

    invoke-virtual {v11, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v12, "time"

    invoke-virtual {v11, v12, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v12, v0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v12, v11}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->sendStickyBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private setSystemClockIfRequired(Landroid/util/TimestampedValue;Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    iput-object v10, v9, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mLastSystemClockTime:Landroid/util/TimestampedValue;

    move/from16 v11, p2

    iput-boolean v11, v9, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mLastSystemClockTimeSendNetworkBroadcast:Z

    iget-object v0, v9, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->isTimeDetectionEnabled()Z

    move-result v0

    const-string/jumbo v1, "timedetector.SimpleTimeDetectorStrategy"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSystemClockIfRequired: Time detection is not enabled. time="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, v9, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->acquireWakeLock()V

    :try_start_0
    iget-object v0, v9, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->elapsedRealtimeMillis()J

    move-result-wide v2

    move-wide v12, v2

    iget-object v0, v9, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->systemClockMillis()J

    move-result-wide v2

    move-wide v14, v2

    iget-object v0, v9, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mLastSystemClockTimeSet:Landroid/util/TimestampedValue;

    if-eqz v0, :cond_1

    iget-object v0, v9, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mLastSystemClockTimeSet:Landroid/util/TimestampedValue;

    invoke-static {v0, v12, v13}, Lcom/android/server/timedetector/TimeDetectorStrategy;->getTimeAt(Landroid/util/TimestampedValue;J)J

    move-result-wide v2

    sub-long v4, v2, v14

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x7d0

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "System clock has not tracked elapsed real time clock. A clock may be inaccurate or something unexpectedly set the system clock. elapsedRealtimeMillis="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " expectedTimeMillis="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " actualTimeMillis="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v0, "New time signal"

    const-string v8, "New time signal"

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide v4, v12

    move-wide v6, v14

    invoke-direct/range {v1 .. v8}, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->adjustAndSetDeviceSystemClock(Landroid/util/TimestampedValue;ZJJLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v9, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->releaseWakeLock()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, v9, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v1}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->releaseWakeLock()V

    throw v0
.end method

.method private static validateNewNitzTime(Landroid/util/TimestampedValue;Landroid/util/TimestampedValue;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/util/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    nop

    invoke-static {p0, p1}, Landroid/util/TimestampedValue;->referenceTimeDifference(Landroid/util/TimestampedValue;Landroid/util/TimestampedValue;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "validateNewNitzTime: Bad NITZ signal received. referenceTimeDifference="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " lastNitzTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " newNitzUtcTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "timedetector.SimpleTimeDetectorStrategy"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLastNitzTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mLastNitzTime:Landroid/util/TimestampedValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLastSystemClockTimeSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mLastSystemClockTimeSet:Landroid/util/TimestampedValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLastSystemClockTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mLastSystemClockTime:Landroid/util/TimestampedValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLastSystemClockTimeSendNetworkBroadcast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mLastSystemClockTimeSendNetworkBroadcast:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public handleAutoTimeDetectionToggle(Z)V
    .locals 10

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mLastSystemClockTime:Landroid/util/TimestampedValue;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mLastSystemClockTimeSendNetworkBroadcast:Z

    iget-object v1, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v1}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->acquireWakeLock()V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v1}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->elapsedRealtimeMillis()J

    move-result-wide v4

    iget-object v1, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v1}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->systemClockMillis()J

    move-result-wide v6

    const-string v1, "Automatic time detection enabled."

    move-object v9, v1

    iget-object v2, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mLastSystemClockTime:Landroid/util/TimestampedValue;

    const-string v8, "Automatic time detection enabled."

    move-object v1, p0

    move v3, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->adjustAndSetDeviceSystemClock(Landroid/util/TimestampedValue;ZJJLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v1}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->releaseWakeLock()V

    nop

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v2}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->releaseWakeLock()V

    throw v1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mLastSystemClockTimeSet:Landroid/util/TimestampedValue;

    :cond_1
    :goto_0
    return-void
.end method

.method public initialize(Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    return-void
.end method

.method public suggestTime(Landroid/app/timedetector/TimeSignal;)V
    .locals 4

    invoke-virtual {p1}, Landroid/app/timedetector/TimeSignal;->getSourceId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "nitz"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring signal from unsupported source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "timedetector.SimpleTimeDetectorStrategy"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/app/timedetector/TimeSignal;->getUtcTime()Landroid/util/TimestampedValue;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mLastNitzTime:Landroid/util/TimestampedValue;

    invoke-static {v0, v2}, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->validateNewNitzTime(Landroid/util/TimestampedValue;Landroid/util/TimestampedValue;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    iput-object v0, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mLastNitzTime:Landroid/util/TimestampedValue;

    nop

    invoke-virtual {p1}, Landroid/app/timedetector/TimeSignal;->getSourceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move-object v3, v0

    invoke-direct {p0, v3, v1}, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->setSystemClockIfRequired(Landroid/util/TimestampedValue;Z)V

    return-void
.end method
