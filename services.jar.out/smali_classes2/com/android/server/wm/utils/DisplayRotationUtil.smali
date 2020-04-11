.class public Lcom/android/server/wm/utils/DisplayRotationUtil;
.super Ljava/lang/Object;
.source "DisplayRotationUtil.java"


# instance fields
.field private final mTmpMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/utils/DisplayRotationUtil;->mTmpMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method static getBoundIndexFromRotation(II)I
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-static {p1}, Lcom/android/server/wm/utils/DisplayRotationUtil;->getRotationToBoundsOffset(I)I

    move-result v0

    add-int/2addr v0, p0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->floorMod(II)I

    move-result v0

    return v0
.end method

.method private static getRotationToBoundsOffset(I)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    const/4 v2, 0x3

    if-eq p0, v2, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    return v2

    :cond_2
    const/4 v0, -0x1

    return v0

    :cond_3
    return v0
.end method


# virtual methods
.method public getRotatedBounds([Landroid/graphics/Rect;III)[Landroid/graphics/Rect;
    .locals 5

    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/utils/DisplayRotationUtil;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-static {p2, p3, p4, v0}, Lcom/android/server/wm/utils/CoordinateTransforms;->transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V

    new-array v0, v1, [Landroid/graphics/Rect;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    aget-object v2, p1, v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/server/wm/utils/DisplayRotationUtil;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v3, v2}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    :cond_1
    invoke-static {v1, p2}, Lcom/android/server/wm/utils/DisplayRotationUtil;->getBoundIndexFromRotation(II)I

    move-result v3

    aput-object v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bounds must have exactly 4 elements: bounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
