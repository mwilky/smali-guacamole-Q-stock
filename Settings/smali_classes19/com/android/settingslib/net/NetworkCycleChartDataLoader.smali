.class public Lcom/android/settingslib/net/NetworkCycleChartDataLoader;
.super Lcom/android/settingslib/net/NetworkCycleDataLoader;
.source "NetworkCycleChartDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/net/NetworkCycleChartDataLoader$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/net/NetworkCycleDataLoader<",
        "Ljava/util/List<",
        "Lcom/android/settingslib/net/NetworkCycleChartData;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkCycleChartLoader"


# instance fields
.field private final mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleChartData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/settingslib/net/NetworkCycleChartDataLoader$Builder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/net/NetworkCycleDataLoader;-><init>(Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/net/NetworkCycleChartDataLoader;->mData:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/net/NetworkCycleChartDataLoader$Builder;Lcom/android/settingslib/net/NetworkCycleChartDataLoader$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/net/NetworkCycleChartDataLoader;-><init>(Lcom/android/settingslib/net/NetworkCycleChartDataLoader$Builder;)V

    return-void
.end method

.method public static builder(Landroid/content/Context;)Lcom/android/settingslib/net/NetworkCycleChartDataLoader$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/android/settingslib/net/NetworkCycleChartDataLoader$Builder<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/android/settingslib/net/NetworkCycleChartDataLoader$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/net/NetworkCycleChartDataLoader$1;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getUsageBuckets(JJ)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleData;",
            ">;"
        }
    .end annotation

    move-object v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    move-wide/from16 v3, p1

    sget-wide v5, Lcom/android/settingslib/net/NetworkCycleChartData;->BUCKET_DURATION_MS:J

    add-long v5, p1, v5

    :goto_0
    cmp-long v0, v5, p3

    if-gtz v0, :cond_1

    const-wide/16 v13, 0x0

    :try_start_0
    iget-object v7, v1, Lcom/android/settingslib/net/NetworkCycleChartDataLoader;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    iget-object v8, v1, Lcom/android/settingslib/net/NetworkCycleChartDataLoader;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    move-wide v9, v3

    move-wide v11, v5

    invoke-virtual/range {v7 .. v12}, Landroid/app/usage/NetworkStatsManager;->querySummaryForDevice(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats$Bucket;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v7

    invoke-virtual {v0}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v9
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v7, v9

    move-wide v13, v7

    :cond_0
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v7, "NetworkCycleChartLoader"

    const-string v8, "Exception querying network detail."

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    new-instance v0, Lcom/android/settingslib/net/NetworkCycleData$Builder;

    invoke-direct {v0}, Lcom/android/settingslib/net/NetworkCycleData$Builder;-><init>()V

    invoke-virtual {v0, v3, v4}, Lcom/android/settingslib/net/NetworkCycleData$Builder;->setStartTime(J)Lcom/android/settingslib/net/NetworkCycleData$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Lcom/android/settingslib/net/NetworkCycleData$Builder;->setEndTime(J)Lcom/android/settingslib/net/NetworkCycleData$Builder;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Lcom/android/settingslib/net/NetworkCycleData$Builder;->setTotalUsage(J)Lcom/android/settingslib/net/NetworkCycleData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/net/NetworkCycleData$Builder;->build()Lcom/android/settingslib/net/NetworkCycleData;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v3, v5

    sget-wide v7, Lcom/android/settingslib/net/NetworkCycleChartData;->BUCKET_DURATION_MS:J

    add-long/2addr v5, v7

    goto :goto_0

    :cond_1
    return-object v2
.end method


# virtual methods
.method bridge synthetic getCycleUsage()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settingslib/net/NetworkCycleChartDataLoader;->getCycleUsage()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getCycleUsage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleChartData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settingslib/net/NetworkCycleChartDataLoader;->mData:Ljava/util/List;

    return-object v0
.end method

.method recordUsage(JJ)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/net/NetworkCycleChartDataLoader;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    iget-object v1, p0, Lcom/android/settingslib/net/NetworkCycleChartDataLoader;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/NetworkStatsManager;->querySummaryForDevice(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats$Bucket;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    move-wide v3, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v5

    add-long/2addr v3, v5

    :goto_0
    cmp-long v1, v3, v1

    if-lez v1, :cond_1

    new-instance v1, Lcom/android/settingslib/net/NetworkCycleChartData$Builder;

    invoke-direct {v1}, Lcom/android/settingslib/net/NetworkCycleChartData$Builder;-><init>()V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/net/NetworkCycleChartDataLoader;->getUsageBuckets(JJ)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settingslib/net/NetworkCycleChartData$Builder;->setUsageBuckets(Ljava/util/List;)Lcom/android/settingslib/net/NetworkCycleChartData$Builder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/settingslib/net/NetworkCycleChartData$Builder;->setStartTime(J)Lcom/android/settingslib/net/NetworkCycleData$Builder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Lcom/android/settingslib/net/NetworkCycleData$Builder;->setEndTime(J)Lcom/android/settingslib/net/NetworkCycleData$Builder;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Lcom/android/settingslib/net/NetworkCycleData$Builder;->setTotalUsage(J)Lcom/android/settingslib/net/NetworkCycleData$Builder;

    iget-object v2, p0, Lcom/android/settingslib/net/NetworkCycleChartDataLoader;->mData:Ljava/util/List;

    invoke-virtual {v1}, Lcom/android/settingslib/net/NetworkCycleChartData$Builder;->build()Lcom/android/settingslib/net/NetworkCycleChartData;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "NetworkCycleChartLoader"

    const-string v2, "Exception querying network detail."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
