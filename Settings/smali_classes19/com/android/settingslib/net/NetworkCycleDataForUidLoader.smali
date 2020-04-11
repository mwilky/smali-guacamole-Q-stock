.class public Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;
.super Lcom/android/settingslib/net/NetworkCycleDataLoader;
.source "NetworkCycleDataForUidLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/net/NetworkCycleDataLoader<",
        "Ljava/util/List<",
        "Lcom/android/settingslib/net/NetworkCycleDataForUid;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkDataForUidLoader"


# instance fields
.field private final mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleDataForUid;",
            ">;"
        }
    .end annotation
.end field

.field private final mRetrieveDetail:Z

.field private final mUids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$Builder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/net/NetworkCycleDataLoader;-><init>(Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;)V

    invoke-static {p1}, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$Builder;->access$000(Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->mUids:Ljava/util/List;

    invoke-static {p1}, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$Builder;->access$100(Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->mRetrieveDetail:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->mData:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$Builder;Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;-><init>(Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$Builder;)V

    return-void
.end method

.method public static builder(Landroid/content/Context;)Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$Builder<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$1;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getForegroundUsage(JJI)J
    .locals 9

    iget-object v0, p0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    iget-object v1, p0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    const/4 v7, 0x0

    const/4 v8, 0x2

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v8}, Landroid/app/usage/NetworkStatsManager;->queryDetailsForUidTagState(Landroid/net/NetworkTemplate;JJIII)Landroid/app/usage/NetworkStats;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->getTotalUsage(Landroid/app/usage/NetworkStats;)J

    move-result-wide v1

    return-wide v1
.end method


# virtual methods
.method bridge synthetic getCycleUsage()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->getCycleUsage()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getCycleUsage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleDataForUid;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->mData:Ljava/util/List;

    return-object v0
.end method

.method public getUids()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x5
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->mUids:Ljava/util/List;

    return-object v0
.end method

.method recordUsage(JJ)V
    .locals 18

    move-object/from16 v7, p0

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    iget-object v4, v7, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->mUids:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v9, v2

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    iget-object v11, v7, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    iget-object v12, v7, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    move-wide/from16 v13, p1

    move-wide/from16 v15, p3

    invoke-virtual/range {v11 .. v17}, Landroid/app/usage/NetworkStatsManager;->queryDetailsForUid(Landroid/net/NetworkTemplate;JJI)Landroid/app/usage/NetworkStats;

    move-result-object v2

    move-object v11, v2

    invoke-virtual {v7, v11}, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->getTotalUsage(Landroid/app/usage/NetworkStats;)J

    move-result-wide v5

    move-wide v12, v5

    cmp-long v2, v12, v3

    if-lez v2, :cond_1

    add-long v14, v0, v12

    iget-boolean v0, v7, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->mRetrieveDetail:Z

    if-eqz v0, :cond_0

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->getForegroundUsage(JJI)J

    move-result-wide v0

    add-long/2addr v9, v0

    move-wide v0, v14

    goto :goto_1

    :cond_0
    move-wide v0, v14

    :cond_1
    :goto_1
    goto :goto_0

    :cond_2
    cmp-long v2, v0, v3

    if-lez v2, :cond_4

    new-instance v2, Lcom/android/settingslib/net/NetworkCycleDataForUid$Builder;

    invoke-direct {v2}, Lcom/android/settingslib/net/NetworkCycleDataForUid$Builder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-wide/from16 v3, p1

    :try_start_1
    invoke-virtual {v2, v3, v4}, Lcom/android/settingslib/net/NetworkCycleDataForUid$Builder;->setStartTime(J)Lcom/android/settingslib/net/NetworkCycleData$Builder;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-wide/from16 v11, p3

    :try_start_2
    invoke-virtual {v5, v11, v12}, Lcom/android/settingslib/net/NetworkCycleData$Builder;->setEndTime(J)Lcom/android/settingslib/net/NetworkCycleData$Builder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Lcom/android/settingslib/net/NetworkCycleData$Builder;->setTotalUsage(J)Lcom/android/settingslib/net/NetworkCycleData$Builder;

    iget-boolean v5, v7, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->mRetrieveDetail:Z

    if-eqz v5, :cond_3

    sub-long v5, v0, v9

    invoke-virtual {v2, v5, v6}, Lcom/android/settingslib/net/NetworkCycleDataForUid$Builder;->setBackgroundUsage(J)Lcom/android/settingslib/net/NetworkCycleDataForUid$Builder;

    move-result-object v5

    invoke-virtual {v5, v9, v10}, Lcom/android/settingslib/net/NetworkCycleDataForUid$Builder;->setForegroundUsage(J)Lcom/android/settingslib/net/NetworkCycleDataForUid$Builder;

    :cond_3
    iget-object v5, v7, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->mData:Ljava/util/List;

    invoke-virtual {v2}, Lcom/android/settingslib/net/NetworkCycleDataForUid$Builder;->build()Lcom/android/settingslib/net/NetworkCycleDataForUid;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_4
    move-wide/from16 v3, p1

    move-wide/from16 v11, p3

    :goto_2
    goto :goto_5

    :catch_2
    move-exception v0

    move-wide/from16 v3, p1

    :goto_3
    move-wide/from16 v11, p3

    :goto_4
    const-string v1, "NetworkDataForUidLoader"

    const-string v2, "Exception querying network detail."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return-void
.end method
