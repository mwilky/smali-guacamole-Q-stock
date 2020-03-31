.class Lcom/oneplus/anim/OpGraphLight$AnimateImageView$1;
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

    iput-object p1, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView$1;->this$1:Lcom/oneplus/anim/OpGraphLight$AnimateImageView;

    iput-object p2, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView$1;->val$this$0:Lcom/oneplus/anim/OpGraphLight;

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

    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView$1;->this$1:Lcom/oneplus/anim/OpGraphLight$AnimateImageView;

    invoke-static {v0}, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->access$100(Lcom/oneplus/anim/OpGraphLight$AnimateImageView;)I

    const/16 v0, 0xe1

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView$1;->this$1:Lcom/oneplus/anim/OpGraphLight$AnimateImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->mLp:Landroid/view/ViewGroup$LayoutParams;

    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView$1;->this$1:Lcom/oneplus/anim/OpGraphLight$AnimateImageView;

    iget-object v1, v0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->mLp:Landroid/view/ViewGroup$LayoutParams;

    iget-object v0, v0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-static {v0}, Lcom/oneplus/anim/OpGraphLight;->access$200(Lcom/oneplus/anim/OpGraphLight;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v0, v2

    iget-object v3, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView$1;->this$1:Lcom/oneplus/anim/OpGraphLight$AnimateImageView;

    iget-object v3, v3, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-static {v3}, Lcom/oneplus/anim/OpGraphLight;->access$200(Lcom/oneplus/anim/OpGraphLight;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    int-to-float v2, p1

    const/high16 v4, 0x43610000    # 225.0f

    div-float/2addr v2, v4

    mul-float/2addr v3, v2

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView$1;->this$1:Lcom/oneplus/anim/OpGraphLight$AnimateImageView;

    iget-object v1, v0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->mLp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const/16 v0, 0x96

    if-gt p1, v0, :cond_1

    iget-object p0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView$1;->this$1:Lcom/oneplus/anim/OpGraphLight$AnimateImageView;

    const/high16 v0, 0x437f0000    # 255.0f

    int-to-float p1, p1

    mul-float/2addr p1, v0

    const/high16 v0, 0x43160000    # 150.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    :cond_1
    return-void
.end method
