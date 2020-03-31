.class Lcom/oneplus/anim/OpGraphLight$AnimateImageView;
.super Landroid/widget/ImageView;
.source "OpGraphLight.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/anim/OpGraphLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimateImageView"
.end annotation


# instance fields
.field private final mAlphaInAnimator:Landroid/animation/ValueAnimator;

.field private final mAlphaInAnimatorDisappear:Landroid/animation/ValueAnimator;

.field mAnimationArray:Landroid/content/res/TypedArray;

.field private final mAnimator:Landroid/animation/AnimatorSet;

.field mLp:Landroid/view/ViewGroup$LayoutParams;

.field private mOrientationType:I

.field mStartAnimationAssets1:Ljava/util/ArrayList;

.field final synthetic this$0:Lcom/oneplus/anim/OpGraphLight;


# direct methods
.method public constructor <init>(Lcom/oneplus/anim/OpGraphLight;Landroid/content/Context;)V
    .locals 8

    iput-object p1, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->mStartAnimationAssets1:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->getOrientation()I

    move-result p2

    iput p2, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->mOrientationType:I

    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p2, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$array;->op_light_start_animation:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->mAnimationArray:Landroid/content/res/TypedArray;

    const/4 p2, 0x2

    new-array v0, p2, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xe1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/oneplus/anim/OpGraphLight$AnimateImageView$1;

    invoke-direct {v3, p0, p1}, Lcom/oneplus/anim/OpGraphLight$AnimateImageView$1;-><init>(Lcom/oneplus/anim/OpGraphLight$AnimateImageView;Lcom/oneplus/anim/OpGraphLight;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const v6, 0x3e4ccccd    # 0.2f

    invoke-direct {v3, v5, v5, v6, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array p2, p2, [I

    fill-array-data p2, :array_1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v6, 0x96

    invoke-virtual {p2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->mAlphaInAnimatorDisappear:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->mAlphaInAnimatorDisappear:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView$2;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/anim/OpGraphLight$AnimateImageView$2;-><init>(Lcom/oneplus/anim/OpGraphLight$AnimateImageView;Lcom/oneplus/anim/OpGraphLight;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->mAlphaInAnimatorDisappear:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v3, v5, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->mAlphaInAnimatorDisappear:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->mAnimator:Landroid/animation/AnimatorSet;

    iget-object p2, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->mAnimator:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->mAlphaInAnimatorDisappear:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p2, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->mAnimator:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView$3;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/anim/OpGraphLight$AnimateImageView$3;-><init>(Lcom/oneplus/anim/OpGraphLight$AnimateImageView;Lcom/oneplus/anim/OpGraphLight;)V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xe1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x96
    .end array-data
.end method

.method static synthetic access$100(Lcom/oneplus/anim/OpGraphLight$AnimateImageView;)I
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->checkOrientationType()I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/oneplus/anim/OpGraphLight$AnimateImageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->relaseAnimationList()V

    return-void
.end method

.method private checkOrientationType()I
    .locals 4

    invoke-direct {p0}, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->getOrientation()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkOrientationType / rotation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpGraphLight"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->mOrientationType:I

    if-eq v1, v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detect checkOrientationType() / rotation:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " / mOrientationType:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->mOrientationType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->mOrientationType:I

    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    invoke-direct {p0}, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->relaseAnimationList()V

    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-static {v0}, Lcom/oneplus/anim/OpGraphLight;->access$400(Lcom/oneplus/anim/OpGraphLight;)V

    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-virtual {v0}, Lcom/oneplus/anim/OpGraphLight;->postShow()V

    :cond_0
    iget p0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->mOrientationType:I

    return p0
.end method

.method private getOrientation()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-static {p0}, Lcom/oneplus/anim/OpGraphLight;->access$500(Lcom/oneplus/anim/OpGraphLight;)Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    return p0
.end method

.method private relaseAnimationList()V
    .locals 2

    const-string v0, "OpGraphLight"

    const-string v1, "relaseAnimationList"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->mAnimationArray:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->mStartAnimationAssets1:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private setAnimationList()V
    .locals 4

    const-string v0, "OpGraphLight"

    const-string v1, "setAnimationList (clear & add)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->mStartAnimationAssets1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->mAnimationArray:Landroid/content/res/TypedArray;

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->mAnimationArray:Landroid/content/res/TypedArray;

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->mStartAnimationAssets1:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private startAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    invoke-direct {p0}, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->setAnimationList()V

    const-string v0, "OpGraphLight"

    const-string v1, "startAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->mLp:Landroid/view/ViewGroup$LayoutParams;

    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->mLp:Landroid/view/ViewGroup$LayoutParams;

    iget-object v1, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-static {v1}, Lcom/oneplus/anim/OpGraphLight;->access$200(Lcom/oneplus/anim/OpGraphLight;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->mLp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->mStartAnimationAssets1:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->startAnimation()V

    return-void
.end method
