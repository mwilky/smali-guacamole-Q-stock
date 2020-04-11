.class public Lcom/google/android/setupdesign/view/IllustrationVideoView;
.super Landroid/view/TextureView;
.source "IllustrationVideoView.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IllustrationVideoView"


# instance fields
.field private aspectRatio:F

.field private isMediaPlayerLoading:Z

.field protected mediaPlayer:Landroid/media/MediaPlayer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private prepared:Z

.field surface:Landroid/view/Surface;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private videoResId:I
    .annotation build Landroidx/annotation/RawRes;
    .end annotation
.end field

.field private videoResPackageName:Ljava/lang/String;

.field private visibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->aspectRatio:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->videoResId:I

    iput v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->visibility:I

    iput-boolean v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->isMediaPlayerLoading:Z

    sget-object v1, Lcom/google/android/setupdesign/R$styleable;->SudIllustrationVideoView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Lcom/google/android/setupdesign/R$styleable;->SudIllustrationVideoView_sudVideo:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->setVideoResource(I)V

    const v2, 0x3f7ffffe    # 0.9999999f

    invoke-virtual {p0, v2}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->setScaleX(F)V

    invoke-virtual {p0, v2}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->setScaleX(F)V

    invoke-virtual {p0, p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method private initVideo()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->createSurface()V

    iget-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->createMediaPlayer()V

    goto :goto_0

    :cond_1
    const-string v0, "IllustrationVideoView"

    const-string v1, "Surface is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private reattach()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->surface:Landroid/view/Surface;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->initVideo()V

    :cond_0
    return-void
.end method

.method private setIsMediaPlayerLoading(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->isMediaPlayerLoading:Z

    iget v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->visibility:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->setVisibility(I)V

    return-void
.end method

.method private setVideoResourceInternal(ILjava/lang/String;)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    iget-object v1, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "IllustrationVideoView"

    const-string v3, "Unable to set data source"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method protected createMediaPlayer()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->videoResId:I

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->surface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iget-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    iget-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->videoResId:I

    iget-object v1, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->videoResPackageName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->setVideoResourceInternal(ILjava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method protected createSurface()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->surface:Landroid/view/Surface;

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->setIsMediaPlayerLoading(Z)V

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->surface:Landroid/view/Surface;

    :cond_1
    return-void
.end method

.method protected getAspectRatio()F
    .locals 1

    iget v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->aspectRatio:F

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getMediaPlayer()Landroid/media/MediaPlayer;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x4
    .end annotation

    iget-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method protected isPrepared()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->prepared:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaPlayer error. what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " extra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IllustrationVideoView"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->setIsMediaPlayerLoading(Z)V

    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->onRenderingStart()V

    :cond_0
    return v0
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    int-to-float v2, v1

    int-to-float v3, v0

    iget v4, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->aspectRatio:F

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    int-to-float v2, v1

    div-float/2addr v2, v4

    float-to-int v0, v2

    goto :goto_0

    :cond_0
    int-to-float v2, v0

    mul-float/2addr v2, v4

    float-to-int v1, v2

    :goto_0
    nop

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-super {p0, v3, v2}, Landroid/view/TextureView;->onMeasure(II)V

    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->prepared:Z

    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->shouldLoop()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected video size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IllustrationVideoView"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget v1, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->aspectRatio:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_1

    iput v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->aspectRatio:F

    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->requestLayout()V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->start()V

    :cond_2
    return-void
.end method

.method protected onRenderingStart()V
    .locals 0

    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    :cond_0
    const-string v0, "IllustrationVideoView"

    const-string v1, "Seek complete but media player not prepared"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->setIsMediaPlayerLoading(Z)V

    invoke-direct {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->initVideo()V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->release()V

    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/TextureView;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->start()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->stop()V

    :goto_0
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/TextureView;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->reattach()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->release()V

    :goto_0
    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v1, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->prepared:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->surface:Landroid/view/Surface;

    :cond_1
    return-void
.end method

.method public setVideoResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->setVideoResource(ILjava/lang/String;)V

    return-void
.end method

.method public setVideoResource(ILjava/lang/String;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param

    iget v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->videoResId:I

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->videoResPackageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->videoResId:I

    iput-object p2, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->videoResPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->createMediaPlayer()V

    :cond_1
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    iput p1, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->visibility:I

    iget-boolean v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->isMediaPlayerLoading:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x4

    :cond_0
    invoke-super {p0, p1}, Landroid/view/TextureView;->setVisibility(I)V

    return-void
.end method

.method protected shouldLoop()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public start()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->prepared:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->prepared:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void
.end method
