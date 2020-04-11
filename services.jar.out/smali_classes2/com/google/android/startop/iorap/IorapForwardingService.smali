.class public Lcom/google/android/startop/iorap/IorapForwardingService;
.super Lcom/android/server/SystemService;
.source "IorapForwardingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/startop/iorap/IorapForwardingService$RemoteRunnable;,
        Lcom/google/android/startop/iorap/IorapForwardingService$RemoteTaskListener;,
        Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;,
        Lcom/google/android/startop/iorap/IorapForwardingService$BinderConnectionHandler;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field private static IS_ENABLED:Z = false

.field public static final TAG:Ljava/lang/String; = "IorapForwardingService"

.field private static WTF_CRASH:Z


# instance fields
.field private final mAppLaunchObserver:Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mIorapRemote:Lcom/google/android/startop/iorap/IIorap;

.field private final mLock:Ljava/lang/Object;

.field private mRegisteredListeners:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "IorapForwardingService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/startop/iorap/IorapForwardingService;->DEBUG:Z

    const-string v0, "ro.iorapd.enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/startop/iorap/IorapForwardingService;->IS_ENABLED:Z

    const-string v0, "iorapd.forwarding_service.wtf_crash"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/startop/iorap/IorapForwardingService;->WTF_CRASH:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/startop/iorap/IorapForwardingService$BinderConnectionHandler;

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/startop/iorap/IorapForwardingService$BinderConnectionHandler;-><init>(Lcom/google/android/startop/iorap/IorapForwardingService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;-><init>(Lcom/google/android/startop/iorap/IorapForwardingService;Lcom/google/android/startop/iorap/IorapForwardingService$1;)V

    iput-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService;->mAppLaunchObserver:Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService;->mRegisteredListeners:Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/startop/iorap/IorapForwardingService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/startop/iorap/IorapForwardingService;->retryConnectToRemoteAndConfigure(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/startop/iorap/IorapForwardingService$RemoteRunnable;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/startop/iorap/IorapForwardingService;->invokeRemote(Lcom/google/android/startop/iorap/IorapForwardingService$RemoteRunnable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/startop/iorap/IorapForwardingService;)Lcom/google/android/startop/iorap/IIorap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService;->mIorapRemote:Lcom/google/android/startop/iorap/IIorap;

    return-object v0
.end method

.method private connectToRemoteAndConfigure()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/startop/iorap/IorapForwardingService;->connectToRemoteAndConfigureLocked()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private connectToRemoteAndConfigureLocked()Z
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/startop/iorap/IorapForwardingService;->isIorapEnabled()Z

    move-result v0

    const-string v1, "IorapForwardingService"

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/google/android/startop/iorap/IorapForwardingService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "connectToRemoteAndConfigure - iorapd is disabled, skip rest of work"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/startop/iorap/IorapForwardingService;->provideIorapRemote()Lcom/google/android/startop/iorap/IIorap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService;->mIorapRemote:Lcom/google/android/startop/iorap/IIorap;

    iget-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService;->mIorapRemote:Lcom/google/android/startop/iorap/IIorap;

    if-nez v0, :cond_2

    const-string v0, "connectToRemoteAndConfigure - null iorap remote. check for Log.wtf?"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_2
    new-instance v0, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$wgbD3UX3tm4cAHA8-DcwmeBBlXU;

    invoke-direct {v0, p0}, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$wgbD3UX3tm4cAHA8-DcwmeBBlXU;-><init>(Lcom/google/android/startop/iorap/IorapForwardingService;)V

    invoke-static {v0}, Lcom/google/android/startop/iorap/IorapForwardingService;->invokeRemote(Lcom/google/android/startop/iorap/IorapForwardingService$RemoteRunnable;)V

    invoke-direct {p0}, Lcom/google/android/startop/iorap/IorapForwardingService;->registerInProcessListenersLocked()V

    return v2
.end method

.method private static handleRemoteError(Ljava/lang/Throwable;)V
    .locals 2

    sget-boolean v0, Lcom/google/android/startop/iorap/IorapForwardingService;->WTF_CRASH:Z

    if-nez v0, :cond_0

    const-string v0, "IorapForwardingService"

    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "unexpected remote error"

    invoke-direct {v0, v1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static invokeRemote(Lcom/google/android/startop/iorap/IorapForwardingService$RemoteRunnable;)V
    .locals 1

    :try_start_0
    invoke-interface {p0}, Lcom/google/android/startop/iorap/IorapForwardingService$RemoteRunnable;->run()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/android/startop/iorap/IorapForwardingService;->handleRemoteError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private registerInProcessListenersLocked()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService;->mRegisteredListeners:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    nop

    invoke-virtual {p0}, Lcom/google/android/startop/iorap/IorapForwardingService;->provideLaunchObserverRegistry()Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/startop/iorap/IorapForwardingService;->mAppLaunchObserver:Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;

    invoke-interface {v0, v1}, Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;->registerLaunchObserver(Lcom/android/server/wm/ActivityMetricsLaunchObserver;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/startop/iorap/IorapForwardingService;->mRegisteredListeners:Z

    return-void
.end method

.method private retryConnectToRemoteAndConfigure(I)Z
    .locals 6

    const/16 v0, 0x3e8

    sget-boolean v1, Lcom/google/android/startop/iorap/IorapForwardingService;->DEBUG:Z

    const-string v2, "IorapForwardingService"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retryConnectToRemoteAndConfigure - attempt #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/google/android/startop/iorap/IorapForwardingService;->connectToRemoteAndConfigure()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    const-string v1, "Failed to connect to iorapd, is it down? Delay for 1000"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/google/android/startop/iorap/IorapForwardingService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v2
.end method


# virtual methods
.method protected isIorapEnabled()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    sget-boolean v0, Lcom/google/android/startop/iorap/IorapForwardingService;->IS_ENABLED:Z

    return v0
.end method

.method public synthetic lambda$connectToRemoteAndConfigureLocked$0$IorapForwardingService()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService;->mIorapRemote:Lcom/google/android/startop/iorap/IIorap;

    new-instance v1, Lcom/google/android/startop/iorap/IorapForwardingService$RemoteTaskListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/startop/iorap/IorapForwardingService$RemoteTaskListener;-><init>(Lcom/google/android/startop/iorap/IorapForwardingService;Lcom/google/android/startop/iorap/IorapForwardingService$1;)V

    invoke-interface {v0, v1}, Lcom/google/android/startop/iorap/IIorap;->setTaskListener(Lcom/google/android/startop/iorap/ITaskListener;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    sget-boolean v0, Lcom/google/android/startop/iorap/IorapForwardingService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "IorapForwardingService"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/startop/iorap/IorapForwardingService;->retryConnectToRemoteAndConfigure(I)Z

    return-void
.end method

.method protected provideDeathRecipient()Landroid/os/IBinder$DeathRecipient;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/google/android/startop/iorap/IorapForwardingService$1;

    invoke-direct {v0, p0}, Lcom/google/android/startop/iorap/IorapForwardingService$1;-><init>(Lcom/google/android/startop/iorap/IorapForwardingService;)V

    return-object v0
.end method

.method protected provideIorapRemote()Lcom/google/android/startop/iorap/IIorap;
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "iorapd"

    invoke-static {v1}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/startop/iorap/IIorap$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/startop/iorap/IIorap;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    :try_start_1
    invoke-interface {v1}, Lcom/google/android/startop/iorap/IIorap;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/startop/iorap/IorapForwardingService;->provideDeathRecipient()Landroid/os/IBinder$DeathRecipient;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    return-object v1

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/google/android/startop/iorap/IorapForwardingService;->handleRemoteError(Ljava/lang/Throwable;)V

    return-object v0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/google/android/startop/iorap/IorapForwardingService;->handleRemoteError(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method protected provideLaunchObserverRegistry()Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    nop

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getLaunchObserverRegistry()Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;

    move-result-object v1

    return-object v1
.end method
