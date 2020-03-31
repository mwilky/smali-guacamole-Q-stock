.class Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;
.super Ljava/lang/Object;
.source "OpPasswordTextViewForPin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/keyguard/OpPasswordTextViewForPin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CharState"
.end annotation


# instance fields
.field currentDotSizeFactor:F

.field currentEmptyCircleSizeFactor:F

.field currentTextSizeFactor:F

.field currentTextTranslationY:F

.field currentWidthFactor:F

.field dotAnimationIsGrowing:Z

.field dotAnimator:Landroid/animation/Animator;

.field dotFinishListener:Landroid/animation/Animator$AnimatorListener;

.field private dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private dotSwapperRunnable:Ljava/lang/Runnable;

.field isDotSwapPending:Z

.field removeEndListener:Landroid/animation/Animator$AnimatorListener;

.field textAnimationIsGrowing:Z

.field textAnimator:Landroid/animation/ValueAnimator;

.field textFinishListener:Landroid/animation/Animator$AnimatorListener;

.field private textSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field textTranslateAnimator:Landroid/animation/ValueAnimator;

.field textTranslateFinishListener:Landroid/animation/Animator$AnimatorListener;

.field private textTranslationUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field final synthetic this$0:Lcom/oneplus/keyguard/OpPasswordTextViewForPin;

.field whichChar:C

.field widthAnimationIsGrowing:Z

.field widthAnimator:Landroid/animation/ValueAnimator;

.field widthFinishListener:Landroid/animation/Animator$AnimatorListener;

.field private widthUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method private constructor <init>(Lcom/oneplus/keyguard/OpPasswordTextViewForPin;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/keyguard/OpPasswordTextViewForPin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->currentTextTranslationY:F

    iput p1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->currentEmptyCircleSizeFactor:F

    new-instance p1, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState$1;

    invoke-direct {p1, p0}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState$1;-><init>(Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;)V

    iput-object p1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->removeEndListener:Landroid/animation/Animator$AnimatorListener;

    new-instance p1, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState$2;

    invoke-direct {p1, p0}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState$2;-><init>(Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;)V

    iput-object p1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    new-instance p1, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState$3;

    invoke-direct {p1, p0}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState$3;-><init>(Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;)V

    iput-object p1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->textFinishListener:Landroid/animation/Animator$AnimatorListener;

    new-instance p1, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState$4;

    invoke-direct {p1, p0}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState$4;-><init>(Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;)V

    iput-object p1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->textTranslateFinishListener:Landroid/animation/Animator$AnimatorListener;

    new-instance p1, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState$5;

    invoke-direct {p1, p0}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState$5;-><init>(Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;)V

    iput-object p1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->widthFinishListener:Landroid/animation/Animator$AnimatorListener;

    new-instance p1, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState$6;

    invoke-direct {p1, p0}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState$6;-><init>(Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;)V

    iput-object p1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance p1, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState$7;

    invoke-direct {p1, p0}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState$7;-><init>(Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;)V

    iput-object p1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->textSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance p1, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState$8;

    invoke-direct {p1, p0}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState$8;-><init>(Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;)V

    iput-object p1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->textTranslationUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance p1, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState$9;

    invoke-direct {p1, p0}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState$9;-><init>(Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;)V

    iput-object p1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->widthUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance p1, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState$10;

    invoke-direct {p1, p0}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState$10;-><init>(Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;)V

    iput-object p1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->dotSwapperRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/keyguard/OpPasswordTextViewForPin;Lcom/oneplus/keyguard/OpPasswordTextViewForPin$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;-><init>(Lcom/oneplus/keyguard/OpPasswordTextViewForPin;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->removeDotSwapCallbacks()V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;Landroid/animation/Animator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->performSwap()V

    return-void
.end method

.method private cancelAnimator(Landroid/animation/Animator;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method private performSwap()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->startTextDisappearAnimation(J)V

    const-wide/16 v0, 0x1e

    invoke-direct {p0, v0, v1}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->startDotAppearAnimation(J)V

    return-void
.end method

.method private postDotSwap(J)V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->removeDotSwapCallbacks()V

    iget-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/keyguard/OpPasswordTextViewForPin;

    iget-object v1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->dotSwapperRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->isDotSwapPending:Z

    return-void
.end method

.method private removeDotSwapCallbacks()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/keyguard/OpPasswordTextViewForPin;

    iget-object v1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->dotSwapperRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->isDotSwapPending:Z

    return-void
.end method

.method private startDotAppearAnimation(J)V
    .locals 8

    iget-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/keyguard/OpPasswordTextViewForPin;

    invoke-static {v0}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->access$700(Lcom/oneplus/keyguard/OpPasswordTextViewForPin;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-nez v0, :cond_0

    new-array v0, v3, [F

    iget v4, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    aput v4, v0, v1

    const/high16 v4, 0x3fc00000    # 1.5f

    aput v4, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v4, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v4, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/keyguard/OpPasswordTextViewForPin;

    invoke-static {v4}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->access$900(Lcom/oneplus/keyguard/OpPasswordTextViewForPin;)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0xa0

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v6, v3, [F

    fill-array-data v6, :array_0

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v6, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v6, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v0, v3, v1

    aput-object v6, v3, v2

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    invoke-virtual {v4, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    iput-object v4, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    goto :goto_0

    :cond_0
    new-array v0, v3, [F

    iget v3, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    aput v3, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v3, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/high16 v3, 0x43200000    # 160.0f

    iget v4, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    sub-float/2addr v1, v4

    mul-float/2addr v1, v3

    float-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    :goto_0
    iput-boolean v2, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->dotAnimationIsGrowing:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x3fc00000    # 1.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startDotDisappearAnimation(J)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x0

    aput v3, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/keyguard/OpPasswordTextViewForPin;

    invoke-static {v1}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->access$800(Lcom/oneplus/keyguard/OpPasswordTextViewForPin;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v3, 0x43200000    # 160.0f

    mul-float/2addr v1, v3

    float-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    iput-boolean v2, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->dotAnimationIsGrowing:Z

    return-void
.end method

.method private startTextAppearAnimation()V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    const/4 v0, 0x2

    new-array v1, v0, [F

    iget v2, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->textSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->textFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/keyguard/OpPasswordTextViewForPin;

    invoke-static {v4}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->access$900(Lcom/oneplus/keyguard/OpPasswordTextViewForPin;)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget v4, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    sub-float/2addr v2, v4

    const/high16 v4, 0x43200000    # 160.0f

    mul-float/2addr v2, v4

    float-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v3, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->textAnimationIsGrowing:Z

    iget-object v1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_0

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->textTranslationUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->textTranslateFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/keyguard/OpPasswordTextViewForPin;

    invoke-static {v1}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->access$900(Lcom/oneplus/keyguard/OpPasswordTextViewForPin;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xa0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startTextDisappearAnimation(J)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x0

    aput v3, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->textSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->textFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/keyguard/OpPasswordTextViewForPin;

    invoke-static {v1}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->access$800(Lcom/oneplus/keyguard/OpPasswordTextViewForPin;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    const/high16 v3, 0x43200000    # 160.0f

    mul-float/2addr v1, v3

    float-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object p1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v2, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->textAnimationIsGrowing:Z

    return-void
.end method

.method private startWidthAppearAnimation()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->currentWidthFactor:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->widthUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->widthFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->currentWidthFactor:F

    sub-float/2addr v1, v3

    const/high16 v3, 0x43200000    # 160.0f

    mul-float/2addr v1, v3

    float-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v2, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->widthAnimationIsGrowing:Z

    return-void
.end method

.method private startWidthDisappearAnimation(J)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->currentWidthFactor:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x0

    aput v3, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->widthUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->widthFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->removeEndListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->currentWidthFactor:F

    const/high16 v3, 0x43200000    # 160.0f

    mul-float/2addr v1, v3

    float-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object p1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v2, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->widthAnimationIsGrowing:Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;FIFF)F
    .locals 5

    iget v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget v4, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    cmpl-float v4, v4, v1

    if-lez v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iget v3, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->currentWidthFactor:F

    mul-float/2addr p5, v3

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v0, :cond_2

    int-to-float p3, p3

    div-float v0, p3, v3

    iget v4, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    mul-float/2addr v0, v4

    add-float/2addr v0, p4

    iget v4, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->currentTextTranslationY:F

    mul-float/2addr p3, v4

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr p3, v4

    add-float/2addr v0, p3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    div-float p3, p5, v3

    add-float/2addr p3, p2

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget p3, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    invoke-virtual {p1, p3, p3}, Landroid/graphics/Canvas;->scale(FF)V

    iget-char p3, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->whichChar:C

    invoke-static {p3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/keyguard/OpPasswordTextViewForPin;

    invoke-static {v0}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->access$1000(Lcom/oneplus/keyguard/OpPasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1, p3, v1, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    div-float p3, p5, v3

    add-float/2addr p2, p3

    invoke-virtual {p1, p2, p4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p2, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/keyguard/OpPasswordTextViewForPin;

    invoke-static {p2}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->access$1100(Lcom/oneplus/keyguard/OpPasswordTextViewForPin;)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    iget p3, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    mul-float/2addr p2, p3

    iget-object p3, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/keyguard/OpPasswordTextViewForPin;

    invoke-static {p3}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->access$1000(Lcom/oneplus/keyguard/OpPasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object p3

    invoke-virtual {p1, v1, v1, p2, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    iget-object p1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/keyguard/OpPasswordTextViewForPin;

    invoke-static {p1}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->access$1200(Lcom/oneplus/keyguard/OpPasswordTextViewForPin;)I

    move-result p1

    int-to-float p1, p1

    iget p0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->currentWidthFactor:F

    mul-float/2addr p1, p0

    add-float/2addr p5, p1

    return p5
.end method

.method reset()V
    .locals 2

    const/4 v0, 0x0

    iput-char v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->whichChar:C

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    iput v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    iput v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->currentWidthFactor:F

    iget-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v1}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    iput-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v1}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    iput-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->currentTextTranslationY:F

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->removeDotSwapCallbacks()V

    return-void
.end method

.method startAppearAnimation()V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/keyguard/OpPasswordTextViewForPin;

    invoke-static {v0}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->access$700(Lcom/oneplus/keyguard/OpPasswordTextViewForPin;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->dotAnimationIsGrowing:Z

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/keyguard/OpPasswordTextViewForPin;

    invoke-static {v3}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->access$700(Lcom/oneplus/keyguard/OpPasswordTextViewForPin;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->textAnimationIsGrowing:Z

    if-nez v3, :cond_3

    :cond_2
    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    iget-object v4, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->widthAnimationIsGrowing:Z

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    const-wide/16 v4, 0x0

    invoke-direct {p0, v4, v5}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->startDotAppearAnimation(J)V

    :cond_6
    if-eqz v3, :cond_7

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->startTextAppearAnimation()V

    :cond_7
    if-eqz v1, :cond_8

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->startWidthAppearAnimation()V

    :cond_8
    iget-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/keyguard/OpPasswordTextViewForPin;

    invoke-static {v0}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->access$700(Lcom/oneplus/keyguard/OpPasswordTextViewForPin;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-wide/16 v0, 0xfa

    invoke-direct {p0, v0, v1}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->postDotSwap(J)V

    :cond_9
    return-void
.end method

.method startRemoveAnimation(JJ)V
    .locals 6

    iget v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->dotAnimationIsGrowing:Z

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    iget v4, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    cmpl-float v4, v4, v1

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->textAnimationIsGrowing:Z

    if-eqz v4, :cond_5

    :cond_4
    move v4, v2

    goto :goto_1

    :cond_5
    move v4, v3

    :goto_1
    iget v5, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->currentWidthFactor:F

    cmpl-float v1, v5, v1

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_8

    :cond_6
    iget-object v1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->widthAnimationIsGrowing:Z

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    move v2, v3

    :cond_8
    :goto_2
    if-eqz v0, :cond_9

    invoke-direct {p0, p1, p2}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->startDotDisappearAnimation(J)V

    :cond_9
    if-eqz v4, :cond_a

    invoke-direct {p0, p1, p2}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->startTextDisappearAnimation(J)V

    :cond_a
    if-eqz v2, :cond_b

    invoke-direct {p0, p3, p4}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->startWidthDisappearAnimation(J)V

    :cond_b
    return-void
.end method

.method swapToDotWhenAppearFinished()V
    .locals 4

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->removeDotSwapCallbacks()V

    iget-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    iget-object v2, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->postDotSwap(J)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->performSwap()V

    :goto_0
    return-void
.end method
