.class public Lcom/android/server/wm/qeg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/wm/IOpScreenRotationImprovement;


# static fields
.field private static final SCREEN_FREEZE_LAYER_BASE:I = 0x1eab90

.field private static final SCREEN_FREEZE_LAYER_CUSTOM:I = 0x1eab93

.field private static final SCREEN_FREEZE_LAYER_ENTER:I = 0x1eab90

.field private static final SCREEN_FREEZE_LAYER_EXIT:I = 0x1eab92

.field private static final SCREEN_FREEZE_LAYER_SCREENSHOT:I = 0x1eab91

.field private static final TAG:Ljava/lang/String; = "OpScreenRotationImprovement"

.field private static final YU:I = 0x1

.field private static final ZU:I = 0x2

.field private static final _U:I = 0x3

.field private static final aV:I = 0x4


# instance fields
.field private UU:I

.field private VU:I

.field private WU:Landroid/graphics/Color;

.field private XU:I

.field private mContext:Landroid/content/Context;

.field private mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mForceDefaultOrientation:Z

.field private mHeight:I

.field private mOriginalDisplayRect:Landroid/graphics/Rect;

.field private mOriginalHeight:I

.field private mOriginalRotation:I

.field private mOriginalWidth:I

.field private mService:Lcom/android/server/wm/WindowManagerService;

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/qeg;->mOriginalDisplayRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/qeg;->UU:I

    iput v0, p0, Lcom/android/server/wm/qeg;->VU:I

    new-instance v0, Landroid/graphics/Color;

    invoke-direct {v0}, Landroid/graphics/Color;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/qeg;->WU:Landroid/graphics/Color;

    iput-object p1, p0, Lcom/android/server/wm/qeg;->mContext:Landroid/content/Context;

    return-void
.end method

.method private sis(F)Landroid/graphics/Color;
    .locals 5

    iget v0, p0, Lcom/android/server/wm/qeg;->UU:I

    invoke-static {v0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v0

    iget p0, p0, Lcom/android/server/wm/qeg;->VU:I

    invoke-static {p0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p0

    invoke-virtual {v0}, Landroid/graphics/Color;->red()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/graphics/Color;->red()F

    move-result v3

    mul-float/2addr v3, p1

    add-float/2addr v1, v3

    invoke-virtual {v0}, Landroid/graphics/Color;->green()F

    move-result v3

    mul-float/2addr v3, v2

    invoke-virtual {p0}, Landroid/graphics/Color;->green()F

    move-result v4

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    invoke-virtual {v0}, Landroid/graphics/Color;->blue()F

    move-result v0

    mul-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/graphics/Color;->blue()F

    move-result p0

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    invoke-static {v1, v3, v0}, Landroid/graphics/Color;->valueOf(FFF)Landroid/graphics/Color;

    move-result-object p0

    return-object p0
.end method

.method private zta(Landroid/graphics/Bitmap;II)I
    .locals 10

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/lit8 v2, p2, 0x2

    sub-int v3, v0, v2

    sub-int v2, v1, v2

    const/4 v4, 0x0

    if-ltz v3, :cond_9

    if-gez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v4

    :goto_0
    const/4 v7, 0x1

    if-ge v6, v3, :cond_3

    const/4 v8, 0x2

    if-eq p3, v8, :cond_1

    add-int v8, v6, p2

    add-int/lit8 v9, p2, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v8, 0x4

    if-eq p3, v8, :cond_2

    add-int v8, v6, p2

    add-int/lit8 v7, v1, -0x1

    sub-int/2addr v7, p2

    invoke-virtual {p1, v8, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move v1, v7

    :goto_1
    add-int/lit8 v3, v2, -0x1

    if-ge v1, v3, :cond_6

    if-eq p3, v7, :cond_4

    add-int/lit8 v3, p2, 0x0

    add-int v6, v1, p2

    invoke-virtual {p1, v3, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const/4 v3, 0x3

    if-eq p3, v3, :cond_5

    add-int/lit8 v3, v0, -0x1

    sub-int/2addr v3, p2

    add-int v6, v1, p2

    invoke-virtual {p1, v3, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    new-instance p1, Lcom/android/server/wm/vdw;

    invoke-direct {p1, p0}, Lcom/android/server/wm/vdw;-><init>(Lcom/android/server/wm/qeg;)V

    invoke-static {v5, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p0

    move p1, v7

    move p2, p1

    move p3, p2

    :goto_2
    if-ge p1, p0, :cond_9

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    add-int/2addr p2, v7

    if-le p2, p3, :cond_8

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    move v4, p3

    move p3, p2

    goto :goto_3

    :cond_7
    move p2, v7

    :cond_8
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_9
    :goto_4
    return v4
.end method

.method private zta(ILandroid/view/animation/Animation;Landroid/view/animation/Animation;II)V
    .locals 12

    move-object v0, p0

    move v1, p1

    move/from16 v8, p4

    move/from16 v9, p5

    if-eqz v1, :cond_4

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-le v8, v9, :cond_2

    sub-int v10, v8, v9

    if-ne v1, v3, :cond_1

    iget v4, v0, Lcom/android/server/wm/qeg;->mOriginalWidth:I

    iget v5, v0, Lcom/android/server/wm/qeg;->mOriginalHeight:I

    move-object v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move v6, v10

    move v7, v10

    invoke-virtual/range {v1 .. v7}, Landroid/view/animation/Animation;->initialize(IIIIII)V

    iget v3, v0, Lcom/android/server/wm/qeg;->mOriginalWidth:I

    iget v4, v0, Lcom/android/server/wm/qeg;->mOriginalHeight:I

    neg-int v5, v10

    move-object v0, p2

    move/from16 v1, p4

    move/from16 v2, p5

    goto :goto_1

    :cond_1
    if-ne v1, v2, :cond_5

    iget v4, v0, Lcom/android/server/wm/qeg;->mOriginalWidth:I

    iget v5, v0, Lcom/android/server/wm/qeg;->mOriginalHeight:I

    neg-int v11, v10

    move-object v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move v6, v11

    move v7, v11

    invoke-virtual/range {v1 .. v7}, Landroid/view/animation/Animation;->initialize(IIIIII)V

    iget v3, v0, Lcom/android/server/wm/qeg;->mOriginalWidth:I

    iget v4, v0, Lcom/android/server/wm/qeg;->mOriginalHeight:I

    move-object v0, p2

    move/from16 v1, p4

    move/from16 v2, p5

    move v5, v11

    move v6, v10

    goto :goto_1

    :cond_2
    sub-int v10, v9, v8

    if-ne v1, v3, :cond_3

    iget v4, v0, Lcom/android/server/wm/qeg;->mOriginalWidth:I

    iget v5, v0, Lcom/android/server/wm/qeg;->mOriginalHeight:I

    neg-int v11, v10

    move-object v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move v6, v11

    move v7, v11

    invoke-virtual/range {v1 .. v7}, Landroid/view/animation/Animation;->initialize(IIIIII)V

    iget v3, v0, Lcom/android/server/wm/qeg;->mOriginalWidth:I

    iget v4, v0, Lcom/android/server/wm/qeg;->mOriginalHeight:I

    :goto_0
    move-object v0, p2

    move/from16 v1, p4

    move/from16 v2, p5

    move v5, v10

    :goto_1
    invoke-virtual/range {v0 .. v6}, Landroid/view/animation/Animation;->initialize(IIIIII)V

    goto :goto_3

    :cond_3
    if-ne v1, v2, :cond_5

    iget v4, v0, Lcom/android/server/wm/qeg;->mOriginalWidth:I

    iget v5, v0, Lcom/android/server/wm/qeg;->mOriginalHeight:I

    move-object v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move v6, v10

    move v7, v10

    invoke-virtual/range {v1 .. v7}, Landroid/view/animation/Animation;->initialize(IIIIII)V

    iget v3, v0, Lcom/android/server/wm/qeg;->mOriginalWidth:I

    iget v4, v0, Lcom/android/server/wm/qeg;->mOriginalHeight:I

    neg-int v6, v10

    goto :goto_0

    :cond_4
    :goto_2
    iget v1, v0, Lcom/android/server/wm/qeg;->mOriginalWidth:I

    iget v2, v0, Lcom/android/server/wm/qeg;->mOriginalHeight:I

    move-object v3, p3

    invoke-virtual {p3, v8, v9, v1, v2}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget v1, v0, Lcom/android/server/wm/qeg;->mOriginalWidth:I

    iget v0, v0, Lcom/android/server/wm/qeg;->mOriginalHeight:I

    move-object v2, p2

    invoke-virtual {p2, v8, v9, v1, v0}, Landroid/view/animation/Animation;->initialize(IIII)V

    :cond_5
    :goto_3
    return-void
.end method


# virtual methods
.method public init(Lcom/android/server/wm/DisplayContent;ZZLcom/android/server/wm/WindowManagerService;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;)V
    .locals 2

    sget-boolean p3, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    const-string v0, "OpScreenRotationImprovement"

    if-eqz p3, :cond_0

    const-string p3, "init OpScreenRotationImprovement"

    invoke-static {v0, p3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p4, p0, Lcom/android/server/wm/qeg;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p5, p0, Lcom/android/server/wm/qeg;->mSurfaceControl:Landroid/view/SurfaceControl;

    iput-object p1, p0, Lcom/android/server/wm/qeg;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p3, p0, Lcom/android/server/wm/qeg;->mOriginalDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p3}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    const/4 p3, 0x0

    iput p3, p0, Lcom/android/server/wm/qeg;->XU:I

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/Display;->getRotation()I

    move-result p4

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p5

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    iput-boolean v1, p0, Lcom/android/server/wm/qeg;->mForceDefaultOrientation:Z

    iget p2, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget p1, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_0

    :cond_1
    iget p2, p5, Landroid/view/DisplayInfo;->logicalWidth:I

    iget p1, p5, Landroid/view/DisplayInfo;->logicalHeight:I

    :goto_0
    const/4 p5, 0x3

    if-eq p4, v1, :cond_3

    if-ne p4, p5, :cond_2

    goto :goto_1

    :cond_2
    iput p2, p0, Lcom/android/server/wm/qeg;->mWidth:I

    iput p1, p0, Lcom/android/server/wm/qeg;->mHeight:I

    goto :goto_2

    :cond_3
    :goto_1
    iput p1, p0, Lcom/android/server/wm/qeg;->mWidth:I

    iput p2, p0, Lcom/android/server/wm/qeg;->mHeight:I

    :goto_2
    iput p4, p0, Lcom/android/server/wm/qeg;->mOriginalRotation:I

    iput p2, p0, Lcom/android/server/wm/qeg;->mOriginalWidth:I

    iput p1, p0, Lcom/android/server/wm/qeg;->mOriginalHeight:I

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p6}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object p2

    invoke-virtual {p6}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p6

    invoke-static {p2, p6}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    const-string p6, "init(): taking screenshot to Bitmap failed:"

    invoke-static {v0, p6, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    if-eqz p1, :cond_6

    sget-object p2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_6

    if-ne p4, v1, :cond_4

    move p3, p5

    goto :goto_4

    :cond_4
    if-ne p4, p5, :cond_5

    move p3, v1

    :cond_5
    :goto_4
    const/16 p2, 0x28

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/qeg;->zta(Landroid/graphics/Bitmap;II)I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/qeg;->UU:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    return-void
.end method

.method public initBlackFrame(Landroid/view/SurfaceControl$Transaction;ZIIZ)Lcom/android/server/wm/BlackFrame;
    .locals 8

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    if-nez p2, :cond_0

    new-instance v3, Landroid/graphics/Rect;

    neg-int p2, p3

    const/4 p5, 0x2

    mul-int/2addr p2, p5

    neg-int v0, p4

    mul-int/2addr v0, p5

    mul-int/lit8 v1, p3, 0x3

    mul-int/lit8 v2, p4, 0x3

    invoke-direct {v3, p2, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 p2, 0x0

    invoke-direct {v4, p2, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p3, Lcom/android/server/wm/BlackFrame;

    const v5, 0x1eab90

    iget-object v6, p0, Lcom/android/server/wm/qeg;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v7, 0x0

    move-object v1, p3

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/BlackFrame;-><init>(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;ILcom/android/server/wm/DisplayContent;Z)V

    iget p0, p0, Lcom/android/server/wm/qeg;->UU:I

    invoke-static {p0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p0

    const/4 p4, 0x3

    new-array p4, p4, [F

    invoke-virtual {p0}, Landroid/graphics/Color;->red()F

    move-result v0

    aput v0, p4, p2

    const/4 p2, 0x1

    invoke-virtual {p0}, Landroid/graphics/Color;->green()F

    move-result v0

    aput v0, p4, p2

    invoke-virtual {p0}, Landroid/graphics/Color;->blue()F

    move-result p0

    aput p0, p4, p5

    invoke-virtual {p3, p1, p4}, Lcom/android/server/wm/BlackFrame;->setColor(Landroid/view/SurfaceControl$Transaction;[F)V

    const/4 p0, 0x0

    invoke-virtual {p3, p1, p0}, Lcom/android/server/wm/BlackFrame;->setAlpha(Landroid/view/SurfaceControl$Transaction;F)V

    move-object v0, p3

    :cond_0
    return-object v0
.end method

.method public loadAnimation(IZII)Landroid/view/animation/Animation;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    move-object v1, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/qeg;->mContext:Landroid/content/Context;

    const v1, 0x501001b

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/qeg;->mContext:Landroid/content/Context;

    const v2, 0x501001a

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/qeg;->mContext:Landroid/content/Context;

    const v1, 0x501001d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/qeg;->mContext:Landroid/content/Context;

    const v2, 0x501001c

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/qeg;->mContext:Landroid/content/Context;

    const v1, 0x501001f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/qeg;->mContext:Landroid/content/Context;

    const v2, 0x501001e

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/qeg;->mContext:Landroid/content/Context;

    const v1, 0x10a0112

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/qeg;->mContext:Landroid/content/Context;

    const v2, 0x10a0111

    :goto_0
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    :goto_1
    move-object v2, p0

    move v3, p1

    move-object v4, v0

    move-object v5, v1

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/qeg;->zta(ILandroid/view/animation/Animation;Landroid/view/animation/Animation;II)V

    if-eqz p2, :cond_4

    return-object v1

    :cond_4
    return-object v0
.end method

.method public stepAnimation(JILandroid/view/animation/Animation;)V
    .locals 3

    invoke-static {p4, p1, p2}, Landroid/view/animation/OpAnimation;->getInterpolatedTime(Landroid/view/animation/Animation;J)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/server/wm/qeg;->sis(F)Landroid/graphics/Color;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/qeg;->WU:Landroid/graphics/Color;

    iget p1, p0, Lcom/android/server/wm/qeg;->XU:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/wm/qeg;->XU:I

    iget p1, p0, Lcom/android/server/wm/qeg;->XU:I

    if-ne p1, p2, :cond_6

    iget p1, p0, Lcom/android/server/wm/qeg;->mOriginalRotation:I

    invoke-static {p3, p1}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result p1

    if-eqz p1, :cond_4

    const/4 p3, 0x2

    if-ne p1, p3, :cond_0

    goto :goto_3

    :cond_0
    iget p1, p0, Lcom/android/server/wm/qeg;->mOriginalRotation:I

    const/4 p4, 0x3

    const/high16 v0, 0x3e800000    # 0.25f

    const/4 v1, 0x0

    if-eq p1, p4, :cond_2

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/qeg;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getWindowingLayer()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->getHandle()Landroid/os/IBinder;

    move-result-object p1

    new-instance p2, Landroid/graphics/Rect;

    iget p4, p0, Lcom/android/server/wm/qeg;->mHeight:I

    iget v2, p0, Lcom/android/server/wm/qeg;->mWidth:I

    invoke-direct {p2, v1, v1, p4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/server/wm/qeg;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getWindowingLayer()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->getHandle()Landroid/os/IBinder;

    move-result-object p1

    new-instance p2, Landroid/graphics/Rect;

    iget p4, p0, Lcom/android/server/wm/qeg;->mWidth:I

    iget v2, p0, Lcom/android/server/wm/qeg;->mHeight:I

    invoke-direct {p2, v1, v1, p4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_1
    invoke-static {p1, p2, v0}, Landroid/view/SurfaceControl;->captureLayers(Landroid/os/IBinder;Landroid/graphics/Rect;F)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object p2

    invoke-static {p2}, Landroid/hardware/HardwareBuffer;->createFromGraphicBuffer(Landroid/graphics/GraphicBuffer;)Landroid/hardware/HardwareBuffer;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_5

    sget-object p2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_5

    iget p2, p0, Lcom/android/server/wm/qeg;->mOriginalRotation:I

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    move p3, v1

    :goto_2
    const/16 p2, 0x28

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/qeg;->zta(Landroid/graphics/Bitmap;II)I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/qeg;->VU:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_4

    :cond_4
    :goto_3
    iget p1, p0, Lcom/android/server/wm/qeg;->UU:I

    iput p1, p0, Lcom/android/server/wm/qeg;->VU:I

    :cond_5
    :goto_4
    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ScreenShot Popular Color="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/wm/qeg;->UU:I

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", Windowing Layer Popular Color="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/qeg;->VU:I

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpScreenRotationImprovement"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method public updateEnteringBlackFrame(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/BlackFrame;)Lcom/android/server/wm/BlackFrame;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/android/server/wm/qeg;->WU:Landroid/graphics/Color;

    invoke-virtual {v1}, Landroid/graphics/Color;->red()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Lcom/android/server/wm/qeg;->WU:Landroid/graphics/Color;

    invoke-virtual {v1}, Landroid/graphics/Color;->green()F

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object p0, p0, Lcom/android/server/wm/qeg;->WU:Landroid/graphics/Color;

    invoke-virtual {p0}, Landroid/graphics/Color;->blue()F

    move-result p0

    const/4 v1, 0x2

    aput p0, v0, v1

    invoke-virtual {p2, p1, v0}, Lcom/android/server/wm/BlackFrame;->setColor(Landroid/view/SurfaceControl$Transaction;[F)V

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {p2, p1, p0}, Lcom/android/server/wm/BlackFrame;->setAlpha(Landroid/view/SurfaceControl$Transaction;F)V

    return-object p2
.end method
