.class Landroidx/leanback/media/PlaybackBaseControlGlue$1;
.super Landroidx/leanback/media/PlayerAdapter$Callback;
.source "PlaybackBaseControlGlue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/media/PlaybackBaseControlGlue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/media/PlaybackBaseControlGlue;


# direct methods
.method constructor <init>(Landroidx/leanback/media/PlaybackBaseControlGlue;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroidx/leanback/media/PlaybackBaseControlGlue;

    invoke-direct {p0}, Landroidx/leanback/media/PlayerAdapter$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferedPositionChanged(Landroidx/leanback/media/PlayerAdapter;)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroidx/leanback/media/PlaybackBaseControlGlue;

    invoke-virtual {v0}, Landroidx/leanback/media/PlaybackBaseControlGlue;->onUpdateBufferedProgress()V

    return-void
.end method

.method public onBufferingStateChanged(Landroidx/leanback/media/PlayerAdapter;Z)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroidx/leanback/media/PlaybackBaseControlGlue;

    iput-boolean p2, v0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mBuffering:Z

    iget-object v0, v0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroidx/leanback/media/PlaybackGlueHost$PlayerCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroidx/leanback/media/PlaybackBaseControlGlue;

    iget-object v0, v0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroidx/leanback/media/PlaybackGlueHost$PlayerCallback;

    invoke-virtual {v0, p2}, Landroidx/leanback/media/PlaybackGlueHost$PlayerCallback;->onBufferingStateChanged(Z)V

    :cond_0
    return-void
.end method

.method public onCurrentPositionChanged(Landroidx/leanback/media/PlayerAdapter;)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroidx/leanback/media/PlaybackBaseControlGlue;

    invoke-virtual {v0}, Landroidx/leanback/media/PlaybackBaseControlGlue;->onUpdateProgress()V

    return-void
.end method

.method public onDurationChanged(Landroidx/leanback/media/PlayerAdapter;)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroidx/leanback/media/PlaybackBaseControlGlue;

    invoke-virtual {v0}, Landroidx/leanback/media/PlaybackBaseControlGlue;->onUpdateDuration()V

    return-void
.end method

.method public onError(Landroidx/leanback/media/PlayerAdapter;ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroidx/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroidx/leanback/media/PlaybackBaseControlGlue;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mErrorSet:Z

    iput p2, v0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mErrorCode:I

    iput-object p3, v0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mErrorMessage:Ljava/lang/String;

    iget-object v0, v0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroidx/leanback/media/PlaybackGlueHost$PlayerCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroidx/leanback/media/PlaybackBaseControlGlue;

    iget-object v0, v0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroidx/leanback/media/PlaybackGlueHost$PlayerCallback;

    invoke-virtual {v0, p2, p3}, Landroidx/leanback/media/PlaybackGlueHost$PlayerCallback;->onError(ILjava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onMetadataChanged(Landroidx/leanback/media/PlayerAdapter;)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroidx/leanback/media/PlaybackBaseControlGlue;

    invoke-virtual {v0}, Landroidx/leanback/media/PlaybackBaseControlGlue;->onMetadataChanged()V

    return-void
.end method

.method public onPlayCompleted(Landroidx/leanback/media/PlayerAdapter;)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroidx/leanback/media/PlaybackBaseControlGlue;

    invoke-virtual {v0}, Landroidx/leanback/media/PlaybackBaseControlGlue;->onPlayCompleted()V

    return-void
.end method

.method public onPlayStateChanged(Landroidx/leanback/media/PlayerAdapter;)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroidx/leanback/media/PlaybackBaseControlGlue;

    invoke-virtual {v0}, Landroidx/leanback/media/PlaybackBaseControlGlue;->onPlayStateChanged()V

    return-void
.end method

.method public onPreparedStateChanged(Landroidx/leanback/media/PlayerAdapter;)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroidx/leanback/media/PlaybackBaseControlGlue;

    invoke-virtual {v0}, Landroidx/leanback/media/PlaybackBaseControlGlue;->onPreparedStateChanged()V

    return-void
.end method

.method public onVideoSizeChanged(Landroidx/leanback/media/PlayerAdapter;II)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroidx/leanback/media/PlaybackBaseControlGlue;

    iput p2, v0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mVideoWidth:I

    iput p3, v0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mVideoHeight:I

    iget-object v0, v0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroidx/leanback/media/PlaybackGlueHost$PlayerCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroidx/leanback/media/PlaybackBaseControlGlue;

    iget-object v0, v0, Landroidx/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroidx/leanback/media/PlaybackGlueHost$PlayerCallback;

    invoke-virtual {v0, p2, p3}, Landroidx/leanback/media/PlaybackGlueHost$PlayerCallback;->onVideoSizeChanged(II)V

    :cond_0
    return-void
.end method
