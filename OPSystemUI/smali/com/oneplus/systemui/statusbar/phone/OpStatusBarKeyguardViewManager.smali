.class public Lcom/oneplus/systemui/statusbar/phone/OpStatusBarKeyguardViewManager;
.super Ljava/lang/Object;
.source "OpStatusBarKeyguardViewManager.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mTrimMemoryRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBarKeyguardViewManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBarKeyguardViewManager$1;

    invoke-direct {v0, p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBarKeyguardViewManager$1;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpStatusBarKeyguardViewManager;)V

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBarKeyguardViewManager;->mTrimMemoryRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private getBouncer()Lcom/android/systemui/statusbar/phone/KeyguardBouncer;
    .locals 2

    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const-string v1, "mBouncer"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    return-object p0
.end method


# virtual methods
.method protected opOnStartedGoingToSleep()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBarKeyguardViewManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBarKeyguardViewManager;->mTrimMemoryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBarKeyguardViewManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBarKeyguardViewManager;->mTrimMemoryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBarKeyguardViewManager;->mTrimMemoryRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method protected opTrimMemory(Z)V
    .locals 4

    const-string v0, "debug.trimMemory.delay"

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBarKeyguardViewManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBarKeyguardViewManager;->mTrimMemoryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-class v1, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/ScreenLifecycle;->getScreenState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyguardFadedAway:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isHomeApp()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpStatusBarKeyguardViewManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isHomeApp()Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBarKeyguardViewManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBarKeyguardViewManager;->mTrimMemoryRunnable:Ljava/lang/Runnable;

    int-to-long v0, v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object p0

    const/16 p1, 0x14

    invoke-virtual {p0, p1}, Landroid/view/WindowManagerGlobal;->trimMemory(I)V

    :goto_1
    return-void
.end method

.method public showBouncerMessage(Ljava/lang/String;Landroid/content/res/ColorStateList;I)V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBarKeyguardViewManager;->getBouncer()Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBarKeyguardViewManager;->getBouncer()Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/systemui/statusbar/phone/OpKeyguardBouncer;->showMessage(Ljava/lang/String;Landroid/content/res/ColorStateList;I)V

    :cond_0
    return-void
.end method
