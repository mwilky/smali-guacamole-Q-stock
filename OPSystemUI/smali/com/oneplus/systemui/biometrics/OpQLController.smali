.class public Lcom/oneplus/systemui/biometrics/OpQLController;
.super Ljava/lang/Object;
.source "OpQLController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/systemui/biometrics/OpQLController$QLStateListener;,
        Lcom/oneplus/systemui/biometrics/OpQLController$QLReceiver;,
        Lcom/oneplus/systemui/biometrics/OpQLController$QLContentObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static final IS_SUPPORT_QL:Z

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

.field private mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

.field private mFodFingerTouchValidator:Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;

.field private mHandler:Landroid/os/Handler;

.field private mIsEnableQL:Z

.field private mListener:Lcom/oneplus/systemui/biometrics/OpQLController$QLStateListener;

.field private mObserver:Lcom/oneplus/systemui/biometrics/OpQLController$QLContentObserver;

.field private mQLConfig:Ljava/lang/String;

.field private mQLRootView:Lcom/oneplus/systemui/biometrics/OpQLRootView;

.field private mQLShowing:Z

.field private mReceiver:Lcom/oneplus/systemui/biometrics/OpQLController$QLReceiver;

.field private mShowQLView:Ljava/lang/Runnable;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/systemui/biometrics/OpQLController;->DEBUG:Z

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportQuickLaunch()Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/systemui/biometrics/OpQLController;->IS_SUPPORT_QL:Z

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/oneplus/systemui/biometrics/OpQLController;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;Lcom/oneplus/systemui/biometrics/OpQLController$QLStateListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oneplus/systemui/biometrics/-$$Lambda$OpQLController$o3HMbj7GAaeqUfGjvIiNwK3IysY;

    invoke-direct {v0, p0}, Lcom/oneplus/systemui/biometrics/-$$Lambda$OpQLController$o3HMbj7GAaeqUfGjvIiNwK3IysY;-><init>(Lcom/oneplus/systemui/biometrics/OpQLController;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mShowQLView:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mHandler:Landroid/os/Handler;

    const-string/jumbo p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mWindowManager:Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    iput-object p4, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    iput-object p5, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mFodFingerTouchValidator:Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;

    iput-object p6, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mListener:Lcom/oneplus/systemui/biometrics/OpQLController$QLStateListener;

    sget-boolean p1, Lcom/oneplus/systemui/biometrics/OpQLController;->IS_SUPPORT_QL:Z

    if-eqz p1, :cond_0

    new-instance p1, Lcom/oneplus/systemui/biometrics/OpQLController$QLContentObserver;

    invoke-direct {p1, p0}, Lcom/oneplus/systemui/biometrics/OpQLController$QLContentObserver;-><init>(Lcom/oneplus/systemui/biometrics/OpQLController;)V

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mObserver:Lcom/oneplus/systemui/biometrics/OpQLController$QLContentObserver;

    new-instance p1, Lcom/oneplus/systemui/biometrics/OpQLController$QLReceiver;

    invoke-direct {p1, p0}, Lcom/oneplus/systemui/biometrics/OpQLController$QLReceiver;-><init>(Lcom/oneplus/systemui/biometrics/OpQLController;)V

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mReceiver:Lcom/oneplus/systemui/biometrics/OpQLController$QLReceiver;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/systemui/biometrics/OpQLController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/systemui/biometrics/OpQLController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/systemui/biometrics/OpQLController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mIsEnableQL:Z

    return p0
.end method

.method static synthetic access$202(Lcom/oneplus/systemui/biometrics/OpQLController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mIsEnableQL:Z

    return p1
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpQLController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$400(Lcom/oneplus/systemui/biometrics/OpQLController;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mQLConfig:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/oneplus/systemui/biometrics/OpQLController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mQLConfig:Ljava/lang/String;

    return-object p1
.end method

.method private notifyQLViewVisibilityChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mListener:Lcom/oneplus/systemui/biometrics/OpQLController$QLStateListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/oneplus/systemui/biometrics/OpQLController$QLStateListener;->onQLVisibilityChanged(Z)V

    :cond_0
    return-void
.end method

.method private vibrate(I)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportLinearVibration()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mContext:Landroid/content/Context;

    invoke-static {p0, v0, p1}, Lcom/oneplus/util/VibratorSceneUtils;->doVibrateWithSceneIfNeeded(Landroid/content/Context;Landroid/os/Vibrator;I)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportZVibrationMotor()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    invoke-static {p0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p0

    sget-object p1, Lcom/oneplus/systemui/biometrics/OpQLController;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, p0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x5

    invoke-static {p0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p0

    sget-object p1, Lcom/oneplus/systemui/biometrics/OpQLController;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, p0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public handleQLTouchEvent(Landroid/view/MotionEvent;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    sget-boolean v1, Lcom/oneplus/systemui/biometrics/OpQLController;->DEBUG:Z

    const-string v2, "OpQLController"

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_0

    if-ne v0, v3, :cond_2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mQLShowing "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mQLShowing:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mQLRootView "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mQLRootView:Lcom/oneplus/systemui/biometrics/OpQLRootView;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " attach "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mQLRootView:Lcom/oneplus/systemui/biometrics/OpQLRootView;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpQLController;->isQLEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x3

    if-eq v0, v3, :cond_3

    if-ne v0, v1, :cond_5

    :cond_3
    sget-boolean v4, Lcom/oneplus/systemui/biometrics/OpQLController;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string v4, "removeCallbacks mShowQLView"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mShowQLView:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_5
    iget-boolean v2, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mQLShowing:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mQLRootView:Lcom/oneplus/systemui/biometrics/OpQLRootView;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mQLRootView:Lcom/oneplus/systemui/biometrics/OpQLRootView;

    invoke-virtual {v2, p1}, Lcom/oneplus/systemui/biometrics/OpQLRootView;->onTouch(Landroid/view/MotionEvent;)V

    :cond_6
    if-eq v0, v3, :cond_7

    if-ne v0, v1, :cond_8

    :cond_7
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpQLController;->shouldHideQLView()V

    :cond_8
    return-void
.end method

.method public interruptShowingQLView()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mShowQLView:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interrupt showing ql view "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpQLController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mShowQLView:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->inFingerprintDialogUiThread()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/systemui/biometrics/OpQLController$1;

    invoke-direct {v1, p0}, Lcom/oneplus/systemui/biometrics/OpQLController$1;-><init>(Lcom/oneplus/systemui/biometrics/OpQLController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpQLController;->shouldHideQLView()V

    :goto_0
    return-void
.end method

.method public isQLEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpQLController;->IS_SUPPORT_QL:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mIsEnableQL:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isQLShowing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mQLShowing:Z

    return p0
.end method

.method public synthetic lambda$new$1$OpQLController()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->isCurrentGuest(Landroid/content/Context;)Z

    move-result v0

    sget-boolean v1, Lcom/oneplus/systemui/biometrics/OpQLController;->DEBUG:Z

    const-string v2, "OpQLController"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mShowQLView enable "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpQLController;->isQLEnabled()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isGuest "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpQLController;->isQLEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_1

    goto/16 :goto_0

    :cond_1
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpQLController;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mShowQLView mQLShowing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mQLShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mFingerOnView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mFodFingerTouchValidator:Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;

    invoke-virtual {v1}, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->isFingerDownOnView()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mQLShowing:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mQLRootView:Lcom/oneplus/systemui/biometrics/OpQLRootView;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mFodFingerTouchValidator:Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->isFingerDownOnView()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x3ff

    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpQLController;->vibrate(I)V

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateIconVisibility(Z)V

    :cond_3
    iput-boolean v1, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mQLShowing:Z

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$layout;->ql_root_view:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/systemui/biometrics/OpQLRootView;

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mQLRootView:Lcom/oneplus/systemui/biometrics/OpQLRootView;

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mQLConfig:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mQLRootView:Lcom/oneplus/systemui/biometrics/OpQLRootView;

    invoke-virtual {v2, v0}, Lcom/oneplus/systemui/biometrics/OpQLRootView;->setQLConfig(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mQLRootView:Lcom/oneplus/systemui/biometrics/OpQLRootView;

    invoke-virtual {v2}, Lcom/oneplus/systemui/biometrics/OpQLRootView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mQLRootView:Lcom/oneplus/systemui/biometrics/OpQLRootView;

    new-instance v2, Lcom/oneplus/systemui/biometrics/OpQLController$2;

    invoke-direct {v2, p0}, Lcom/oneplus/systemui/biometrics/OpQLController$2;-><init>(Lcom/oneplus/systemui/biometrics/OpQLController;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mDialogImpl:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->expandTransparentLayout()V

    invoke-direct {p0, v1}, Lcom/oneplus/systemui/biometrics/OpQLController;->notifyQLViewVisibilityChanged(Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method public synthetic lambda$shouldHideQLView$0$OpQLController()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mQLRootView:Lcom/oneplus/systemui/biometrics/OpQLRootView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mQLRootView:Lcom/oneplus/systemui/biometrics/OpQLRootView;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpQLRootView;->onQLExit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mQLRootView:Lcom/oneplus/systemui/biometrics/OpQLRootView;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mQLShowing:Z

    invoke-direct {p0, v0}, Lcom/oneplus/systemui/biometrics/OpQLController;->notifyQLViewVisibilityChanged(Z)V

    return-void
.end method

.method public shouldHideQLView()V
    .locals 4

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mQLShowing:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mQLRootView:Lcom/oneplus/systemui/biometrics/OpQLRootView;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpQLController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "OpQLController"

    const-string v1, "hideQLView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mShowQLView:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/oneplus/systemui/biometrics/-$$Lambda$OpQLController$2TCG8Dg9bfuOlZpWl6dbwhpYtg4;

    invoke-direct {v0, p0}, Lcom/oneplus/systemui/biometrics/-$$Lambda$OpQLController$2TCG8Dg9bfuOlZpWl6dbwhpYtg4;-><init>(Lcom/oneplus/systemui/biometrics/OpQLController;)V

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mQLRootView:Lcom/oneplus/systemui/biometrics/OpQLRootView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-eqz p0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateIconVisibility(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public shouldShowQL()Z
    .locals 5

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpQLController;->isQLEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mQLShowing:Z

    const-string v2, "OpQLController"

    if-eqz v0, :cond_2

    sget-boolean p0, Lcom/oneplus/systemui/biometrics/OpQLController;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "QL view is already showing"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1

    :cond_2
    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpQLController;->DEBUG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldShowQL: isFingerDown: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mFodFingerTouchValidator:Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;

    invoke-virtual {v3}, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->isFingerDownOnView()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mFodFingerTouchValidator:Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->isFingerDownOnView()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mShowQLView:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLController;->mShowQLView:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-boolean p0, Lcom/oneplus/systemui/biometrics/OpQLController;->DEBUG:Z

    if-eqz p0, :cond_4

    const-string p0, "shouldShowQL: waiting to show..."

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    return v1
.end method
