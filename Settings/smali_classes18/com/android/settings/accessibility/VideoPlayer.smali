.class public Lcom/android/settings/accessibility/VideoPlayer;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/VideoPlayer$State;
    }
.end annotation


# instance fields
.field private animationSurface:Landroid/view/Surface;

.field private final context:Landroid/content/Context;

.field private mediaPlayer:Landroid/media/MediaPlayer;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mediaPlayerLock"
    .end annotation
.end field

.field private final mediaPlayerLock:Ljava/lang/Object;

.field private mediaPlayerState:Lcom/android/settings/accessibility/VideoPlayer$State;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mediaPlayerLock"
    .end annotation
.end field

.field private final videoRes:I
    .annotation build Landroidx/annotation/RawRes;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;ILandroid/view/TextureView;)V
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/VideoPlayer;->mediaPlayerLock:Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/accessibility/VideoPlayer$State;->NONE:Lcom/android/settings/accessibility/VideoPlayer$State;

    iput-object v0, p0, Lcom/android/settings/accessibility/VideoPlayer;->mediaPlayerState:Lcom/android/settings/accessibility/VideoPlayer$State;

    iput-object p1, p0, Lcom/android/settings/accessibility/VideoPlayer;->context:Landroid/content/Context;

    iput p2, p0, Lcom/android/settings/accessibility/VideoPlayer;->videoRes:I

    invoke-virtual {p3, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method public static create(Landroid/content/Context;ILandroid/view/TextureView;)Lcom/android/settings/accessibility/VideoPlayer;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param

    new-instance v0, Lcom/android/settings/accessibility/VideoPlayer;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/accessibility/VideoPlayer;-><init>(Landroid/content/Context;ILandroid/view/TextureView;)V

    return-object v0
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/VideoPlayer;->animationSurface:Landroid/view/Surface;

    iget-object v0, p0, Lcom/android/settings/accessibility/VideoPlayer;->mediaPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/accessibility/VideoPlayer;->context:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/accessibility/VideoPlayer;->videoRes:I

    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/VideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    sget-object v1, Lcom/android/settings/accessibility/VideoPlayer$State;->PREPARED:Lcom/android/settings/accessibility/VideoPlayer$State;

    iput-object v1, p0, Lcom/android/settings/accessibility/VideoPlayer;->mediaPlayerState:Lcom/android/settings/accessibility/VideoPlayer$State;

    iget-object v1, p0, Lcom/android/settings/accessibility/VideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/settings/accessibility/VideoPlayer;->animationSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object v1, p0, Lcom/android/settings/accessibility/VideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object v1, p0, Lcom/android/settings/accessibility/VideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    sget-object v1, Lcom/android/settings/accessibility/VideoPlayer$State;->STARTED:Lcom/android/settings/accessibility/VideoPlayer$State;

    iput-object v1, p0, Lcom/android/settings/accessibility/VideoPlayer;->mediaPlayerState:Lcom/android/settings/accessibility/VideoPlayer$State;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/VideoPlayer;->release()V

    const/4 v0, 0x0

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

.method public pause()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/accessibility/VideoPlayer;->mediaPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/accessibility/VideoPlayer;->mediaPlayerState:Lcom/android/settings/accessibility/VideoPlayer$State;

    sget-object v2, Lcom/android/settings/accessibility/VideoPlayer$State;->STARTED:Lcom/android/settings/accessibility/VideoPlayer$State;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/android/settings/accessibility/VideoPlayer$State;->PAUSED:Lcom/android/settings/accessibility/VideoPlayer$State;

    iput-object v1, p0, Lcom/android/settings/accessibility/VideoPlayer;->mediaPlayerState:Lcom/android/settings/accessibility/VideoPlayer$State;

    iget-object v1, p0, Lcom/android/settings/accessibility/VideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/accessibility/VideoPlayer;->mediaPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/accessibility/VideoPlayer;->mediaPlayerState:Lcom/android/settings/accessibility/VideoPlayer$State;

    sget-object v2, Lcom/android/settings/accessibility/VideoPlayer$State;->NONE:Lcom/android/settings/accessibility/VideoPlayer$State;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/VideoPlayer;->mediaPlayerState:Lcom/android/settings/accessibility/VideoPlayer$State;

    sget-object v2, Lcom/android/settings/accessibility/VideoPlayer$State;->END:Lcom/android/settings/accessibility/VideoPlayer$State;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/android/settings/accessibility/VideoPlayer$State;->END:Lcom/android/settings/accessibility/VideoPlayer$State;

    iput-object v1, p0, Lcom/android/settings/accessibility/VideoPlayer;->mediaPlayerState:Lcom/android/settings/accessibility/VideoPlayer$State;

    iget-object v1, p0, Lcom/android/settings/accessibility/VideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    iput-object v3, p0, Lcom/android/settings/accessibility/VideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/settings/accessibility/VideoPlayer;->animationSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v3, p0, Lcom/android/settings/accessibility/VideoPlayer;->animationSurface:Landroid/view/Surface;

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public resume()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/accessibility/VideoPlayer;->mediaPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/accessibility/VideoPlayer;->mediaPlayerState:Lcom/android/settings/accessibility/VideoPlayer$State;

    sget-object v2, Lcom/android/settings/accessibility/VideoPlayer$State;->PAUSED:Lcom/android/settings/accessibility/VideoPlayer$State;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/VideoPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    sget-object v1, Lcom/android/settings/accessibility/VideoPlayer$State;->STARTED:Lcom/android/settings/accessibility/VideoPlayer$State;

    iput-object v1, p0, Lcom/android/settings/accessibility/VideoPlayer;->mediaPlayerState:Lcom/android/settings/accessibility/VideoPlayer$State;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
