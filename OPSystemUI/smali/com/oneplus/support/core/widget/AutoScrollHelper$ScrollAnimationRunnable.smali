.class Lcom/oneplus/support/core/widget/AutoScrollHelper$ScrollAnimationRunnable;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/core/widget/AutoScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollAnimationRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/support/core/widget/AutoScrollHelper;


# direct methods
.method constructor <init>(Lcom/oneplus/support/core/widget/AutoScrollHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/support/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/oneplus/support/core/widget/AutoScrollHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/support/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/oneplus/support/core/widget/AutoScrollHelper;

    iget-boolean v1, v0, Lcom/oneplus/support/core/widget/AutoScrollHelper;->mAnimating:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Lcom/oneplus/support/core/widget/AutoScrollHelper;->mNeedsReset:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iput-boolean v2, v0, Lcom/oneplus/support/core/widget/AutoScrollHelper;->mNeedsReset:Z

    iget-object v0, v0, Lcom/oneplus/support/core/widget/AutoScrollHelper;->mScroller:Lcom/oneplus/support/core/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0}, Lcom/oneplus/support/core/widget/AutoScrollHelper$ClampedScroller;->start()V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/support/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/oneplus/support/core/widget/AutoScrollHelper;

    iget-object v0, v0, Lcom/oneplus/support/core/widget/AutoScrollHelper;->mScroller:Lcom/oneplus/support/core/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0}, Lcom/oneplus/support/core/widget/AutoScrollHelper$ClampedScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/support/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/oneplus/support/core/widget/AutoScrollHelper;

    invoke-virtual {v1}, Lcom/oneplus/support/core/widget/AutoScrollHelper;->shouldAnimate()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/oneplus/support/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/oneplus/support/core/widget/AutoScrollHelper;

    iget-boolean v3, v1, Lcom/oneplus/support/core/widget/AutoScrollHelper;->mNeedsCancel:Z

    if-eqz v3, :cond_3

    iput-boolean v2, v1, Lcom/oneplus/support/core/widget/AutoScrollHelper;->mNeedsCancel:Z

    invoke-virtual {v1}, Lcom/oneplus/support/core/widget/AutoScrollHelper;->cancelTargetTouch()V

    :cond_3
    invoke-virtual {v0}, Lcom/oneplus/support/core/widget/AutoScrollHelper$ClampedScroller;->computeScrollDelta()V

    invoke-virtual {v0}, Lcom/oneplus/support/core/widget/AutoScrollHelper$ClampedScroller;->getDeltaX()I

    move-result v1

    invoke-virtual {v0}, Lcom/oneplus/support/core/widget/AutoScrollHelper$ClampedScroller;->getDeltaY()I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/support/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/oneplus/support/core/widget/AutoScrollHelper;

    invoke-virtual {v2, v1, v0}, Lcom/oneplus/support/core/widget/AutoScrollHelper;->scrollTargetBy(II)V

    iget-object v0, p0, Lcom/oneplus/support/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/oneplus/support/core/widget/AutoScrollHelper;

    iget-object v0, v0, Lcom/oneplus/support/core/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/oneplus/support/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void

    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/oneplus/support/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/oneplus/support/core/widget/AutoScrollHelper;

    iput-boolean v2, p0, Lcom/oneplus/support/core/widget/AutoScrollHelper;->mAnimating:Z

    return-void
.end method
