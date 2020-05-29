.class public Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;
.super Landroid/view/View;
.source "OpNavigationHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;
    }
.end annotation


# instance fields
.field private mAnimDirection:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

.field private mDownX:I

.field private mDownY:I

.field private mOriginTranX:F

.field private mOriginTranY:F

.field private mStartAnim:Landroid/animation/Animator;

.field private mStartAnimPlayed:Z

.field private mStartAnimTargetTranX:F

.field private mTranslationLimit:I

.field private mTranslationRestore:I

.field private mTranslationReverse:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mStartAnim:Landroid/animation/Animator;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mStartAnimPlayed:Z

    const/4 p2, 0x0

    iput p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mStartAnimTargetTranX:F

    sget-object p2, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;->NONE:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    iput-object p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mAnimDirection:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->op_nav_home_handle_translation_limit:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mTranslationLimit:I

    sget p2, Lcom/android/systemui/R$dimen;->op_nav_home_handle_anim_reverse:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mTranslationReverse:I

    sget p2, Lcom/android/systemui/R$dimen;->op_nav_home_handle_anim_restore:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mTranslationRestore:I

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result p1

    iput p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mOriginTranX:F

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result p1

    iput p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mOriginTranY:F

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->reset()V

    return-void
.end method

.method private doEndAnim()V
    .locals 8

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object v1, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$3;->$SwitchMap$com$oneplus$systemui$statusbar$phone$OpNavigationHandle$AnimDirection:[I

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mAnimDirection:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_1

    const/4 v6, 0x3

    if-eq v1, v6, :cond_0

    move-object v1, v2

    goto :goto_2

    :cond_0
    new-array v1, v3, [F

    iget v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mOriginTranY:F

    iget v6, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mTranslationLimit:I

    int-to-float v7, v6

    sub-float v7, v2, v7

    aput v7, v1, v5

    int-to-float v6, v6

    sub-float/2addr v2, v6

    iget v6, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mTranslationReverse:I

    int-to-float v6, v6

    add-float/2addr v2, v6

    aput v2, v1, v4

    const-string/jumbo v2, "translationY"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v3, v3, [F

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mTranslationRestore:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    aput v6, v3, v5

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mAnimDirection:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    sget-object v2, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;->LEFT:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mTranslationReverse:I

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mTranslationReverse:I

    rsub-int/lit8 v1, v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mAnimDirection:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    sget-object v6, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;->LEFT:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    if-ne v2, v6, :cond_3

    iget v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mTranslationRestore:I

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mTranslationRestore:I

    rsub-int/lit8 v2, v2, 0x0

    :goto_1
    new-array v6, v3, [F

    iget v7, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mStartAnimTargetTranX:F

    aput v7, v6, v5

    int-to-float v1, v1

    add-float/2addr v7, v1

    aput v7, v6, v4

    const-string/jumbo v1, "translationX"

    invoke-static {p0, v1, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    new-array v3, v3, [F

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v7

    add-int/2addr v7, v2

    int-to-float v2, v7

    aput v2, v3, v5

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    aput v2, v3, v4

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move-object v1, v6

    :goto_2
    if-eqz v1, :cond_6

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    sget-object v1, Lcom/android/systemui/Interpolators;->CUSTOM_40_40:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$1;

    invoke-direct {v1, p0}, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$1;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mStartAnim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mStartAnim:Landroid/animation/Animator;

    new-instance v2, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$2;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$2;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_6
    :goto_3
    return-void
.end method

.method private doStartAnim()V
    .locals 6

    sget-object v0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$3;->$SwitchMap$com$oneplus$systemui$statusbar$phone$OpNavigationHandle$AnimDirection:[I

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mAnimDirection:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    goto :goto_1

    :cond_0
    new-array v0, v2, [F

    iget v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mOriginTranY:F

    aput v2, v0, v1

    iget v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mTranslationLimit:I

    int-to-float v1, v1

    sub-float/2addr v2, v1

    aput v2, v0, v3

    const-string/jumbo v1, "translationY"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mStartAnim:Landroid/animation/Animator;

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mOriginTranX:F

    iget-object v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mAnimDirection:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    sget-object v5, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;->LEFT:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    if-ne v4, v5, :cond_2

    iget v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mTranslationLimit:I

    rsub-int/lit8 v4, v4, 0x0

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mTranslationLimit:I

    :goto_0
    int-to-float v4, v4

    add-float/2addr v0, v4

    iput v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mStartAnimTargetTranX:F

    new-array v0, v2, [F

    iget v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mOriginTranX:F

    aput v2, v0, v1

    iget v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mStartAnimTargetTranX:F

    aput v1, v0, v3

    const-string/jumbo v1, "translationX"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mStartAnim:Landroid/animation/Animator;

    :goto_1
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mStartAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_3

    iput-boolean v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mStartAnimPlayed:Z

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mStartAnim:Landroid/animation/Animator;

    sget-object v1, Lcom/android/systemui/Interpolators;->CUSTOM_40_40:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mStartAnim:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_3
    return-void
.end method

.method private reset()V
    .locals 1

    sget-object v0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;->NONE:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mAnimDirection:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mStartAnimPlayed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mStartAnim:Landroid/animation/Animator;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mStartAnimTargetTranX:F

    return-void
.end method


# virtual methods
.method public handleTouch(Landroid/view/MotionEvent;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_8

    const/4 v2, 0x1

    if-eq p1, v2, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    goto :goto_3

    :cond_0
    iget p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mDownX:I

    sub-int p1, v0, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mDownY:I

    sub-int v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget-boolean v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mStartAnimPlayed:Z

    if-nez v3, :cond_9

    const/16 v3, 0x1e

    if-ge p1, v3, :cond_1

    if-ge v2, v3, :cond_1

    goto :goto_3

    :cond_1
    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mAnimDirection:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    sget-object v4, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;->NONE:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    if-ne v3, v4, :cond_5

    if-le p1, v2, :cond_3

    iget p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mDownX:I

    sub-int/2addr v0, p1

    if-gez v0, :cond_2

    sget-object p1, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;->LEFT:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;->RIGHT:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    :goto_0
    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mAnimDirection:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    goto :goto_2

    :cond_3
    if-ge p1, v2, :cond_5

    iget p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mDownY:I

    sub-int/2addr v1, p1

    if-lez v1, :cond_4

    goto :goto_1

    :cond_4
    sget-object v4, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;->VERTICAL:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    :goto_1
    iput-object v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mAnimDirection:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->doStartAnim()V

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mAnimDirection:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    sget-object v0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;->NONE:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    if-ne p1, v0, :cond_7

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->reset()V

    goto :goto_3

    :cond_7
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->doEndAnim()V

    goto :goto_3

    :cond_8
    sget-object p1, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;->NONE:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mAnimDirection:Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle$AnimDirection;

    iput v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mDownX:I

    iput v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->mDownY:I

    :cond_9
    :goto_3
    return-void
.end method
