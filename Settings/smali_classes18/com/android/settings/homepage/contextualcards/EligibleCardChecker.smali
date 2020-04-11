.class public Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;
.super Ljava/lang/Object;
.source "EligibleCardChecker.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/android/settings/homepage/contextualcards/ContextualCard;",
        ">;"
    }
.end annotation


# static fields
.field private static final LATCH_TIMEOUT_MS:J = 0xc8L

.field private static final TAG:Ljava/lang/String; = "EligibleCardChecker"


# instance fields
.field mCard:Lcom/android/settings/homepage/contextualcards/ContextualCard;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/ContextualCard;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->mCard:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    return-void
.end method


# virtual methods
.method bindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;
    .locals 10
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/slice/SliceViewManager;->getInstance(Landroid/content/Context;)Landroidx/slice/SliceViewManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v7, v1, [Landroidx/slice/Slice;

    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v8, v2

    new-instance v9, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker$1;

    move-object v1, v9

    move-object v2, p0

    move-object v3, v7

    move-object v4, v8

    move-object v5, p1

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker$1;-><init>(Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;[Landroidx/slice/Slice;Ljava/util/concurrent/CountDownLatch;Landroid/net/Uri;Landroidx/slice/SliceViewManager;)V

    invoke-virtual {v0, p1, v1}, Landroidx/slice/SliceViewManager;->registerSliceCallback(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V

    invoke-virtual {v0, p1}, Landroidx/slice/SliceViewManager;->bindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/slice/SliceViewManager$SliceCallback;->onSliceUpdated(Landroidx/slice/Slice;)V

    const-wide/16 v2, 0xc8

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error waiting for slice binding for uri"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EligibleCardChecker"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0, p1, v1}, Landroidx/slice/SliceViewManager;->unregisterSliceCallback(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V

    :goto_0
    const/4 v2, 0x0

    aget-object v2, v7, v2

    return-object v2
.end method

.method public call()Lcom/android/settings/homepage/contextualcards/ContextualCard;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->mCard:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    invoke-virtual {p0, v3}, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->isCardEligibleToDisplay(Lcom/android/settings/homepage/contextualcards/ContextualCard;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    const/16 v5, 0x696

    const/16 v6, 0x5de

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->mCard:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    invoke-virtual {v3}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getTextSliceUri()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->mCard:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    move-object v9, v3

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/16 v5, 0x696

    const/16 v6, 0x5de

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->mCard:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    invoke-virtual {v3}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getTextSliceUri()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    const/4 v3, 0x0

    move-object v9, v3

    :goto_0
    const/4 v4, 0x0

    const/16 v5, 0x694

    const/16 v6, 0x5de

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->mCard:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    invoke-virtual {v3}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getTextSliceUri()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    long-to-int v8, v10

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    return-object v9
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->call()Lcom/android/settings/homepage/contextualcards/ContextualCard;

    move-result-object v0

    return-object v0
.end method

.method isCardEligibleToDisplay(Lcom/android/settings/homepage/contextualcards/ContextualCard;)Z
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getRankingScore()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->isCustomCard()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getSliceUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->bindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->isSliceToggleable(Landroidx/slice/Slice;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mutate()Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setHasInlineAction(Z)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->build()Lcom/android/settings/homepage/contextualcards/ContextualCard;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->mCard:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    :cond_3
    if-eqz v3, :cond_5

    const-string v4, "error"

    invoke-virtual {v3, v4}, Landroidx/slice/Slice;->hasHint(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    return v2

    :cond_5
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to bind slice, not eligible for display "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "EligibleCardChecker"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method isSliceToggleable(Landroidx/slice/Slice;)Z
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/slice/SliceMetadata;->from(Landroid/content/Context;Landroidx/slice/Slice;)Landroidx/slice/SliceMetadata;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/SliceMetadata;->getToggles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2
.end method
