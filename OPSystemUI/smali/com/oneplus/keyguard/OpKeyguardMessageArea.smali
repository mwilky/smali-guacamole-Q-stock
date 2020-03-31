.class public Lcom/oneplus/keyguard/OpKeyguardMessageArea;
.super Landroid/widget/TextView;
.source "OpKeyguardMessageArea.java"


# instance fields
.field mAnimWasCanceled:Z

.field private mFadeAnimator:Landroid/animation/AnimatorSet;

.field mLastTargetVisible:I

.field protected mMessageType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardMessageArea;->mAnimWasCanceled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardMessageArea;->mAnimWasCanceled:Z

    return-void
.end method

.method public static getOpMsgType(Landroid/content/Context;Landroid/content/res/ColorStateList;)I
    .locals 2

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    const/high16 v1, -0x10000

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorErrorDefaultColor(Landroid/content/Context;)I

    move-result p0

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private setMessage(I)V
    .locals 5

    const-class v0, Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "setMessage"

    invoke-static {v0, v3, v2}, Lcom/oneplus/util/OpReflectionUtils;->getMethodWithParams(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {p0, v0, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeWithArgs(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setMessage(Ljava/lang/CharSequence;)V
    .locals 5

    const-class v0, Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "setMessage"

    invoke-static {v0, v3, v2}, Lcom/oneplus/util/OpReflectionUtils;->getMethodWithParams(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {p0, v0, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeWithArgs(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected animateErrorText(Landroid/widget/TextView;)V
    .locals 1

    iget-object p0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/keyguard/R$anim;->oneplus_control_text_error_message_anim:I

    invoke-static {p0, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public setMessage(II)V
    .locals 0

    iput p2, p0, Lcom/oneplus/keyguard/OpKeyguardMessageArea;->mMessageType:I

    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardMessageArea;->setMessage(I)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;I)V
    .locals 0

    iput p2, p0, Lcom/oneplus/keyguard/OpKeyguardMessageArea;->mMessageType:I

    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setTextWithAnim(Ljava/lang/CharSequence;Z)V
    .locals 4

    const/4 v0, 0x4

    if-eqz p1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_0
    sget-boolean v1, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    const-string v2, "OpKeyguardMessageArea"

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTextWithAnim / targetVisible:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/ Last:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/keyguard/OpKeyguardMessageArea;->mLastTargetVisible:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/ status:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/ getAlpha:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/TextView;->getAlpha()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", bouncerVisible:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget p2, p0, Lcom/oneplus/keyguard/OpKeyguardMessageArea;->mLastTargetVisible:I

    if-ne v0, p2, :cond_4

    iput v0, p0, Lcom/oneplus/keyguard/OpKeyguardMessageArea;->mLastTargetVisible:I

    return-void

    :cond_4
    iput v0, p0, Lcom/oneplus/keyguard/OpKeyguardMessageArea;->mLastTargetVisible:I

    iget-object p2, p0, Lcom/oneplus/keyguard/OpKeyguardMessageArea;->mFadeAnimator:Landroid/animation/AnimatorSet;

    const/4 v1, 0x1

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_6

    sget-boolean p2, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz p2, :cond_5

    const-string p2, "canceled"

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpKeyguardMessageArea;->mAnimWasCanceled:Z

    iget-object p2, p0, Lcom/oneplus/keyguard/OpKeyguardMessageArea;->mFadeAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->getAlpha()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p0, v0, p2, v1}, Lcom/oneolus/anim/OpFadeAnim;->getFadeInOutVisibilityAnimation(Landroid/view/View;ILjava/lang/Float;Z)Landroid/animation/AnimatorSet;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/keyguard/OpKeyguardMessageArea;->mFadeAnimator:Landroid/animation/AnimatorSet;

    iget-object p2, p0, Lcom/oneplus/keyguard/OpKeyguardMessageArea;->mFadeAnimator:Landroid/animation/AnimatorSet;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    iget-object p2, p0, Lcom/oneplus/keyguard/OpKeyguardMessageArea;->mFadeAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/oneplus/keyguard/OpKeyguardMessageArea$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/oneplus/keyguard/OpKeyguardMessageArea$1;-><init>(Lcom/oneplus/keyguard/OpKeyguardMessageArea;ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardMessageArea;->mFadeAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_7
    return-void
.end method
