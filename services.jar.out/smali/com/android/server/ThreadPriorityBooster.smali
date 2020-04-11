.class public Lcom/android/server/ThreadPriorityBooster;
.super Ljava/lang/Object;
.source "ThreadPriorityBooster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ThreadPriorityBooster$PriorityState;
    }
.end annotation


# static fields
.field private static final ENABLE_LOCK_GUARD:Z = false

.field private static final PRIORITY_NOT_ADJUSTED:I = 0x7fffffff


# instance fields
.field private volatile mBoostToPriority:I

.field private final mLockGuardIndex:I

.field private final mThreadState:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/android/server/ThreadPriorityBooster$PriorityState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/ThreadPriorityBooster$1;

    invoke-direct {v0, p0}, Lcom/android/server/ThreadPriorityBooster$1;-><init>(Lcom/android/server/ThreadPriorityBooster;)V

    iput-object v0, p0, Lcom/android/server/ThreadPriorityBooster;->mThreadState:Ljava/lang/ThreadLocal;

    iput p1, p0, Lcom/android/server/ThreadPriorityBooster;->mBoostToPriority:I

    iput p2, p0, Lcom/android/server/ThreadPriorityBooster;->mLockGuardIndex:I

    return-void
.end method


# virtual methods
.method public boost()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/ThreadPriorityBooster;->mThreadState:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;

    iget v1, v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->regionCounter:I

    if-nez v1, :cond_0

    iget v1, v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->tid:I

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v1

    iget v2, p0, Lcom/android/server/ThreadPriorityBooster;->mBoostToPriority:I

    if-le v1, v2, :cond_0

    iget v2, v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->tid:I

    iget v3, p0, Lcom/android/server/ThreadPriorityBooster;->mBoostToPriority:I

    invoke-static {v2, v3}, Landroid/os/Process;->setThreadPriority(II)V

    iput v1, v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->prevPriority:I

    :cond_0
    iget v1, v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->regionCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->regionCounter:I

    return-void
.end method

.method public reset()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/ThreadPriorityBooster;->mThreadState:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;

    iget v1, v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->regionCounter:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->regionCounter:I

    iget v1, v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->regionCounter:I

    if-nez v1, :cond_0

    iget v1, v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->prevPriority:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    iget v1, v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->tid:I

    iget v3, v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->prevPriority:I

    invoke-static {v1, v3}, Landroid/os/Process;->setThreadPriority(II)V

    iput v2, v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->prevPriority:I

    :cond_0
    return-void
.end method

.method protected setBoostToPriority(I)V
    .locals 3

    iput p1, p0, Lcom/android/server/ThreadPriorityBooster;->mBoostToPriority:I

    iget-object v0, p0, Lcom/android/server/ThreadPriorityBooster;->mThreadState:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;

    iget v1, v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->regionCounter:I

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->tid:I

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v1

    if-eq v1, p1, :cond_0

    iget v2, v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->tid:I

    invoke-static {v2, p1}, Landroid/os/Process;->setThreadPriority(II)V

    :cond_0
    return-void
.end method
