.class public Lcom/android/settings/wifi/qrcode/QrCamera;
.super Landroid/os/Handler;
.source "QrCamera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;,
        Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;
    }
.end annotation


# static fields
.field private static AUTOFOCUS_INTERVAL_MS:J = 0x0L

.field private static FORMATS:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static HINTS:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/util/List<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;>;"
        }
    .end annotation
.end field

.field private static MAX_RATIO_DIFF:D = 0.0

.field private static final MSG_AUTO_FOCUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "QrCamera"


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mCameraOrientation:I

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mDecodeTask:Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPreviewSize:Landroid/util/Size;

.field private mReader:Lcom/google/zxing/MultiFormatReader;

.field private mScannerCallback:Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-wide v0, 0x3fb999999999999aL    # 0.1

    sput-wide v0, Lcom/android/settings/wifi/qrcode/QrCamera;->MAX_RATIO_DIFF:D

    const-wide/16 v0, 0x5dc

    sput-wide v0, Lcom/android/settings/wifi/qrcode/QrCamera;->AUTOFOCUS_INTERVAL_MS:J

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/qrcode/QrCamera;->HINTS:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/qrcode/QrCamera;->FORMATS:Ljava/util/List;

    sget-object v0, Lcom/android/settings/wifi/qrcode/QrCamera;->FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/wifi/qrcode/QrCamera;->HINTS:Ljava/util/Map;

    sget-object v1, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    sget-object v2, Lcom/android/settings/wifi/qrcode/QrCamera;->FORMATS:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mContext:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mScannerCallback:Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;

    new-instance v0, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mReader:Lcom/google/zxing/MultiFormatReader;

    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mReader:Lcom/google/zxing/MultiFormatReader;

    sget-object v1, Lcom/android/settings/wifi/qrcode/QrCamera;->HINTS:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/qrcode/QrCamera;)Landroid/hardware/Camera;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/qrcode/QrCamera;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/qrcode/QrCamera;)Lcom/google/zxing/MultiFormatReader;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mReader:Lcom/google/zxing/MultiFormatReader;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/qrcode/QrCamera;)Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mScannerCallback:Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/wifi/qrcode/QrCamera;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mCameraOrientation:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/qrcode/QrCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/qrcode/QrCamera;->setCameraParameter()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/qrcode/QrCamera;Landroid/util/Size;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/qrcode/QrCamera;->setTransformationMatrix(Landroid/util/Size;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/qrcode/QrCamera;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/wifi/qrcode/QrCamera;->startPreview()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/qrcode/QrCamera;[B)Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/qrcode/QrCamera;->getFrameImage([B)Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;

    move-result-object v0

    return-object v0
.end method

.method private getBestPictureSize(Landroid/hardware/Camera$Parameters;)Landroid/util/Size;
    .locals 13

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v1, v1

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v3, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/settings/wifi/qrcode/QrCamera;->getRatio(DD)D

    move-result-wide v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    iget v7, v6, Landroid/hardware/Camera$Size;->width:I

    int-to-double v7, v7

    iget v9, v6, Landroid/hardware/Camera$Size;->height:I

    int-to-double v9, v9

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/android/settings/wifi/qrcode/QrCamera;->getRatio(DD)D

    move-result-wide v7

    cmpl-double v9, v7, v1

    if-nez v9, :cond_0

    new-instance v9, Landroid/util/Size;

    iget v10, v6, Landroid/hardware/Camera$Size;->width:I

    iget v11, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v9, v10, v11}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    sub-double v9, v7, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    sget-wide v11, Lcom/android/settings/wifi/qrcode/QrCamera;->MAX_RATIO_DIFF:D

    cmpg-double v9, v9, v11

    if-gez v9, :cond_1

    new-instance v9, Landroid/util/Size;

    iget v10, v6, Landroid/hardware/Camera$Size;->width:I

    iget v11, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v9, v10, v11}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "QrCamera"

    const-string v6, "No proper picture size, return default picture size"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    new-instance v6, Landroid/util/Size;

    iget v7, v5, Landroid/hardware/Camera$Size;->width:I

    iget v8, v5, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v6, v7, v8}, Landroid/util/Size;-><init>(II)V

    return-object v6

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_4

    move-object v3, v4

    :cond_4
    const v5, 0x7fffffff

    const/4 v6, 0x0

    iget v7, v0, Landroid/hardware/Camera$Size;->width:I

    iget v8, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v7, v8

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Size;

    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v10

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v11

    mul-int/2addr v10, v11

    sub-int/2addr v10, v7

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-ge v10, v5, :cond_5

    move v5, v10

    move-object v6, v9

    :cond_5
    goto :goto_2

    :cond_6
    return-object v6
.end method

.method private getBestPreviewSize(Landroid/hardware/Camera$Parameters;)Landroid/util/Size;
    .locals 18

    move-object/from16 v0, p0

    const-wide v1, 0x3fb999999999999aL    # 0.1

    iget-object v3, v0, Lcom/android/settings/wifi/qrcode/QrCamera;->mScannerCallback:Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;

    invoke-interface {v3}, Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;->getViewSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v6

    int-to-double v6, v6

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/android/settings/wifi/qrcode/QrCamera;->getRatio(DD)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    new-instance v8, Landroid/util/Size;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v9}, Landroid/util/Size;-><init>(II)V

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    iget v11, v10, Landroid/hardware/Camera$Size;->width:I

    int-to-double v11, v11

    iget v13, v10, Landroid/hardware/Camera$Size;->height:I

    int-to-double v13, v13

    invoke-direct {v0, v11, v12, v13, v14}, Lcom/android/settings/wifi/qrcode/QrCamera;->getRatio(DD)D

    move-result-wide v11

    iget v13, v10, Landroid/hardware/Camera$Size;->height:I

    iget v14, v10, Landroid/hardware/Camera$Size;->width:I

    mul-int/2addr v13, v14

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v14

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v15

    mul-int/2addr v14, v15

    if-le v13, v14, :cond_2

    sub-double v13, v6, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    div-double/2addr v13, v4

    const-wide v15, 0x3fb999999999999aL    # 0.1

    cmpl-double v13, v13, v15

    if-gtz v13, :cond_1

    sub-double v13, v11, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    div-double/2addr v13, v4

    cmpg-double v13, v13, v15

    if-gtz v13, :cond_0

    goto :goto_1

    :cond_0
    move-wide/from16 v16, v1

    goto :goto_2

    :cond_1
    :goto_1
    new-instance v13, Landroid/util/Size;

    iget v14, v10, Landroid/hardware/Camera$Size;->width:I

    iget v15, v10, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v13, v14, v15}, Landroid/util/Size;-><init>(II)V

    move-object v8, v13

    iget v13, v10, Landroid/hardware/Camera$Size;->width:I

    int-to-double v13, v13

    iget v15, v10, Landroid/hardware/Camera$Size;->height:I

    move-wide/from16 v16, v1

    int-to-double v1, v15

    invoke-direct {v0, v13, v14, v1, v2}, Lcom/android/settings/wifi/qrcode/QrCamera;->getRatio(DD)D

    move-result-wide v1

    move-wide v6, v1

    goto :goto_2

    :cond_2
    move-wide/from16 v16, v1

    :goto_2
    move-wide/from16 v1, v16

    goto :goto_0

    :cond_3
    return-object v8
.end method

.method private getFrameImage([B)Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;
    .locals 6

    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mScannerCallback:Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;

    iget-object v1, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mPreviewSize:Landroid/util/Size;

    iget v2, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mCameraOrientation:I

    invoke-interface {v0, v1, v2}, Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;->getFramePosition(Landroid/util/Size;I)Landroid/graphics/Rect;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;

    iget-object v2, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;-><init>([BII)V

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;->crop(IIII)Lcom/google/zxing/LuminanceSource;

    move-result-object v2

    check-cast v2, Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;

    return-object v2
.end method

.method private getRatio(DD)D
    .locals 2

    cmpg-double v0, p1, p3

    if-gez v0, :cond_0

    div-double v0, p1, p3

    goto :goto_0

    :cond_0
    div-double v0, p3, p1

    :goto_0
    return-wide v0
.end method

.method private setCameraParameter()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/qrcode/QrCamera;->getBestPreviewSize(Landroid/hardware/Camera$Parameters;)Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mPreviewSize:Landroid/util/Size;

    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/qrcode/QrCamera;->getBestPictureSize(Landroid/hardware/Camera$Parameters;)Landroid/util/Size;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    iget-object v1, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    const-string v2, "off"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    const-string v2, "continuous-picture"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "auto"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method private setTransformationMatrix(Landroid/util/Size;)V
    .locals 9

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-double v2, v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/settings/wifi/qrcode/QrCamera;->getRatio(DD)D

    move-result-wide v0

    double-to-int v0, v0

    iget-object v1, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v1, v2

    iget-object v2, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mPreviewSize:Landroid/util/Size;

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mPreviewSize:Landroid/util/Size;

    if-eqz v1, :cond_2

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    :goto_2
    int-to-double v4, v2

    int-to-double v6, v3

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/settings/wifi/qrcode/QrCamera;->getRatio(DD)D

    move-result-wide v4

    double-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    if-le v2, v3, :cond_3

    div-float v6, v5, v4

    goto :goto_3

    :cond_3
    div-float v5, v6, v4

    :goto_3
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v7, v5, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v8, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mScannerCallback:Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;

    invoke-interface {v8, v7}, Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private startPreview()Z
    .locals 8

    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v3, :cond_3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    const/4 v4, 0x3

    if-eq v1, v4, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x10e

    goto :goto_0

    :cond_2
    const/16 v2, 0xb4

    goto :goto_0

    :cond_3
    const/16 v2, 0x5a

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    nop

    :goto_0
    iget v4, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mCameraOrientation:I

    sub-int/2addr v4, v2

    add-int/lit16 v4, v4, 0x168

    rem-int/lit16 v4, v4, 0x168

    iget-object v5, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v5, v4}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    :try_start_0
    iget-object v5, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    iget-object v5, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "auto"

    if-ne v5, v6, :cond_5

    iget-object v5, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/qrcode/QrCamera;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    sget-wide v6, Lcom/android/settings/wifi/qrcode/QrCamera;->AUTOFOCUS_INTERVAL_MS:J

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/settings/wifi/qrcode/QrCamera;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_5
    return v3
.end method


# virtual methods
.method protected decodeImage(Lcom/google/zxing/BinaryBitmap;)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v1, p1}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    throw v1

    :catch_0
    move-exception v1

    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v1}, Lcom/google/zxing/MultiFormatReader;->reset()V

    nop

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mScannerCallback:Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;

    invoke-virtual {v0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;->handleSuccessfulResult(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected Message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QrCamera"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/qrcode/QrCamera;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    sget-wide v1, Lcom/android/settings/wifi/qrcode/QrCamera;->AUTOFOCUS_INTERVAL_MS:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/wifi/qrcode/QrCamera;->sendMessageDelayed(Landroid/os/Message;J)Z

    nop

    :goto_0
    return-void
.end method

.method public isDecodeTaskAlive()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mDecodeTask:Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public start(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mDecodeTask:Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;-><init>(Lcom/android/settings/wifi/qrcode/QrCamera;Landroid/graphics/SurfaceTexture;Lcom/android/settings/wifi/qrcode/QrCamera$1;)V

    iput-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mDecodeTask:Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;

    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mDecodeTask:Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/qrcode/QrCamera;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mDecodeTask:Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mDecodeTask:Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    :cond_1
    return-void
.end method
