.class public abstract Lcom/oneplus/support/lifecycle/LiveData;
.super Ljava/lang/Object;
.source "LiveData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/support/lifecycle/LiveData$AlwaysActiveObserver;,
        Lcom/oneplus/support/lifecycle/LiveData$ObserverWrapper;,
        Lcom/oneplus/support/lifecycle/LiveData$LifecycleBoundObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final NOT_SET:Ljava/lang/Object;

.field static final START_VERSION:I = -0x1


# instance fields
.field private mActiveCount:I

.field private volatile mData:Ljava/lang/Object;

.field private final mDataLock:Ljava/lang/Object;

.field private mDispatchInvalidated:Z

.field private mDispatchingValue:Z

.field private mObservers:Lcom/oneplus/support/collection/SafeIterableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/support/collection/SafeIterableMap<",
            "Lcom/oneplus/support/lifecycle/Observer<",
            "-TT;>;",
            "Lcom/oneplus/support/lifecycle/LiveData<",
            "TT;>.ObserverWrapper;>;"
        }
    .end annotation
.end field

.field private volatile mPendingData:Ljava/lang/Object;

.field private final mPostValueRunnable:Ljava/lang/Runnable;

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oneplus/support/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/lifecycle/LiveData;->mDataLock:Ljava/lang/Object;

    new-instance v0, Lcom/oneplus/support/collection/SafeIterableMap;

    invoke-direct {v0}, Lcom/oneplus/support/collection/SafeIterableMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/lifecycle/LiveData;->mObservers:Lcom/oneplus/support/collection/SafeIterableMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/support/lifecycle/LiveData;->mActiveCount:I

    sget-object v0, Lcom/oneplus/support/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    iput-object v0, p0, Lcom/oneplus/support/lifecycle/LiveData;->mData:Ljava/lang/Object;

    iput-object v0, p0, Lcom/oneplus/support/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/support/lifecycle/LiveData;->mVersion:I

    new-instance v0, Lcom/oneplus/support/lifecycle/LiveData$1;

    invoke-direct {v0, p0}, Lcom/oneplus/support/lifecycle/LiveData$1;-><init>(Lcom/oneplus/support/lifecycle/LiveData;)V

    iput-object v0, p0, Lcom/oneplus/support/lifecycle/LiveData;->mPostValueRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/support/lifecycle/LiveData;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/lifecycle/LiveData;->mDataLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/support/lifecycle/LiveData;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/oneplus/support/lifecycle/LiveData;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/support/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/oneplus/support/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/support/lifecycle/LiveData;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/support/lifecycle/LiveData;->mActiveCount:I

    return v0
.end method

.method static synthetic access$312(Lcom/oneplus/support/lifecycle/LiveData;I)I
    .locals 1

    iget v0, p0, Lcom/oneplus/support/lifecycle/LiveData;->mActiveCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/oneplus/support/lifecycle/LiveData;->mActiveCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/oneplus/support/lifecycle/LiveData;Lcom/oneplus/support/lifecycle/LiveData$ObserverWrapper;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/support/lifecycle/LiveData;->dispatchingValue(Lcom/oneplus/support/lifecycle/LiveData$ObserverWrapper;)V

    return-void
.end method

.method private static assertMainThread(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/oneplus/support/executor/ArchTaskExecutor;->getInstance()Lcom/oneplus/support/executor/ArchTaskExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/support/executor/ArchTaskExecutor;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot invoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " on a background thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private considerNotify(Lcom/oneplus/support/lifecycle/LiveData$ObserverWrapper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/lifecycle/LiveData<",
            "TT;>.ObserverWrapper;)V"
        }
    .end annotation

    iget-boolean v0, p1, Lcom/oneplus/support/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/support/lifecycle/LiveData$ObserverWrapper;->shouldBeActive()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oneplus/support/lifecycle/LiveData$ObserverWrapper;->activeStateChanged(Z)V

    return-void

    :cond_1
    iget v0, p1, Lcom/oneplus/support/lifecycle/LiveData$ObserverWrapper;->mLastVersion:I

    iget v1, p0, Lcom/oneplus/support/lifecycle/LiveData;->mVersion:I

    if-lt v0, v1, :cond_2

    return-void

    :cond_2
    iput v1, p1, Lcom/oneplus/support/lifecycle/LiveData$ObserverWrapper;->mLastVersion:I

    iget-object v0, p1, Lcom/oneplus/support/lifecycle/LiveData$ObserverWrapper;->mObserver:Lcom/oneplus/support/lifecycle/Observer;

    iget-object v1, p0, Lcom/oneplus/support/lifecycle/LiveData;->mData:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/oneplus/support/lifecycle/Observer;->onChanged(Ljava/lang/Object;)V

    return-void
.end method

.method private dispatchingValue(Lcom/oneplus/support/lifecycle/LiveData$ObserverWrapper;)V
    .locals 3
    .param p1    # Lcom/oneplus/support/lifecycle/LiveData$ObserverWrapper;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/lifecycle/LiveData<",
            "TT;>.ObserverWrapper;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/oneplus/support/lifecycle/LiveData;->mDispatchingValue:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/oneplus/support/lifecycle/LiveData;->mDispatchInvalidated:Z

    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/oneplus/support/lifecycle/LiveData;->mDispatchingValue:Z

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/support/lifecycle/LiveData;->mDispatchInvalidated:Z

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/oneplus/support/lifecycle/LiveData;->considerNotify(Lcom/oneplus/support/lifecycle/LiveData$ObserverWrapper;)V

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/oneplus/support/lifecycle/LiveData;->mObservers:Lcom/oneplus/support/collection/SafeIterableMap;

    invoke-virtual {v1}, Lcom/oneplus/support/collection/SafeIterableMap;->iteratorWithAdditions()Lcom/oneplus/support/collection/SafeIterableMap$IteratorWithAdditions;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/support/lifecycle/LiveData$ObserverWrapper;

    invoke-direct {p0, v2}, Lcom/oneplus/support/lifecycle/LiveData;->considerNotify(Lcom/oneplus/support/lifecycle/LiveData$ObserverWrapper;)V

    iget-boolean v2, p0, Lcom/oneplus/support/lifecycle/LiveData;->mDispatchInvalidated:Z

    if-eqz v2, :cond_2

    :cond_3
    :goto_1
    iget-boolean v1, p0, Lcom/oneplus/support/lifecycle/LiveData;->mDispatchInvalidated:Z

    if-nez v1, :cond_4

    iput-boolean v0, p0, Lcom/oneplus/support/lifecycle/LiveData;->mDispatchingValue:Z

    return-void

    :cond_4
    goto :goto_0
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/support/lifecycle/LiveData;->mData:Ljava/lang/Object;

    sget-object v1, Lcom/oneplus/support/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method getVersion()I
    .locals 1

    iget v0, p0, Lcom/oneplus/support/lifecycle/LiveData;->mVersion:I

    return v0
.end method

.method public hasActiveObservers()Z
    .locals 1

    iget v0, p0, Lcom/oneplus/support/lifecycle/LiveData;->mActiveCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasObservers()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/lifecycle/LiveData;->mObservers:Lcom/oneplus/support/collection/SafeIterableMap;

    invoke-virtual {v0}, Lcom/oneplus/support/collection/SafeIterableMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public observe(Lcom/oneplus/support/lifecycle/LifecycleOwner;Lcom/oneplus/support/lifecycle/Observer;)V
    .locals 4
    .param p1    # Lcom/oneplus/support/lifecycle/LifecycleOwner;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/oneplus/support/lifecycle/Observer;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/lifecycle/LifecycleOwner;",
            "Lcom/oneplus/support/lifecycle/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observe"

    invoke-static {v0}, Lcom/oneplus/support/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/oneplus/support/lifecycle/LifecycleOwner;->getLifecycle()Lcom/oneplus/support/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/support/lifecycle/Lifecycle;->getCurrentState()Lcom/oneplus/support/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Lcom/oneplus/support/lifecycle/Lifecycle$State;->DESTROYED:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/oneplus/support/lifecycle/LiveData$LifecycleBoundObserver;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/support/lifecycle/LiveData$LifecycleBoundObserver;-><init>(Lcom/oneplus/support/lifecycle/LiveData;Lcom/oneplus/support/lifecycle/LifecycleOwner;Lcom/oneplus/support/lifecycle/Observer;)V

    iget-object v1, p0, Lcom/oneplus/support/lifecycle/LiveData;->mObservers:Lcom/oneplus/support/collection/SafeIterableMap;

    invoke-virtual {v1, p2, v0}, Lcom/oneplus/support/collection/SafeIterableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/lifecycle/LiveData$ObserverWrapper;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lcom/oneplus/support/lifecycle/LiveData$ObserverWrapper;->isAttachedTo(Lcom/oneplus/support/lifecycle/LifecycleOwner;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot add the same observer with different lifecycles"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    return-void

    :cond_3
    invoke-interface {p1}, Lcom/oneplus/support/lifecycle/LifecycleOwner;->getLifecycle()Lcom/oneplus/support/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/oneplus/support/lifecycle/Lifecycle;->addObserver(Lcom/oneplus/support/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public observeForever(Lcom/oneplus/support/lifecycle/Observer;)V
    .locals 4
    .param p1    # Lcom/oneplus/support/lifecycle/Observer;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/lifecycle/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observeForever"

    invoke-static {v0}, Lcom/oneplus/support/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    new-instance v0, Lcom/oneplus/support/lifecycle/LiveData$AlwaysActiveObserver;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/support/lifecycle/LiveData$AlwaysActiveObserver;-><init>(Lcom/oneplus/support/lifecycle/LiveData;Lcom/oneplus/support/lifecycle/Observer;)V

    iget-object v1, p0, Lcom/oneplus/support/lifecycle/LiveData;->mObservers:Lcom/oneplus/support/collection/SafeIterableMap;

    invoke-virtual {v1, p1, v0}, Lcom/oneplus/support/collection/SafeIterableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/support/lifecycle/LiveData$ObserverWrapper;

    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/oneplus/support/lifecycle/LiveData$LifecycleBoundObserver;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot add the same observer with different lifecycles"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/oneplus/support/lifecycle/LiveData$AlwaysActiveObserver;->activeStateChanged(Z)V

    return-void
.end method

.method protected onActive()V
    .locals 0

    return-void
.end method

.method protected onInactive()V
    .locals 0

    return-void
.end method

.method protected postValue(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/support/lifecycle/LiveData;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/support/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    sget-object v2, Lcom/oneplus/support/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/oneplus/support/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/oneplus/support/executor/ArchTaskExecutor;->getInstance()Lcom/oneplus/support/executor/ArchTaskExecutor;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/support/lifecycle/LiveData;->mPostValueRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/oneplus/support/executor/ArchTaskExecutor;->postToMainThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeObserver(Lcom/oneplus/support/lifecycle/Observer;)V
    .locals 2
    .param p1    # Lcom/oneplus/support/lifecycle/Observer;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/lifecycle/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "removeObserver"

    invoke-static {v0}, Lcom/oneplus/support/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/support/lifecycle/LiveData;->mObservers:Lcom/oneplus/support/collection/SafeIterableMap;

    invoke-virtual {v0, p1}, Lcom/oneplus/support/collection/SafeIterableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/support/lifecycle/LiveData$ObserverWrapper;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/support/lifecycle/LiveData$ObserverWrapper;->detachObserver()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/support/lifecycle/LiveData$ObserverWrapper;->activeStateChanged(Z)V

    return-void
.end method

.method public removeObservers(Lcom/oneplus/support/lifecycle/LifecycleOwner;)V
    .locals 3
    .param p1    # Lcom/oneplus/support/lifecycle/LifecycleOwner;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/MainThread;
    .end annotation

    const-string v0, "removeObservers"

    invoke-static {v0}, Lcom/oneplus/support/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/support/lifecycle/LiveData;->mObservers:Lcom/oneplus/support/collection/SafeIterableMap;

    invoke-virtual {v0}, Lcom/oneplus/support/collection/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/support/lifecycle/LiveData$ObserverWrapper;

    invoke-virtual {v2, p1}, Lcom/oneplus/support/lifecycle/LiveData$ObserverWrapper;->isAttachedTo(Lcom/oneplus/support/lifecycle/LifecycleOwner;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/support/lifecycle/Observer;

    invoke-virtual {p0, v2}, Lcom/oneplus/support/lifecycle/LiveData;->removeObserver(Lcom/oneplus/support/lifecycle/Observer;)V

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method protected setValue(Ljava/lang/Object;)V
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "setValue"

    invoke-static {v0}, Lcom/oneplus/support/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    iget v0, p0, Lcom/oneplus/support/lifecycle/LiveData;->mVersion:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/support/lifecycle/LiveData;->mVersion:I

    iput-object p1, p0, Lcom/oneplus/support/lifecycle/LiveData;->mData:Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/support/lifecycle/LiveData;->dispatchingValue(Lcom/oneplus/support/lifecycle/LiveData$ObserverWrapper;)V

    return-void
.end method
