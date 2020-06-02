.class public Lcom/oneplus/screenshot/longshot/task/MoveTask;
.super Landroid/os/AsyncTask;
.source "MoveTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;,
        Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final M_CHECK_LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "Longshot.MoveTask"

.field private static overscrollCheckPoint:I


# instance fields
.field inputSource:I

.field private mCanRunTask:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentScreenPart:Landroid/graphics/Bitmap;

.field private final mDisplayHeight:I

.field private mHandler:Landroid/os/Handler;

.field private mInstrumentation:Landroid/app/Instrumentation;

.field private mLastScreenPart:Landroid/graphics/Bitmap;

.field private mListener:Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;

.field private mMoveDuration:I

.field private mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

.field private mPartScreenshotMatchTimes:I

.field mScreenInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    sput v0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->overscrollCheckPoint:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->M_CHECK_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;Lcom/oneplus/screenshot/longshot/util/MovePoint;Landroid/os/IBinder;I)V
    .locals 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mListener:Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    new-instance v1, Landroid/app/Instrumentation;

    invoke-direct {v1}, Landroid/app/Instrumentation;-><init>()V

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mInstrumentation:Landroid/app/Instrumentation;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCanRunTask:Z

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCurrentScreenPart:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mWindowToken:Landroid/os/IBinder;

    const/16 v0, 0x190

    iput v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMoveDuration:I

    new-instance v0, Lcom/oneplus/screenshot/longshot/task/MoveTask$1;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/screenshot/longshot/task/MoveTask$1;-><init>(Lcom/oneplus/screenshot/longshot/task/MoveTask;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    iput v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->inputSource:I

    iput-object p4, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mWindowToken:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mListener:Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;

    iput-object p3, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    iput p5, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mDisplayHeight:I

    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->getMoveDurationValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMoveDuration:I

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->M_CHECK_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/screenshot/longshot/task/MoveTask;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCanRunTask:Z

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/screenshot/longshot/task/MoveTask;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->checkCanScrollInternal(I)V

    return-void
.end method

.method private checkCanScroll(I)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private checkCanScrollInternal(I)V
    .locals 7

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->getPartScreenshot()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCurrentScreenPart:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    const-string v1, "Longshot.MoveTask"

    if-eqz v0, :cond_0

    const-string v0, "mLastScreenPart is already recycled, don\'t compare"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ge v0, v2, :cond_4

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCurrentScreenPart:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check overscroll:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->shouldDumpForMove()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    new-instance v2, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LastScreenPart_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;-><init>(Lcom/oneplus/screenshot/longshot/task/MoveTask;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    new-instance v2, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCurrentScreenPart:Landroid/graphics/Bitmap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ScreenPart_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;-><init>(Lcom/oneplus/screenshot/longshot/task/MoveTask;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iput v3, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->shouldDumpForMove()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;

    iget-object v3, v2, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_3
    :goto_1
    nop

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCurrentScreenPart:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

    return-void

    :cond_4
    iput-boolean v3, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCanRunTask:Z

    return-void
.end method

.method private compare(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private static final getAlpha(FFF)F
    .locals 7

    move v0, p0

    sub-float v1, p1, p0

    const v2, 0x3f59999a    # 0.85f

    mul-float/2addr v1, v2

    move v2, p1

    move v3, p2

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v4, v3

    sub-float v6, v4, v3

    mul-float/2addr v5, v6

    mul-float/2addr v5, v0

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, v3

    sub-float/2addr v4, v3

    mul-float/2addr v6, v4

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    mul-float v4, v3, v3

    mul-float/2addr v4, v2

    add-float/2addr v5, v4

    return v5
.end method

.method private static final getNextY(FFF)F
    .locals 1

    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method private getPartScreenshot()Landroid/graphics/Bitmap;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mDisplayHeight:I

    invoke-static {v1}, Lcom/oneplus/screenshot/util/Utils;->getPartScreenshotTop(I)I

    move-result v1

    iget v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mDisplayHeight:I

    invoke-static {v2}, Lcom/oneplus/screenshot/util/Utils;->getPartScreenshotBottom(I)I

    move-result v2

    const/16 v3, 0x438

    const/4 v4, 0x0

    invoke-direct {v0, v4, v1, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v1, 0x12c

    invoke-static {v0, v3, v1, v4}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static final getSource(II)I
    .locals 1

    if-nez p0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    return v0
.end method

.method private gettraceBitmaps()[Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->getMoveTraceBitmap()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private injectMotionEvent(IIJFFF)V
    .locals 20

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-wide/from16 v6, p3

    move/from16 v10, p2

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    invoke-static/range {v6 .. v19}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v6

    const/high16 v0, 0x10000000

    or-int v0, p1, v0

    invoke-virtual {v6, v0}, Landroid/view/MotionEvent;->setSource(I)V

    const/4 v7, 0x1

    :try_start_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v8, 0x2

    invoke-virtual {v0, v6, v8}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sput-boolean v7, Lcom/oneplus/screenshot/longshot/util/Configs;->stopByUser:Z

    goto :goto_1

    :catch_1
    move-exception v0

    sput-boolean v7, Lcom/oneplus/screenshot/longshot/util/Configs;->stopByUser:Z

    :goto_0
    nop

    :goto_1
    return-void
.end method

.method private sendSwipe(III)V
    .locals 31

    move-object/from16 v8, p0

    const/16 v0, 0x1002

    move/from16 v1, p1

    invoke-static {v1, v0}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->getSource(II)I

    move-result v9

    if-gez p2, :cond_0

    const/16 v0, 0x12c

    move v10, v0

    goto :goto_0

    :cond_0
    move/from16 v10, p2

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    iget v13, v0, Lcom/oneplus/screenshot/longshot/util/MovePoint;->x:I

    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    iget v14, v0, Lcom/oneplus/screenshot/longshot/util/MovePoint;->y:I

    const/4 v2, 0x0

    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->getDownTime()J

    move-result-wide v3

    int-to-float v5, v13

    int-to-float v6, v14

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move v1, v9

    invoke-direct/range {v0 .. v7}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->injectMotionEvent(IIJFFF)V

    move-wide v15, v11

    int-to-long v0, v10

    add-long v17, v15, v0

    const/4 v0, 0x0

    iget-object v1, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->getEnd()Landroid/graphics/Point;

    move-result-object v1

    iget v7, v1, Landroid/graphics/Point;->y:I

    const/4 v1, 0x0

    move v6, v0

    move v5, v1

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    sub-long v3, v11, v15

    long-to-float v0, v3

    int-to-float v1, v10

    div-float v2, v0, v1

    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    int-to-float v1, v14

    move-wide/from16 p1, v3

    int-to-float v3, v7

    const/high16 v4, 0x3f800000    # 1.0f

    move/from16 v19, v6

    const/4 v6, 0x0

    move/from16 v20, v10

    invoke-static {v6, v4, v2}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->getAlpha(FFF)F

    move-result v10

    invoke-static {v1, v3, v10}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->getNextY(FFF)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v13, v1}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->set(II)V

    cmp-long v0, v11, v17

    const-string v10, "Longshot.MoveTask"

    if-gtz v0, :cond_7

    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->canMove()Z

    move-result v0

    if-nez v0, :cond_1

    move-wide/from16 v27, p1

    move/from16 v22, v5

    move-wide/from16 p1, v11

    move v12, v2

    move v11, v7

    move/from16 v7, v19

    goto/16 :goto_5

    :cond_1
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->isSpecialScrollActivity:Z

    const/high16 v21, 0x42c80000    # 100.0f

    if-eqz v0, :cond_3

    mul-float v0, v2, v21

    int-to-float v1, v5

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->getDownTime()J

    move-result-wide v22

    int-to-float v1, v13

    int-to-float v0, v14

    int-to-float v3, v7

    invoke-static {v6, v4, v2}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->getAlpha(FFF)F

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->getNextY(FFF)F

    move-result v6

    const/high16 v25, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move/from16 v26, v1

    move v1, v9

    move v3, v2

    const/4 v2, 0x2

    move-wide/from16 v27, p1

    move/from16 v29, v3

    move-wide/from16 v3, v22

    move/from16 v22, v5

    move/from16 v5, v26

    move/from16 v30, v19

    move-wide/from16 p1, v11

    move v11, v7

    move/from16 v7, v25

    invoke-direct/range {v0 .. v7}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->injectMotionEvent(IIJFFF)V

    add-int/lit8 v5, v22, 0x1

    move/from16 v22, v5

    move/from16 v12, v29

    goto :goto_2

    :cond_2
    move-wide/from16 v27, p1

    move/from16 v29, v2

    move/from16 v22, v5

    move-wide/from16 p1, v11

    move/from16 v30, v19

    move v11, v7

    move/from16 v12, v29

    goto :goto_2

    :cond_3
    move-wide/from16 v27, p1

    move/from16 v29, v2

    move/from16 v22, v5

    move-wide/from16 p1, v11

    move/from16 v30, v19

    move v11, v7

    const/4 v2, 0x2

    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->getDownTime()J

    move-result-wide v23

    int-to-float v5, v13

    int-to-float v0, v14

    int-to-float v1, v11

    move/from16 v12, v29

    invoke-static {v6, v4, v12}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->getAlpha(FFF)F

    move-result v3

    invoke-static {v0, v1, v3}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->getNextY(FFF)F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move v1, v9

    move-wide/from16 v3, v23

    invoke-direct/range {v0 .. v7}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->injectMotionEvent(IIJFFF)V

    :goto_2
    mul-float v2, v12, v21

    sget v0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->overscrollCheckPoint:I

    int-to-float v0, v0

    div-float/2addr v2, v0

    move/from16 v7, v30

    int-to-float v0, v7

    cmpl-float v0, v2, v0

    if-lez v0, :cond_4

    invoke-direct {v8, v7}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->checkCanScroll(I)V

    add-int/lit8 v6, v7, 0x1

    move/from16 v19, v6

    goto :goto_3

    :cond_4
    move/from16 v19, v7

    :goto_3
    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mListener:Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;->isOverScroll()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCanRunTask:Z

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    move v7, v11

    move/from16 v6, v19

    move/from16 v10, v20

    move/from16 v5, v22

    move-wide/from16 v11, p1

    goto/16 :goto_1

    :cond_6
    :goto_4
    const/4 v2, 0x3

    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->getDownTime()J

    move-result-wide v3

    int-to-float v5, v13

    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    iget v0, v0, Lcom/oneplus/screenshot/longshot/util/MovePoint;->y:I

    int-to-float v6, v0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move v1, v9

    invoke-direct/range {v0 .. v7}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->injectMotionEvent(IIJFFF)V

    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mListener:Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;->setOverScroll(Z)V

    const-string v0, "Overscroll"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    move-wide/from16 v27, p1

    move/from16 v22, v5

    move-wide/from16 p1, v11

    move v12, v2

    move v11, v7

    move/from16 v7, v19

    :goto_5
    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0, v13, v11}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->set(II)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v23

    const/4 v0, 0x0

    move v6, v0

    :goto_6
    move/from16 v5, p3

    if-ge v6, v5, :cond_8

    const/4 v2, 0x2

    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->getDownTime()J

    move-result-wide v3

    int-to-float v1, v13

    int-to-float v0, v11

    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v25, v1

    move v1, v9

    move/from16 v5, v25

    move/from16 v25, v6

    move/from16 v6, v21

    move/from16 v21, v7

    move/from16 v7, v19

    invoke-direct/range {v0 .. v7}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->injectMotionEvent(IIJFFF)V

    add-int/lit8 v6, v25, 0x1

    move/from16 v7, v21

    goto :goto_6

    :cond_8
    move/from16 v25, v6

    move/from16 v21, v7

    const/4 v0, 0x0

    iput v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    const/4 v2, 0x1

    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->getDownTime()J

    move-result-wide v3

    int-to-float v5, v13

    int-to-float v6, v11

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move v1, v9

    invoke-direct/range {v0 .. v7}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->injectMotionEvent(IIJFFF)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "move end cost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v3, v0, v23

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private storeImage(Landroid/graphics/Bitmap;Lcom/oneplus/screenshot/util/ImageInfo;)V
    .locals 2

    const-string v0, "Longshot.MoveTask"

    const-string v1, "storeImage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p1}, Lcom/oneplus/screenshot/util/Utils;->saveToFile(Landroid/content/Context;Lcom/oneplus/screenshot/util/FileInfo;Landroid/graphics/Bitmap;)Z

    return-void
.end method


# virtual methods
.method public checkTraceBitmap()V
    .locals 10

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->gettraceBitmaps()[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->getTraingBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;

    aget-object v5, v0, v2

    invoke-direct {v4, p0, v3, v5}, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;-><init>(Lcom/oneplus/screenshot/longshot/task/MoveTask;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const-string v3, ""

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;

    iget-object v5, v5, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;

    iget-object v6, v6, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mInfo:Lcom/oneplus/screenshot/util/ImageInfo;

    invoke-virtual {v6}, Lcom/oneplus/screenshot/util/ImageInfo;->getName()Ljava/lang/String;

    move-result-object v6

    if-nez v2, :cond_2

    move-object v2, v5

    move-object v3, v6

    goto :goto_2

    :cond_2
    invoke-direct {p0, v2, v5}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->compare(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " compare targetFileName:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " compareFileName:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " result:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Longshot.MoveTask"

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;

    iget-object v5, v5, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;

    iget-object v5, v5, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 7

    const-string v0, "Longshot.MoveTask"

    const-string v1, "doInBackground start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->getPartScreenshot()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->setThreadPriority()V

    sget-boolean v1, Lcom/oneplus/screenshot/longshot/util/Configs;->stopByUser:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->reset()V

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->setDownTime(J)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "begin to move, x="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    iget v3, v3, Lcom/oneplus/screenshot/longshot/util/MovePoint;->x:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , y="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    iget v4, v4, Lcom/oneplus/screenshot/longshot/util/MovePoint;->y:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", keep="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget-object v5, p1, v4

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v1, p1, v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->customizeMoveTaskMoveDuration()I

    move-result v4

    if-lez v4, :cond_1

    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->customizeMoveTaskMovekeep()I

    move-result v4

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    move v1, v4

    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->customizeMoveTaskMoveDuration()I

    move-result v4

    if-lez v4, :cond_2

    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->customizeMoveTaskMoveDuration()I

    move-result v4

    goto :goto_1

    :cond_2
    iget v4, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMoveDuration:I

    :goto_1
    iget v5, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->inputSource:I

    invoke-direct {p0, v5, v4, v1}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->sendSwipe(III)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "move up, x="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    iget v6, v6, Lcom/oneplus/screenshot/longshot/util/MovePoint;->x:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    iget v3, v3, Lcom/oneplus/screenshot/longshot/util/MovePoint;->y:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mListener:Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;

    invoke-interface {v6}, Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;->isOverScroll()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCanRunTask:Z

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " duration:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " keep:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method getTraingBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->getStitchLastTraceBitmapFolder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v1, v4

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    nop

    :goto_1
    return-object v1
.end method

.method protected onCancelled()V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4

    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->shouldDumpForMove()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;

    iget-object v2, v1, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " info.mBitmap.save:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mInfo:Lcom/oneplus/screenshot/util/ImageInfo;

    invoke-virtual {v3}, Lcom/oneplus/screenshot/util/ImageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Longshot.MoveTask"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v3, v1, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mInfo:Lcom/oneplus/screenshot/util/ImageInfo;

    invoke-direct {p0, v2, v3}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->storeImage(Landroid/graphics/Bitmap;Lcom/oneplus/screenshot/util/ImageInfo;)V

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " info.mBitmap.isRecycled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mInfo:Lcom/oneplus/screenshot/util/ImageInfo;

    invoke-virtual {v3}, Lcom/oneplus/screenshot/util/ImageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Longshot.MoveTask"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mListener:Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;->onMoveFinished()V

    :cond_2
    sget-object v0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->M_CHECK_LOCK:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCanRunTask:Z

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    nop

    :goto_2
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;

    iget-object v3, v2, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCurrentScreenPart:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCurrentScreenPart:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateMovePoint(Lcom/oneplus/screenshot/longshot/util/MovePoint;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    return-void
.end method
