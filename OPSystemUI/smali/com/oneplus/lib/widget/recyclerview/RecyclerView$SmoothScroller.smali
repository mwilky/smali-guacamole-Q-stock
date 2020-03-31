.class public abstract Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SmoothScroller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;
    }
.end annotation


# instance fields
.field private mPendingInitialRun:Z

.field private mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

.field private final mRecyclingAction:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;

.field private mRunning:Z

.field private mTargetPosition:I

.field private mTargetView:Landroid/view/View;


# direct methods
.method static synthetic access$2800(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->onAnimation(II)V

    return-void
.end method

.method private onAnimation(II)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mTargetPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->stop()V

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->getChildPosition(Landroid/view/View;)I

    move-result v1

    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mTargetPosition:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;

    invoke-virtual {p0, v1, v3, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->onTargetFound(Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;)V

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;

    invoke-static {v1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->access$5100(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->stop()V

    goto :goto_0

    :cond_2
    const-string v1, "RecyclerView"

    const-string v3, "Passed over target position while smooth scrolling."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    :cond_3
    :goto_0
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRunning:Z

    if-nez v1, :cond_4

    return-void

    :cond_4
    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->onSeekTargetStep(IILcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;)V

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->hasJumpTarget()Z

    throw v2
.end method


# virtual methods
.method public abstract getChildPosition(Landroid/view/View;)I
.end method

.method public abstract getTargetPosition()I
.end method

.method public abstract isPendingInitialRun()Z
.end method

.method public abstract isRunning()Z
.end method

.method protected abstract onSeekTargetStep(IILcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;)V
.end method

.method protected abstract onTargetFound(Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;)V
.end method

.method public abstract setTargetPosition(I)V
.end method

.method protected final stop()V
    .locals 0

    const p0, 0x0

    throw p0
.end method
