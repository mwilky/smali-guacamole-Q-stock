.class Lcom/oneplus/support/lifecycle/LiveData$LifecycleBoundObserver;
.super Lcom/oneplus/support/lifecycle/LiveData$ObserverWrapper;
.source "LiveData.java"

# interfaces
.implements Lcom/oneplus/support/lifecycle/GenericLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LifecycleBoundObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/support/lifecycle/LiveData<",
        "TT;>.ObserverWrapper;",
        "Lcom/oneplus/support/lifecycle/GenericLifecycleObserver;"
    }
.end annotation


# instance fields
.field final mOwner:Lcom/oneplus/support/lifecycle/LifecycleOwner;
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/oneplus/support/lifecycle/LiveData;


# direct methods
.method constructor <init>(Lcom/oneplus/support/lifecycle/LiveData;Lcom/oneplus/support/lifecycle/LifecycleOwner;Lcom/oneplus/support/lifecycle/Observer;)V
    .locals 0
    .param p1    # Lcom/oneplus/support/lifecycle/LiveData;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/lifecycle/LifecycleOwner;",
            "Lcom/oneplus/support/lifecycle/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oneplus/support/lifecycle/LiveData$LifecycleBoundObserver;->this$0:Lcom/oneplus/support/lifecycle/LiveData;

    invoke-direct {p0, p1, p3}, Lcom/oneplus/support/lifecycle/LiveData$ObserverWrapper;-><init>(Lcom/oneplus/support/lifecycle/LiveData;Lcom/oneplus/support/lifecycle/Observer;)V

    iput-object p2, p0, Lcom/oneplus/support/lifecycle/LiveData$LifecycleBoundObserver;->mOwner:Lcom/oneplus/support/lifecycle/LifecycleOwner;

    return-void
.end method


# virtual methods
.method detachObserver()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/lifecycle/LiveData$LifecycleBoundObserver;->mOwner:Lcom/oneplus/support/lifecycle/LifecycleOwner;

    invoke-interface {v0}, Lcom/oneplus/support/lifecycle/LifecycleOwner;->getLifecycle()Lcom/oneplus/support/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oneplus/support/lifecycle/Lifecycle;->removeObserver(Lcom/oneplus/support/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method isAttachedTo(Lcom/oneplus/support/lifecycle/LifecycleOwner;)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/lifecycle/LiveData$LifecycleBoundObserver;->mOwner:Lcom/oneplus/support/lifecycle/LifecycleOwner;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onStateChanged(Lcom/oneplus/support/lifecycle/LifecycleOwner;Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/support/lifecycle/LiveData$LifecycleBoundObserver;->mOwner:Lcom/oneplus/support/lifecycle/LifecycleOwner;

    invoke-interface {v0}, Lcom/oneplus/support/lifecycle/LifecycleOwner;->getLifecycle()Lcom/oneplus/support/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/support/lifecycle/Lifecycle;->getCurrentState()Lcom/oneplus/support/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Lcom/oneplus/support/lifecycle/Lifecycle$State;->DESTROYED:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/support/lifecycle/LiveData$LifecycleBoundObserver;->this$0:Lcom/oneplus/support/lifecycle/LiveData;

    iget-object v1, p0, Lcom/oneplus/support/lifecycle/LiveData$LifecycleBoundObserver;->mObserver:Lcom/oneplus/support/lifecycle/Observer;

    invoke-virtual {v0, v1}, Lcom/oneplus/support/lifecycle/LiveData;->removeObserver(Lcom/oneplus/support/lifecycle/Observer;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/support/lifecycle/LiveData$LifecycleBoundObserver;->shouldBeActive()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/support/lifecycle/LiveData$LifecycleBoundObserver;->activeStateChanged(Z)V

    return-void
.end method

.method shouldBeActive()Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/support/lifecycle/LiveData$LifecycleBoundObserver;->mOwner:Lcom/oneplus/support/lifecycle/LifecycleOwner;

    invoke-interface {v0}, Lcom/oneplus/support/lifecycle/LifecycleOwner;->getLifecycle()Lcom/oneplus/support/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/support/lifecycle/Lifecycle;->getCurrentState()Lcom/oneplus/support/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Lcom/oneplus/support/lifecycle/Lifecycle$State;->STARTED:Lcom/oneplus/support/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Lcom/oneplus/support/lifecycle/Lifecycle$State;->isAtLeast(Lcom/oneplus/support/lifecycle/Lifecycle$State;)Z

    move-result v0

    return v0
.end method
