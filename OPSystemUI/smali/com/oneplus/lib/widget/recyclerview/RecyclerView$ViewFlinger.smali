.class Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewFlinger"
.end annotation


# instance fields
.field private mEatRunOnAnimationRequest:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastFlingX:I

.field private mLastFlingY:I

.field private mReSchedulePostAnimationCallback:Z

.field private mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 2

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2200()Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2200()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/Scroller;

    return-void
.end method

.method private computeScrollDuration(IIII)I
    .locals 4

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    mul-int/2addr p3, p3

    mul-int/2addr p4, p4

    add-int/2addr p3, p4

    int-to-double p3, p3

    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p3

    double-to-int p3, p3

    mul-int/2addr p1, p1

    mul-int/2addr p2, p2

    add-int/2addr p1, p2

    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-int p1, p1

    iget-object p2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    :goto_1
    div-int/lit8 p4, p2, 0x2

    int-to-float p1, p1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr p1, v3

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    int-to-float p4, p4

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->distanceInfluenceForSnapDuration(F)F

    move-result p0

    mul-float/2addr p0, p4

    add-float/2addr p4, p0

    if-lez p3, :cond_2

    const/high16 p0, 0x447a0000    # 1000.0f

    int-to-float p1, p3

    div-float/2addr p4, p1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    mul-int/lit8 p0, p0, 0x4

    goto :goto_3

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    int-to-float p0, v0

    div-float/2addr p0, p2

    add-float/2addr p0, v3

    const/high16 p1, 0x43960000    # 300.0f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    :goto_3
    const/16 p1, 0x7d0

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private disableRunOnAnimationRequests()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 2

    const/high16 p0, 0x3f000000    # 0.5f

    sub-float/2addr p1, p0

    float-to-double p0, p1

    const-wide v0, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr p0, v0

    double-to-float p0, p0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private enableRunOnAnimationRequests()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->postOnAnimation()V

    :cond_0
    return-void
.end method


# virtual methods
.method public fling(II)V
    .locals 10

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$3200(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mLastFlingY:I

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mLastFlingX:I

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v6, -0x80000000

    const v7, 0x7fffffff

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->postOnAnimation()V

    return-void
.end method

.method postOnAnimation()V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 19

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->disableRunOnAnimationRequests()V

    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/Scroller;

    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$1300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v2

    iget-object v2, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    iget v6, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mLastFlingX:I

    sub-int v6, v3, v6

    iget v7, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mLastFlingY:I

    sub-int v7, v5, v7

    iput v3, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mLastFlingX:I

    iput v5, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mLastFlingY:I

    iget-object v8, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v8

    if-eqz v8, :cond_9

    iget-object v8, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->eatRequestLayout()V

    iget-object v8, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2500(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    const-string v8, "RV Scroll"

    invoke-static {v8}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    if-eqz v6, :cond_0

    iget-object v8, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$1300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v8

    iget-object v10, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v11, v10, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    iget-object v10, v10, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v8, v6, v11, v10}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v8

    sub-int v10, v6, v8

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_0
    if-eqz v7, :cond_1

    iget-object v11, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v11}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$1300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v11

    iget-object v12, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v13, v12, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    iget-object v12, v12, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v11, v7, v13, v12}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->scrollVerticallyBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v11

    sub-int v12, v7, v11

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object v13, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v13}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2600(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Z

    move-result v13

    if-eqz v13, :cond_5

    iget-object v13, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v13, v13, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v13}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v13

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v13, :cond_5

    iget-object v15, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v15, v15, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v15, v14}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    iget-object v9, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v9, v15}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-object v9, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eqz v9, :cond_3

    iget-object v9, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v15

    move/from16 v16, v8

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v8

    if-ne v4, v8, :cond_2

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v8

    if-eq v15, v8, :cond_4

    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v17

    move/from16 v18, v11

    add-int v11, v15, v17

    invoke-virtual {v9, v4, v15, v8, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_3

    :cond_3
    move/from16 v16, v8

    :cond_4
    move/from16 v18, v11

    :goto_3
    add-int/lit8 v14, v14, 0x1

    move/from16 v8, v16

    move/from16 v11, v18

    goto :goto_2

    :cond_5
    move/from16 v16, v8

    move/from16 v18, v11

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2700(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->resumeRequestLayout(Z)V

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->stop()V

    goto :goto_4

    :cond_6
    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v8

    if-lt v8, v4, :cond_7

    const/4 v8, 0x1

    sub-int/2addr v4, v8

    invoke-virtual {v2, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    sub-int v4, v6, v10

    sub-int v9, v7, v12

    invoke-static {v2, v4, v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->access$2800(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;II)V

    goto :goto_5

    :cond_7
    const/4 v8, 0x1

    sub-int v4, v6, v10

    sub-int v9, v7, v12

    invoke-static {v2, v4, v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->access$2800(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;II)V

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v8, 0x1

    :goto_5
    move/from16 v4, v16

    move/from16 v9, v18

    goto :goto_6

    :cond_9
    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_6
    iget-object v11, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v11}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2900(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_a

    iget-object v11, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->invalidate()V

    :cond_a
    iget-object v11, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v11

    const/4 v13, 0x2

    if-eq v11, v13, :cond_b

    iget-object v11, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v11, v6, v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$3000(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V

    :cond_b
    if-nez v10, :cond_c

    if-eqz v12, :cond_14

    :cond_c
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v11

    float-to-int v11, v11

    if-eq v10, v3, :cond_e

    if-gez v10, :cond_d

    neg-int v14, v11

    goto :goto_7

    :cond_d
    if-lez v10, :cond_e

    move v14, v11

    goto :goto_7

    :cond_e
    const/4 v14, 0x0

    :goto_7
    if-eq v12, v5, :cond_10

    if-gez v12, :cond_f

    neg-int v11, v11

    goto :goto_8

    :cond_f
    if-lez v12, :cond_10

    goto :goto_8

    :cond_10
    const/4 v11, 0x0

    :goto_8
    iget-object v15, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v15

    if-eq v15, v13, :cond_11

    iget-object v13, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v13, v14, v11}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->absorbGlows(II)V

    :cond_11
    if-nez v14, :cond_12

    if-eq v10, v3, :cond_12

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalX()I

    move-result v3

    if-nez v3, :cond_14

    :cond_12
    if-nez v11, :cond_13

    if-eq v12, v5, :cond_13

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v3

    if-nez v3, :cond_14

    :cond_13
    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_14
    if-nez v4, :cond_15

    if-eqz v9, :cond_16

    :cond_15
    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v3, v4, v9}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->dispatchOnScrolled(II)V

    :cond_16
    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$3100(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Z

    move-result v3

    if-nez v3, :cond_17

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->invalidate()V

    :cond_17
    if-eqz v7, :cond_18

    iget-object v3, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$1300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    if-eqz v3, :cond_18

    if-ne v9, v7, :cond_18

    move v3, v8

    goto :goto_9

    :cond_18
    const/4 v3, 0x0

    :goto_9
    if-eqz v6, :cond_19

    iget-object v5, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-static {v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$1300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v5

    if-eqz v5, :cond_19

    if-ne v4, v6, :cond_19

    move v4, v8

    goto :goto_a

    :cond_19
    const/4 v4, 0x0

    :goto_a
    if-nez v6, :cond_1a

    if-eqz v7, :cond_1c

    :cond_1a
    if-nez v4, :cond_1c

    if-eqz v3, :cond_1b

    goto :goto_b

    :cond_1b
    const/4 v8, 0x0

    :cond_1c
    :goto_b
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1e

    if-nez v8, :cond_1d

    goto :goto_c

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->postOnAnimation()V

    goto :goto_d

    :cond_1e
    :goto_c
    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$3200(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;I)V

    goto :goto_e

    :cond_1f
    :goto_d
    const/4 v3, 0x0

    :goto_e
    if-eqz v2, :cond_21

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-static {v2, v3, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->access$2800(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;II)V

    :cond_20
    iget-boolean v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    if-nez v1, :cond_21

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->stop()V

    :cond_21
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->enableRunOnAnimationRequests()V

    return-void
.end method

.method public smoothScrollBy(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->smoothScrollBy(IIII)V

    return-void
.end method

.method public smoothScrollBy(III)V
    .locals 1

    invoke-static {}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$2200()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public smoothScrollBy(IIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->computeScrollDuration(IIII)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->smoothScrollBy(III)V

    return-void
.end method

.method public smoothScrollBy(IIILandroid/view/animation/Interpolator;)V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_0

    iput-object p4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/Scroller;

    :cond_0
    iget-object p4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/4 v0, 0x2

    invoke-static {p4, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$3200(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;I)V

    const/4 p4, 0x0

    iput p4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mLastFlingY:I

    iput p4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mLastFlingX:I

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->postOnAnimation()V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/Scroller;->abortAnimation()V

    return-void
.end method
