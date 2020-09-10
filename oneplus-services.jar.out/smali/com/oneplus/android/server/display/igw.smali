.class abstract Lcom/oneplus/android/server/display/igw;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mFrom:I

.field private mIsActivated:Ljava/lang/Boolean;

.field private mTo:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public I(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/android/server/display/igw;->mFrom:I

    return-void
.end method

.method public Ie()I
    .locals 0

    iget p0, p0, Lcom/oneplus/android/server/display/igw;->mFrom:I

    return p0
.end method

.method public J(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/android/server/display/igw;->mTo:I

    return-void
.end method

.method public Je()I
    .locals 0

    iget p0, p0, Lcom/oneplus/android/server/display/igw;->mTo:I

    return p0
.end method

.method public Ke()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/igw;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public cancelAnimator()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/igw;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 0

    return-void
.end method

.method public endAnimator()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/android/server/display/igw;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/android/server/display/igw;->mAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method public getAnimator()Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/igw;->mAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public abstract getLevel()I
.end method

.method public isActivated()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/igw;->mIsActivated:Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isActivatedStateNotSet()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/igw;->mIsActivated:Ljava/lang/Boolean;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract isAvailable(Landroid/content/Context;)Z
.end method

.method public setActivated(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/display/igw;->mIsActivated:Ljava/lang/Boolean;

    return-void
.end method

.method public setAnimator(Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/display/igw;->mAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public abstract setUp(Landroid/content/Context;Z)V
.end method

.method public abstract zta(Lcom/oneplus/android/server/display/bio;)V
.end method
