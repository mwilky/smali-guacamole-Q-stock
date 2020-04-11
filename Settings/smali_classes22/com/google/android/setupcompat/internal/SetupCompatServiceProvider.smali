.class public Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;
.super Ljava/lang/Object;
.source "SetupCompatServiceProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;,
        Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;
    }
.end annotation


# static fields
.field static final COMPAT_SERVICE_INTENT:Landroid/content/Intent;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SucServiceProvider"

.field static disableLooperCheckForTesting:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static volatile instance:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final connectedConditionRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/concurrent/CountDownLatch;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field final serviceConnection:Landroid/content/ServiceConnection;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private volatile serviceContext:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.setupwizard"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.android.setupcompat.SetupCompatService.BIND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->COMPAT_SERVICE_INTENT:Landroid/content/Intent;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->disableLooperCheckForTesting:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$1;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$1;-><init>(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;)V

    iput-object v0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->serviceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;

    sget-object v1, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->NOT_STARTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;-><init>(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$1;)V

    iput-object v0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->serviceContext:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->connectedConditionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->swapServiceContextAndNotify(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;)V

    return-void
.end method

.method public static get(Landroid/content/Context;JLjava/util/concurrent/TimeUnit;)Lcom/google/android/setupcompat/ISetupCompatService;
    .locals 1
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->getInstance(Landroid/content/Context;)Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->getService(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/setupcompat/ISetupCompatService;

    move-result-object v0

    return-object v0
.end method

.method private getAndClearConnectedCondition()Ljava/util/concurrent/CountDownLatch;
    .locals 2

    iget-object v0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->connectedConditionRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method private getConnectedCondition()Ljava/util/concurrent/CountDownLatch;
    .locals 3

    :goto_0
    iget-object v0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->connectedConditionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->createCountDownLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->connectedConditionRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    goto :goto_0
.end method

.method private getCurrentServiceState()Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;
    .locals 1

    iget-object v0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->serviceContext:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;

    return-object v0
.end method

.method static getInstance(Landroid/content/Context;)Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "Context object cannot be null."

    invoke-static {p0, v0}, Lcom/google/android/setupcompat/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->instance:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->instance:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;

    move-object v0, v2

    if-nez v0, :cond_0

    new-instance v2, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;-><init>(Landroid/content/Context;)V

    move-object v0, v2

    sput-object v2, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->instance:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;

    sget-object v2, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->instance:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;

    invoke-direct {v2}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->requestServiceBind()V

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :goto_0
    return-object v0
.end method

.method private declared-synchronized requestServiceBind()V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->getCurrentServiceState()Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;->state:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    sget-object v2, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->CONNECTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    if-ne v1, v2, :cond_0

    const-string v1, "SucServiceProvider"

    const-string v2, "Refusing to rebind since current state is already connected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;->state:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    sget-object v2, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->NOT_STARTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    if-eq v1, v2, :cond_1

    const-string v1, "SucServiceProvider"

    const-string v2, "Unbinding existing service connection."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->context:Landroid/content/Context;

    sget-object v2, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->COMPAT_SERVICE_INTENT:Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "SucServiceProvider"

    const-string v3, "Unable to bind to compat service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->getCurrentState()Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    move-result-object v3

    sget-object v4, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->CONNECTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    if-eq v3, v4, :cond_3

    new-instance v3, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;

    sget-object v4, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->BINDING:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    invoke-direct {v3, v4, v2}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;-><init>(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$1;)V

    invoke-direct {p0, v3}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->swapServiceContextAndNotify(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;)V

    const-string v2, "SucServiceProvider"

    const-string v3, "Context#bindService went through, now waiting for service connection"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    new-instance v3, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;

    sget-object v4, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->BIND_FAILED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    invoke-direct {v3, v4, v2}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;-><init>(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$1;)V

    invoke-direct {p0, v3}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->swapServiceContextAndNotify(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;)V

    const-string v2, "SucServiceProvider"

    const-string v3, "Context#bindService did not succeed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static setInstanceForTesting(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sput-object p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->instance:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;

    return-void
.end method

.method private swapServiceContextAndNotify(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;)V
    .locals 4

    const-string v0, "SucServiceProvider"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->serviceContext:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;

    iget-object v3, v3, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;->state:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;->state:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    aput-object v3, v1, v2

    const-string v2, "State changed: %s -> %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->serviceContext:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;

    invoke-direct {p0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->getAndClearConnectedCondition()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    return-void
.end method

.method private waitForConnection(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/setupcompat/ISetupCompatService;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->getCurrentServiceState()Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;->state:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    sget-object v2, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->CONNECTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;->compatService:Lcom/google/android/setupcompat/ISetupCompatService;

    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->getConnectedCondition()Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    const-string v2, "SucServiceProvider"

    const-string v3, "Waiting for service to get connected"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->getCurrentServiceState()Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;

    move-result-object v0

    const/4 v6, 0x4

    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;->state:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    aput-object v6, v4, v5

    const-string v5, "Finished waiting for service to get connected. Current state = %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;->compatService:Lcom/google/android/setupcompat/ISetupCompatService;

    return-object v2

    :cond_2
    invoke-direct {p0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->requestServiceBind()V

    new-instance v2, Ljava/util/concurrent/TimeoutException;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v5

    aput-object p3, v6, v4

    const-string v4, "Failed to acquire connection after [%s %s]"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method protected createCountDownLatch()Ljava/util/concurrent/CountDownLatch;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    return-object v0
.end method

.method getCurrentState()Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->serviceContext:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;

    iget-object v0, v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;->state:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    return-object v0
.end method

.method public getService(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/setupcompat/ISetupCompatService;
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    sget-boolean v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->disableLooperCheckForTesting:Z

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "getService blocks and should not be called from the main thread."

    invoke-static {v0, v1}, Lcom/google/android/setupcompat/internal/Preconditions;->checkState(ZLjava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->getCurrentServiceState()Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$2;->$SwitchMap$com$google$android$setupcompat$internal$SetupCompatServiceProvider$State:[I

    iget-object v2, v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;->state:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    invoke-virtual {v2}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;->state:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "NOT_STARTED state only possible before instance is created."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->requestServiceBind()V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->waitForConnection(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/setupcompat/ISetupCompatService;

    move-result-object v1

    return-object v1

    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->waitForConnection(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/setupcompat/ISetupCompatService;

    move-result-object v1

    return-object v1

    :pswitch_3
    const/4 v1, 0x0

    return-object v1

    :pswitch_4
    iget-object v1, v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;->compatService:Lcom/google/android/setupcompat/ISetupCompatService;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
