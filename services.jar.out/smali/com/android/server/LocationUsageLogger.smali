.class Lcom/android/server/LocationUsageLogger;
.super Ljava/lang/Object;
.source "LocationUsageLogger.java"


# static fields
.field private static final API_USAGE_LOG_HOURLY_CAP:I = 0x3c

.field private static final D:Z

.field private static final ONE_HOUR_IN_MILLIS:I = 0x36ee80

.field private static final ONE_MINUTE_IN_MILLIS:I = 0xea60

.field private static final ONE_SEC_IN_MILLIS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "LocationUsageLogger"


# instance fields
.field private mApiUsageLogHourlyCount:I

.field private mLastApiUsageLogHour:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "LocationUsageLogger"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/LocationUsageLogger;->D:Z

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/LocationUsageLogger;->mLastApiUsageLogHour:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/LocationUsageLogger;->mApiUsageLogHourlyCount:I

    return-void
.end method

.method private static bucketizeIntervalToStatsdEnum(J)I
    .locals 2

    const-wide/16 v0, 0x3e8

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-wide/16 v0, 0x1388

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const-wide/32 v0, 0xea60

    cmp-long v0, p0, v0

    if-gez v0, :cond_2

    const/4 v0, 0x3

    return v0

    :cond_2
    const-wide/32 v0, 0x927c0

    cmp-long v0, p0, v0

    if-gez v0, :cond_3

    const/4 v0, 0x4

    return v0

    :cond_3
    const-wide/32 v0, 0x36ee80

    cmp-long v0, p0, v0

    if-gez v0, :cond_4

    const/4 v0, 0x5

    return v0

    :cond_4
    const/4 v0, 0x6

    return v0
.end method

.method private static bucketizeRadiusToStatsdEnum(F)I
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    const/4 v0, 0x7

    return v0

    :cond_0
    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/high16 v0, 0x43480000    # 200.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    const/high16 v0, 0x43960000    # 300.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_3

    const/4 v0, 0x3

    return v0

    :cond_3
    const/high16 v0, 0x447a0000    # 1000.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_4

    const/4 v0, 0x4

    return v0

    :cond_4
    const v0, 0x461c4000    # 10000.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_5

    const/4 v0, 0x5

    return v0

    :cond_5
    const/4 v0, 0x6

    return v0
.end method

.method private static bucketizeSmallestDisplacementToStatsdEnum(F)I
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x3

    return v0
.end method

.method private static categorizeActivityImportance(I)I
    .locals 1

    const/16 v0, 0x64

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/16 v0, 0x7d

    if-ne p0, v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x3

    return v0
.end method

.method private checkApiUsageLogCap()Z
    .locals 6

    sget-boolean v0, Lcom/android/server/LocationUsageLogger;->D:Z

    if-eqz v0, :cond_0

    const-string v0, "LocationUsageLogger"

    const-string v1, "checking APIUsage log cap."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/LocationUsageLogger;->mLastApiUsageLogHour:J

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_1

    iput-wide v0, p0, Lcom/android/server/LocationUsageLogger;->mLastApiUsageLogHour:J

    iput v3, p0, Lcom/android/server/LocationUsageLogger;->mApiUsageLogHourlyCount:I

    return v4

    :cond_1
    iget v2, p0, Lcom/android/server/LocationUsageLogger;->mApiUsageLogHourlyCount:I

    add-int/2addr v2, v4

    const/16 v5, 0x3c

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/LocationUsageLogger;->mApiUsageLogHourlyCount:I

    iget v2, p0, Lcom/android/server/LocationUsageLogger;->mApiUsageLogHourlyCount:I

    if-ge v2, v5, :cond_2

    move v3, v4

    :cond_2
    return v3
.end method

.method private static getBucketizedExpireIn(J)I
    .locals 6

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x6

    return v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    sub-long v4, p0, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const-wide/16 v4, 0x4e20

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    const/4 v4, 0x1

    return v4

    :cond_1
    const-wide/32 v4, 0xea60

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    const/4 v4, 0x2

    return v4

    :cond_2
    const-wide/32 v4, 0x927c0

    cmp-long v4, v2, v4

    if-gez v4, :cond_3

    const/4 v4, 0x3

    return v4

    :cond_3
    const-wide/32 v4, 0x36ee80

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    const/4 v4, 0x4

    return v4

    :cond_4
    const/4 v4, 0x5

    return v4
.end method

.method private static getCallbackType(IZZ)I
    .locals 1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x3

    return v0

    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static providerNameToStatsdEnum(Ljava/lang/String;)I
    .locals 1

    const-string/jumbo v0, "network"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "gps"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const-string/jumbo v0, "passive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    return v0

    :cond_2
    const-string v0, "fused"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public logLocationApiUsage(IILjava/lang/String;)V
    .locals 18

    move/from16 v15, p2

    const-string v14, "LocationUsageLogger"

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LocationUsageLogger;->checkApiUsageLogCap()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/LocationUsageLogger;->D:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v0, :cond_1

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "log API Usage to statsd. usageType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v13, p1

    :try_start_2
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", apiInUse: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", providerName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v12, p3

    :try_start_3
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move/from16 v13, p1

    :goto_0
    move-object/from16 v12, p3

    goto :goto_2

    :cond_1
    move/from16 v13, p1

    move-object/from16 v12, p3

    :goto_1
    const/16 v1, 0xd2

    const/4 v4, 0x0

    invoke-static/range {p3 .. p3}, Lcom/android/server/LocationUsageLogger;->providerNameToStatsdEnum(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v0, 0x1

    invoke-static {v15, v0, v0}, Lcom/android/server/LocationUsageLogger;->getCallbackType(IZZ)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v2, p1

    move/from16 v3, p2

    move v12, v0

    move/from16 v13, v16

    move-object v15, v14

    move/from16 v14, v17

    :try_start_4
    invoke-static/range {v1 .. v14}, Landroid/util/StatsLog;->write(IIILjava/lang/String;IIIIJIIII)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_2
    move-object v15, v14

    :goto_3
    const-string v1, "Failed to log API usage to statsd."

    invoke-static {v15, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    return-void
.end method

.method public logLocationApiUsage(IILjava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;I)V
    .locals 24

    move/from16 v15, p1

    move/from16 v14, p2

    move/from16 v13, p5

    move/from16 v12, p6

    const-string v11, "LocationUsageLogger"

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LocationUsageLogger;->checkApiUsageLogCap()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p4, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    move/from16 v16, v2

    if-nez p7, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    move/from16 v17, v2

    sget-boolean v2, Lcom/android/server/LocationUsageLogger;->D:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v2, :cond_6

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "log API Usage to statsd. usageType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", apiInUse: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, ""

    if-nez p3, :cond_3

    move-object v4, v3

    goto :goto_2

    :cond_3
    move-object/from16 v4, p3

    :goto_2
    :try_start_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", locationRequest: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v16, :cond_4

    move-object v4, v3

    goto :goto_3

    :cond_4
    invoke-virtual/range {p4 .. p4}, Landroid/location/LocationRequest;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", hasListener: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", hasIntent: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", geofence: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v17, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual/range {p7 .. p7}, Landroid/location/Geofence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", importance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move/from16 v9, p8

    :try_start_3
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_0
    move-exception v0

    move/from16 v9, p8

    goto/16 :goto_f

    :cond_6
    move/from16 v9, p8

    :goto_5
    const/16 v2, 0xd2

    if-eqz v16, :cond_7

    move v5, v1

    goto :goto_6

    :cond_7
    invoke-virtual/range {p4 .. p4}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/LocationUsageLogger;->providerNameToStatsdEnum(Ljava/lang/String;)I

    move-result v3

    move v5, v3

    :goto_6
    if-eqz v16, :cond_8

    move v6, v1

    goto :goto_7

    :cond_8
    invoke-virtual/range {p4 .. p4}, Landroid/location/LocationRequest;->getQuality()I

    move-result v3

    move v6, v3

    :goto_7
    if-eqz v16, :cond_9

    move v7, v1

    goto :goto_8

    :cond_9
    invoke-virtual/range {p4 .. p4}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/server/LocationUsageLogger;->bucketizeIntervalToStatsdEnum(J)I

    move-result v3

    move v7, v3

    :goto_8
    if-eqz v16, :cond_a

    move v8, v1

    goto :goto_9

    :cond_a
    nop

    invoke-virtual/range {p4 .. p4}, Landroid/location/LocationRequest;->getSmallestDisplacement()F

    move-result v3

    invoke-static {v3}, Lcom/android/server/LocationUsageLogger;->bucketizeSmallestDisplacementToStatsdEnum(F)I

    move-result v3

    move v8, v3

    :goto_9
    if-eqz v16, :cond_b

    const-wide/16 v3, 0x0

    :goto_a
    move-wide/from16 v18, v3

    goto :goto_b

    :cond_b
    invoke-virtual/range {p4 .. p4}, Landroid/location/LocationRequest;->getNumUpdates()I

    move-result v3

    int-to-long v3, v3

    goto :goto_a

    :goto_b
    if-nez v16, :cond_d

    if-ne v15, v0, :cond_c

    goto :goto_c

    :cond_c
    invoke-virtual/range {p4 .. p4}, Landroid/location/LocationRequest;->getExpireAt()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/server/LocationUsageLogger;->getBucketizedExpireIn(J)I

    move-result v0

    goto :goto_d

    :cond_d
    :goto_c
    move v0, v1

    :goto_d
    invoke-static {v14, v13, v12}, Lcom/android/server/LocationUsageLogger;->getCallbackType(IZZ)I

    move-result v20

    if-eqz v17, :cond_e

    move/from16 v21, v1

    goto :goto_e

    :cond_e
    invoke-virtual/range {p7 .. p7}, Landroid/location/Geofence;->getRadius()F

    move-result v1

    invoke-static {v1}, Lcom/android/server/LocationUsageLogger;->bucketizeRadiusToStatsdEnum(F)I

    move-result v1

    move/from16 v21, v1

    :goto_e
    invoke-static/range {p8 .. p8}, Lcom/android/server/LocationUsageLogger;->categorizeActivityImportance(I)I

    move-result v22
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move v1, v2

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v9, v18

    move-object/from16 v23, v11

    move v11, v0

    move/from16 v12, v20

    move/from16 v13, v21

    move/from16 v14, v22

    :try_start_4
    invoke-static/range {v1 .. v14}, Landroid/util/StatsLog;->write(IIILjava/lang/String;IIIIJIIII)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    nop

    goto :goto_11

    :catch_1
    move-exception v0

    goto :goto_10

    :catch_2
    move-exception v0

    :goto_f
    move-object/from16 v23, v11

    :goto_10
    const-string v1, "Failed to log API usage to statsd."

    move-object/from16 v2, v23

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_11
    return-void
.end method
