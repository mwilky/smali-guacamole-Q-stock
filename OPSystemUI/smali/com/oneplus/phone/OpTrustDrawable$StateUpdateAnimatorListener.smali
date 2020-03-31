.class Lcom/oneplus/phone/OpTrustDrawable$StateUpdateAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OpTrustDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/phone/OpTrustDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateUpdateAnimatorListener"
.end annotation


# instance fields
.field mCancelled:Z

.field final synthetic this$0:Lcom/oneplus/phone/OpTrustDrawable;


# direct methods
.method private constructor <init>(Lcom/oneplus/phone/OpTrustDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/phone/OpTrustDrawable$StateUpdateAnimatorListener;->this$0:Lcom/oneplus/phone/OpTrustDrawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/phone/OpTrustDrawable;Lcom/oneplus/phone/OpTrustDrawable$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/phone/OpTrustDrawable$StateUpdateAnimatorListener;-><init>(Lcom/oneplus/phone/OpTrustDrawable;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/phone/OpTrustDrawable$StateUpdateAnimatorListener;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-boolean p1, p0, Lcom/oneplus/phone/OpTrustDrawable$StateUpdateAnimatorListener;->mCancelled:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/phone/OpTrustDrawable$StateUpdateAnimatorListener;->this$0:Lcom/oneplus/phone/OpTrustDrawable;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oneplus/phone/OpTrustDrawable;->access$300(Lcom/oneplus/phone/OpTrustDrawable;Z)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/phone/OpTrustDrawable$StateUpdateAnimatorListener;->mCancelled:Z

    return-void
.end method
