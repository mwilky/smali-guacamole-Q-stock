.class public Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;
.super Ljava/lang/Object;
.source "OpEdgeNavGestureHandler.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler$SysUiInputEventReceiver;
    }
.end annotation


# instance fields
.field private mAllowGesture:Z

.field private mAllowNavGesture:Z

.field private mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mContext:Landroid/content/Context;

.field private final mDisplayId:I

.field private final mDisplaySize:Landroid/graphics/Point;

.field private final mEdgeWidth:I

.field private final mExcludeRegion:Landroid/graphics/Region;

.field private mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

.field private mHomeHandle:Lcom/android/systemui/statusbar/phone/NavigationHandle;

.field private final mImeChangedListener:Landroid/view/IPinnedStackListener$Stub;

.field private mImeHeight:I

.field private mInputEventReceiver:Landroid/view/InputEventReceiver;

.field private mInputMonitor:Landroid/view/InputMonitor;

.field private mIsAttached:Z

.field private mIsEnabled:Z

.field private mIsGesturalModeEnabled:Z

.field private final mMainExecutor:Ljava/util/concurrent/Executor;

.field private final mNavBarHeight:I

.field private final mNavEdgeWidth:I

.field private final mNavEdgeWidthLand:I

.field private final mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field private mRotation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler$1;

    invoke-direct {v0, p0}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler$1;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;)V

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mImeChangedListener:Landroid/view/IPinnedStackListener$Stub;

    new-instance v0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler$2;

    invoke-direct {v0, p0}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler$2;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;)V

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mExcludeRegion:Landroid/graphics/Region;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mAllowGesture:Z

    iput v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mImeHeight:I

    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mAllowNavGesture:Z

    iput v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mRotation:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    iput v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mDisplayId:I

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mMainExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    const p1, 0x1050099

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mEdgeWidth:I

    const p1, 0x505002d

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mNavEdgeWidth:I

    const p1, 0x505002c

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mNavEdgeWidthLand:I

    const p1, 0x1050187

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mNavBarHeight:I

    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mContext:Landroid/content/Context;

    const-class p2, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1, p2}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method

.method static synthetic access$002(Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mImeHeight:I

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mDisplayId:I

    return p0
.end method

.method static synthetic access$200(Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mMainExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;)Landroid/graphics/Region;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mExcludeRegion:Landroid/graphics/Region;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;Landroid/view/InputEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->onInputEvent(Landroid/view/InputEvent;)V

    return-void
.end method

.method private disposeInputChannel()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    iput-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/InputMonitor;->dispose()V

    iput-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    :cond_1
    return-void
.end method

.method private getNavEdgeWidth(I)I
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mNavEdgeWidth:I

    return p0

    :cond_2
    :goto_0
    iget p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mNavEdgeWidthLand:I

    return p0

    :cond_3
    :goto_1
    iget p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mNavEdgeWidth:I

    return p0
.end method

.method private isWithinNavTouchRegion(II)Z
    .locals 4

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mNavBarHeight:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    const-string v3, "OpEdgeNavGestureHandler"

    if-lt p2, v1, :cond_3

    iget-boolean v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mAllowGesture:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mRotation:I

    invoke-direct {p0, v1}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->getNavEdgeWidth(I)I

    move-result v1

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2

    iget v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mRotation:I

    invoke-direct {p0, v0}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->getNavEdgeWidth(I)I

    move-result v0

    if-ge p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_2
    :goto_0
    const-string p0, " mAllowNavGesture touch point is out of range"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    :goto_1
    const-string p0, " mAllowNavGesture touch point is height than NavBarHeight."

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private isWithinTouchRegion(II)Z
    .locals 3

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mImeHeight:I

    iget v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mNavBarHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-le p2, v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mEdgeWidth:I

    if-le p1, v0, :cond_1

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v0

    if-ge p1, v2, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private onInputEvent(Landroid/view/InputEvent;)V
    .locals 1

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mHomeHandle:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/MotionEvent;

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->onMotionEvent(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method private onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const-string v1, "OpEdgeNavGestureHandler"

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->getSystemUiStateFlags()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isBackGestureDisabled(I)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v3, v5}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->isWithinTouchRegion(II)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mAllowGesture:Z

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isBackGestureDisabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v0, v3}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->isWithinNavTouchRegion(II)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    iput-boolean v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mAllowNavGesture:Z

    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mAllowNavGesture:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mHomeHandle:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    if-eqz v0, :cond_4

    const-string v0, "AllowNavGesture actionDown"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mHomeHandle:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->handleTouch(Landroid/view/MotionEvent;)V

    goto :goto_2

    :cond_2
    iget-boolean v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mAllowNavGesture:Z

    if-eqz v3, :cond_4

    if-ne v0, v2, :cond_3

    const-string v0, "AllowNavGesture actionUp"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mHomeHandle:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;->handleTouch(Landroid/view/MotionEvent;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private updateDisplaySize()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, p0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    return-void
.end method

.method private updateIsEnabled()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateIsEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mIsGesturalModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Attach: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mIsAttached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mIsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpEdgeNavGestureHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mIsAttached:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mIsGesturalModeEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mIsEnabled:Z

    if-ne v0, v2, :cond_1

    return-void

    :cond_1
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mIsEnabled:Z

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->disposeInputChannel()V

    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mIsEnabled:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mImeChangedListener:Landroid/view/IPinnedStackListener$Stub;

    invoke-virtual {v0, v2}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->removePinnedStackListener(Landroid/view/IPinnedStackListener;)V

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    iget p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mDisplayId:I

    invoke-interface {v0, v2, p0}, Landroid/view/IWindowManager;->unregisterSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string v0, "Failed to unregister window manager callbacks"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->updateDisplaySize()V

    :try_start_1
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mImeChangedListener:Landroid/view/IPinnedStackListener$Stub;

    invoke-virtual {v0, v2}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->addPinnedStackListener(Landroid/view/IPinnedStackListener;)V

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    iget v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mDisplayId:I

    invoke-interface {v0, v2, v3}, Landroid/view/IWindowManager;->registerSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "Failed to register window manager callbacks"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mDisplayId:I

    const-string v2, "edge-nav-swipe"

    invoke-virtual {v0, v2, v1}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    new-instance v0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler$SysUiInputEventReceiver;

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {v1}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler$SysUiInputEventReceiver;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    :goto_2
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mRotation:I

    iget-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mIsEnabled:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->updateDisplaySize()V

    :cond_0
    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1

    iget v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mDisplayId:I

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->updateDisplaySize()V

    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method public onNavBarAttached()V
    .locals 2

    const-string v0, "OpEdgeNavGestureHandler"

    const-string v1, "onNavBarAttached"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mIsAttached:Z

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->updateIsEnabled()V

    return-void
.end method

.method public onNavBarDetached()V
    .locals 2

    const-string v0, "OpEdgeNavGestureHandler"

    const-string v1, "onNavBarDetached"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mIsAttached:Z

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->updateIsEnabled()V

    return-void
.end method

.method public onNavigationModeChanged(I)V
    .locals 0

    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mIsGesturalModeEnabled:Z

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->updateIsEnabled()V

    return-void
.end method

.method public setHomeHandle(Landroid/view/View;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/phone/NavigationHandle;

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpEdgeNavGestureHandler;->mHomeHandle:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    return-void
.end method
