.class public Lcom/android/settingslib/net/NetworkStatsSummaryLoader;
.super Landroidx/loader/content/AsyncTaskLoader;
.source "NetworkStatsSummaryLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/net/NetworkStatsSummaryLoader$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/loader/content/AsyncTaskLoader<",
        "Landroid/app/usage/NetworkStats;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkDetailLoader"


# instance fields
.field private final mEnd:J

.field private final mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

.field private final mNetworkTemplate:Landroid/net/NetworkTemplate;

.field private final mStart:J


# direct methods
.method private constructor <init>(Lcom/android/settingslib/net/NetworkStatsSummaryLoader$Builder;)V
    .locals 2

    invoke-static {p1}, Lcom/android/settingslib/net/NetworkStatsSummaryLoader$Builder;->access$000(Lcom/android/settingslib/net/NetworkStatsSummaryLoader$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/settingslib/net/NetworkStatsSummaryLoader$Builder;->access$100(Lcom/android/settingslib/net/NetworkStatsSummaryLoader$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settingslib/net/NetworkStatsSummaryLoader;->mStart:J

    invoke-static {p1}, Lcom/android/settingslib/net/NetworkStatsSummaryLoader$Builder;->access$200(Lcom/android/settingslib/net/NetworkStatsSummaryLoader$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settingslib/net/NetworkStatsSummaryLoader;->mEnd:J

    invoke-static {p1}, Lcom/android/settingslib/net/NetworkStatsSummaryLoader$Builder;->access$300(Lcom/android/settingslib/net/NetworkStatsSummaryLoader$Builder;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/net/NetworkStatsSummaryLoader;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    nop

    invoke-static {p1}, Lcom/android/settingslib/net/NetworkStatsSummaryLoader$Builder;->access$000(Lcom/android/settingslib/net/NetworkStatsSummaryLoader$Builder;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "netstats"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/NetworkStatsManager;

    iput-object v0, p0, Lcom/android/settingslib/net/NetworkStatsSummaryLoader;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/net/NetworkStatsSummaryLoader$Builder;Lcom/android/settingslib/net/NetworkStatsSummaryLoader$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/net/NetworkStatsSummaryLoader;-><init>(Lcom/android/settingslib/net/NetworkStatsSummaryLoader$Builder;)V

    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/app/usage/NetworkStats;
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/net/NetworkStatsSummaryLoader;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    iget-object v1, p0, Lcom/android/settingslib/net/NetworkStatsSummaryLoader;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    iget-wide v2, p0, Lcom/android/settingslib/net/NetworkStatsSummaryLoader;->mStart:J

    iget-wide v4, p0, Lcom/android/settingslib/net/NetworkStatsSummaryLoader;->mEnd:J

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/NetworkStatsManager;->querySummary(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "NetworkDetailLoader"

    const-string v2, "Exception querying network detail."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settingslib/net/NetworkStatsSummaryLoader;->loadInBackground()Landroid/app/usage/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    invoke-super {p0}, Landroidx/loader/content/AsyncTaskLoader;->onReset()V

    invoke-virtual {p0}, Lcom/android/settingslib/net/NetworkStatsSummaryLoader;->cancelLoad()Z

    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    invoke-super {p0}, Landroidx/loader/content/AsyncTaskLoader;->onStartLoading()V

    invoke-virtual {p0}, Lcom/android/settingslib/net/NetworkStatsSummaryLoader;->forceLoad()V

    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    invoke-super {p0}, Landroidx/loader/content/AsyncTaskLoader;->onStopLoading()V

    invoke-virtual {p0}, Lcom/android/settingslib/net/NetworkStatsSummaryLoader;->cancelLoad()Z

    return-void
.end method
