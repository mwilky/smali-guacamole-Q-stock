.class Lcom/oneplus/keyguard/OpKeyguardMessageArea$1;
.super Ljava/lang/Object;
.source "OpKeyguardMessageArea.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/keyguard/OpKeyguardMessageArea;->setTextWithAnim(Ljava/lang/CharSequence;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/keyguard/OpKeyguardMessageArea;

.field final synthetic val$status:Ljava/lang/CharSequence;

.field final synthetic val$targetVisible:I


# direct methods
.method constructor <init>(Lcom/oneplus/keyguard/OpKeyguardMessageArea;ILjava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardMessageArea$1;->this$0:Lcom/oneplus/keyguard/OpKeyguardMessageArea;

    iput p2, p0, Lcom/oneplus/keyguard/OpKeyguardMessageArea$1;->val$targetVisible:I

    iput-object p3, p0, Lcom/oneplus/keyguard/OpKeyguardMessageArea$1;->val$status:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    sget-boolean p1, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAnimationEnd, targetVisible:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oneplus/keyguard/OpKeyguardMessageArea$1;->val$targetVisible:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ,status:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardMessageArea$1;->val$status:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " / mAnimWasCanceled:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/keyguard/OpKeyguardMessageArea$1;->this$0:Lcom/oneplus/keyguard/OpKeyguardMessageArea;

    iget-boolean v0, v0, Lcom/oneplus/keyguard/OpKeyguardMessageArea;->mAnimWasCanceled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpKeyguardMessageArea"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardMessageArea$1;->this$0:Lcom/oneplus/keyguard/OpKeyguardMessageArea;

    iget-boolean v0, p1, Lcom/oneplus/keyguard/OpKeyguardMessageArea;->mAnimWasCanceled:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/oneplus/keyguard/OpKeyguardMessageArea$1;->val$targetVisible:I

    if-nez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardMessageArea$1;->this$0:Lcom/oneplus/keyguard/OpKeyguardMessageArea;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/oneplus/keyguard/OpKeyguardMessageArea;->mAnimWasCanceled:Z

    :cond_2
    iget p1, p0, Lcom/oneplus/keyguard/OpKeyguardMessageArea$1;->val$targetVisible:I

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardMessageArea$1;->this$0:Lcom/oneplus/keyguard/OpKeyguardMessageArea;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
