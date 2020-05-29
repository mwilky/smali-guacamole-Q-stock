.class public Lcom/oneplus/battery/OpChargingAnimationControllerImpl;
.super Ljava/lang/Object;
.source "OpChargingAnimationControllerImpl.java"

# interfaces
.implements Lcom/oneplus/battery/OpChargingAnimationController;
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/battery/OpChargingAnimationControllerImpl$KeyguardStateCallback;
    }
.end annotation


# static fields
.field private static mPreventModeNoBackground:Z = false


# instance fields
.field private TAG:Ljava/lang/String;

.field private isKeyguardShowing:Z

.field private mAnimationStarted:Z

.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBouncerShow:Z

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/battery/OpChargingAnimationController$ChargingStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private mContext:Landroid/content/Context;

.field private mCurrentAnimationState:I

.field private mFastCharging:Z

.field private mHandler:Landroid/os/Handler;

.field private mKeyguardOn:Z

.field private mKeyguardStateCallback:Lcom/oneplus/battery/OpChargingAnimationControllerImpl$KeyguardStateCallback;

.field private mOpWarpChargingView:Lcom/oneplus/battery/OpWarpChargingView;

.field private mPluggedButNotUsb:Z

.field private mPreventViewShow:Z

.field private mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field private final mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field private mSmallestWidth:I

.field private mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mWallpaper:Landroid/graphics/Bitmap;

.field private mWarpFastCharging:Z

.field private mWrapChargingLayout:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "OpChargingAnimationControllerImpl"

    iput-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    const/16 v0, 0x64

    iput v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mCurrentAnimationState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mWarpFastCharging:Z

    iput-boolean v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mFastCharging:Z

    iput-boolean v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mBouncerShow:Z

    iput-boolean v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mPreventViewShow:Z

    iput-boolean v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mPluggedButNotUsb:Z

    iput-boolean v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mKeyguardOn:Z

    new-instance v1, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$1;-><init>(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mHandler:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->isKeyguardShowing:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mWallpaper:Landroid/graphics/Bitmap;

    new-instance v1, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$2;-><init>(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)V

    iput-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v1, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$3;

    invoke-direct {v1, p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$3;-><init>(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)V

    iput-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    iput-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mContext:Landroid/content/Context;

    const-class p1, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iput-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "OpChargingAnimationControllerImpl init"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-class p1, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    sget-boolean p1, Lcom/oneplus/util/OpUtils;->SUPPORT_WARP_CHARGING:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->registerReceiver()V

    :cond_0
    const-class p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    new-instance p1, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$KeyguardStateCallback;

    invoke-direct {p1, p0, v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$KeyguardStateCallback;-><init>(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;Lcom/oneplus/battery/OpChargingAnimationControllerImpl$1;)V

    iput-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mKeyguardStateCallback:Lcom/oneplus/battery/OpChargingAnimationControllerImpl$KeyguardStateCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpWarpChargingView;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpWarpChargingView:Lcom/oneplus/battery/OpWarpChargingView;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mPreventViewShow:Z

    return p1
.end method

.method static synthetic access$200(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mKeyguardOn:Z

    return p0
.end method

.method static synthetic access$402(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mKeyguardOn:Z

    return p1
.end method

.method static synthetic access$500(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mPluggedButNotUsb:Z

    return p0
.end method

.method static synthetic access$502(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mPluggedButNotUsb:Z

    return p1
.end method

.method static synthetic access$600(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->prepareAnimationResource()V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->releaseAnimationResource()V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->isKeyguardShowing:Z

    return p0
.end method

.method static synthetic access$802(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->isKeyguardShowing:Z

    return p1
.end method

.method static synthetic access$900(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mBouncerShow:Z

    return p0
.end method

.method static synthetic access$902(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mBouncerShow:Z

    return p1
.end method

.method private genOpWarpChargingView()Lcom/oneplus/battery/OpWarpChargingView;
    .locals 3

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "genOpWarpChargingView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpWarpChargingView:Lcom/oneplus/battery/OpWarpChargingView;

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mOpWarpChargingView != null / mOpWarpChargingView.getParent():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpWarpChargingView:Lcom/oneplus/battery/OpWarpChargingView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpWarpChargingView:Lcom/oneplus/battery/OpWarpChargingView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpWarpChargingView:Lcom/oneplus/battery/OpWarpChargingView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->op_warp_charging_animation_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/battery/OpWarpChargingView;

    iput-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpWarpChargingView:Lcom/oneplus/battery/OpWarpChargingView;

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpWarpChargingView:Lcom/oneplus/battery/OpWarpChargingView;

    return-object p0
.end method

.method private initOPWarpCharging()V
    .locals 2

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->wrap_charging_layout:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mWrapChargingLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mWrapChargingLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpWarpChargingView:Lcom/oneplus/battery/OpWarpChargingView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpWarpChargingView:Lcom/oneplus/battery/OpWarpChargingView;

    invoke-virtual {v0, p0}, Lcom/oneplus/battery/OpWarpChargingView;->setChargingAnimationController(Lcom/oneplus/battery/OpChargingAnimationController;)V

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getLockscreenWallpaper()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->onWallpaperChange(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$animationEnd$1(ILcom/oneplus/battery/OpChargingAnimationController$ChargingStateChangeCallback;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/oneplus/battery/OpChargingAnimationController$ChargingStateChangeCallback;->onWarpCharingAnimationEnd(I)V

    return-void
.end method

.method static synthetic lambda$animationStart$0(ILcom/oneplus/battery/OpChargingAnimationController$ChargingStateChangeCallback;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/oneplus/battery/OpChargingAnimationController$ChargingStateChangeCallback;->onWarpCharingAnimationStart(I)V

    return-void
.end method

.method private prepareAnimationResource()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpWarpChargingView:Lcom/oneplus/battery/OpWarpChargingView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/battery/OpWarpChargingView;->prepareAsset()V

    :cond_0
    return-void
.end method

.method private releaseAnimationResource()V
    .locals 3

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x3e8

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private updateScrim()V
    .locals 4

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getScrimColor()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateScrim, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpWarpChargingView:Lcom/oneplus/battery/OpWarpChargingView;

    invoke-virtual {v1, v0}, Lcom/oneplus/battery/OpWarpChargingView;->updaetScrimColor(I)V

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpWarpChargingView:Lcom/oneplus/battery/OpWarpChargingView;

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$attr;->wallpaperTextColor:I

    invoke-static {p0, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oneplus/battery/OpWarpChargingView;->updateColors(I)V

    return-void

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    const-string v0, "can\'t updateScrim"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/oneplus/battery/OpChargingAnimationController$ChargingStateChangeCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/oneplus/battery/OpChargingAnimationController$ChargingStateChangeCallback;

    invoke-virtual {p0, p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->addCallback(Lcom/oneplus/battery/OpChargingAnimationController$ChargingStateChangeCallback;)V

    return-void
.end method

.method public animationEnd(I)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mAnimationStarted:Z

    iget-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    const-string v2, "animationEnd"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    new-instance v2, Lcom/oneplus/battery/-$$Lambda$OpChargingAnimationControllerImpl$5vtklR-Tu8EsuL7GG0Pgx7MKs0Q;

    invoke-direct {v2, p1}, Lcom/oneplus/battery/-$$Lambda$OpChargingAnimationControllerImpl$5vtklR-Tu8EsuL7GG0Pgx7MKs0Q;-><init>(I)V

    invoke-static {v1, v2}, Lcom/oneplus/util/OpUtils;->safeForeach(Ljava/util/List;Ljava/util/function/Consumer;)V

    sget-boolean p1, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mPreventModeNoBackground:Z

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mPreventViewShow:Z

    if-nez p0, :cond_0

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->setPanelViewAlpha(FZI)V

    sput-boolean v0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mPreventModeNoBackground:Z

    :cond_0
    return-void
.end method

.method public animationStart(I)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mAnimationStarted:Z

    iget-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    const-string v2, "animationStart"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    new-instance v2, Lcom/oneplus/battery/-$$Lambda$OpChargingAnimationControllerImpl$mohiFvFBhh3_g_WyopM6xYNqSWY;

    invoke-direct {v2, p1}, Lcom/oneplus/battery/-$$Lambda$OpChargingAnimationControllerImpl$mohiFvFBhh3_g_WyopM6xYNqSWY;-><init>(I)V

    invoke-static {v1, v2}, Lcom/oneplus/util/OpUtils;->safeForeach(Ljava/util/List;Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mWallpaper:Landroid/graphics/Bitmap;

    if-nez p0, :cond_0

    sput-boolean v0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mPreventModeNoBackground:Z

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setPanelViewAlpha(FZI)V

    :cond_0
    return-void
.end method

.method public init(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->genOpWarpChargingView()Lcom/oneplus/battery/OpWarpChargingView;

    invoke-direct {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->initOPWarpCharging()V

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mKeyguardStateCallback:Lcom/oneplus/battery/OpChargingAnimationControllerImpl$KeyguardStateCallback;

    invoke-virtual {p1, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V

    return-void
.end method

.method public isAnimationStarted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mAnimationStarted:Z

    return p0
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpWarpChargingView:Lcom/oneplus/battery/OpWarpChargingView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/battery/OpWarpChargingView;->onBatteryLevelChanged(IZZ)V

    :cond_0
    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigChanged / newConfig:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mSmallestWidth:I

    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->genOpWarpChargingView()Lcom/oneplus/battery/OpWarpChargingView;

    invoke-direct {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->initOPWarpCharging()V

    iget p1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mSmallestWidth:I

    :cond_0
    return-void
.end method

.method public onFastChargeChanged(I)V
    .locals 3

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFastChargeChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/BatteryController;->isWarpCharging(I)Z

    move-result p1

    iget-boolean v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mWarpFastCharging:Z

    if-eq p1, v0, :cond_2

    iput-boolean p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mWarpFastCharging:Z

    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/ScreenLifecycle;->getScreenState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-boolean v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mWarpFastCharging:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->isKeyguardShowing:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mBouncerShow:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mPreventViewShow:Z

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->updateScrim()V

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpWarpChargingView:Lcom/oneplus/battery/OpWarpChargingView;

    invoke-virtual {p0}, Lcom/oneplus/battery/OpWarpChargingView;->startAnimation()V

    :cond_2
    return-void
.end method

.method public onWallpaperChange(Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWallpaperChange: bitmap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/oneplus/util/OpImageUtils;->computeCustomBackgroundBounds(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mWallpaper:Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mOpWarpChargingView:Lcom/oneplus/battery/OpWarpChargingView;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p0}, Lcom/oneplus/battery/OpWarpChargingView;->setBackgroundWallpaper(Landroid/graphics/Bitmap;)V

    :cond_2
    return-void
.end method

.method public registerReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public removeCallback(Lcom/oneplus/battery/OpChargingAnimationController$ChargingStateChangeCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/oneplus/battery/OpChargingAnimationController$ChargingStateChangeCallback;

    invoke-virtual {p0, p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->removeCallback(Lcom/oneplus/battery/OpChargingAnimationController$ChargingStateChangeCallback;)V

    return-void
.end method
