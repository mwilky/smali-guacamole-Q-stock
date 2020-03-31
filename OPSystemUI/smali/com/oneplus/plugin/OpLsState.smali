.class public Lcom/oneplus/plugin/OpLsState;
.super Ljava/lang/Object;
.source "OpLsState.java"

# interfaces
.implements Lcom/oneplus/plugin/OpBaseCtrl$ControlCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/plugin/OpLsState$MyUIHandler;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/oneplus/plugin/OpLsState;


# instance fields
.field private mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field private mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private mContainer:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field public final mControls:[Lcom/oneplus/plugin/OpBaseCtrl;

.field private mFingerprintAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

.field private mInit:Z

.field private mIsFinishedScreenTuredOn:Z

.field private mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mNonUiLooper:Landroid/os/Looper;

.field private mPhonstatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mPreventModeCtrl:Lcom/oneplus/plugin/OpPreventModeCtrl;

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mUIHandler:Landroid/os/Handler;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/plugin/OpLsState;->mInit:Z

    new-instance v1, Lcom/oneplus/plugin/OpLsState$MyUIHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oneplus/plugin/OpLsState$MyUIHandler;-><init>(Lcom/oneplus/plugin/OpLsState;Lcom/oneplus/plugin/OpLsState$1;)V

    iput-object v1, p0, Lcom/oneplus/plugin/OpLsState;->mUIHandler:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/oneplus/plugin/OpLsState;->mIsFinishedScreenTuredOn:Z

    new-instance v1, Lcom/oneplus/plugin/OpPreventModeCtrl;

    invoke-direct {v1}, Lcom/oneplus/plugin/OpPreventModeCtrl;-><init>()V

    iput-object v1, p0, Lcom/oneplus/plugin/OpLsState;->mPreventModeCtrl:Lcom/oneplus/plugin/OpPreventModeCtrl;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/oneplus/plugin/OpBaseCtrl;

    iget-object v2, p0, Lcom/oneplus/plugin/OpLsState;->mPreventModeCtrl:Lcom/oneplus/plugin/OpPreventModeCtrl;

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/oneplus/plugin/OpLsState;->mControls:[Lcom/oneplus/plugin/OpBaseCtrl;

    new-instance v0, Lcom/oneplus/plugin/OpLsState$1;

    invoke-direct {v0, p0}, Lcom/oneplus/plugin/OpLsState$1;-><init>(Lcom/oneplus/plugin/OpLsState;)V

    iput-object v0, p0, Lcom/oneplus/plugin/OpLsState;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method static synthetic access$102(Lcom/oneplus/plugin/OpLsState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/plugin/OpLsState;->mIsFinishedScreenTuredOn:Z

    return p1
.end method

.method public static declared-synchronized getInstance()Lcom/oneplus/plugin/OpLsState;
    .locals 2

    const-class v0, Lcom/oneplus/plugin/OpLsState;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/oneplus/plugin/OpLsState;->sInstance:Lcom/oneplus/plugin/OpLsState;

    if-nez v1, :cond_0

    new-instance v1, Lcom/oneplus/plugin/OpLsState;

    invoke-direct {v1}, Lcom/oneplus/plugin/OpLsState;-><init>()V

    sput-object v1, Lcom/oneplus/plugin/OpLsState;->sInstance:Lcom/oneplus/plugin/OpLsState;

    :cond_0
    sget-object v1, Lcom/oneplus/plugin/OpLsState;->sInstance:Lcom/oneplus/plugin/OpLsState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getBiometricUnlockController()Lcom/android/systemui/statusbar/phone/BiometricUnlockController;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/plugin/OpLsState;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    return-object p0
.end method

.method public getContainer()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/plugin/OpLsState;->mContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getFpAnimationCtrl()Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/plugin/OpLsState;->mFingerprintAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    return-object p0
.end method

.method public getNonUILooper()Landroid/os/Looper;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/plugin/OpLsState;->mNonUiLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OpLsState thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/plugin/OpLsState;->mNonUiLooper:Landroid/os/Looper;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/plugin/OpLsState;->mNonUiLooper:Landroid/os/Looper;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/plugin/OpLsState;->mPhonstatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object p0
.end method

.method public getPreventModeCtrl()Lcom/oneplus/plugin/OpPreventModeCtrl;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/plugin/OpLsState;->mPreventModeCtrl:Lcom/oneplus/plugin/OpPreventModeCtrl;

    return-object p0
.end method

.method public getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/plugin/OpLsState;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object p0
.end method

.method public init(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/CommandQueue;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/plugin/OpLsState;->mInit:Z

    if-nez v0, :cond_2

    const-string v0, "OpLsState"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/oneplus/plugin/OpLsState;->mContainer:Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/plugin/OpLsState;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p3, p0, Lcom/oneplus/plugin/OpLsState;->mPhonstatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p4, p0, Lcom/oneplus/plugin/OpLsState;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget-object p2, p0, Lcom/oneplus/plugin/OpLsState;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/oneplus/plugin/OpLsState;->mInit:Z

    iput-object p1, p0, Lcom/oneplus/plugin/OpLsState;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getNonUILooper()Landroid/os/Looper;

    iget-object p2, p0, Lcom/oneplus/plugin/OpLsState;->mControls:[Lcom/oneplus/plugin/OpBaseCtrl;

    array-length p3, p2

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_1

    aget-object v0, p2, p4

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/oneplus/plugin/OpBaseCtrl;->setCallback(Lcom/oneplus/plugin/OpBaseCtrl$ControlCallback;)V

    invoke-virtual {v0, p1}, Lcom/oneplus/plugin/OpBaseCtrl;->init(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpBaseCtrl;->startCtrl()V

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oneplus/plugin/OpLsState;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p2, p0, Lcom/oneplus/plugin/OpLsState;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isFinishedScreenTuredOn()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/plugin/OpLsState;->mIsFinishedScreenTuredOn:Z

    return p0
.end method

.method public onFingerprintStartedGoingToSleep()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/plugin/OpLsState;->mIsFinishedScreenTuredOn:Z

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/plugin/OpLsState;->mIsFinishedScreenTuredOn:Z

    iget-object p0, p0, Lcom/oneplus/plugin/OpLsState;->mControls:[Lcom/oneplus/plugin/OpBaseCtrl;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/oneplus/plugin/OpBaseCtrl;->isEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/oneplus/plugin/OpBaseCtrl;->onScreenTurnedOn()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onWallpaperChange(Landroid/graphics/Bitmap;)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/plugin/OpLsState;->mControls:[Lcom/oneplus/plugin/OpBaseCtrl;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/oneplus/plugin/OpBaseCtrl;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, p1}, Lcom/oneplus/plugin/OpBaseCtrl;->onWallpaperChange(Landroid/graphics/Bitmap;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/oneplus/plugin/OpLsState;->mPhonstatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->onWallpaperChange(Landroid/graphics/Bitmap;)V

    const-class p0, Lcom/oneplus/battery/OpChargingAnimationController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/battery/OpChargingAnimationController;

    invoke-interface {p0, p1}, Lcom/oneplus/battery/OpChargingAnimationController;->onWallpaperChange(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setBiometricUnlockController(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/plugin/OpLsState;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    return-void
.end method

.method public setFpAnimationCtrl(Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/plugin/OpLsState;->mFingerprintAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    return-void
.end method

.method public setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/plugin/OpLsState;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-void
.end method
