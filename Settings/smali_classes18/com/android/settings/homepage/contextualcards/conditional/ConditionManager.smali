.class public Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;
.super Ljava/lang/Object;
.source "ConditionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager$DisplayableChecker;
    }
.end annotation


# static fields
.field private static final DISPLAYABLE_CHECKER_TIMEOUT_MS:J = 0x14L

.field private static final TAG:Ljava/lang/String; = "ConditionManager"


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field final mCardControllers:Ljava/util/List;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mIsListeningToStateChange:Z

.field private final mListener:Lcom/android/settings/homepage/contextualcards/conditional/ConditionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mAppContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mCardControllers:Ljava/util/List;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mListener:Lcom/android/settings/homepage/contextualcards/conditional/ConditionListener;

    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->initCandidates()V

    return-void
.end method

.method private getController(J)Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;",
            ">(J)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mCardControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;

    invoke-interface {v1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;->getId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find controller for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initCandidates()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mCardControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/homepage/contextualcards/conditional/AirplaneModeConditionController;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/settings/homepage/contextualcards/conditional/AirplaneModeConditionController;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mCardControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/homepage/contextualcards/conditional/BackgroundDataConditionController;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/settings/homepage/contextualcards/conditional/BackgroundDataConditionController;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mCardControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/homepage/contextualcards/conditional/BatterySaverConditionController;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/settings/homepage/contextualcards/conditional/BatterySaverConditionController;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mCardControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/settings/homepage/contextualcards/conditional/CellularDataConditionController;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mCardControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mCardControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/homepage/contextualcards/conditional/HotspotConditionController;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/settings/homepage/contextualcards/conditional/HotspotConditionController;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mCardControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/homepage/contextualcards/conditional/NightDisplayConditionController;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/settings/homepage/contextualcards/conditional/NightDisplayConditionController;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mCardControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/homepage/contextualcards/conditional/RingerVibrateConditionController;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/settings/homepage/contextualcards/conditional/RingerVibrateConditionController;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mCardControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/homepage/contextualcards/conditional/RingerMutedConditionController;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/settings/homepage/contextualcards/conditional/RingerMutedConditionController;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mCardControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/settings/homepage/contextualcards/conditional/WorkModeConditionController;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mCardControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mCardControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/homepage/contextualcards/conditional/CloudConditionController;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/settings/homepage/contextualcards/conditional/CloudConditionController;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mCardControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/homepage/contextualcards/conditional/OpOtaConditionController;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/settings/homepage/contextualcards/conditional/OpOtaConditionController;-><init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getDisplayableCards()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCard;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mCardControllers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;

    new-instance v4, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager$DisplayableChecker;

    invoke-interface {v3}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;->getId()J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->getController(J)Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager$DisplayableChecker;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager$1;)V

    iget-object v5, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v5, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Future;

    const-wide/16 v4, 0x14

    :try_start_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    if-eqz v4, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_2

    :catch_0
    move-exception v4

    const-string v5, "ConditionManager"

    const-string v6, "Failed to get displayable state for card, likely timeout. Skipping"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public onActionClick(J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->getController(J)Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;->onActionClick()V

    return-void
.end method

.method onConditionChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mListener:Lcom/android/settings/homepage/contextualcards/conditional/ConditionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionListener;->onConditionsChanged()V

    :cond_0
    return-void
.end method

.method public onPrimaryClick(Landroid/content/Context;J)V
    .locals 1

    invoke-direct {p0, p2, p3}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->getController(J)Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;->onPrimaryClick(Landroid/content/Context;)V

    return-void
.end method

.method public startMonitoringStateChange()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mIsListeningToStateChange:Z

    if-eqz v0, :cond_0

    const-string v0, "ConditionManager"

    const-string v1, "Already listening to condition state changes, skipping monitor setup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mIsListeningToStateChange:Z

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mCardControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;

    invoke-interface {v1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;->startMonitoringStateChange()V

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->onConditionChanged()V

    return-void
.end method

.method public stopMonitoringStateChange()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mIsListeningToStateChange:Z

    if-nez v0, :cond_0

    const-string v0, "ConditionManager"

    const-string v1, "Not listening to condition state changes, skipping"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mCardControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;

    invoke-interface {v1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;->stopMonitoringStateChange()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->mIsListeningToStateChange:Z

    return-void
.end method
