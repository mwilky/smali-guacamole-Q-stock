.class Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$DecodeBitmapTask;
.super Ljava/lang/Object;
.source "OpFrameAnimationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DecodeBitmapTask"
.end annotation


# instance fields
.field private mHelper:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

.field private mIndex:I


# direct methods
.method public constructor <init>(Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$DecodeBitmapTask;->mHelper:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    iput p2, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$DecodeBitmapTask;->mIndex:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$DecodeBitmapTask;->mHelper:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    if-eqz v0, :cond_7

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    const-string v1, "FrameAnimationHelper"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decode bitmap = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$DecodeBitmapTask;->mIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$DecodeBitmapTask;->mHelper:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    iget-object v2, v0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$DecodeBitmapTask;->mHelper:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    const-string p0, "resetResource return"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$DecodeBitmapTask;->mHelper:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    iget v2, v0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mStartFrameIndex:I

    iget v3, v0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mPlayFrameNum:I

    add-int/2addr v3, v2

    iget v4, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$DecodeBitmapTask;->mIndex:I

    add-int/2addr v4, v2

    if-lt v4, v3, :cond_4

    return-void

    :cond_4
    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$DecodeBitmapTask;->mHelper:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    iget-object v2, v2, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mFrames:[I

    if-eqz v2, :cond_5

    array-length v3, v2

    if-ge v4, v3, :cond_5

    aget v1, v2, v4

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$DecodeBitmapTask;->mHelper:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    iget-object v1, v1, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mBitmapArray:[Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    iget p0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$DecodeBitmapTask;->mIndex:I

    array-length v2, v1

    if-ge p0, v2, :cond_6

    aput-object v0, v1, p0

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decodeBitmap index= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mFrames lenght= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper$DecodeBitmapTask;->mHelper:Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFrameAnimationHelper;->mFrames:[I

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_0
    :try_start_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x5

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    nop

    :cond_7
    :goto_1
    return-void
.end method
