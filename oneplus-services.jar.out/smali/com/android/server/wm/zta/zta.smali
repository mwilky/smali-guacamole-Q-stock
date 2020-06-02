.class public Lcom/android/server/wm/zta/zta;
.super Landroid/view/animation/Animation;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/zta/zta$zta;
    }
.end annotation


# static fields
.field private static final Ib:F = 0.6f

.field public static final Jb:J = 0x12cL

.field private static final Kb:Landroid/view/animation/Interpolator;

.field private static final LINEAR:Landroid/view/animation/Interpolator;

.field private static final Lb:Landroid/view/animation/Interpolator;

.field private static final TAG:Ljava/lang/String; = "OpAppLaunchAnimation"


# instance fields
.field private final Ab:Landroid/graphics/Rect;

.field private Bb:Landroid/graphics/RectF;

.field private Cb:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/zta/zta$zta;",
            ">;"
        }
    .end annotation
.end field

.field private Db:Lcom/android/server/wm/zta/zta$zta;

.field private Eb:Lcom/android/server/wm/zta/zta$zta;

.field private Fb:Lcom/android/server/wm/zta/zta$zta;

.field private Gb:F

.field private Hb:F

.field private mDx:Lcom/android/server/wm/zta/zta$zta;

.field private mDy:Lcom/android/server/wm/zta/zta$zta;

.field private mNormalizedTime:F

.field private mScale:F

.field private final sb:F

.field private final tb:F

.field private final ub:J

.field private final vb:J

.field private final wb:J

.field private final xb:J

.field private final yb:J

.field private final zb:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/android/server/wm/zta/zta;->LINEAR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/server/wm/zta/zta;->Kb:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const v5, 0x3d4ccccd    # 0.05f

    const/4 v6, 0x0

    const v7, 0x3e088872

    const v8, 0x3da3d70a    # 0.08f

    const v9, 0x3e2aaa7e

    const v10, 0x3e4ccccd    # 0.2f

    move-object v4, v0

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const v5, 0x3e666666    # 0.225f

    const v6, 0x3ee147ae    # 0.44f

    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v0}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/graphics/Path;)V

    sput-object v1, Lcom/android/server/wm/zta/zta;->Lb:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V
    .locals 2

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/android/server/wm/zta/zta;->sb:F

    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/android/server/wm/zta/zta;->tb:F

    const-wide/16 v0, 0x96

    iput-wide v0, p0, Lcom/android/server/wm/zta/zta;->ub:J

    const-wide/16 v0, 0xf0

    iput-wide v0, p0, Lcom/android/server/wm/zta/zta;->vb:J

    const-wide/16 v0, 0x78

    iput-wide v0, p0, Lcom/android/server/wm/zta/zta;->wb:J

    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/android/server/wm/zta/zta;->xb:J

    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/android/server/wm/zta/zta;->yb:J

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/zta/zta;->Bb:Landroid/graphics/RectF;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/zta/zta;->Cb:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/wm/zta/zta;->zb:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/android/server/wm/zta/zta;->Ab:Landroid/graphics/Rect;

    invoke-direct {p0, p3}, Lcom/android/server/wm/zta/zta;->you(F)V

    return-void
.end method

.method private lqr(J)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/zta/zta;->Cb:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/zta/zta;->Cb:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/zta/zta$zta;

    long-to-float v2, p1

    iget v3, v1, Lcom/android/server/wm/zta/zta$zta;->mDelay:F

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v4, v1, Lcom/android/server/wm/zta/zta$zta;->mDuration:F

    cmpl-float v3, v4, v3

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v3, :cond_0

    div-float/2addr v2, v4

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    goto :goto_1

    :cond_0
    move v2, v5

    :goto_1
    iget-object v3, v1, Lcom/android/server/wm/zta/zta$zta;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    iget v3, v1, Lcom/android/server/wm/zta/zta$zta;->mEnd:F

    mul-float/2addr v3, v2

    iget v4, v1, Lcom/android/server/wm/zta/zta$zta;->mStart:F

    sub-float/2addr v5, v2

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v1, Lcom/android/server/wm/zta/zta$zta;->value:F

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/zta/zta;->sl()V

    return-void
.end method

.method private sl()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/zta/zta;->zb:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/server/wm/zta/zta;->Db:Lcom/android/server/wm/zta/zta$zta;

    iget v1, v1, Lcom/android/server/wm/zta/zta$zta;->value:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/wm/zta/zta;->zb:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/wm/zta/zta;->Db:Lcom/android/server/wm/zta/zta$zta;

    iget v2, v2, Lcom/android/server/wm/zta/zta$zta;->value:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/wm/zta/zta;->Fb:Lcom/android/server/wm/zta/zta$zta;

    iget v2, v2, Lcom/android/server/wm/zta/zta$zta;->value:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/server/wm/zta/zta;->Ab:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v2, v2

    div-float v4, v0, v2

    int-to-float v3, v3

    div-float v5, v1, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lcom/android/server/wm/zta/zta;->mScale:F

    iget v4, p0, Lcom/android/server/wm/zta/zta;->mScale:F

    mul-float/2addr v2, v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v2, v0

    sub-float/2addr v3, v1

    div-float/2addr v3, v0

    iget-object v0, p0, Lcom/android/server/wm/zta/zta;->Bb:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/server/wm/zta/zta;->zb:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/zta/zta;->Bb:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/server/wm/zta/zta;->mDx:Lcom/android/server/wm/zta/zta$zta;

    iget v1, v1, Lcom/android/server/wm/zta/zta$zta;->value:F

    iget-object v4, p0, Lcom/android/server/wm/zta/zta;->mDy:Lcom/android/server/wm/zta/zta$zta;

    iget v4, v4, Lcom/android/server/wm/zta/zta$zta;->value:F

    invoke-virtual {v0, v1, v4}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v0, p0, Lcom/android/server/wm/zta/zta;->Bb:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/server/wm/zta/zta;->Db:Lcom/android/server/wm/zta/zta$zta;

    iget v1, v1, Lcom/android/server/wm/zta/zta$zta;->value:F

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/zta/zta;->zta(Landroid/graphics/RectF;F)V

    iget-object v0, p0, Lcom/android/server/wm/zta/zta;->Bb:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/android/server/wm/zta/zta;->Gb:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/android/server/wm/zta/zta;->Hb:F

    return-void
.end method

.method private you(F)V
    .locals 16

    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/android/server/wm/zta/zta;->Ab:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, v7, Lcom/android/server/wm/zta/zta;->zb:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, v7, Lcom/android/server/wm/zta/zta;->Ab:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v7, Lcom/android/server/wm/zta/zta;->zb:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iget-object v0, v7, Lcom/android/server/wm/zta/zta;->Ab:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, v7, Lcom/android/server/wm/zta/zta;->Ab:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v7, Lcom/android/server/wm/zta/zta;->zb:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    sub-float v3, v0, v2

    iget-object v2, v7, Lcom/android/server/wm/zta/zta;->zb:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    sub-float v9, v1, v2

    iget-object v1, v7, Lcom/android/server/wm/zta/zta;->zb:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpl-float v0, v1, v0

    const-wide/16 v0, 0x12c

    const-wide/16 v10, 0x96

    const-wide/16 v12, 0x32

    const/high16 v14, 0x42b40000    # 90.0f

    new-instance v15, Lcom/android/server/wm/zta/zta$zta;

    const/4 v2, 0x0

    const/4 v4, 0x0

    long-to-float v0, v0

    mul-float v5, v0, p1

    sget-object v6, Lcom/android/server/wm/zta/zta;->Kb:Landroid/view/animation/Interpolator;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/zta/zta$zta;-><init>(Lcom/android/server/wm/zta/zta;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v15, v7, Lcom/android/server/wm/zta/zta;->mDx:Lcom/android/server/wm/zta/zta$zta;

    new-instance v15, Lcom/android/server/wm/zta/zta$zta;

    long-to-float v0, v10

    mul-float v5, v0, p1

    sget-object v6, Lcom/android/server/wm/zta/zta;->Kb:Landroid/view/animation/Interpolator;

    move-object v0, v15

    move v3, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/zta/zta$zta;-><init>(Lcom/android/server/wm/zta/zta;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v15, v7, Lcom/android/server/wm/zta/zta;->mDy:Lcom/android/server/wm/zta/zta$zta;

    new-instance v9, Lcom/android/server/wm/zta/zta$zta;

    const/high16 v0, 0x43960000    # 300.0f

    mul-float v5, p1, v0

    sget-object v6, Lcom/android/server/wm/zta/zta;->Lb:Landroid/view/animation/Interpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    move-object v0, v9

    move v3, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/zta/zta$zta;-><init>(Lcom/android/server/wm/zta/zta;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v9, v7, Lcom/android/server/wm/zta/zta;->Db:Lcom/android/server/wm/zta/zta$zta;

    new-instance v8, Lcom/android/server/wm/zta/zta$zta;

    const/4 v3, 0x0

    long-to-float v0, v12

    mul-float v5, v0, p1

    sget-object v6, Lcom/android/server/wm/zta/zta;->LINEAR:Landroid/view/animation/Interpolator;

    const/high16 v4, 0x42b40000    # 90.0f

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/zta/zta$zta;-><init>(Lcom/android/server/wm/zta/zta;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v8, v7, Lcom/android/server/wm/zta/zta;->Eb:Lcom/android/server/wm/zta/zta$zta;

    new-instance v8, Lcom/android/server/wm/zta/zta$zta;

    iget-object v0, v7, Lcom/android/server/wm/zta/zta;->Ab:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v2, v0

    iget-object v0, v7, Lcom/android/server/wm/zta/zta;->Ab:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v3, v0

    const/4 v4, 0x0

    mul-float v5, p1, v14

    sget-object v6, Lcom/android/server/wm/zta/zta;->Kb:Landroid/view/animation/Interpolator;

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/zta/zta$zta;-><init>(Lcom/android/server/wm/zta/zta;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v8, v7, Lcom/android/server/wm/zta/zta;->Fb:Lcom/android/server/wm/zta/zta$zta;

    iget-object v0, v7, Lcom/android/server/wm/zta/zta;->Cb:Ljava/util/ArrayList;

    iget-object v1, v7, Lcom/android/server/wm/zta/zta;->mDx:Lcom/android/server/wm/zta/zta$zta;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v7, Lcom/android/server/wm/zta/zta;->Cb:Ljava/util/ArrayList;

    iget-object v1, v7, Lcom/android/server/wm/zta/zta;->mDy:Lcom/android/server/wm/zta/zta$zta;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v7, Lcom/android/server/wm/zta/zta;->Cb:Ljava/util/ArrayList;

    iget-object v1, v7, Lcom/android/server/wm/zta/zta;->Db:Lcom/android/server/wm/zta/zta$zta;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v7, Lcom/android/server/wm/zta/zta;->Cb:Ljava/util/ArrayList;

    iget-object v1, v7, Lcom/android/server/wm/zta/zta;->Eb:Lcom/android/server/wm/zta/zta$zta;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v7, Lcom/android/server/wm/zta/zta;->Cb:Ljava/util/ArrayList;

    iget-object v1, v7, Lcom/android/server/wm/zta/zta;->Fb:Lcom/android/server/wm/zta/zta$zta;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private zta(Landroid/graphics/RectF;F)V
    .locals 3

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p2, p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    neg-float v1, p0

    neg-float v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    iget v1, p1, Landroid/graphics/RectF;->left:F

    mul-float/2addr v1, p2

    iput v1, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    mul-float/2addr v1, p2

    iput v1, p1, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    mul-float/2addr v1, p2

    iput v1, p1, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v1, p2

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, p0, v0}, Landroid/graphics/RectF;->offset(FF)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    iget v0, p0, Lcom/android/server/wm/zta/zta;->mScale:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    iget v0, p0, Lcom/android/server/wm/zta/zta;->Gb:F

    iget v1, p0, Lcom/android/server/wm/zta/zta;->Hb:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p1, p0, Lcom/android/server/wm/zta/zta;->Eb:Lcom/android/server/wm/zta/zta$zta;

    iget p1, p1, Lcom/android/server/wm/zta/zta$zta;->value:F

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    invoke-virtual {p2, p1}, Landroid/view/animation/Transformation;->setAlpha(F)V

    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "applyTransformation(): mScale="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/wm/zta/zta;->mScale:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", mTransX0="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/wm/zta/zta;->Gb:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", mTransY0="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/wm/zta/zta;->Hb:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", mAlpha="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/zta/zta;->Eb:Lcom/android/server/wm/zta/zta$zta;

    iget p2, p2, Lcom/android/server/wm/zta/zta$zta;->value:F

    sub-float/2addr v0, p2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", mNormalizedTime="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/wm/zta/zta;->mNormalizedTime:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", mFromRectDelta="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/zta/zta;->zb:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpAppLaunchAnimation"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;)Z
    .locals 6

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v4

    add-long/2addr v4, v0

    sub-long v4, p1, v4

    long-to-float v4, v4

    long-to-float v2, v2

    div-float/2addr v4, v2

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-gez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    move v4, v2

    :goto_1
    iput v4, p0, Lcom/android/server/wm/zta/zta;->mNormalizedTime:F

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v2

    add-long/2addr v2, v0

    sub-long v0, p1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/zta/zta;->lqr(J)V

    invoke-super {p0, p1, p2, p3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result p0

    return p0
.end method
