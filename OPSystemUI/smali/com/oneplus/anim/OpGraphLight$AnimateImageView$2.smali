.class Lcom/oneplus/anim/OpGraphLight$AnimateImageView$2;
.super Ljava/lang/Object;
.source "OpGraphLight.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/anim/OpGraphLight$AnimateImageView;-><init>(Lcom/oneplus/anim/OpGraphLight;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/anim/OpGraphLight$AnimateImageView;

.field final synthetic val$this$0:Lcom/oneplus/anim/OpGraphLight;


# direct methods
.method constructor <init>(Lcom/oneplus/anim/OpGraphLight$AnimateImageView;Lcom/oneplus/anim/OpGraphLight;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView$2;->this$1:Lcom/oneplus/anim/OpGraphLight$AnimateImageView;

    iput-object p2, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView$2;->val$this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    const/16 v1, 0x96

    if-gt p1, v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView$2;->this$1:Lcom/oneplus/anim/OpGraphLight$AnimateImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput-object v2, v1, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->mLp:Landroid/view/ViewGroup$LayoutParams;

    iget-object v1, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView$2;->this$1:Lcom/oneplus/anim/OpGraphLight$AnimateImageView;

    iget-object v2, v1, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->mLp:Landroid/view/ViewGroup$LayoutParams;

    iget-object v1, v1, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-static {v1}, Lcom/oneplus/anim/OpGraphLight;->access$200(Lcom/oneplus/anim/OpGraphLight;)I

    move-result v1

    int-to-float v1, v1

    int-to-float v3, p1

    const/high16 v4, 0x43160000    # 150.0f

    div-float/2addr v3, v4

    sub-float v3, v0, v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView$2;->this$1:Lcom/oneplus/anim/OpGraphLight$AnimateImageView;

    iget-object v2, v1, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->mLp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const/16 v1, 0x32

    if-lt p1, v1, :cond_1

    iget-object p0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView$2;->this$1:Lcom/oneplus/anim/OpGraphLight$AnimateImageView;

    const/high16 v2, 0x437f0000    # 255.0f

    sub-int/2addr p1, v1

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    sub-float/2addr v0, p1

    mul-float/2addr v0, v2

    float-to-int p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    :cond_1
    return-void
.end method
