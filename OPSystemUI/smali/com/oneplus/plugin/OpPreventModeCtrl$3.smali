.class Lcom/oneplus/plugin/OpPreventModeCtrl$3;
.super Ljava/lang/Object;
.source "OpPreventModeCtrl.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/plugin/OpPreventModeCtrl;->startRootAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/plugin/OpPreventModeCtrl;


# direct methods
.method constructor <init>(Lcom/oneplus/plugin/OpPreventModeCtrl;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/plugin/OpPreventModeCtrl$3;->this$0:Lcom/oneplus/plugin/OpPreventModeCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/oneplus/plugin/OpPreventModeCtrl$3;->this$0:Lcom/oneplus/plugin/OpPreventModeCtrl;

    invoke-static {p1}, Lcom/oneplus/plugin/OpPreventModeCtrl;->access$700(Lcom/oneplus/plugin/OpPreventModeCtrl;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/plugin/OpPreventModeCtrl$3;->this$0:Lcom/oneplus/plugin/OpPreventModeCtrl;

    iget-object v0, p1, Lcom/oneplus/plugin/OpPreventModeCtrl;->mBackground:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/oneplus/plugin/OpPreventModeCtrl;->access$700(Lcom/oneplus/plugin/OpPreventModeCtrl;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl$3;->this$0:Lcom/oneplus/plugin/OpPreventModeCtrl;

    iget-object p0, p0, Lcom/oneplus/plugin/OpPreventModeCtrl;->mPMView:Lcom/oneplus/plugin/OpPreventModeView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
