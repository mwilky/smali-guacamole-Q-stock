.class public Lcom/oneplus/support/executor/ArchTaskExecutor;
.super Lcom/oneplus/support/executor/TaskExecutor;
.source "ArchTaskExecutor.java"


# static fields
.field private static final sIOThreadExecutor:Ljava/util/concurrent/Executor;

.field private static volatile sInstance:Lcom/oneplus/support/executor/ArchTaskExecutor;

.field private static final sMainThreadExecutor:Ljava/util/concurrent/Executor;


# instance fields
.field private mDefaultTaskExecutor:Lcom/oneplus/support/executor/TaskExecutor;

.field private mDelegate:Lcom/oneplus/support/executor/TaskExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/support/executor/ArchTaskExecutor$1;

    invoke-direct {v0}, Lcom/oneplus/support/executor/ArchTaskExecutor$1;-><init>()V

    sput-object v0, Lcom/oneplus/support/executor/ArchTaskExecutor;->sMainThreadExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/oneplus/support/executor/ArchTaskExecutor$2;

    invoke-direct {v0}, Lcom/oneplus/support/executor/ArchTaskExecutor$2;-><init>()V

    sput-object v0, Lcom/oneplus/support/executor/ArchTaskExecutor;->sIOThreadExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/support/executor/TaskExecutor;-><init>()V

    new-instance v0, Lcom/oneplus/support/executor/DefaultTaskExecutor;

    invoke-direct {v0}, Lcom/oneplus/support/executor/DefaultTaskExecutor;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/executor/ArchTaskExecutor;->mDefaultTaskExecutor:Lcom/oneplus/support/executor/TaskExecutor;

    iget-object v0, p0, Lcom/oneplus/support/executor/ArchTaskExecutor;->mDefaultTaskExecutor:Lcom/oneplus/support/executor/TaskExecutor;

    iput-object v0, p0, Lcom/oneplus/support/executor/ArchTaskExecutor;->mDelegate:Lcom/oneplus/support/executor/TaskExecutor;

    return-void
.end method

.method public static getInstance()Lcom/oneplus/support/executor/ArchTaskExecutor;
    .locals 2

    sget-object v0, Lcom/oneplus/support/executor/ArchTaskExecutor;->sInstance:Lcom/oneplus/support/executor/ArchTaskExecutor;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/support/executor/ArchTaskExecutor;->sInstance:Lcom/oneplus/support/executor/ArchTaskExecutor;

    return-object v0

    :cond_0
    const-class v0, Lcom/oneplus/support/executor/ArchTaskExecutor;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/oneplus/support/executor/ArchTaskExecutor;->sInstance:Lcom/oneplus/support/executor/ArchTaskExecutor;

    if-nez v1, :cond_1

    new-instance v1, Lcom/oneplus/support/executor/ArchTaskExecutor;

    invoke-direct {v1}, Lcom/oneplus/support/executor/ArchTaskExecutor;-><init>()V

    sput-object v1, Lcom/oneplus/support/executor/ArchTaskExecutor;->sInstance:Lcom/oneplus/support/executor/ArchTaskExecutor;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/oneplus/support/executor/ArchTaskExecutor;->sInstance:Lcom/oneplus/support/executor/ArchTaskExecutor;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public executeOnDiskIO(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/executor/ArchTaskExecutor;->mDelegate:Lcom/oneplus/support/executor/TaskExecutor;

    invoke-virtual {p0, p1}, Lcom/oneplus/support/executor/TaskExecutor;->executeOnDiskIO(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isMainThread()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/executor/ArchTaskExecutor;->mDelegate:Lcom/oneplus/support/executor/TaskExecutor;

    invoke-virtual {p0}, Lcom/oneplus/support/executor/TaskExecutor;->isMainThread()Z

    move-result p0

    return p0
.end method

.method public postToMainThread(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/executor/ArchTaskExecutor;->mDelegate:Lcom/oneplus/support/executor/TaskExecutor;

    invoke-virtual {p0, p1}, Lcom/oneplus/support/executor/TaskExecutor;->postToMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
