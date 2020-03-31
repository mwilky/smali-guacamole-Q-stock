.class public Lcom/android/systemui/statusbar/notification/ImageGradientColorizer;
.super Ljava/lang/Object;
.source "ImageGradientColorizer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorize(Landroid/graphics/drawable/Drawable;IZ)Landroid/graphics/Bitmap;
    .locals 24

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int v3, v0, v2

    const/4 v4, 0x2

    div-int/2addr v3, v4

    sub-int v5, v1, v2

    div-int/2addr v5, v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    neg-int v7, v3

    neg-int v8, v5

    sub-int/2addr v0, v3

    sub-int/2addr v1, v5

    invoke-virtual {v6, v7, v8, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    int-to-float v3, v3

    const/high16 v8, 0x437f0000    # 255.0f

    div-float v9, v3, v8

    int-to-float v5, v5

    div-float v10, v5, v8

    int-to-float v7, v7

    div-float v11, v7, v8

    const v12, 0x3e59b3d0    # 0.2126f

    mul-float/2addr v9, v12

    const v13, 0x3f371759    # 0.7152f

    mul-float/2addr v10, v13

    add-float/2addr v9, v10

    const v10, 0x3d93dd98    # 0.0722f

    mul-float/2addr v11, v10

    add-float/2addr v9, v11

    mul-float/2addr v9, v8

    new-instance v8, Landroid/graphics/ColorMatrix;

    const/16 v11, 0x14

    new-array v11, v11, [F

    const/4 v14, 0x0

    aput v12, v11, v14

    const/4 v15, 0x1

    aput v13, v11, v15

    aput v10, v11, v4

    const/4 v4, 0x3

    const/4 v14, 0x0

    aput v14, v11, v4

    sub-float/2addr v3, v9

    const/16 v16, 0x4

    aput v3, v11, v16

    const/4 v3, 0x5

    aput v12, v11, v3

    const/4 v3, 0x6

    aput v13, v11, v3

    const/4 v3, 0x7

    aput v10, v11, v3

    const/16 v3, 0x8

    aput v14, v11, v3

    sub-float/2addr v5, v9

    const/16 v3, 0x9

    aput v5, v11, v3

    const/16 v3, 0xa

    aput v12, v11, v3

    const/16 v3, 0xb

    aput v13, v11, v3

    const/16 v3, 0xc

    aput v10, v11, v3

    const/16 v3, 0xd

    aput v14, v11, v3

    sub-float/2addr v7, v9

    const/16 v3, 0xe

    aput v7, v11, v3

    const/16 v3, 0xf

    aput v14, v11, v3

    const/16 v3, 0x10

    aput v14, v11, v3

    const/16 v3, 0x11

    aput v14, v11, v3

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v5, 0x12

    aput v3, v11, v5

    const/16 v5, 0x13

    aput v14, v11, v5

    invoke-direct {v8, v11}, Landroid/graphics/ColorMatrix;-><init>([F)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v15}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v7, Landroid/graphics/LinearGradient;

    int-to-float v9, v2

    new-array v10, v4, [I

    const/4 v11, 0x0

    aput v11, v10, v11

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-static {v11, v3, v3, v3}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v12

    aput v12, v10, v15

    const/high16 v12, -0x1000000

    const/4 v13, 0x2

    aput v12, v10, v13

    new-array v13, v4, [F

    fill-array-data v13, :array_0

    sget-object v23, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, v7

    move/from16 v19, v9

    move-object/from16 v21, v10

    move-object/from16 v22, v13

    invoke-direct/range {v16 .. v23}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz p3, :cond_0

    invoke-virtual {v7, v9, v14}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v7, v6, v3}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_0
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v7, v5}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v15}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v10, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v10, v8}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/16 v8, 0x7f

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v1, v2, v14, v14, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v6, Landroid/graphics/LinearGradient;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    new-array v8, v4, [I

    const/4 v10, 0x0

    aput v10, v8, v10

    invoke-static {v11, v3, v3, v3}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v3

    aput v3, v8, v15

    const/4 v3, 0x2

    aput v12, v8, v3

    new-array v3, v4, [F

    fill-array-data v3, :array_1

    sget-object v23, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v16, v6

    move/from16 v19, v9

    move-object/from16 v21, v8

    move-object/from16 v22, v3

    invoke-direct/range {v16 .. v23}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {v7, v5}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v14, v14, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method
