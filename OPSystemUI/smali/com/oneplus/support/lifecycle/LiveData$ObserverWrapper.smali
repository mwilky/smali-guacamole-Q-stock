.class abstract Lcom/oneplus/support/lifecycle/LiveData$ObserverWrapper;
.super Ljava/lang/Object;
.source "LiveData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ObserverWrapper"
.end annotation


# instance fields
.field mActive:Z

.field mLastVersion:I

.field final mObserver:Lcom/oneplus/support/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/support/lifecycle/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/oneplus/support/lifecycle/LiveData;


# direct methods
.method constructor <init>(Lcom/oneplus/support/lifecycle/LiveData;Lcom/oneplus/support/lifecycle/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/support/lifecycle/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oneplus/support/lifecycle/LiveData$ObserverWrapper;->this$0:Lcom/oneplus/support/lifecycle/LiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/oneplus/support/lifecycle/LiveData$ObserverWrapper;->mLastVersion:I

    iput-object p2, p0, Lcom/oneplus/support/lifecycle/LiveData$ObserverWrapper;->mObserver:Lcom/oneplus/support/lifecycle/Observer;

    return-void
.end method


# virtual methods
.method activeStateChanged(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/oneplus/support/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/support/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    iget-object p1, p0, Lcom/oneplus/support/lifecycle/LiveData$ObserverWrapper;->this$0:Lcom/oneplus/support/lifecycle/LiveData;

    invoke-static {p1}, Lcom/oneplus/support/lifecycle/LiveData;->access$300(Lcom/oneplus/support/lifecycle/LiveData;)I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lcom/oneplus/support/lifecycle/LiveData$ObserverWrapper;->this$0:Lcom/oneplus/support/lifecycle/LiveData;

    iget-boolean v2, p0, Lcom/oneplus/support/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_1
    invoke-static {v1, v0}, Lcom/oneplus/support/lifecycle/LiveData;->access$312(Lcom/oneplus/support/lifecycle/LiveData;I)I

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/oneplus/support/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/support/lifecycle/LiveData$ObserverWrapper;->this$0:Lcom/oneplus/support/lifecycle/LiveData;

    invoke-virtual {p1}, Lcom/oneplus/support/lifecycle/LiveData;->onActive()V

    :cond_3
    iget-object p1, p0, Lcom/oneplus/support/lifecycle/LiveData$ObserverWrapper;->this$0:Lcom/oneplus/support/lifecycle/LiveData;

    invoke-static {p1}, Lcom/oneplus/support/lifecycle/LiveData;->access$300(Lcom/oneplus/support/lifecycle/LiveData;)I

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/oneplus/support/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/oneplus/support/lifecycle/LiveData$ObserverWrapper;->this$0:Lcom/oneplus/support/lifecycle/LiveData;

    invoke-virtual {p1}, Lcom/oneplus/support/lifecycle/LiveData;->onInactive()V

    :cond_4
    iget-boolean p1, p0, Lcom/oneplus/support/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oneplus/support/lifecycle/LiveData$ObserverWrapper;->this$0:Lcom/oneplus/support/lifecycle/LiveData;

    invoke-static {p1, p0}, Lcom/oneplus/support/lifecycle/LiveData;->access$400(Lcom/oneplus/support/lifecycle/LiveData;Lcom/oneplus/support/lifecycle/LiveData$ObserverWrapper;)V

    :cond_5
    return-void
.end method

.method detachObserver()V
    .locals 0

    return-void
.end method

.method isAttachedTo(Lcom/oneplus/support/lifecycle/LifecycleOwner;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method abstract shouldBeActive()Z
.end method
