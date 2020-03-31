.class Lcom/oneplus/keyguard/OpDragPanelController$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OpDragPanelController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/keyguard/OpDragPanelController;->createHintAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/keyguard/OpDragPanelController;


# direct methods
.method constructor <init>(Lcom/oneplus/keyguard/OpDragPanelController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController$4;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 2

    iget-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController$4;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {p1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$2000(Lcom/oneplus/keyguard/OpDragPanelController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->op_emergency_panel_indicator_arrow_animation_transY:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    iget-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController$4;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {p1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$2100(Lcom/oneplus/keyguard/OpDragPanelController;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController$4;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {p1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$2100(Lcom/oneplus/keyguard/OpDragPanelController;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    iget-object p0, p0, Lcom/oneplus/keyguard/OpDragPanelController$4;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->access$600(Lcom/oneplus/keyguard/OpDragPanelController;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x0

    const-wide/16 v0, 0x258

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
