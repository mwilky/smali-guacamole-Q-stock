.class public Lcom/oneplus/screenshot/longshot/state/ShotNextState;
.super Lcom/oneplus/screenshot/longshot/state/AbsShotState;
.source "ShotNextState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.ShotNextState"


# instance fields
.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCaptureSuccess:Ljava/lang/Runnable;

.field private mGenBitmapCache:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/state/AbsShotState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/screenshot/longshot/state/ShotNextState$1;

    invoke-direct {v0, p0}, Lcom/oneplus/screenshot/longshot/state/ShotNextState$1;-><init>(Lcom/oneplus/screenshot/longshot/state/ShotNextState;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mGenBitmapCache:Ljava/lang/Runnable;

    new-instance v0, Lcom/oneplus/screenshot/longshot/state/ShotNextState$2;

    invoke-direct {v0, p0}, Lcom/oneplus/screenshot/longshot/state/ShotNextState$2;-><init>(Lcom/oneplus/screenshot/longshot/state/ShotNextState;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mCaptureSuccess:Ljava/lang/Runnable;

    sget v0, Lcom/oneplus/screenshot/longshot/util/Configs;->levelShotNext:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_SHOT_NEXT_LEVEL_1:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mOffset:I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_SHOT_NEXT_LEVEL_4:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mOffset:I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_SHOT_NEXT_LEVEL_3:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mOffset:I

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_SHOT_NEXT_LEVEL_2:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mOffset:I

    nop

    :goto_0
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->CAPTURE_NEXT_DELAY:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mCaptureDelay:I

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/screenshot/longshot/state/ShotNextState;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/screenshot/longshot/state/ShotNextState;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mCaptureSuccess:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/screenshot/longshot/state/ShotNextState;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected getNextState()Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .locals 1

    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_NEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    return-object v0
.end method

.method protected getTopBase()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    iget v0, v0, Lcom/oneplus/screenshot/longshot/util/MovePoint;->y:I

    return v0
.end method

.method public onCaptureSuccess(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-static {p1, v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->processBitmapIfStitchByView(Landroid/graphics/Bitmap;Lcom/oneplus/screenshot/longshot/state/LongshotContext;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mGenBitmapCache:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected updateState()V
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->getNextState()Lcom/oneplus/screenshot/longshot/state/LongshotState;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->updateState(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " updateState cost:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v5, v2, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Longshot.ShotNextState"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
