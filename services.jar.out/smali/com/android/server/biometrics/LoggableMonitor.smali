.class public abstract Lcom/android/server/biometrics/LoggableMonitor;
.super Ljava/lang/Object;
.source "LoggableMonitor.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "BiometricStats"


# instance fields
.field private mFirstAcquireTimeMs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected isCryptoOperation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final logOnAcquired(Landroid/content/Context;III)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/server/biometrics/LoggableMonitor;->statsModality()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/16 v0, 0x14

    if-ne p2, v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/biometrics/LoggableMonitor;->mFirstAcquireTimeMs:J

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    iget-wide v0, p0, Lcom/android/server/biometrics/LoggableMonitor;->mFirstAcquireTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/biometrics/LoggableMonitor;->mFirstAcquireTimeMs:J

    :cond_1
    :goto_0
    const/16 v2, 0x57

    invoke-virtual {p0}, Lcom/android/server/biometrics/LoggableMonitor;->statsModality()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/server/biometrics/LoggableMonitor;->isCryptoOperation()Z

    move-result v5

    invoke-virtual {p0}, Lcom/android/server/biometrics/LoggableMonitor;->statsAction()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/server/biometrics/LoggableMonitor;->statsClient()I

    move-result v7

    const/4 v9, 0x0

    invoke-static {p1, p4}, Lcom/android/server/biometrics/Utils;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result v10

    move v4, p4

    move v8, p2

    invoke-static/range {v2 .. v10}, Landroid/util/StatsLog;->write(IIIZIIIIZ)I

    return-void
.end method

.method protected final logOnAuthenticated(Landroid/content/Context;ZZIZ)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_1

    if-eqz p3, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    :goto_0
    iget-wide v2, v0, Lcom/android/server/biometrics/LoggableMonitor;->mFirstAcquireTimeMs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/android/server/biometrics/LoggableMonitor;->mFirstAcquireTimeMs:J

    sub-long/2addr v2, v4

    goto :goto_1

    :cond_2
    const-wide/16 v2, -0x1

    :goto_1
    move-wide v12, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication latency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BiometricStats"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x58

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/LoggableMonitor;->statsModality()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/LoggableMonitor;->isCryptoOperation()Z

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/LoggableMonitor;->statsClient()I

    move-result v6

    move-object/from16 v14, p1

    move/from16 v15, p4

    invoke-static {v14, v15}, Lcom/android/server/biometrics/Utils;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result v11

    move/from16 v4, p4

    move/from16 v7, p3

    move v8, v1

    move-wide v9, v12

    invoke-static/range {v2 .. v11}, Landroid/util/StatsLog;->write(IIIZIZIJZ)I

    return-void
.end method

.method protected final logOnEnrolled(IJZ)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enroll latency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricStats"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    nop

    invoke-virtual {p0}, Lcom/android/server/biometrics/LoggableMonitor;->statsModality()I

    move-result v3

    const/16 v2, 0xb8

    move v4, p1

    move-wide v5, p2

    move v7, p4

    invoke-static/range {v2 .. v7}, Landroid/util/StatsLog;->write(IIIJZ)I

    return-void
.end method

.method protected final logOnError(Landroid/content/Context;III)V
    .locals 9

    nop

    invoke-virtual {p0}, Lcom/android/server/biometrics/LoggableMonitor;->statsModality()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/LoggableMonitor;->isCryptoOperation()Z

    move-result v3

    invoke-virtual {p0}, Lcom/android/server/biometrics/LoggableMonitor;->statsAction()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/server/biometrics/LoggableMonitor;->statsClient()I

    move-result v5

    invoke-static {p1, p4}, Lcom/android/server/biometrics/Utils;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result v8

    const/16 v0, 0x59

    move v2, p4

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v8}, Landroid/util/StatsLog;->write(IIIZIIIIZ)I

    return-void
.end method

.method protected abstract statsAction()I
.end method

.method protected statsClient()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract statsModality()I
.end method
