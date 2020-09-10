.class Lcom/android/server/wm/qbh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/wm/IScreenRotationAnimation;


# static fields
.field static final DEBUG_STATE:Z = false

.field static final DEBUG_TRANSFORMS:Z = false

.field static final DEFAULT_APP_TRANSITION_DURATION:I = 0x150

.field static final QR:I = 0x1eab92

.field static final SCREEN_FREEZE_LAYER_BASE:I = 0x1eab90

.field static final SCREEN_FREEZE_LAYER_SCREENSHOT:I = 0x1eab91

.field static final TAG:Ljava/lang/String; = "OpLandscapeAppAnimationImprovement"

.field static final TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field BR:Landroid/view/SurfaceControl;

.field DR:Z

.field ER:Z

.field FR:Z

.field GR:Z

.field HR:Z

.field IR:Z

.field JR:Z

.field KR:Z

.field MR:I

.field private final OR:Landroid/view/animation/Interpolator;

.field mAnimRunning:Z

.field final mContext:Landroid/content/Context;

.field mCurRotation:I

.field mCurrentDisplayRect:Landroid/graphics/Rect;

.field final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mDisplayInfo:Landroid/view/DisplayInfo;

.field mEnterTransformation:Landroid/view/animation/Transformation;

.field final mExitTransformation:Landroid/view/animation/Transformation;

.field mFinishAnimReady:Z

.field mFinishAnimStartTime:J

.field mForceDefaultOrientation:Z

.field mHalfwayPoint:J

.field mHasSetRotation:Z

.field mHeight:I

.field private mIsPerfLockAcquired:Z

.field private final mLinearInterpolator:Landroid/view/animation/Interpolator;

.field private final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mMoreRotateEnter:Z

.field private mMoreRotateExit:Z

.field mOriginalDisplayRect:Landroid/graphics/Rect;

.field mOriginalHeight:I

.field mOriginalRotation:I

.field mOriginalWidth:I

.field private mPerf:Landroid/util/BoostFramework;

.field mRotateEnterAnimation:Landroid/view/animation/Animation;

.field final mRotateEnterTransformation:Landroid/view/animation/Transformation;

.field mRotateExitAnimation:Landroid/view/animation/Animation;

.field final mRotateExitTransformation:Landroid/view/animation/Transformation;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field final mSnapshotFinalMatrix:Landroid/graphics/Matrix;

.field final mSnapshotInitialMatrix:Landroid/graphics/Matrix;

.field mStarted:Z

.field mSurfaceControl:Landroid/view/SurfaceControl;

.field final mTmpFloats:[F

.field mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/server/wm/qbh;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/DisplayContent;ZZLcom/android/server/wm/WindowManagerService;I)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p6

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/server/wm/qbh;->mPerf:Landroid/util/BoostFramework;

    const/4 v6, 0x0

    iput-boolean v6, v1, Lcom/android/server/wm/qbh;->mIsPerfLockAcquired:Z

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/qbh;->mOriginalDisplayRect:Landroid/graphics/Rect;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/qbh;->mCurrentDisplayRect:Landroid/graphics/Rect;

    new-instance v7, Landroid/view/animation/Transformation;

    invoke-direct {v7}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/qbh;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    new-instance v7, Landroid/view/animation/Transformation;

    invoke-direct {v7}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/qbh;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    new-instance v7, Landroid/view/animation/Transformation;

    invoke-direct {v7}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/qbh;->mExitTransformation:Landroid/view/animation/Transformation;

    new-instance v7, Landroid/view/animation/Transformation;

    invoke-direct {v7}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/qbh;->mEnterTransformation:Landroid/view/animation/Transformation;

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/qbh;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/qbh;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    const/16 v7, 0x9

    new-array v7, v7, [F

    iput-object v7, v1, Lcom/android/server/wm/qbh;->mTmpFloats:[F

    const/4 v7, 0x1

    iput-boolean v7, v1, Lcom/android/server/wm/qbh;->DR:Z

    iput-boolean v6, v1, Lcom/android/server/wm/qbh;->ER:Z

    iput-boolean v6, v1, Lcom/android/server/wm/qbh;->FR:Z

    iput-boolean v6, v1, Lcom/android/server/wm/qbh;->GR:Z

    iput-boolean v6, v1, Lcom/android/server/wm/qbh;->HR:Z

    iput-boolean v6, v1, Lcom/android/server/wm/qbh;->IR:Z

    iput-boolean v6, v1, Lcom/android/server/wm/qbh;->JR:Z

    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->isGestureButtonEnabled()Z

    move-result v8

    iput-boolean v8, v1, Lcom/android/server/wm/qbh;->KR:Z

    iput-boolean v7, v1, Lcom/android/server/wm/qbh;->mHasSetRotation:Z

    new-instance v8, Landroid/view/animation/PathInterpolator;

    const/4 v9, 0x0

    const v10, 0x3ecccccd    # 0.4f

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v9, v10, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v8, v1, Lcom/android/server/wm/qbh;->OR:Landroid/view/animation/Interpolator;

    move-object/from16 v8, p5

    iput-object v8, v1, Lcom/android/server/wm/qbh;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, v1, Lcom/android/server/wm/qbh;->mContext:Landroid/content/Context;

    iput-object v2, v1, Lcom/android/server/wm/qbh;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v8, v1, Lcom/android/server/wm/qbh;->mOriginalDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v8}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    iput v4, v1, Lcom/android/server/wm/qbh;->MR:I

    const v8, 0x10c000e

    invoke-static {v0, v8}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/qbh;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, v1, Lcom/android/server/wm/qbh;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v10

    iput-object v10, v1, Lcom/android/server/wm/qbh;->mDisplayInfo:Landroid/view/DisplayInfo;

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iput-boolean v7, v1, Lcom/android/server/wm/qbh;->GR:Z

    goto :goto_0

    :pswitch_2
    iput-boolean v6, v1, Lcom/android/server/wm/qbh;->DR:Z

    goto :goto_0

    :pswitch_3
    iput-boolean v7, v1, Lcom/android/server/wm/qbh;->DR:Z

    :goto_0
    iget-boolean v11, v1, Lcom/android/server/wm/qbh;->GR:Z

    const-string v12, "OpLandscapeAppAnimationImprovement"

    if-nez v11, :cond_6

    iget-object v11, v2, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v11, :cond_0

    invoke-virtual {v11}, Lcom/android/server/wm/AppWindowToken;->isActivityTypeHome()Z

    move-result v11

    if-eqz v11, :cond_0

    iput-boolean v7, v1, Lcom/android/server/wm/qbh;->FR:Z

    iput-boolean v6, v1, Lcom/android/server/wm/qbh;->ER:Z

    :cond_0
    move v11, v6

    :goto_1
    iget-object v13, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v13

    if-ge v11, v13, :cond_2

    iget-object v13, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v13, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/AppWindowToken;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mOpeningApps="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13}, Lcom/android/server/wm/AppWindowToken;->isActivityTypeHome()Z

    move-result v13

    if-eqz v13, :cond_1

    iput-boolean v7, v1, Lcom/android/server/wm/qbh;->FR:Z

    iput-boolean v6, v1, Lcom/android/server/wm/qbh;->ER:Z

    goto :goto_2

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    invoke-static {}, Lcom/android/server/wm/OpActivityStarterInjector;->getSourceIntent()Landroid/content/Intent;

    move-result-object v11

    if-eqz v11, :cond_4

    const-string v13, "android.intent.category.LAUNCHER"

    invoke-virtual {v11, v13}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    const-string v11, "sourceIntent is CATEGORY_LAUNCHER"

    invoke-static {v12, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Lcom/android/server/wm/OpActivityStarterInjector;->setSourceIntent(Landroid/content/Intent;)V

    iput-boolean v6, v1, Lcom/android/server/wm/qbh;->FR:Z

    iput-boolean v7, v1, Lcom/android/server/wm/qbh;->ER:Z

    goto :goto_3

    :cond_3
    const-string v13, "android.intent.category.HOME"

    invoke-virtual {v11, v13}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "sourceIntent is CATEGORY_HOME"

    invoke-static {v12, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Lcom/android/server/wm/OpActivityStarterInjector;->setSourceIntent(Landroid/content/Intent;)V

    iput-boolean v7, v1, Lcom/android/server/wm/qbh;->FR:Z

    iput-boolean v6, v1, Lcom/android/server/wm/qbh;->ER:Z

    iput-boolean v7, v1, Lcom/android/server/wm/qbh;->JR:Z

    :cond_4
    :goto_3
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->getStartActivityFromRecents()Z

    move-result v5

    if-eqz v5, :cond_5

    iput-boolean v6, v1, Lcom/android/server/wm/qbh;->FR:Z

    iput-boolean v6, v1, Lcom/android/server/wm/qbh;->ER:Z

    iput-boolean v7, v1, Lcom/android/server/wm/qbh;->HR:Z

    invoke-static {v6}, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->setStartActivityFromRecents(Z)V

    :cond_5
    const/4 v5, -0x2

    if-ne v4, v5, :cond_6

    iput-boolean v6, v1, Lcom/android/server/wm/qbh;->FR:Z

    iput-boolean v6, v1, Lcom/android/server/wm/qbh;->ER:Z

    iput-boolean v6, v1, Lcom/android/server/wm/qbh;->HR:Z

    invoke-static {v6}, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->setStartActivityFromRecents(Z)V

    iput-boolean v7, v1, Lcom/android/server/wm/qbh;->IR:Z

    :cond_6
    sget-boolean v4, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v4, :cond_a

    iget-object v4, v2, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFocusedApp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_7
    const-string v4, "mFocusedApp=null"

    :goto_4
    invoke-static {v12, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/wm/ywr;->je()Lcom/android/server/wm/AppWindowToken;

    move-result-object v4

    if-eqz v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPrevFocusedApp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/wm/ywr;->je()Lcom/android/server/wm/AppWindowToken;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_8
    const-string v4, "mPrevFocusedApp=null"

    :goto_5
    invoke-static {v12, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/wm/ywr;->ke()Lcom/android/server/wm/AppWindowToken;

    move-result-object v4

    if-eqz v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPrevFocusedNonNullApp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/wm/ywr;->ke()Lcom/android/server/wm/AppWindowToken;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_9
    const-string v4, "mPrevFocusedNonNullApp=null"

    :goto_6
    invoke-static {v12, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    sget-boolean v4, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v4, :cond_b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsAppLaunch="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/wm/qbh;->ER:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mIsAppFinish="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/wm/qbh;->FR:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mIsAppFinishWithHomeGesture="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/wm/qbh;->JR:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mIsAppTransitTo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/wm/qbh;->DR:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mIsKeyguardLaunch="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/wm/qbh;->GR:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mIsAppLaunchFromRecents="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/wm/qbh;->HR:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mIsActivityHomeTypeRotation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/wm/qbh;->IR:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    new-instance v4, Landroid/util/BoostFramework;

    invoke-direct {v4}, Landroid/util/BoostFramework;-><init>()V

    iput-object v4, v1, Lcom/android/server/wm/qbh;->mPerf:Landroid/util/BoostFramework;

    if-eqz p3, :cond_c

    iput-boolean v7, v1, Lcom/android/server/wm/qbh;->mForceDefaultOrientation:Z

    iget v4, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v5, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_7

    :cond_c
    iget v4, v10, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v5, v10, Landroid/view/DisplayInfo;->logicalHeight:I

    :goto_7
    if-eq v8, v7, :cond_e

    const/4 v6, 0x3

    if-ne v8, v6, :cond_d

    goto :goto_8

    :cond_d
    iput v4, v1, Lcom/android/server/wm/qbh;->mWidth:I

    iput v5, v1, Lcom/android/server/wm/qbh;->mHeight:I

    goto :goto_9

    :cond_e
    :goto_8
    iput v5, v1, Lcom/android/server/wm/qbh;->mWidth:I

    iput v4, v1, Lcom/android/server/wm/qbh;->mHeight:I

    :goto_9
    iput v8, v1, Lcom/android/server/wm/qbh;->mOriginalRotation:I

    iput v4, v1, Lcom/android/server/wm/qbh;->mOriginalWidth:I

    iput v5, v1, Lcom/android/server/wm/qbh;->mOriginalHeight:I

    iget-object v6, v1, Lcom/android/server/wm/qbh;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Lcom/android/server/wm/TransactionFactory;

    invoke-interface {v6}, Lcom/android/server/wm/TransactionFactory;->make()Landroid/view/SurfaceControl$Transaction;

    move-result-object v6

    :try_start_0
    iget-boolean v10, v1, Lcom/android/server/wm/qbh;->ER:Z
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_2

    const-string v11, "ScreenshotSurface"

    if-nez v10, :cond_10

    :try_start_1
    iget-boolean v10, v1, Lcom/android/server/wm/qbh;->GR:Z

    if-eqz v10, :cond_f

    goto :goto_b

    :cond_f
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v10

    iget v11, v1, Lcom/android/server/wm/qbh;->mWidth:I

    iget v13, v1, Lcom/android/server/wm/qbh;->mHeight:I

    invoke-virtual {v10, v11, v13}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/view/SurfaceControl$Builder;->setSecure(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v10

    :goto_a
    iput-object v10, v1, Lcom/android/server/wm/qbh;->mSurfaceControl:Landroid/view/SurfaceControl;

    goto :goto_c

    :cond_10
    :goto_b
    invoke-static {}, Lcom/android/server/wm/OpDisplayContentInjector;->makeCovered()Landroid/view/SurfaceControl$Builder;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v10

    iget v11, v1, Lcom/android/server/wm/qbh;->mWidth:I

    iget v13, v1, Lcom/android/server/wm/qbh;->mHeight:I

    invoke-virtual {v10, v11, v13}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/view/SurfaceControl$Builder;->setSecure(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v10

    goto :goto_a

    :goto_c
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    const-string v10, "ScreenshotSurfaceOverlay"

    invoke-virtual {v2, v10}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    iget v10, v1, Lcom/android/server/wm/qbh;->mWidth:I

    iget v11, v1, Lcom/android/server/wm/qbh;->mHeight:I

    invoke-virtual {v2, v10, v11}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setSecure(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/wm/qbh;->BR:Landroid/view/SurfaceControl;

    iget-object v2, v1, Lcom/android/server/wm/qbh;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Lcom/android/server/wm/TransactionFactory;

    invoke-interface {v2}, Lcom/android/server/wm/TransactionFactory;->make()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/wm/qbh;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3, v7}, Landroid/view/SurfaceControl$Transaction;->setOverrideScalingMode(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2, v7}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    iget-object v2, v1, Lcom/android/server/wm/qbh;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSurfaceFactory:Lcom/android/server/wm/SurfaceFactory;

    invoke-interface {v2}, Lcom/android/server/wm/SurfaceFactory;->make()Landroid/view/Surface;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LandscapeImprovement screenshot width-height "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/server/wm/qbh;->mWidth:I

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "-"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/server/wm/qbh;->mHeight:I

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " origWidth-origHeight "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " orig rot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v1, Lcom/android/server/wm/qbh;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v4, v1, Lcom/android/server/wm/qbh;->mWidth:I

    iget v5, v1, Lcom/android/server/wm/qbh;->mHeight:I

    invoke-virtual {v3, v0, v4, v5}, Landroid/hardware/display/DisplayManagerInternal;->screenshot(III)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v3

    if-eqz v3, :cond_12

    iget-object v0, v1, Lcom/android/server/wm/qbh;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual {v3}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/Surface;->attachAndQueueBuffer(Landroid/graphics/GraphicBuffer;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_d

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to attach screenshot(mSurfaceControl) - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    iget-object v0, v1, Lcom/android/server/wm/qbh;->BR:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_3
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    invoke-virtual {v3}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/Surface;->attachAndQueueBuffer(Landroid/graphics/GraphicBuffer;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_e

    :catch_1
    move-exception v0

    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to attach screenshot(mSurfaceControlOverlay) - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    invoke-virtual {v3}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->containsSecureLayers()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v1, Lcom/android/server/wm/qbh;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v6, v0, v7}, Landroid/view/SurfaceControl$Transaction;->setSecure(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v1, Lcom/android/server/wm/qbh;->BR:Landroid/view/SurfaceControl;

    invoke-virtual {v6, v0, v7}, Landroid/view/SurfaceControl$Transaction;->setSecure(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    :cond_11
    iget-object v0, v1, Lcom/android/server/wm/qbh;->mSurfaceControl:Landroid/view/SurfaceControl;

    const v3, 0x1eab91

    invoke-virtual {v6, v0, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v1, Lcom/android/server/wm/qbh;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v6, v0, v9}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v1, Lcom/android/server/wm/qbh;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v6, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v1, Lcom/android/server/wm/qbh;->BR:Landroid/view/SurfaceControl;

    const v3, 0x1eab92

    invoke-virtual {v6, v0, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v1, Lcom/android/server/wm/qbh;->BR:Landroid/view/SurfaceControl;

    invoke-virtual {v6, v0, v9}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v1, Lcom/android/server/wm/qbh;->BR:Landroid/view/SurfaceControl;

    invoke-virtual {v6, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_f

    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to take screenshot of display "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    invoke-virtual {v2}, Landroid/view/Surface;->destroy()V
    :try_end_5
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_10

    :catch_2
    move-exception v0

    const-string v2, "Unable to allocate freeze surface"

    invoke-static {v12, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-nez v0, :cond_13

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_SURFACE_ALLOC:Z

    if-eqz v0, :cond_14

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  FREEZE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/wm/qbh;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": CREATE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WindowManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    invoke-direct {v1, v6, v8}, Lcom/android/server/wm/qbh;->setRotation(Landroid/view/SurfaceControl$Transaction;I)V

    invoke-virtual {v6}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static createRotationMatrix(IIILandroid/graphics/Matrix;)V
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 p2, 0x3

    if-eq p0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x43870000    # 270.0f

    invoke-virtual {p3, p0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    int-to-float p0, p1

    invoke-virtual {p3, v1, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_1
    const/high16 p0, 0x43340000    # 180.0f

    invoke-virtual {p3, p0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    int-to-float p0, p1

    int-to-float p1, p2

    invoke-virtual {p3, p0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_2
    const/high16 p0, 0x42b40000    # 90.0f

    invoke-virtual {p3, p0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    int-to-float p0, p2

    invoke-virtual {p3, p0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    :goto_0
    return-void
.end method

.method private hasAnimations()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/qbh;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/qbh;->mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private setRotation(Landroid/view/SurfaceControl$Transaction;I)V
    .locals 3

    iput p2, p0, Lcom/android/server/wm/qbh;->mCurRotation:I

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result p2

    iget v0, p0, Lcom/android/server/wm/qbh;->mWidth:I

    iget v1, p0, Lcom/android/server/wm/qbh;->mHeight:I

    iget-object v2, p0, Lcom/android/server/wm/qbh;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-static {p2, v0, v1, v2}, Lcom/android/server/wm/qbh;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    iget-object p2, p0, Lcom/android/server/wm/qbh;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/wm/qbh;->zta(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;FLandroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/android/server/wm/qbh;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/qbh;->zta(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;F)V

    return-void
.end method

.method private startAnimation(Landroid/view/SurfaceControl$Transaction;JFIIZII)Z
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, p4

    move/from16 v13, p5

    move/from16 v14, p6

    move/from16 v4, p8

    move/from16 v5, p9

    iget-object v6, v0, Lcom/android/server/wm/qbh;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v6, :cond_1e

    iget-object v6, v0, Lcom/android/server/wm/qbh;->BR:Landroid/view/SurfaceControl;

    if-nez v6, :cond_0

    goto/16 :goto_d

    :cond_0
    iget-boolean v6, v0, Lcom/android/server/wm/qbh;->mStarted:Z

    const/4 v12, 0x1

    if-eqz v6, :cond_1

    return v12

    :cond_1
    iput-boolean v12, v0, Lcom/android/server/wm/qbh;->mStarted:Z

    iget v6, v0, Lcom/android/server/wm/qbh;->mCurRotation:I

    iget v7, v0, Lcom/android/server/wm/qbh;->mOriginalRotation:I

    invoke-static {v6, v7}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v11

    sget-boolean v6, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    const-string v10, "OpLandscapeAppAnimationImprovement"

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rotation delta: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " finalWidth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " finalHeight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " origWidth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/server/wm/qbh;->mOriginalWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " origHeight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/server/wm/qbh;->mOriginalHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v6, 0x2

    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    iget-object v7, v0, Lcom/android/server/wm/qbh;->mContext:Landroid/content/Context;

    invoke-static {v7, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/wm/qbh;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget-object v4, v0, Lcom/android/server/wm/qbh;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/wm/qbh;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    const-string v4, "exitAnim != 0 && enterAnim != 0"

    invoke-static {v10, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_3
    if-eqz v11, :cond_16

    const v15, 0x5010018

    const v8, 0x5010019

    const v9, 0x5010016

    const v5, 0x5010017

    const v7, 0x5010010

    const v4, 0x5010011

    if-eq v11, v12, :cond_d

    if-eq v11, v6, :cond_c

    const/4 v12, 0x3

    if-eq v11, v12, :cond_4

    goto/16 :goto_7

    :cond_4
    iget-boolean v12, v0, Lcom/android/server/wm/qbh;->GR:Z

    if-eqz v12, :cond_5

    iget-object v4, v0, Lcom/android/server/wm/qbh;->mContext:Landroid/content/Context;

    const v5, 0x5010013

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/wm/qbh;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget-object v4, v0, Lcom/android/server/wm/qbh;->mContext:Landroid/content/Context;

    const v5, 0x5010012

    goto/16 :goto_5

    :cond_5
    iget-boolean v12, v0, Lcom/android/server/wm/qbh;->IR:Z

    if-eqz v12, :cond_6

    goto :goto_0

    :cond_6
    iget-boolean v4, v0, Lcom/android/server/wm/qbh;->HR:Z

    if-eqz v4, :cond_7

    goto/16 :goto_1

    :cond_7
    iget-boolean v4, v0, Lcom/android/server/wm/qbh;->ER:Z

    if-eqz v4, :cond_8

    goto/16 :goto_2

    :cond_8
    iget-boolean v4, v0, Lcom/android/server/wm/qbh;->FR:Z

    if-eqz v4, :cond_b

    iget-boolean v4, v0, Lcom/android/server/wm/qbh;->KR:Z

    if-eqz v4, :cond_a

    iget-boolean v4, v0, Lcom/android/server/wm/qbh;->JR:Z

    if-eqz v4, :cond_9

    iget-object v4, v0, Lcom/android/server/wm/qbh;->mContext:Landroid/content/Context;

    const v5, 0x501000f

    goto/16 :goto_3

    :cond_9
    iget-object v4, v0, Lcom/android/server/wm/qbh;->mContext:Landroid/content/Context;

    const v5, 0x501000b

    goto/16 :goto_3

    :cond_a
    iget-object v4, v0, Lcom/android/server/wm/qbh;->mContext:Landroid/content/Context;

    const v5, 0x501000e

    goto/16 :goto_3

    :cond_b
    iget-boolean v4, v0, Lcom/android/server/wm/qbh;->DR:Z

    if-eqz v4, :cond_15

    goto/16 :goto_4

    :cond_c
    iget-object v4, v0, Lcom/android/server/wm/qbh;->mContext:Landroid/content/Context;

    const v5, 0x501001d

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/wm/qbh;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget-object v4, v0, Lcom/android/server/wm/qbh;->mContext:Landroid/content/Context;

    const v5, 0x501001c

    goto/16 :goto_5

    :cond_d
    iget-boolean v12, v0, Lcom/android/server/wm/qbh;->GR:Z

    if-eqz v12, :cond_e

    iget-object v4, v0, Lcom/android/server/wm/qbh;->mContext:Landroid/content/Context;

    const v5, 0x5010015

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/wm/qbh;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget-object v4, v0, Lcom/android/server/wm/qbh;->mContext:Landroid/content/Context;

    const v5, 0x5010014

    goto/16 :goto_5

    :cond_e
    iget-boolean v12, v0, Lcom/android/server/wm/qbh;->IR:Z

    if-eqz v12, :cond_f

    :goto_0
    iget-object v5, v0, Lcom/android/server/wm/qbh;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/wm/qbh;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget-object v4, v0, Lcom/android/server/wm/qbh;->mContext:Landroid/content/Context;

    invoke-static {v4, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    goto/16 :goto_6

    :cond_f
    iget-boolean v4, v0, Lcom/android/server/wm/qbh;->HR:Z

    if-eqz v4, :cond_10

    :goto_1
    iget-object v4, v0, Lcom/android/server/wm/qbh;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/wm/qbh;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget-object v4, v0, Lcom/android/server/wm/qbh;->mContext:Landroid/content/Context;

    invoke-static {v4, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    goto/16 :goto_6

    :cond_10
    iget-boolean v4, v0, Lcom/android/server/wm/qbh;->ER:Z

    if-eqz v4, :cond_11

    :goto_2
    iget-object v4, v0, Lcom/android/server/wm/qbh;->mContext:Landroid/content/Context;

    invoke-static {v4, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/wm/qbh;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget-object v4, v0, Lcom/android/server/wm/qbh;->mContext:Landroid/content/Context;

    invoke-static {v4, v15}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    goto :goto_6

    :cond_11
    iget-boolean v4, v0, Lcom/android/server/wm/qbh;->FR:Z

    if-eqz v4, :cond_14

    iget-boolean v4, v0, Lcom/android/server/wm/qbh;->KR:Z

    if-eqz v4, :cond_13

    iget-boolean v4, v0, Lcom/android/server/wm/qbh;->JR:Z

    if-eqz v4, :cond_12

    iget-object v4, v0, Lcom/android/server/wm/qbh;->mContext:Landroid/content/Context;

    const v5, 0x501000f

    goto :goto_3

    :cond_12
    iget-object v4, v0, Lcom/android/server/wm/qbh;->mContext:Landroid/content/Context;

    const v5, 0x501000c

    goto :goto_3

    :cond_13
    iget-object v4, v0, Lcom/android/server/wm/qbh;->mContext:Landroid/content/Context;

    const v5, 0x501000e

    :goto_3
    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/wm/qbh;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget-object v4, v0, Lcom/android/server/wm/qbh;->mContext:Landroid/content/Context;

    const v5, 0x501000d

    goto :goto_5

    :cond_14
    iget-boolean v4, v0, Lcom/android/server/wm/qbh;->DR:Z

    if-eqz v4, :cond_15

    :goto_4
    iget-object v4, v0, Lcom/android/server/wm/qbh;->mContext:Landroid/content/Context;

    const v5, 0x10a013d

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/wm/qbh;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget-object v4, v0, Lcom/android/server/wm/qbh;->mContext:Landroid/content/Context;

    const v5, 0x10a013b

    goto :goto_5

    :cond_15
    iget-object v4, v0, Lcom/android/server/wm/qbh;->mContext:Landroid/content/Context;

    const v5, 0x10a013a

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/wm/qbh;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget-object v4, v0, Lcom/android/server/wm/qbh;->mContext:Landroid/content/Context;

    const v5, 0x10a0139

    goto :goto_5

    :cond_16
    iget-object v4, v0, Lcom/android/server/wm/qbh;->mContext:Landroid/content/Context;

    const v5, 0x10a0112

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/wm/qbh;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget-object v4, v0, Lcom/android/server/wm/qbh;->mContext:Landroid/content/Context;

    const v5, 0x10a0111

    :goto_5
    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    :goto_6
    iput-object v4, v0, Lcom/android/server/wm/qbh;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    :goto_7
    if-eqz v11, :cond_1d

    if-ne v11, v6, :cond_17

    goto/16 :goto_b

    :cond_17
    iget-object v4, v0, Lcom/android/server/wm/qbh;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    iget v7, v0, Lcom/android/server/wm/qbh;->mOriginalWidth:I

    iget v8, v0, Lcom/android/server/wm/qbh;->mOriginalHeight:I

    const/4 v9, 0x0

    const/4 v12, 0x0

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v15, v10

    move v10, v12

    invoke-virtual/range {v4 .. v10}, Landroid/view/animation/Animation;->initialize(IIIIII)V

    iget-object v4, v0, Lcom/android/server/wm/qbh;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget v7, v0, Lcom/android/server/wm/qbh;->mOriginalWidth:I

    iget v8, v0, Lcom/android/server/wm/qbh;->mOriginalHeight:I

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/view/animation/Animation;->initialize(IIIIII)V

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/android/server/wm/qbh;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v5

    if-eqz v5, :cond_1a

    iget-object v4, v0, Lcom/android/server/wm/qbh;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/TaskStack;->mSourceBoundFromIntent:Landroid/graphics/Rect;

    if-nez v4, :cond_18

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    :cond_18
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HomeStack()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/wm/qbh;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", sourceBound="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v0, v4, v11}, Lcom/android/server/wm/qbh;->zta(Landroid/graphics/Rect;I)Landroid/graphics/Point;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/server/wm/qbh;->ER:Z

    if-eqz v6, :cond_19

    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v7, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    iget-object v9, v0, Lcom/android/server/wm/qbh;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v9, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v9, v9, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-direct {v8, v7, v7, v10, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v0, v6, v8, v4, v5}, Lcom/android/server/wm/qbh;->zta(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/wm/qbh;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    iget-object v4, v0, Lcom/android/server/wm/qbh;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-nez v4, :cond_19

    const-string v0, "mRotateEnterAnimation=null"

    invoke-static {v15, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_19
    move-object v4, v5

    goto :goto_8

    :cond_1a
    const-string v5, "HomeStack()=null"

    invoke-static {v15, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    iget-object v5, v0, Lcom/android/server/wm/qbh;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    iget v7, v0, Lcom/android/server/wm/qbh;->mOriginalWidth:I

    iget v8, v0, Lcom/android/server/wm/qbh;->mOriginalHeight:I

    if-eqz v4, :cond_1b

    iget v6, v4, Landroid/graphics/Point;->x:I

    move v9, v6

    goto :goto_9

    :cond_1b
    const/4 v9, 0x0

    :goto_9
    if-eqz v4, :cond_1c

    iget v4, v4, Landroid/graphics/Point;->y:I

    move v10, v4

    goto :goto_a

    :cond_1c
    const/4 v10, 0x0

    :goto_a
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v4, v5

    move/from16 v5, p5

    move/from16 v6, p6

    const/4 v15, 0x1

    invoke-virtual/range {v4 .. v12}, Landroid/view/animation/Animation;->initialize(IIIIIIII)V

    iget-object v4, v0, Lcom/android/server/wm/qbh;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget v7, v0, Lcom/android/server/wm/qbh;->mOriginalWidth:I

    iget v8, v0, Lcom/android/server/wm/qbh;->mOriginalHeight:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v12}, Landroid/view/animation/Animation;->initialize(IIIIIIII)V

    goto :goto_c

    :cond_1d
    :goto_b
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/android/server/wm/qbh;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    iget v5, v0, Lcom/android/server/wm/qbh;->mOriginalWidth:I

    iget v6, v0, Lcom/android/server/wm/qbh;->mOriginalHeight:I

    invoke-virtual {v4, v13, v14, v5, v6}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget-object v4, v0, Lcom/android/server/wm/qbh;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget v5, v0, Lcom/android/server/wm/qbh;->mOriginalWidth:I

    iget v6, v0, Lcom/android/server/wm/qbh;->mOriginalHeight:I

    invoke-virtual {v4, v13, v14, v5, v6}, Landroid/view/animation/Animation;->initialize(IIII)V

    :goto_c
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/server/wm/qbh;->mAnimRunning:Z

    iput-boolean v4, v0, Lcom/android/server/wm/qbh;->mFinishAnimReady:Z

    const-wide/16 v4, -0x1

    iput-wide v4, v0, Lcom/android/server/wm/qbh;->mFinishAnimStartTime:J

    iget-object v4, v0, Lcom/android/server/wm/qbh;->mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v1, v2}, Landroid/view/animation/Animation;->restrictDuration(J)V

    iget-object v4, v0, Lcom/android/server/wm/qbh;->mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v3}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    iget-object v4, v0, Lcom/android/server/wm/qbh;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v1, v2}, Landroid/view/animation/Animation;->restrictDuration(J)V

    iget-object v0, v0, Lcom/android/server/wm/qbh;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    return v15

    :cond_1e
    :goto_d
    const/4 v0, 0x0

    return v0
.end method

.method private stepAnimation(J)Z
    .locals 4

    iget-wide v0, p0, Lcom/android/server/wm/qbh;->mHalfwayPoint:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/wm/qbh;->mHalfwayPoint:J

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/qbh;->mFinishAnimReady:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/android/server/wm/qbh;->mFinishAnimStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iput-wide p1, p0, Lcom/android/server/wm/qbh;->mFinishAnimStartTime:J

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/qbh;->mFinishAnimReady:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/qbh;->mMoreRotateExit:Z

    iget-object v1, p0, Lcom/android/server/wm/qbh;->mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/qbh;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p1, p2, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/qbh;->mMoreRotateExit:Z

    :cond_2
    iput-boolean v0, p0, Lcom/android/server/wm/qbh;->mMoreRotateEnter:Z

    iget-object v1, p0, Lcom/android/server/wm/qbh;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/qbh;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p1, p2, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/qbh;->mMoreRotateEnter:Z

    :cond_3
    iget-object p1, p0, Lcom/android/server/wm/qbh;->mExitTransformation:Landroid/view/animation/Transformation;

    iget-object p2, p0, Lcom/android/server/wm/qbh;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {p1, p2}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    iget-object p1, p0, Lcom/android/server/wm/qbh;->mEnterTransformation:Landroid/view/animation/Transformation;

    iget-object p2, p0, Lcom/android/server/wm/qbh;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {p1, p2}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    iget-boolean p1, p0, Lcom/android/server/wm/qbh;->mMoreRotateEnter:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/android/server/wm/qbh;->mMoreRotateExit:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/android/server/wm/qbh;->mFinishAnimReady:Z

    if-nez p1, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    iget-object p1, p0, Lcom/android/server/wm/qbh;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    iget-object p2, p0, Lcom/android/server/wm/qbh;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/wm/qbh;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    return v0
.end method

.method private zta(Landroid/graphics/Rect;I)Landroid/graphics/Point;
    .locals 2

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    iget p2, p0, Lcom/android/server/wm/qbh;->mOriginalHeight:I

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    iget p0, p0, Lcom/android/server/wm/qbh;->mOriginalWidth:I

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr p1, p0

    invoke-virtual {v0, p2, p1}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p2

    iget v1, p0, Lcom/android/server/wm/qbh;->mOriginalHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p2, v1

    iget p0, p0, Lcom/android/server/wm/qbh;->mOriginalWidth:I

    div-int/lit8 p0, p0, 0x2

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    sub-int/2addr p0, p1

    invoke-virtual {v0, p2, p0}, Landroid/graphics/Point;->set(II)V

    :cond_1
    :goto_0
    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "computeIconPosition(): iconPos="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpLandscapeAppAnimationImprovement"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0
.end method

.method private zta(IZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;)Landroid/view/animation/Animation;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    if-eqz p2, :cond_7

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    const/4 v11, 0x0

    if-eqz v2, :cond_0

    iget v5, v2, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_0
    move v5, v11

    :goto_0
    if-eqz v2, :cond_1

    iget v2, v2, Landroid/graphics/Point;->y:I

    goto :goto_1

    :cond_1
    move v2, v11

    :goto_1
    add-int/2addr v3, v5

    add-int/2addr v2, v4

    if-eqz p5, :cond_2

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x10

    goto :goto_2

    :cond_2
    move v4, v11

    :goto_2
    if-eqz p5, :cond_3

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x10

    goto :goto_3

    :cond_3
    move v6, v11

    :goto_3
    if-eqz p5, :cond_4

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x8

    goto :goto_4

    :cond_4
    move v7, v11

    :goto_4
    if-eqz p5, :cond_5

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v8

    div-int/lit8 v8, v8, 0x8

    move v12, v8

    goto :goto_5

    :cond_5
    move v12, v11

    :goto_5
    if-lez v9, :cond_6

    int-to-float v5, v5

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v5, v8

    goto :goto_6

    :cond_6
    const/4 v5, 0x0

    :goto_6
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    const/high16 v14, 0x40400000    # 3.0f

    div-float/2addr v8, v14

    mul-float/2addr v8, v5

    float-to-int v14, v8

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v6

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v15, v2, v1

    new-instance v8, Lcom/android/server/wm/zta/you;

    add-int v4, v3, v7

    const/4 v5, 0x0

    const/4 v7, 0x0

    iget-object v6, v0, Lcom/android/server/wm/qbh;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    move-object v1, v8

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v9

    move-object/from16 v16, v6

    move v6, v14

    move-object v13, v8

    move-object/from16 v8, v16

    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/zta/you;-><init>(IIIIIILandroid/view/animation/Interpolator;)V

    sget-object v1, Lcom/android/server/wm/qbh;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v13, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v1, 0x150

    invoke-virtual {v13, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v3, Landroid/view/animation/TranslateAnimation;

    int-to-float v4, v14

    int-to-float v5, v11

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iget-object v4, v0, Lcom/android/server/wm/qbh;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v3, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v1, Lcom/android/server/wm/zta/sis;

    add-int/2addr v12, v15

    invoke-direct {v1, v15, v12, v11, v10}, Lcom/android/server/wm/zta/sis;-><init>(IIII)V

    iget-object v2, v0, Lcom/android/server/wm/qbh;->OR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v4, 0x118

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v4, 0x54

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, v0, Lcom/android/server/wm/qbh;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v0, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    invoke-virtual {v0, v9, v10, v9, v10}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    :goto_7
    return-object v0
.end method

.method private zta(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;)Landroid/view/animation/Animation;
    .locals 9

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    new-instance v4, Landroid/graphics/Rect;

    iget v5, p4, Landroid/graphics/Point;->x:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v6

    mul-int/lit8 v6, v6, 0x4

    div-int/lit8 v6, v6, 0x5

    sub-int/2addr v5, v6

    add-int/2addr v5, v2

    iget v6, p4, Landroid/graphics/Point;->y:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/2addr v6, v3

    iget v7, p4, Landroid/graphics/Point;->x:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v8

    mul-int/lit8 v8, v8, 0x4

    div-int/lit8 v8, v8, 0x5

    add-int/2addr v7, v8

    add-int/2addr v7, v2

    add-int/lit8 v7, v7, 0x1

    iget v2, p4, Landroid/graphics/Point;->y:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v2, v8

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v4, v5, v6, v7, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-boolean v2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createAppLaunchAnimationLocked(): iconPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ", sourceBound="

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", displayFrame="

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", appFrame="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", newSourceBound="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "OpLandscapeAppAnimationImprovement"

    invoke-static {p3, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p2, Lcom/android/server/wm/zta/zta;

    iget-object p3, p0, Lcom/android/server/wm/qbh;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p3}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result p3

    invoke-direct {p2, v4, p1, p3}, Lcom/android/server/wm/zta/zta;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    iget-object p1, p0, Lcom/android/server/wm/qbh;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 p3, 0x12c

    invoke-virtual {p2, p3, p4}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance p1, Landroid/view/animation/AnimationSet;

    const/4 p3, 0x0

    invoke-direct {p1, p3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {p1, p2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    iget-object p0, p0, Lcom/android/server/wm/qbh;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/animation/AnimationSet;->scaleCurrentDuration(F)V

    return-object p1
.end method

.method private zta(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;F)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/qbh;->BR:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/qbh;->mTmpFloats:[F

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object p2, p0, Lcom/android/server/wm/qbh;->mTmpFloats:[F

    const/4 v0, 0x2

    aget v0, p2, v0

    const/4 v1, 0x5

    aget p2, p2, v1

    iget-boolean v1, p0, Lcom/android/server/wm/qbh;->mForceDefaultOrientation:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/qbh;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p0, Lcom/android/server/wm/qbh;->mCurrentDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/qbh;->mCurrentDisplayRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr p2, v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/qbh;->BR:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/android/server/wm/qbh;->BR:Landroid/view/SurfaceControl;

    iget-object p2, p0, Lcom/android/server/wm/qbh;->mTmpFloats:[F

    const/4 v0, 0x0

    aget v4, p2, v0

    const/4 v0, 0x3

    aget v5, p2, v0

    const/4 v0, 0x1

    aget v6, p2, v0

    const/4 v0, 0x4

    aget v7, p2, v0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/server/wm/qbh;->BR:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_1
    return-void
.end method

.method private zta(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;FLandroid/graphics/Rect;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/qbh;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/qbh;->mTmpFloats:[F

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object p2, p0, Lcom/android/server/wm/qbh;->mTmpFloats:[F

    const/4 v0, 0x2

    aget v0, p2, v0

    const/4 v1, 0x5

    aget p2, p2, v1

    iget-boolean v1, p0, Lcom/android/server/wm/qbh;->mForceDefaultOrientation:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/qbh;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p0, Lcom/android/server/wm/qbh;->mCurrentDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/qbh;->mCurrentDisplayRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr p2, v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/qbh;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/android/server/wm/qbh;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object p2, p0, Lcom/android/server/wm/qbh;->mTmpFloats:[F

    const/4 v0, 0x0

    aget v4, p2, v0

    const/4 v0, 0x3

    aget v5, p2, v0

    const/4 v0, 0x1

    aget v6, p2, v0

    const/4 v0, 0x4

    aget v7, p2, v0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    iget-object p2, p0, Lcom/android/server/wm/qbh;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    if-eqz p4, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/qbh;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0, p4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    :cond_1
    return-void
.end method


# virtual methods
.method public dismiss(Landroid/view/SurfaceControl$Transaction;JFIIII)Z
    .locals 13

    move-object v10, p0

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    const-string v11, "OpLandscapeAppAnimationImprovement"

    if-eqz v0, :cond_0

    const-string v0, "Dismiss!"

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v10, Lcom/android/server/wm/qbh;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v12, 0x0

    if-eqz v0, :cond_5

    iget-object v0, v10, Lcom/android/server/wm/qbh;->BR:Landroid/view/SurfaceControl;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, v10, Lcom/android/server/wm/qbh;->mStarted:Z

    if-nez v0, :cond_2

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/wm/qbh;->startAnimation(Landroid/view/SurfaceControl$Transaction;JFIIZII)Z

    :cond_2
    iget-boolean v0, v10, Lcom/android/server/wm/qbh;->mStarted:Z

    if-nez v0, :cond_3

    return v12

    :cond_3
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_4

    const-string v0, "Setting mFinishAnimReady = true"

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, v10, Lcom/android/server/wm/qbh;->mFinishAnimReady:Z

    return v0

    :cond_5
    :goto_0
    return v12
.end method

.method public getEnterTransformation()Landroid/view/animation/Transformation;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/qbh;->mEnterTransformation:Landroid/view/animation/Transformation;

    return-object p0
.end method

.method public hasScreenshot()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/qbh;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/qbh;->BR:Landroid/view/SurfaceControl;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasSetRotation()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/qbh;->mHasSetRotation:Z

    return p0
.end method

.method public isAnimating()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wm/qbh;->hasAnimations()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/server/wm/qbh;->mFinishAnimReady:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isRotating()Z
    .locals 1

    iget v0, p0, Lcom/android/server/wm/qbh;->mCurRotation:I

    iget p0, p0, Lcom/android/server/wm/qbh;->mOriginalRotation:I

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public kill()V
    .locals 6

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpLandscapeAppAnimationImprovement"

    const-string v1, "Kill!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/qbh;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/qbh;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getWindowingLayer()Landroid/view/SurfaceControl;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/server/wm/qbh;->mEnterTransformation:Landroid/view/animation/Transformation;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    iput-object v1, p0, Lcom/android/server/wm/qbh;->mEnterTransformation:Landroid/view/animation/Transformation;

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/qbh;->mSurfaceControl:Landroid/view/SurfaceControl;

    const-string v2, ": DESTROY"

    const-string v3, "  FREEZE "

    const-string v4, "WindowManager"

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_SURFACE_ALLOC:Z

    if-eqz v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/qbh;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/qbh;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->remove()V

    iput-object v1, p0, Lcom/android/server/wm/qbh;->mSurfaceControl:Landroid/view/SurfaceControl;

    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/qbh;->BR:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_SURFACE_ALLOC:Z

    if-eqz v0, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/qbh;->BR:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/qbh;->BR:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->remove()V

    iput-object v1, p0, Lcom/android/server/wm/qbh;->BR:Landroid/view/SurfaceControl;

    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/qbh;->mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iput-object v1, p0, Lcom/android/server/wm/qbh;->mRotateExitAnimation:Landroid/view/animation/Animation;

    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/qbh;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iput-object v1, p0, Lcom/android/server/wm/qbh;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/qbh;->mPerf:Landroid/util/BoostFramework;

    if-eqz v0, :cond_a

    iget-boolean v1, p0, Lcom/android/server/wm/qbh;->mIsPerfLockAcquired:Z

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Landroid/util/BoostFramework;->perfLockRelease()I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/qbh;->mIsPerfLockAcquired:Z

    :cond_a
    return-void
.end method

.method public printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSurface="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/qbh;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSurfaceOverlay="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/qbh;->BR:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/qbh;->mWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/qbh;->mHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCurRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/qbh;->mCurRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mOriginalRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/qbh;->mOriginalRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mOriginalWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/qbh;->mOriginalWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mOriginalHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/qbh;->mOriginalHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/qbh;->mStarted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mAnimRunning="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/qbh;->mAnimRunning:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mFinishAnimReady="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/qbh;->mFinishAnimReady:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mFinishAnimStartTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/qbh;->mFinishAnimStartTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRotateExitAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/qbh;->mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/qbh;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mRotateEnterAnimation="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/qbh;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/qbh;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mExitTransformation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/qbh;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterTransformation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/qbh;->mEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSnapshotInitialMatrix="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/qbh;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    const-string v0, " mSnapshotFinalMatrix="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/qbh;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForceDefaultOrientation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/qbh;->mForceDefaultOrientation:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    iget-boolean v0, p0, Lcom/android/server/wm/qbh;->mForceDefaultOrientation:Z

    if-eqz v0, :cond_0

    const-string v0, " mOriginalDisplayRect="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/qbh;->mOriginalDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mCurrentDisplayRect="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/qbh;->mCurrentDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsAppTransitTo="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/qbh;->DR:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsAppLaunch="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/qbh;->ER:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsAppFinish="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/qbh;->FR:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsAppFinishWithHomeGesture="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/qbh;->JR:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsKeyguardLaunch="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/qbh;->GR:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsAppLaunchFromRecents="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/qbh;->HR:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mIsActivityHomeTypeRotation="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/wm/qbh;->IR:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Z)V

    return-void
.end method

.method public setRotation(Landroid/view/SurfaceControl$Transaction;IJFII)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/qbh;->setRotation(Landroid/view/SurfaceControl$Transaction;I)V

    const/4 p0, 0x0

    return p0
.end method

.method public setRotationTimeOut()V
    .locals 0

    return-void
.end method

.method public stepAnimationLocked(J)Z
    .locals 5

    invoke-direct {p0}, Lcom/android/server/wm/qbh;->hasAnimations()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/qbh;->mFinishAnimReady:Z

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/qbh;->mAnimRunning:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/qbh;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/qbh;->mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/qbh;->mAnimRunning:Z

    iget-object v1, p0, Lcom/android/server/wm/qbh;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x2

    div-long/2addr v1, v3

    add-long/2addr v1, p1

    iput-wide v1, p0, Lcom/android/server/wm/qbh;->mHalfwayPoint:J

    iget-object v1, p0, Lcom/android/server/wm/qbh;->mPerf:Landroid/util/BoostFramework;

    if-eqz v1, :cond_3

    iget-boolean v2, p0, Lcom/android/server/wm/qbh;->mIsPerfLockAcquired:Z

    if-nez v2, :cond_3

    const/16 v2, 0x1090

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;)I

    iput-boolean v0, p0, Lcom/android/server/wm/qbh;->mIsPerfLockAcquired:Z

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/qbh;->stepAnimation(J)Z

    move-result p0

    return p0
.end method

.method public updateSurfaces(Landroid/view/SurfaceControl$Transaction;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/qbh;->mStarted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/qbh;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/qbh;->mMoreRotateExit:Z

    if-nez v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/qbh;->BR:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/qbh;->mMoreRotateExit:Z

    if-nez v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/qbh;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/server/wm/qbh;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/qbh;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/wm/qbh;->zta(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;FLandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/qbh;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wm/qbh;->zta(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;F)V

    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 3

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    iget-boolean v0, p0, Lcom/android/server/wm/qbh;->mStarted:Z

    const-wide v1, 0x10800000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean p0, p0, Lcom/android/server/wm/qbh;->mAnimRunning:Z

    const-wide v0, 0x10800000002L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
