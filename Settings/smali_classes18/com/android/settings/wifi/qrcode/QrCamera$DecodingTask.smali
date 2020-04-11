.class Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;
.super Landroid/os/AsyncTask;
.source "QrCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/qrcode/QrCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecodingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mImage:Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;

.field private mSurface:Landroid/graphics/SurfaceTexture;

.field final synthetic this$0:Lcom/android/settings/wifi/qrcode/QrCamera;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/qrcode/QrCamera;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->mSurface:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/qrcode/QrCamera;Landroid/graphics/SurfaceTexture;Lcom/android/settings/wifi/qrcode/QrCamera$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;-><init>(Lcom/android/settings/wifi/qrcode/QrCamera;Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method private initCamera(Landroid/graphics/SurfaceTexture;)Z
    .locals 9

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    const-string v4, "Error to init Camera"

    const/4 v5, 0x0

    const-string v6, "QrCamera"

    if-ge v2, v0, :cond_1

    :try_start_0
    invoke-static {v2, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v7, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$102(Lcom/android/settings/wifi/qrcode/QrCamera;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    iget-object v7, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {v7}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$100(Lcom/android/settings/wifi/qrcode/QrCamera;)Landroid/hardware/Camera;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    iget-object v7, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    iget v8, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-static {v7, v8}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$402(Lcom/android/settings/wifi/qrcode/QrCamera;I)I

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {v2}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$100(Lcom/android/settings/wifi/qrcode/QrCamera;)Landroid/hardware/Camera;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, "Cannot find available back camera."

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {v2}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$300(Lcom/android/settings/wifi/qrcode/QrCamera;)Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;->handleCameraFailure()V

    return v5

    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {v2}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$500(Lcom/android/settings/wifi/qrcode/QrCamera;)V

    iget-object v2, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    iget-object v7, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {v7}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$300(Lcom/android/settings/wifi/qrcode/QrCamera;)Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;->getViewSize()Landroid/util/Size;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$600(Lcom/android/settings/wifi/qrcode/QrCamera;Landroid/util/Size;)V

    iget-object v2, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {v2}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$700(Lcom/android/settings/wifi/qrcode/QrCamera;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {v2, v3}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$102(Lcom/android/settings/wifi/qrcode/QrCamera;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {v2}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$300(Lcom/android/settings/wifi/qrcode/QrCamera;)Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;->handleCameraFailure()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :cond_3
    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v2

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {v4, v3}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$102(Lcom/android/settings/wifi/qrcode/QrCamera;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {v3}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$300(Lcom/android/settings/wifi/qrcode/QrCamera;)Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;->handleCameraFailure()V

    return v5
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->initCamera(Landroid/graphics/SurfaceTexture;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {v2}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$100(Lcom/android/settings/wifi/qrcode/QrCamera;)Landroid/hardware/Camera;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/qrcode/-$$Lambda$QrCamera$DecodingTask$z3W4798YHT2G6UOmMeFtFLtAmTw;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/wifi/qrcode/-$$Lambda$QrCamera$DecodingTask$z3W4798YHT2G6UOmMeFtFLtAmTw;-><init>(Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {v3}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$200(Lcom/android/settings/wifi/qrcode/QrCamera;)Lcom/google/zxing/MultiFormatReader;

    move-result-object v3

    new-instance v4, Lcom/google/zxing/BinaryBitmap;

    new-instance v5, Lcom/google/zxing/common/HybridBinarizer;

    iget-object v6, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->mImage:Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;

    invoke-direct {v5, v6}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v4, v5}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    invoke-virtual {v3, v4}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v3
    :try_end_1
    .catch Lcom/google/zxing/ReaderException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    :try_start_2
    iget-object v3, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {v3}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$200(Lcom/android/settings/wifi/qrcode/QrCamera;)Lcom/google/zxing/MultiFormatReader;

    move-result-object v3

    goto :goto_1

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {v4}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$200(Lcom/android/settings/wifi/qrcode/QrCamera;)Lcom/google/zxing/MultiFormatReader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/zxing/MultiFormatReader;->reset()V

    throw v3

    :catch_0
    move-exception v3

    iget-object v3, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {v3}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$200(Lcom/android/settings/wifi/qrcode/QrCamera;)Lcom/google/zxing/MultiFormatReader;

    move-result-object v3

    :goto_1
    invoke-virtual {v3}, Lcom/google/zxing/MultiFormatReader;->reset()V

    nop

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {v3}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$300(Lcom/android/settings/wifi/qrcode/QrCamera;)Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;->isValid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v1

    :cond_1
    goto :goto_0

    :catch_1
    move-exception v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    return-object v1
.end method

.method public synthetic lambda$doInBackground$0$QrCamera$DecodingTask(Ljava/util/concurrent/Semaphore;[BLandroid/hardware/Camera;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {v0, p2}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$800(Lcom/android/settings/wifi/qrcode/QrCamera;[B)Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->mImage:Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrCamera$DecodingTask;->this$0:Lcom/android/settings/wifi/qrcode/QrCamera;

    invoke-static {v0}, Lcom/android/settings/wifi/qrcode/QrCamera;->access$300(Lcom/android/settings/wifi/qrcode/QrCamera;)Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/settings/wifi/qrcode/QrCamera$ScannerCallback;->handleSuccessfulResult(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
