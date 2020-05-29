.class public Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;
.super Ljava/lang/Object;
.source "OpWakingUpScrimController.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsAddToWindow:Z

.field private mIsAnimationStarted:Z

.field private mIsStart:Z

.field private mMainThreadhandler:Landroid/os/Handler;

.field private mRequestShow:Z

.field private mScrimAnimator:Landroid/animation/Animator;

.field private mScrimView:Lcom/oneplus/aod/OpWakingUpScrim;

.field private mUIHandler:Landroid/os/Handler;

.field private mUIHandlerThread:Landroid/os/HandlerThread;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mMainThreadhandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mIsStart:Z

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->op_wakingup_scrim_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/OpWakingUpScrim;

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimView:Lcom/oneplus/aod/OpWakingUpScrim;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WakingUpScrimUI"

    const/4 v2, -0x8

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mUIHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mUIHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mUIHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->initHandler(Landroid/os/Looper;)V

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->handleRemoveFromWindow()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;)Landroid/animation/Animator;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->selfRemoveFromWindow(Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mIsAnimationStarted:Z

    return p1
.end method

.method private getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 2

    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v0, 0x7f4

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0x10

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/16 v1, 0x518

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, -0x2

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x11

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const-string v0, "OpWakingUpScrim"

    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x3

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    return-object p0
.end method

.method private handleRemoveFromWindow()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimAnimator:Landroid/animation/Animator;

    const-string v1, "OpWakingUpScrimController"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "animation still play, remove window until animation end"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRemoveFromWindow: mRequestShow= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mRequestShow:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimView:Lcom/oneplus/aod/OpWakingUpScrim;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mRequestShow:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mIsAddToWindow:Z

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimView:Lcom/oneplus/aod/OpWakingUpScrim;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private selfRemoveFromWindow(Z)V
    .locals 2

    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpWakingUpScrimController"

    const-string v1, "selfRemoveFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public handleAddToWindow(Z)V
    .locals 2

    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleAddToWindow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimView:Lcom/oneplus/aod/OpWakingUpScrim;

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " justResetState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mRequestShow: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mRequestShow:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpWakingUpScrimController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimView:Lcom/oneplus/aod/OpWakingUpScrim;

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mRequestShow:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mIsAddToWindow:Z

    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimView:Lcom/oneplus/aod/OpWakingUpScrim;

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mIsAnimationStarted:Z

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimView:Lcom/oneplus/aod/OpWakingUpScrim;

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit16 v0, v0, 0x700

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimView:Lcom/oneplus/aod/OpWakingUpScrim;

    invoke-virtual {v1}, Lcom/oneplus/aod/OpWakingUpScrim;->reset()V

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimView:Lcom/oneplus/aod/OpWakingUpScrim;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimView:Lcom/oneplus/aod/OpWakingUpScrim;

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimView:Lcom/oneplus/aod/OpWakingUpScrim;

    invoke-virtual {p0}, Lcom/oneplus/aod/OpWakingUpScrim;->reset()V

    :goto_0
    return-void
.end method

.method public handleStartAnimation(Z)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimAnimator:Landroid/animation/Animator;

    const-string v1, "OpWakingUpScrimController"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "animation running"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mIsAnimationStarted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimView:Lcom/oneplus/aod/OpWakingUpScrim;

    invoke-virtual {v0}, Lcom/oneplus/aod/OpWakingUpScrim;->getDisappearAnimationWithDelay()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimAnimator:Landroid/animation/Animator;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimView:Lcom/oneplus/aod/OpWakingUpScrim;

    invoke-virtual {v0}, Lcom/oneplus/aod/OpWakingUpScrim;->getDisappearAnimationWithoutDelay()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimAnimator:Landroid/animation/Animator;

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleStartAnimation withDelay:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimAnimator:Landroid/animation/Animator;

    new-instance v0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController$3;

    invoke-direct {v0, p0}, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController$3;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public initHandler(Landroid/os/Looper;)V
    .locals 1

    new-instance v0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController$1;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController$1;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mUIHandler:Landroid/os/Handler;

    return-void
.end method

.method public prepare()V
    .locals 3

    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpWakingUpScrimController"

    const-string v1, "AddToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mRequestShow:Z

    iget-boolean v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mIsAnimationStarted:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController$2;

    invoke-direct {v2, p0}, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController$2;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mUIHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimView:Lcom/oneplus/aod/OpWakingUpScrim;

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mUIHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public removeFromWindow(Z)V
    .locals 2

    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpWakingUpScrimController"

    const-string v1, "removeFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mRequestShow:Z

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->selfRemoveFromWindow(Z)V

    return-void
.end method

.method public startAnimation(Z)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mScrimView:Lcom/oneplus/aod/OpWakingUpScrim;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    const-string v1, "OpWakingUpScrimController"

    if-nez v0, :cond_0

    const-string p0, "stop startAnimation window desn\'t attached"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mIsAnimationStarted:Z

    if-eqz v0, :cond_1

    const-string p0, "stop startAnimation since it\'s started"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAnimation:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mRequestShow:Z

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mUIHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    iput-boolean v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->mIsAnimationStarted:Z

    return-void
.end method
