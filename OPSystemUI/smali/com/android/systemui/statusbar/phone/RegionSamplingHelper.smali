.class public Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;
.super Ljava/lang/Object;
.source "RegionSamplingHelper.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$SamplingCallback;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$SamplingCallback;

.field private mCurrentMedianLuma:F

.field private mFirstSamplingAfterStart:Z

.field private final mHandler:Landroid/os/Handler;

.field private mLastMedianLuma:F

.field private final mLuminanceChangeThreshold:F

.field private final mLuminanceThreshold:F

.field private final mRegisteredSamplingBounds:Landroid/graphics/Rect;

.field private mRegisteredStopLayer:Landroid/view/SurfaceControl;

.field private mRemoveDrawRunnable:Ljava/lang/Runnable;

.field private final mSampledView:Landroid/view/View;

.field private mSamplingEnabled:Z

.field private final mSamplingListener:Landroid/view/CompositionSamplingListener;

.field private mSamplingListenerRegistered:Z

.field private final mSamplingRequestBounds:Landroid/graphics/Rect;

.field private mUpdateOnDraw:Landroid/view/ViewTreeObserver$OnDrawListener;

.field private final mUpdateSamplingListener:Ljava/lang/Runnable;

.field private mWaitingOnDraw:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$SamplingCallback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$RegionSamplingHelper$pSsfVRzQ1H9WUV0xYw9vQmpq4Cw;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$RegionSamplingHelper$pSsfVRzQ1H9WUV0xYw9vQmpq4Cw;-><init>(Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mUpdateSamplingListener:Ljava/lang/Runnable;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingRequestBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mRegisteredSamplingBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingEnabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingListenerRegistered:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mRegisteredStopLayer:Landroid/view/SurfaceControl;

    new-instance v0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$1;-><init>(Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mUpdateOnDraw:Landroid/view/ViewTreeObserver$OnDrawListener;

    new-instance v0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$2;-><init>(Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mRemoveDrawRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$3;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$3;-><init>(Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingListener:Landroid/view/CompositionSamplingListener;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSampledView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSampledView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSampledView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->navigation_luminance_threshold:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mLuminanceThreshold:F

    sget v0, Lcom/android/systemui/R$dimen;->navigation_luminance_change_threshold:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mLuminanceChangeThreshold:F

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mCallback:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$SamplingCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mRemoveDrawRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->onDraw()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;)Landroid/view/ViewTreeObserver$OnDrawListener;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mUpdateOnDraw:Landroid/view/ViewTreeObserver$OnDrawListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSampledView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingEnabled:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->updateMediaLuma(F)V

    return-void
.end method

.method public static synthetic lambda$pSsfVRzQ1H9WUV0xYw9vQmpq4Cw(Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->updateSamplingListener()V

    return-void
.end method

.method private onDraw()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mWaitingOnDraw:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mWaitingOnDraw:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->updateSamplingListener()V

    :cond_0
    return-void
.end method

.method private postUpdateSamplingListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mUpdateSamplingListener:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mUpdateSamplingListener:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private unregisterSamplingListener()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingListenerRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingListenerRegistered:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mRegisteredStopLayer:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mRegisteredSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingListener:Landroid/view/CompositionSamplingListener;

    invoke-static {p0}, Landroid/view/CompositionSamplingListener;->unregister(Landroid/view/CompositionSamplingListener;)V

    :cond_0
    return-void
.end method

.method private updateMediaLuma(F)V
    .locals 2

    iput p1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mCurrentMedianLuma:F

    iget v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mCurrentMedianLuma:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mLastMedianLuma:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mLuminanceChangeThreshold:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mCallback:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$SamplingCallback;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mLuminanceThreshold:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$SamplingCallback;->onRegionDarknessChanged(Z)V

    iput p1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mLastMedianLuma:F

    :cond_1
    return-void
.end method

.method private updateSamplingListener()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingEnabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingRequestBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSampledView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mFirstSamplingAfterStart:Z

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSampledView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v3

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v4

    if-nez v4, :cond_6

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mWaitingOnDraw:Z

    if-nez v0, :cond_5

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mWaitingOnDraw:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mRemoveDrawRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mRemoveDrawRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSampledView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mUpdateOnDraw:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v4}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :cond_5
    :goto_2
    move-object v0, v3

    :cond_6
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingRequestBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mRegisteredSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mRegisteredStopLayer:Landroid/view/SurfaceControl;

    if-eq v4, v0, :cond_9

    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->unregisterSamplingListener()V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingListenerRegistered:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingListener:Landroid/view/CompositionSamplingListener;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getHandle()Landroid/os/IBinder;

    move-result-object v3

    :cond_8
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingRequestBounds:Landroid/graphics/Rect;

    invoke-static {v1, v2, v3, v4}, Landroid/view/CompositionSamplingListener;->register(Landroid/view/CompositionSamplingListener;ILandroid/os/IBinder;Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mRegisteredSamplingBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingRequestBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mRegisteredStopLayer:Landroid/view/SurfaceControl;

    :cond_9
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mFirstSamplingAfterStart:Z

    goto :goto_3

    :cond_a
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->unregisterSamplingListener()V

    :goto_3
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->updateSamplingRect()V

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->updateSamplingListener()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->postUpdateSamplingListener()V

    return-void
.end method

.method start(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mCallback:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$SamplingCallback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$SamplingCallback;->isSamplingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingRequestBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingEnabled:Z

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mLastMedianLuma:F

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mFirstSamplingAfterStart:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->updateSamplingListener()V

    return-void
.end method

.method stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingEnabled:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->updateSamplingListener()V

    return-void
.end method

.method public updateSamplingRect()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mCallback:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$SamplingCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSampledView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$SamplingCallback;->getSampledRegion(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingRequestBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingRequestBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->updateSamplingListener()V

    :cond_0
    return-void
.end method
