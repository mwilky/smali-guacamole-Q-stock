.class public Landroidx/leanback/media/MediaPlayerGlue;
.super Landroidx/leanback/media/PlaybackControlGlue;
.source "MediaPlayerGlue.java"

# interfaces
.implements Landroidx/leanback/widget/OnItemViewSelectedListener;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/media/MediaPlayerGlue$VideoPlayerSurfaceHolderCallback;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final FAST_FORWARD_REWIND_REPEAT_DELAY:I = 0xc8

.field public static final FAST_FORWARD_REWIND_STEP:I = 0x2710

.field public static final NO_REPEAT:I = 0x0

.field public static final REPEAT_ALL:I = 0x2

.field public static final REPEAT_ONE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MediaPlayerGlue"


# instance fields
.field private mArtist:Ljava/lang/String;

.field private mCover:Landroid/graphics/drawable/Drawable;

.field mHandler:Landroid/os/Handler;

.field mInitialized:Z

.field private mLastKeyDownEvent:J

.field private mMediaSourcePath:Ljava/lang/String;

.field private mMediaSourceUri:Landroid/net/Uri;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field mPlayer:Landroid/media/MediaPlayer;

.field private final mRepeatAction:Landroidx/leanback/widget/PlaybackControlsRow$RepeatAction;

.field private mRunnable:Ljava/lang/Runnable;

.field private mSelectedAction:Landroidx/leanback/widget/Action;

.field protected final mThumbsDownAction:Landroidx/leanback/widget/PlaybackControlsRow$ThumbsDownAction;

.field protected final mThumbsUpAction:Landroidx/leanback/widget/PlaybackControlsRow$ThumbsUpAction;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    new-array v3, v0, [I

    aput v0, v3, v2

    invoke-direct {p0, p1, v1, v3}, Landroidx/leanback/media/MediaPlayerGlue;-><init>(Landroid/content/Context;[I[I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[I[I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroidx/leanback/media/PlaybackControlGlue;-><init>(Landroid/content/Context;[I[I)V

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mInitialized:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mLastKeyDownEvent:J

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mMediaSourceUri:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mMediaSourcePath:Ljava/lang/String;

    new-instance v0, Landroidx/leanback/widget/PlaybackControlsRow$RepeatAction;

    invoke-virtual {p0}, Landroidx/leanback/media/MediaPlayerGlue;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/leanback/widget/PlaybackControlsRow$RepeatAction;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mRepeatAction:Landroidx/leanback/widget/PlaybackControlsRow$RepeatAction;

    new-instance v0, Landroidx/leanback/widget/PlaybackControlsRow$ThumbsDownAction;

    invoke-virtual {p0}, Landroidx/leanback/media/MediaPlayerGlue;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/leanback/widget/PlaybackControlsRow$ThumbsDownAction;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mThumbsDownAction:Landroidx/leanback/widget/PlaybackControlsRow$ThumbsDownAction;

    new-instance v0, Landroidx/leanback/widget/PlaybackControlsRow$ThumbsUpAction;

    invoke-virtual {p0}, Landroidx/leanback/media/MediaPlayerGlue;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/leanback/widget/PlaybackControlsRow$ThumbsUpAction;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mThumbsUpAction:Landroidx/leanback/widget/PlaybackControlsRow$ThumbsUpAction;

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mThumbsDownAction:Landroidx/leanback/widget/PlaybackControlsRow$ThumbsDownAction;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/PlaybackControlsRow$ThumbsDownAction;->setIndex(I)V

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mThumbsUpAction:Landroidx/leanback/widget/PlaybackControlsRow$ThumbsUpAction;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/PlaybackControlsRow$ThumbsUpAction;->setIndex(I)V

    return-void
.end method

.method private prepareMediaForPlaying()V
    .locals 3

    invoke-virtual {p0}, Landroidx/leanback/media/MediaPlayerGlue;->reset()V

    :try_start_0
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mMediaSourceUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroidx/leanback/media/MediaPlayerGlue;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroidx/leanback/media/MediaPlayerGlue;->mMediaSourceUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mMediaSourcePath:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroidx/leanback/media/MediaPlayerGlue;->mMediaSourcePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    nop

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Landroidx/leanback/media/MediaPlayerGlue$4;

    invoke-direct {v1, p0}, Landroidx/leanback/media/MediaPlayerGlue$4;-><init>(Landroidx/leanback/media/MediaPlayerGlue;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    :cond_1
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Landroidx/leanback/media/MediaPlayerGlue$5;

    invoke-direct {v1, p0}, Landroidx/leanback/media/MediaPlayerGlue$5;-><init>(Landroidx/leanback/media/MediaPlayerGlue;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    invoke-virtual {p0}, Landroidx/leanback/media/MediaPlayerGlue;->onStateChanged()V

    return-void

    :cond_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method changeToUnitialized()V
    .locals 3

    iget-boolean v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mInitialized:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mInitialized:Z

    invoke-virtual {p0}, Landroidx/leanback/media/MediaPlayerGlue;->getPlayerCallbacks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/leanback/media/PlaybackGlue$PlayerCallback;

    invoke-virtual {v2, p0}, Landroidx/leanback/media/PlaybackGlue$PlayerCallback;->onPreparedStateChanged(Landroidx/leanback/media/PlaybackGlue;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public enableProgressUpdating(Z)V
    .locals 4

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/leanback/media/MediaPlayerGlue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_2

    new-instance v0, Landroidx/leanback/media/MediaPlayerGlue$1;

    invoke-direct {v0, p0}, Landroidx/leanback/media/MediaPlayerGlue$1;-><init>(Landroidx/leanback/media/MediaPlayerGlue;)V

    iput-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mRunnable:Ljava/lang/Runnable;

    :cond_2
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/leanback/media/MediaPlayerGlue;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Landroidx/leanback/media/MediaPlayerGlue;->getUpdatePeriod()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    iget-boolean v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCurrentSpeedId()I
    .locals 1

    invoke-virtual {p0}, Landroidx/leanback/media/MediaPlayerGlue;->isMediaPlaying()Z

    move-result v0

    return v0
.end method

.method public getMediaArt()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mCover:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getMediaDuration()I
    .locals 1

    iget-boolean v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getMediaSubtitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mArtist:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "N/a"

    :goto_0
    return-object v0
.end method

.method public getMediaTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "N/a"

    :goto_0
    return-object v0
.end method

.method public getSupportedActions()J
    .locals 2

    const-wide/16 v0, 0xe0

    return-wide v0
.end method

.method public hasValidMedia()Z
    .locals 1

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mMediaSourcePath:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mMediaSourceUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMediaPlaying()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

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

.method public isPlaying()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/leanback/media/MediaPlayerGlue;->isMediaPlaying()Z

    move-result v0

    return v0
.end method

.method public isPrepared()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mInitialized:Z

    return v0
.end method

.method public onActionClicked(Landroidx/leanback/widget/Action;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/leanback/media/PlaybackControlGlue;->onActionClicked(Landroidx/leanback/widget/Action;)V

    instance-of v0, p1, Landroidx/leanback/widget/PlaybackControlsRow$RepeatAction;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/leanback/widget/PlaybackControlsRow$RepeatAction;

    invoke-virtual {v0}, Landroidx/leanback/widget/PlaybackControlsRow$RepeatAction;->nextIndex()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mThumbsUpAction:Landroidx/leanback/widget/PlaybackControlsRow$ThumbsUpAction;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_2

    invoke-virtual {v0}, Landroidx/leanback/widget/PlaybackControlsRow$ThumbsUpAction;->getIndex()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mThumbsUpAction:Landroidx/leanback/widget/PlaybackControlsRow$ThumbsUpAction;

    invoke-virtual {v0, v2}, Landroidx/leanback/widget/PlaybackControlsRow$ThumbsUpAction;->setIndex(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mThumbsUpAction:Landroidx/leanback/widget/PlaybackControlsRow$ThumbsUpAction;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/PlaybackControlsRow$ThumbsUpAction;->setIndex(I)V

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mThumbsDownAction:Landroidx/leanback/widget/PlaybackControlsRow$ThumbsDownAction;

    invoke-virtual {v0, v2}, Landroidx/leanback/widget/PlaybackControlsRow$ThumbsDownAction;->setIndex(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mThumbsDownAction:Landroidx/leanback/widget/PlaybackControlsRow$ThumbsDownAction;

    if-ne p1, v0, :cond_4

    invoke-virtual {v0}, Landroidx/leanback/widget/PlaybackControlsRow$ThumbsDownAction;->getIndex()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mThumbsDownAction:Landroidx/leanback/widget/PlaybackControlsRow$ThumbsDownAction;

    invoke-virtual {v0, v2}, Landroidx/leanback/widget/PlaybackControlsRow$ThumbsDownAction;->setIndex(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mThumbsDownAction:Landroidx/leanback/widget/PlaybackControlsRow$ThumbsDownAction;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/PlaybackControlsRow$ThumbsDownAction;->setIndex(I)V

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mThumbsUpAction:Landroidx/leanback/widget/PlaybackControlsRow$ThumbsUpAction;

    invoke-virtual {v0, v2}, Landroidx/leanback/widget/PlaybackControlsRow$ThumbsUpAction;->setIndex(I)V

    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/media/MediaPlayerGlue;->onMetadataChanged()V

    return-void
.end method

.method protected onAttachedToHost(Landroidx/leanback/media/PlaybackGlueHost;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/leanback/media/PlaybackControlGlue;->onAttachedToHost(Landroidx/leanback/media/PlaybackGlueHost;)V

    instance-of v0, p1, Landroidx/leanback/media/SurfaceHolderGlueHost;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/leanback/media/SurfaceHolderGlueHost;

    new-instance v1, Landroidx/leanback/media/MediaPlayerGlue$VideoPlayerSurfaceHolderCallback;

    invoke-direct {v1, p0}, Landroidx/leanback/media/MediaPlayerGlue$VideoPlayerSurfaceHolderCallback;-><init>(Landroidx/leanback/media/MediaPlayerGlue;)V

    invoke-interface {v0, v1}, Landroidx/leanback/media/SurfaceHolderGlueHost;->setSurfaceHolderCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_0
    return-void
.end method

.method protected onCreateSecondaryActions(Landroidx/leanback/widget/ArrayObjectAdapter;)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mRepeatAction:Landroidx/leanback/widget/PlaybackControlsRow$RepeatAction;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mThumbsDownAction:Landroidx/leanback/widget/PlaybackControlsRow$ThumbsDownAction;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mThumbsUpAction:Landroidx/leanback/widget/PlaybackControlsRow$ThumbsUpAction;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDetachedFromHost()V
    .locals 2

    invoke-virtual {p0}, Landroidx/leanback/media/MediaPlayerGlue;->getHost()Landroidx/leanback/media/PlaybackGlueHost;

    move-result-object v0

    instance-of v0, v0, Landroidx/leanback/media/SurfaceHolderGlueHost;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/leanback/media/MediaPlayerGlue;->getHost()Landroidx/leanback/media/PlaybackGlueHost;

    move-result-object v0

    check-cast v0, Landroidx/leanback/media/SurfaceHolderGlueHost;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroidx/leanback/media/SurfaceHolderGlueHost;->setSurfaceHolderCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/media/MediaPlayerGlue;->reset()V

    invoke-virtual {p0}, Landroidx/leanback/media/MediaPlayerGlue;->release()V

    invoke-super {p0}, Landroidx/leanback/media/PlaybackControlGlue;->onDetachedFromHost()V

    return-void
.end method

.method public onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V
    .locals 1

    instance-of v0, p2, Landroidx/leanback/widget/Action;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/leanback/widget/Action;

    iput-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mSelectedAction:Landroidx/leanback/widget/Action;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mSelectedAction:Landroidx/leanback/widget/Action;

    :goto_0
    return-void
.end method

.method public bridge synthetic onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p4, Landroidx/leanback/widget/Row;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/leanback/media/MediaPlayerGlue;->onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 8

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mSelectedAction:Landroidx/leanback/widget/Action;

    instance-of v1, v0, Landroidx/leanback/widget/PlaybackControlsRow$RewindAction;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    instance-of v0, v0, Landroidx/leanback/widget/PlaybackControlsRow$FastForwardAction;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Landroidx/leanback/media/MediaPlayerGlue;->mInitialized:Z

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    move v0, v1

    if-eqz v0, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v4, 0x17

    if-ne v1, v4, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    move v0, v1

    if-eqz v0, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    move v0, v1

    if-eqz v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Landroidx/leanback/media/MediaPlayerGlue;->mLastKeyDownEvent:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0xc8

    cmp-long v1, v4, v6

    if-lez v1, :cond_5

    move v2, v3

    goto :goto_5

    :cond_5
    nop

    :goto_5
    move v0, v2

    if-eqz v0, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/leanback/media/MediaPlayerGlue;->mLastKeyDownEvent:J

    invoke-virtual {p0}, Landroidx/leanback/media/MediaPlayerGlue;->getCurrentPosition()I

    move-result v1

    add-int/lit16 v1, v1, 0x2710

    iget-object v2, p0, Landroidx/leanback/media/MediaPlayerGlue;->mSelectedAction:Landroidx/leanback/widget/Action;

    instance-of v2, v2, Landroidx/leanback/widget/PlaybackControlsRow$RewindAction;

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Landroidx/leanback/media/MediaPlayerGlue;->getCurrentPosition()I

    move-result v2

    add-int/lit16 v1, v2, -0x2710

    :cond_6
    if-gez v1, :cond_7

    const/4 v1, 0x0

    :cond_7
    invoke-virtual {p0}, Landroidx/leanback/media/MediaPlayerGlue;->getMediaDuration()I

    move-result v2

    if-le v1, v2, :cond_8

    invoke-virtual {p0}, Landroidx/leanback/media/MediaPlayerGlue;->getMediaDuration()I

    move-result v1

    :cond_8
    invoke-virtual {p0, v1}, Landroidx/leanback/media/MediaPlayerGlue;->seekTo(I)V

    return v3

    :cond_9
    invoke-super {p0, p1, p2, p3}, Landroidx/leanback/media/PlaybackControlGlue;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public pause()V
    .locals 1

    invoke-virtual {p0}, Landroidx/leanback/media/MediaPlayerGlue;->isMediaPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    invoke-virtual {p0}, Landroidx/leanback/media/MediaPlayerGlue;->onStateChanged()V

    :cond_0
    return-void
.end method

.method public play(I)V
    .locals 1

    iget-boolean v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mInitialized:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    invoke-virtual {p0}, Landroidx/leanback/media/MediaPlayerGlue;->onMetadataChanged()V

    invoke-virtual {p0}, Landroidx/leanback/media/MediaPlayerGlue;->onStateChanged()V

    invoke-virtual {p0}, Landroidx/leanback/media/MediaPlayerGlue;->updateProgress()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    invoke-virtual {p0}, Landroidx/leanback/media/MediaPlayerGlue;->changeToUnitialized()V

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    return-void
.end method

.method public reset()V
    .locals 1

    invoke-virtual {p0}, Landroidx/leanback/media/MediaPlayerGlue;->changeToUnitialized()V

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    return-void
.end method

.method protected seekTo(I)V
    .locals 1

    iget-boolean v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/media/MediaPlayerGlue;->mArtist:Ljava/lang/String;

    return-void
.end method

.method public setCover(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/media/MediaPlayerGlue;->mCover:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public setMediaSource(Landroid/net/Uri;)Z
    .locals 1

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mMediaSourceUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iput-object p1, p0, Landroidx/leanback/media/MediaPlayerGlue;->mMediaSourceUri:Landroid/net/Uri;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mMediaSourcePath:Ljava/lang/String;

    invoke-direct {p0}, Landroidx/leanback/media/MediaPlayerGlue;->prepareMediaForPlaying()V

    const/4 v0, 0x1

    return v0
.end method

.method public setMediaSource(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mMediaSourcePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mMediaSourceUri:Landroid/net/Uri;

    iput-object p1, p0, Landroidx/leanback/media/MediaPlayerGlue;->mMediaSourcePath:Ljava/lang/String;

    invoke-direct {p0}, Landroidx/leanback/media/MediaPlayerGlue;->prepareMediaForPlaying()V

    const/4 v0, 0x1

    return v0
.end method

.method public setMode(I)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/leanback/media/MediaPlayerGlue$3;

    invoke-direct {v0, p0}, Landroidx/leanback/media/MediaPlayerGlue$3;-><init>(Landroidx/leanback/media/MediaPlayerGlue;)V

    iput-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    goto :goto_0

    :cond_1
    new-instance v0, Landroidx/leanback/media/MediaPlayerGlue$2;

    invoke-direct {v0, p0}, Landroidx/leanback/media/MediaPlayerGlue$2;-><init>(Landroidx/leanback/media/MediaPlayerGlue;)V

    iput-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/leanback/media/MediaPlayerGlue;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    nop

    :goto_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/media/MediaPlayerGlue;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/leanback/media/MediaPlayerGlue;->setMediaSource(Ljava/lang/String;)Z

    invoke-virtual {p0}, Landroidx/leanback/media/MediaPlayerGlue;->onMetadataChanged()V

    return-void
.end method
