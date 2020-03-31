.class public Lcom/oneplus/phone/OpSideGestureNavView;
.super Landroid/view/View;
.source "OpSideGestureNavView.java"


# static fields
.field public static final BEZIER_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final ICON_ENTER_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final ICON_EXIT_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mAppIcon:Landroid/graphics/Bitmap;

.field private mAppIconAnimListener:Landroid/animation/AnimatorListenerAdapter;

.field private mAppIconAnimator:Landroid/animation/ObjectAnimator;

.field private mAppIconMatrix:Landroid/graphics/Matrix;

.field private mAppIconProcessing:Z

.field private mAppIconProperty:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/oneplus/phone/OpSideGestureNavView;",
            ">;"
        }
    .end annotation
.end field

.field private mAppIconScale:F

.field private mBackIcon:Landroid/graphics/Bitmap;

.field private mBackIconAnimListener:Landroid/animation/AnimatorListenerAdapter;

.field private mBackIconAnimator:Landroid/animation/ObjectAnimator;

.field private mBackIconMatrix:Landroid/graphics/Matrix;

.field private mBackIconProcessing:Z

.field private mBackIconProperty:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/oneplus/phone/OpSideGestureNavView;",
            ">;"
        }
    .end annotation
.end field

.field private mBackIconScale:F

.field private mBezierControlOffset1:I

.field private mBezierControlOffset2:I

.field private mBezierControlPoint1:Landroid/graphics/PointF;

.field private mBezierControlPoint2:Landroid/graphics/PointF;

.field private mBezierControlPoint3:Landroid/graphics/PointF;

.field private mBezierControlPoint4:Landroid/graphics/PointF;

.field private mBezierPaint:Landroid/graphics/Paint;

.field private mCurrentPoint:Landroid/graphics/PointF;

.field private mEndPoint:Landroid/graphics/PointF;

.field private mEnterAnimListener:Landroid/animation/AnimatorListenerAdapter;

.field private mEnterAnimProcessing:Z

.field private mEnterAnimator:Landroid/animation/ObjectAnimator;

.field private mEnterProperty:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty<",
            "Lcom/oneplus/phone/OpSideGestureNavView;",
            ">;"
        }
    .end annotation
.end field

.field private mExitAnimListener:Landroid/animation/AnimatorListenerAdapter;

.field private mExitAnimProcessing:Z

.field private mExitAnimator:Landroid/animation/ObjectAnimator;

.field private mExitProperty:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty<",
            "Lcom/oneplus/phone/OpSideGestureNavView;",
            ">;"
        }
    .end annotation
.end field

.field private mFinished:Z

.field private mGestureState:I

.field private mHasDownEvent:Z

.field private mIconPaint:Landroid/graphics/Paint;

.field private mInTouchArea:Z

.field private mLastGestureState:I

.field private mPosition:I

.field private mRotation:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mStartPoint:Landroid/graphics/PointF;

.field private mTargetPoint:Landroid/graphics/PointF;

.field private mViewOffsetX:I

.field private mViewOffsetY:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e4ccccd    # 0.2f

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v3, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oneplus/phone/OpSideGestureNavView;->BEZIER_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v3, v3, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oneplus/phone/OpSideGestureNavView;->ICON_ENTER_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3eb33333    # 0.35f

    const v2, 0x3ed1eb85    # 0.41f

    const v3, 0x3e75c28f    # 0.24f

    const v4, 0x3f8e147b    # 1.11f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oneplus/phone/OpSideGestureNavView;->ICON_EXIT_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 9

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mEnterAnimProcessing:Z

    iput-boolean v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mExitAnimProcessing:Z

    iput-boolean v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBackIconProcessing:Z

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBackIconMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBackIconScale:F

    iput-boolean v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mAppIconProcessing:Z

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mAppIconMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mAppIconScale:F

    const/4 v1, -0x1

    iput v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mLastGestureState:I

    iput v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mGestureState:I

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mTargetPoint:Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mStartPoint:Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mEndPoint:Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBezierControlPoint1:Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBezierControlPoint2:Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBezierControlPoint3:Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBezierControlPoint4:Landroid/graphics/PointF;

    invoke-static {}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getBezierControlOffset1()I

    move-result v1

    iput v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBezierControlOffset1:I

    invoke-static {}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getBezierControlOffsetSwitch2()I

    move-result v1

    iput v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBezierControlOffset2:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mFinished:Z

    iput-boolean v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mHasDownEvent:Z

    iput-boolean v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mInTouchArea:Z

    new-instance v1, Lcom/oneplus/phone/OpSideGestureNavView$1;

    const-string v2, "EnterAnimation"

    invoke-direct {v1, p0, v2}, Lcom/oneplus/phone/OpSideGestureNavView$1;-><init>(Lcom/oneplus/phone/OpSideGestureNavView;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mEnterProperty:Landroid/util/IntProperty;

    new-instance v1, Lcom/oneplus/phone/OpSideGestureNavView$2;

    invoke-direct {v1, p0}, Lcom/oneplus/phone/OpSideGestureNavView$2;-><init>(Lcom/oneplus/phone/OpSideGestureNavView;)V

    iput-object v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mEnterAnimListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v1, Lcom/oneplus/phone/OpSideGestureNavView$3;

    const-string v2, "ExitAnimation"

    invoke-direct {v1, p0, v2}, Lcom/oneplus/phone/OpSideGestureNavView$3;-><init>(Lcom/oneplus/phone/OpSideGestureNavView;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mExitProperty:Landroid/util/IntProperty;

    new-instance v1, Lcom/oneplus/phone/OpSideGestureNavView$4;

    invoke-direct {v1, p0}, Lcom/oneplus/phone/OpSideGestureNavView$4;-><init>(Lcom/oneplus/phone/OpSideGestureNavView;)V

    iput-object v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mExitAnimListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v1, Lcom/oneplus/phone/OpSideGestureNavView$5;

    const-string v2, "BackIconAnimation"

    invoke-direct {v1, p0, v2}, Lcom/oneplus/phone/OpSideGestureNavView$5;-><init>(Lcom/oneplus/phone/OpSideGestureNavView;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBackIconProperty:Landroid/util/FloatProperty;

    new-instance v1, Lcom/oneplus/phone/OpSideGestureNavView$6;

    invoke-direct {v1, p0}, Lcom/oneplus/phone/OpSideGestureNavView$6;-><init>(Lcom/oneplus/phone/OpSideGestureNavView;)V

    iput-object v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBackIconAnimListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v1, Lcom/oneplus/phone/OpSideGestureNavView$7;

    const-string v2, "AppIconAnimation"

    invoke-direct {v1, p0, v2}, Lcom/oneplus/phone/OpSideGestureNavView$7;-><init>(Lcom/oneplus/phone/OpSideGestureNavView;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mAppIconProperty:Landroid/util/FloatProperty;

    new-instance v1, Lcom/oneplus/phone/OpSideGestureNavView$8;

    invoke-direct {v1, p0}, Lcom/oneplus/phone/OpSideGestureNavView$8;-><init>(Lcom/oneplus/phone/OpSideGestureNavView;)V

    iput-object v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mAppIconAnimListener:Landroid/animation/AnimatorListenerAdapter;

    iput p2, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mPosition:I

    invoke-direct {p0, p3}, Lcom/oneplus/phone/OpSideGestureNavView;->calculateOffset(I)V

    invoke-direct {p0}, Lcom/oneplus/phone/OpSideGestureNavView;->initPaint()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutDirection(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$drawable;->op_gesture_button_side_back:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v0, p3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    const/high16 p1, 0x43340000    # 180.0f

    invoke-virtual {v7, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBackIcon:Landroid/graphics/Bitmap;

    :cond_0
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/phone/OpSideGestureNavView;)Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/phone/OpSideGestureNavView;)Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mTargetPoint:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/oneplus/phone/OpSideGestureNavView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBackIconProcessing:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/oneplus/phone/OpSideGestureNavView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mAppIconProcessing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/oneplus/phone/OpSideGestureNavView;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/phone/OpSideGestureNavView;->updateView()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/phone/OpSideGestureNavView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mEnterAnimProcessing:Z

    return p0
.end method

.method static synthetic access$302(Lcom/oneplus/phone/OpSideGestureNavView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mEnterAnimProcessing:Z

    return p1
.end method

.method static synthetic access$400(Lcom/oneplus/phone/OpSideGestureNavView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mExitAnimProcessing:Z

    return p0
.end method

.method static synthetic access$402(Lcom/oneplus/phone/OpSideGestureNavView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mExitAnimProcessing:Z

    return p1
.end method

.method static synthetic access$500(Lcom/oneplus/phone/OpSideGestureNavView;)Landroid/animation/ObjectAnimator;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mExitAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oneplus/phone/OpSideGestureNavView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mFinished:Z

    return p0
.end method

.method static synthetic access$700(Lcom/oneplus/phone/OpSideGestureNavView;)Landroid/animation/ObjectAnimator;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mEnterAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$802(Lcom/oneplus/phone/OpSideGestureNavView;F)F
    .locals 0

    iput p1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBackIconScale:F

    return p1
.end method

.method static synthetic access$902(Lcom/oneplus/phone/OpSideGestureNavView;F)F
    .locals 0

    iput p1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mAppIconScale:F

    return p1
.end method

.method private addCurveToPoint(Landroid/graphics/Path;)V
    .locals 11

    iget-object v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBezierControlPoint1:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mViewOffsetX:I

    int-to-float v3, v2

    sub-float v5, v1, v3

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mViewOffsetY:I

    int-to-float v3, v1

    sub-float v6, v0, v3

    iget-object v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBezierControlPoint2:Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    int-to-float v4, v2

    sub-float v7, v3, v4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    int-to-float v3, v1

    sub-float v8, v0, v3

    iget-object v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    int-to-float v2, v2

    sub-float v9, v3, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    int-to-float v1, v1

    sub-float v10, v0, v1

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBezierControlPoint3:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mViewOffsetX:I

    int-to-float v3, v2

    sub-float v5, v1, v3

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mViewOffsetY:I

    int-to-float v3, v1

    sub-float v6, v0, v3

    iget-object v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBezierControlPoint4:Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    int-to-float v4, v2

    sub-float v7, v3, v4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    int-to-float v3, v1

    sub-float v8, v0, v3

    iget-object p0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mEndPoint:Landroid/graphics/PointF;

    iget v0, p0, Landroid/graphics/PointF;->x:F

    int-to-float v2, v2

    sub-float v9, v0, v2

    iget p0, p0, Landroid/graphics/PointF;->y:F

    int-to-float v0, v1

    sub-float v10, p0, v0

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    return-void
.end method

.method private calculateControlPoint()V
    .locals 6

    iget v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mPosition:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mStartPoint:Landroid/graphics/PointF;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-static {}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getAnimRadius()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mEndPoint:Landroid/graphics/PointF;

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-static {}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getAnimRadius()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBezierControlPoint1:Landroid/graphics/PointF;

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-static {}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getAnimRadius()I

    move-result v3

    iget v4, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBezierControlOffset1:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBezierControlPoint2:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iput v3, v0, Landroid/graphics/PointF;->x:F

    iget v3, v2, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBezierControlOffset2:I

    int-to-float v5, v4

    sub-float/2addr v3, v5

    iput v3, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBezierControlPoint3:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iput v3, v0, Landroid/graphics/PointF;->x:F

    iget v3, v2, Landroid/graphics/PointF;->y:F

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBezierControlPoint4:Landroid/graphics/PointF;

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget v1, v2, Landroid/graphics/PointF;->y:F

    invoke-static {}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getAnimRadius()I

    move-result v2

    iget p0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBezierControlOffset1:I

    sub-int/2addr v2, p0

    int-to-float p0, v2

    add-float/2addr v1, p0

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mStartPoint:Landroid/graphics/PointF;

    iget v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mScreenWidth:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getAnimRadius()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mEndPoint:Landroid/graphics/PointF;

    iget v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mScreenWidth:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getAnimRadius()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBezierControlPoint1:Landroid/graphics/PointF;

    iget v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mScreenWidth:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getAnimRadius()I

    move-result v2

    iget v3, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBezierControlOffset1:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBezierControlPoint2:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iput v2, v0, Landroid/graphics/PointF;->x:F

    iget v2, v1, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBezierControlOffset2:I

    int-to-float v4, v3

    sub-float/2addr v2, v4

    iput v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBezierControlPoint3:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iput v2, v0, Landroid/graphics/PointF;->x:F

    iget v2, v1, Landroid/graphics/PointF;->y:F

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBezierControlPoint4:Landroid/graphics/PointF;

    iget v2, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mScreenWidth:I

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getAnimRadius()I

    move-result v2

    iget p0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBezierControlOffset1:I

    sub-int/2addr v2, p0

    int-to-float p0, v2

    add-float/2addr v1, p0

    iput v1, v0, Landroid/graphics/PointF;->y:F

    :cond_1
    :goto_0
    return-void
.end method

.method private calculateMatrix()V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBackIconMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mAppIconMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mPosition:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-static {}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getAnimCancelDistance()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-static {}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getIconSize()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getIconSize()I

    move-result v2

    neg-int v2, v2

    invoke-static {}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getAnimCancelDistance()I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/oneplus/phone/OpSideGestureConfiguration;->boundToRange(III)I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBackIconMatrix:Landroid/graphics/Matrix;

    int-to-float v0, v0

    iget-object v3, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mViewOffsetY:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-static {}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getIconSize()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v2, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBackIconMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBackIconScale:F

    invoke-static {}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getIconSize()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-static {}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getIconSize()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    iget-object v2, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mAppIconMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mViewOffsetY:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-static {}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getIconSize()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mAppIconMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mAppIconScale:F

    invoke-static {}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getIconSize()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-static {}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getIconSize()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v2, v2, v3, v4}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    goto/16 :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mViewOffsetX:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-static {}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getAnimCancelDistance()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getWindowWidth()I

    move-result v2

    invoke-static {}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getAnimCancelDistance()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getIconSize()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getWindowWidth()I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/oneplus/phone/OpSideGestureConfiguration;->boundToRange(III)I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBackIconMatrix:Landroid/graphics/Matrix;

    int-to-float v0, v0

    iget-object v3, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mViewOffsetY:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-static {}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getIconSize()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v2, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBackIconMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBackIconScale:F

    invoke-static {}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getIconSize()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-static {}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getIconSize()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    iget-object v2, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mAppIconMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mViewOffsetY:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-static {}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getIconSize()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mAppIconMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mAppIconScale:F

    invoke-static {}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getIconSize()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-static {}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getIconSize()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v2, v2, v3, v4}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBackIconMatrix:Landroid/graphics/Matrix;

    const/high16 v0, 0x43340000    # 180.0f

    invoke-static {}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getIconSize()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getIconSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    :cond_2
    return-void
.end method

.method private calculateOffset(I)V
    .locals 2

    iget v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mPosition:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mViewOffsetX:I

    invoke-static {p1}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getScreenHeight(I)I

    move-result v0

    invoke-static {p1}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getWindowHeight(I)I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mViewOffsetY:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getScreenWidth(I)I

    move-result v0

    invoke-static {}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getWindowWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mViewOffsetX:I

    invoke-static {p1}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getScreenHeight(I)I

    move-result v0

    invoke-static {p1}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getWindowHeight(I)I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mViewOffsetY:I

    :cond_1
    :goto_0
    return-void
.end method

.method private calculateTargetPoint(Landroid/graphics/PointF;II)V
    .locals 3

    iget v0, p1, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    int-to-float v1, p3

    sget v2, Lcom/oneplus/phone/OpSideGestureConfiguration;->PORTRAIT_NON_DETECT_SCALE:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getAnimRadius()I

    move-result v2

    sub-int/2addr p3, v2

    invoke-static {v0, v1, p3}, Lcom/oneplus/phone/OpSideGestureConfiguration;->boundToRange(III)I

    move-result p3

    int-to-float p3, p3

    iput p3, p1, Landroid/graphics/PointF;->y:F

    iget p3, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mPosition:I

    const v0, 0x3ea56041    # 0.32299998f

    if-nez p3, :cond_0

    iget-object p2, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mTargetPoint:Landroid/graphics/PointF;

    iget p3, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr p3, v0

    float-to-int p3, p3

    const/4 v0, 0x0

    invoke-static {}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getAnimSwitchDistance()I

    move-result v1

    invoke-static {p3, v0, v1}, Lcom/oneplus/phone/OpSideGestureConfiguration;->boundToRange(III)I

    move-result p3

    int-to-float p3, p3

    iput p3, p2, Landroid/graphics/PointF;->x:F

    iget-object p0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mTargetPoint:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iput p1, p0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    iget-object p3, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mTargetPoint:Landroid/graphics/PointF;

    int-to-float v1, p2

    iget v2, p1, Landroid/graphics/PointF;->x:F

    sub-float v2, v1, v2

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    float-to-int v0, v1

    invoke-static {}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getAnimSwitchDistance()I

    move-result v1

    sub-int v1, p2, v1

    invoke-static {v0, v1, p2}, Lcom/oneplus/phone/OpSideGestureConfiguration;->boundToRange(III)I

    move-result p2

    int-to-float p2, p2

    iput p2, p3, Landroid/graphics/PointF;->x:F

    iget-object p0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mTargetPoint:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iput p1, p0, Landroid/graphics/PointF;->y:F

    :cond_1
    :goto_0
    return-void
.end method

.method private getBezierDrawingPath()Landroid/graphics/Path;
    .locals 4

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget-object v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mStartPoint:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mViewOffsetX:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mViewOffsetY:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-direct {p0, v0}, Lcom/oneplus/phone/OpSideGestureNavView;->addCurveToPoint(Landroid/graphics/Path;)V

    return-object v0
.end method

.method private initPaint()V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBezierPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBezierPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBezierPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBezierPaint:Landroid/graphics/Paint;

    const/16 v1, 0x85

    const/16 v2, 0x80

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBezierPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mIconPaint:Landroid/graphics/Paint;

    iget-object p0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private startAppIconAniamtion(ZJJ)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mAppIconAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mAppIconProperty:Landroid/util/FloatProperty;

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mAppIconAnimator:Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mAppIconAnimator:Landroid/animation/ObjectAnimator;

    sget-object v0, Lcom/oneplus/phone/OpSideGestureNavView;->ICON_ENTER_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mAppIconProperty:Landroid/util/FloatProperty;

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mAppIconAnimator:Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mAppIconAnimator:Landroid/animation/ObjectAnimator;

    sget-object v0, Lcom/oneplus/phone/OpSideGestureNavView;->ICON_EXIT_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_0
    iget-object p1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mAppIconAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mAppIconAnimListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mAppIconAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mAppIconAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p4, p5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object p0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mAppIconAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startBackIconAnimation(ZJJ)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBackIconAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBackIconProperty:Landroid/util/FloatProperty;

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBackIconAnimator:Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBackIconAnimator:Landroid/animation/ObjectAnimator;

    sget-object v0, Lcom/oneplus/phone/OpSideGestureNavView;->ICON_ENTER_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBackIconProperty:Landroid/util/FloatProperty;

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBackIconAnimator:Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBackIconAnimator:Landroid/animation/ObjectAnimator;

    sget-object v0, Lcom/oneplus/phone/OpSideGestureNavView;->ICON_EXIT_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_0
    iget-object p1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBackIconAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBackIconAnimListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBackIconAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBackIconAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p4, p5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object p0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBackIconAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startEnterAnimation(IIJ)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mEnterProperty:Landroid/util/IntProperty;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mEnterAnimator:Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mEnterAnimator:Landroid/animation/ObjectAnimator;

    sget-object p2, Lcom/oneplus/phone/OpSideGestureNavView;->BEZIER_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mEnterAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mEnterAnimator:Landroid/animation/ObjectAnimator;

    iget-object p2, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mEnterAnimListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mEnterAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private startExitAnimation(IIJ)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mExitProperty:Landroid/util/IntProperty;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mExitAnimator:Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mExitAnimator:Landroid/animation/ObjectAnimator;

    sget-object p2, Lcom/oneplus/phone/OpSideGestureNavView;->BEZIER_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mExitAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mExitAnimator:Landroid/animation/ObjectAnimator;

    iget-object p2, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mExitAnimListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mExitAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private updateView()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/phone/OpSideGestureNavView;->calculateControlPoint()V

    invoke-direct {p0}, Lcom/oneplus/phone/OpSideGestureNavView;->calculateMatrix()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public adjustRectToBoundingBox(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public handleTouch(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public synthetic lambda$onUpEvent$0$OpSideGestureNavView()V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mHasDownEvent:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onConfigChanged(I)V
    .locals 1

    iput p1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mRotation:I

    invoke-static {}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getBezierControlOffset1()I

    move-result v0

    iput v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBezierControlOffset1:I

    invoke-static {}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getBezierControlOffsetSwitch2()I

    move-result v0

    iput v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBezierControlOffset2:I

    invoke-direct {p0, p1}, Lcom/oneplus/phone/OpSideGestureNavView;->calculateOffset(I)V

    invoke-virtual {p0}, Lcom/oneplus/phone/OpSideGestureNavView;->resetState()V

    return-void
.end method

.method public onDownEvent()V
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/phone/OpSideGestureNavView;->resetState()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mHasDownEvent:Z

    iget v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mRotation:I

    invoke-direct {p0, v0}, Lcom/oneplus/phone/OpSideGestureNavView;->calculateOffset(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "opSideGestureNavView : onDownEvent mPosition : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mPosition:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpSideGesture"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lcom/oneplus/phone/OpSideGestureNavView;->getBezierDrawingPath()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBezierPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mGestureState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBackIconProcessing:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBackIcon:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBackIconMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_1
    iget v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mGestureState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mAppIconProcessing:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mAppIcon:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mAppIconMatrix:Landroid/graphics/Matrix;

    iget-object p0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method public onGestureFinished(Lcom/oneplus/phone/GesturePointContainer;)V
    .locals 3

    iget-boolean v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mHasDownEvent:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "opSideGestureNavView : onGestureFinished point : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oneplus/phone/GesturePointContainer;->getPoint()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpSideGesture"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mFinished:Z

    iget v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mPosition:I

    const-wide/16 v1, 0xc8

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    float-to-int p1, p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/oneplus/phone/OpSideGestureNavView;->startExitAnimation(IIJ)V

    goto :goto_0

    :cond_2
    if-ne v0, p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    float-to-int p1, p1

    iget v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mScreenWidth:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/oneplus/phone/OpSideGestureNavView;->startExitAnimation(IIJ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onUpEvent()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mHasDownEvent:Z

    iget-boolean v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mExitAnimProcessing:Z

    if-nez v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    new-instance v0, Lcom/oneplus/phone/-$$Lambda$OpSideGestureNavView$UfqrKaivq5LL_RVJ-4t8pIMuEL0;

    invoke-direct {v0, p0}, Lcom/oneplus/phone/-$$Lambda$OpSideGestureNavView$UfqrKaivq5LL_RVJ-4t8pIMuEL0;-><init>(Lcom/oneplus/phone/OpSideGestureNavView;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "opSideGestureNavView : onUpEvent mPosition : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mPosition:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpSideGesture"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onUpdateGestureView(Lcom/oneplus/phone/GesturePointContainer;)V
    .locals 8

    iget-boolean v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mHasDownEvent:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mFinished:Z

    invoke-virtual {p1}, Lcom/oneplus/phone/GesturePointContainer;->getRotation()I

    move-result v1

    iput v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mRotation:I

    iget v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mRotation:I

    invoke-static {v1}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getScreenHeight(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mScreenHeight:I

    iget v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mRotation:I

    invoke-static {v1}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getScreenWidth(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mScreenWidth:I

    iget v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mGestureState:I

    iput v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mLastGestureState:I

    invoke-virtual {p1}, Lcom/oneplus/phone/GesturePointContainer;->getState()I

    move-result v1

    iput v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mGestureState:I

    invoke-virtual {p1}, Lcom/oneplus/phone/GesturePointContainer;->getPoint()Landroid/graphics/PointF;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mScreenWidth:I

    iget v3, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mScreenHeight:I

    invoke-direct {p0, v1, v2, v3}, Lcom/oneplus/phone/OpSideGestureNavView;->calculateTargetPoint(Landroid/graphics/PointF;II)V

    iget v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mGestureState:I

    iget v2, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mLastGestureState:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v1, v2, :cond_1

    if-ne v1, v4, :cond_1

    invoke-virtual {p0, v3}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_1
    iget v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mLastGestureState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mGestureState:I

    if-ne v1, v2, :cond_3

    :cond_2
    iget v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mGestureState:I

    if-eq v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mEnterAnimProcessing:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mExitAnimProcessing:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mTargetPoint:Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    iput v6, v1, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iput v5, v1, Landroid/graphics/PointF;->y:F

    :cond_3
    iget v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mLastGestureState:I

    const-wide/16 v6, 0xc8

    if-eq v1, v2, :cond_5

    iget v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mGestureState:I

    if-ne v1, v2, :cond_5

    iget v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mPosition:I

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    invoke-direct {p0, v1, v0, v6, v7}, Lcom/oneplus/phone/OpSideGestureNavView;->startExitAnimation(IIJ)V

    goto :goto_0

    :cond_4
    if-ne v1, v3, :cond_6

    iget-object v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    float-to-int v0, v0

    iget v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mScreenWidth:I

    invoke-direct {p0, v0, v1, v6, v7}, Lcom/oneplus/phone/OpSideGestureNavView;->startExitAnimation(IIJ)V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mLastGestureState:I

    if-ne v0, v2, :cond_6

    iget v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mGestureState:I

    if-eq v0, v2, :cond_6

    iget-object v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    float-to-int v0, v0

    iget-object v1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mTargetPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    invoke-direct {p0, v0, v1, v6, v7}, Lcom/oneplus/phone/OpSideGestureNavView;->startEnterAnimation(IIJ)V

    :cond_6
    :goto_0
    iget v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mGestureState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mLastGestureState:I

    if-ne v0, v4, :cond_7

    const/4 v1, 0x0

    const-wide/16 v2, 0x14

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/phone/OpSideGestureNavView;->startBackIconAnimation(ZJJ)V

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/phone/OpSideGestureNavView;->startAppIconAniamtion(ZJJ)V

    goto :goto_1

    :cond_7
    iget v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mGestureState:I

    if-ne v0, v4, :cond_8

    iget v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mLastGestureState:I

    if-ne v0, v1, :cond_8

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/phone/OpSideGestureNavView;->startBackIconAnimation(ZJJ)V

    const/4 v1, 0x0

    const-wide/16 v2, 0x14

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/phone/OpSideGestureNavView;->startAppIconAniamtion(ZJJ)V

    :cond_8
    :goto_1
    iget-boolean v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mEnterAnimProcessing:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mExitAnimProcessing:Z

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/oneplus/phone/OpSideGestureNavView;->updateView()V

    :cond_9
    return-void
.end method

.method public resetState()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mFinished:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mLastGestureState:I

    iput v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mGestureState:I

    iget-boolean v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mEnterAnimProcessing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mEnterAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mExitAnimProcessing:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mExitAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBackIconProcessing:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mBackIconAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mAppIconProcessing:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mAppIconAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_3
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setIsDark(ZZ)V
    .locals 0

    return-void
.end method

.method public setIsLeftPanel(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/oneplus/phone/OpSideGestureNavView;->mPosition:I

    return-void
.end method

.method public shouldTriggerBack()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
