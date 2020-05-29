.class Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;
.super Ljava/lang/Object;
.source "OpDragPanelController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/keyguard/OpDragPanelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpOnTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/keyguard/OpDragPanelController;


# direct methods
.method private constructor <init>(Lcom/oneplus/keyguard/OpDragPanelController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/keyguard/OpDragPanelController;Lcom/oneplus/keyguard/OpDragPanelController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;-><init>(Lcom/oneplus/keyguard/OpDragPanelController;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    iget-object v3, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v3}, Lcom/oneplus/keyguard/OpDragPanelController;->access$600(Lcom/oneplus/keyguard/OpDragPanelController;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v3}, Lcom/oneplus/keyguard/OpDragPanelController;->access$600(Lcom/oneplus/keyguard/OpDragPanelController;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v3, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v3}, Lcom/oneplus/keyguard/OpDragPanelController;->access$500(Lcom/oneplus/keyguard/OpDragPanelController;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v3}, Lcom/oneplus/keyguard/OpDragPanelController;->access$700(Lcom/oneplus/keyguard/OpDragPanelController;)Z

    move-result v3

    if-nez v3, :cond_8

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {p1, v2}, Lcom/oneplus/keyguard/OpDragPanelController;->access$802(Lcom/oneplus/keyguard/OpDragPanelController;F)F

    iget-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {p1, p2}, Lcom/oneplus/keyguard/OpDragPanelController;->access$902(Lcom/oneplus/keyguard/OpDragPanelController;F)F

    iget-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {p1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1000(Lcom/oneplus/keyguard/OpDragPanelController;)V

    iget-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {p1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1100(Lcom/oneplus/keyguard/OpDragPanelController;)V

    iget-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {p1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1200(Lcom/oneplus/keyguard/OpDragPanelController;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {p1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1200(Lcom/oneplus/keyguard/OpDragPanelController;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {p1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1200(Lcom/oneplus/keyguard/OpDragPanelController;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    iget-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {p1, v1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1302(Lcom/oneplus/keyguard/OpDragPanelController;Z)Z

    iget-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    new-instance p2, Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;

    invoke-static {p1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$900(Lcom/oneplus/keyguard/OpDragPanelController;)F

    move-result v0

    iget-object v2, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v2}, Lcom/oneplus/keyguard/OpDragPanelController;->access$800(Lcom/oneplus/keyguard/OpDragPanelController;)F

    move-result v2

    invoke-direct {p2, p1, v0, v2}, Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;-><init>(Lcom/oneplus/keyguard/OpDragPanelController;FF)V

    invoke-static {p1, p2}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1402(Lcom/oneplus/keyguard/OpDragPanelController;Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;)Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;

    iget-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {p1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$400(Lcom/oneplus/keyguard/OpDragPanelController;)Lcom/oneplus/keyguard/OpEmergencyPanel;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->access$400(Lcom/oneplus/keyguard/OpDragPanelController;)Lcom/oneplus/keyguard/OpEmergencyPanel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpEmergencyPanel;->onBubbleTouched()V

    :cond_1
    return v1

    :cond_2
    const/4 v3, 0x2

    if-ne p1, v3, :cond_5

    iget-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {p1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$800(Lcom/oneplus/keyguard/OpDragPanelController;)F

    move-result p1

    sub-float p1, v2, p1

    const/4 v3, 0x0

    cmpg-float v4, p1, v3

    if-gez v4, :cond_3

    move p1, v3

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1500()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_4

    invoke-static {}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1500()I

    move-result p1

    int-to-float p1, p1

    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v3}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1300(Lcom/oneplus/keyguard/OpDragPanelController;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v0}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1600(Lcom/oneplus/keyguard/OpDragPanelController;)Lcom/oneplus/keyguard/OpEmergencyBubble;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v0}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1400(Lcom/oneplus/keyguard/OpDragPanelController;)Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;

    move-result-object v0

    invoke-virtual {v0, p2, v2}, Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;->updateMovePoint(FF)V

    iget-object p0, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {p0, p1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1700(Lcom/oneplus/keyguard/OpDragPanelController;F)V

    return v1

    :cond_5
    if-eq p1, v1, :cond_6

    if-ne p1, v4, :cond_8

    :cond_6
    iget-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {p1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1400(Lcom/oneplus/keyguard/OpDragPanelController;)Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;

    move-result-object p1

    invoke-virtual {p1, p2, v2}, Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;->updateMovePoint(FF)V

    iget-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {p1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1300(Lcom/oneplus/keyguard/OpDragPanelController;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {p1, v0}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1302(Lcom/oneplus/keyguard/OpDragPanelController;Z)Z

    iget-object p0, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1800(Lcom/oneplus/keyguard/OpDragPanelController;)V

    return v1

    :cond_7
    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_8

    const-string p0, "OpDragPanelController"

    const-string p1, " doesn\'t touch before, skip drag"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return v0
.end method
