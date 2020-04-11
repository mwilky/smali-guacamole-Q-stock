.class Landroidx/leanback/media/MediaPlayerAdapter$8;
.super Ljava/lang/Object;
.source "MediaPlayerAdapter.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/media/MediaPlayerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/media/MediaPlayerAdapter;


# direct methods
.method constructor <init>(Landroidx/leanback/media/MediaPlayerAdapter;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/media/MediaPlayerAdapter$8;->this$0:Landroidx/leanback/media/MediaPlayerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x2bd

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p2, v1, :cond_1

    const/16 v1, 0x2be

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/leanback/media/MediaPlayerAdapter$8;->this$0:Landroidx/leanback/media/MediaPlayerAdapter;

    iput-boolean v2, v1, Landroidx/leanback/media/MediaPlayerAdapter;->mBufferingStart:Z

    invoke-virtual {v1}, Landroidx/leanback/media/MediaPlayerAdapter;->notifyBufferingStartEnd()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/leanback/media/MediaPlayerAdapter$8;->this$0:Landroidx/leanback/media/MediaPlayerAdapter;

    iput-boolean v3, v1, Landroidx/leanback/media/MediaPlayerAdapter;->mBufferingStart:Z

    invoke-virtual {v1}, Landroidx/leanback/media/MediaPlayerAdapter;->notifyBufferingStartEnd()V

    const/4 v0, 0x1

    nop

    :goto_0
    iget-object v1, p0, Landroidx/leanback/media/MediaPlayerAdapter$8;->this$0:Landroidx/leanback/media/MediaPlayerAdapter;

    invoke-virtual {v1, p2, p3}, Landroidx/leanback/media/MediaPlayerAdapter;->onInfo(II)Z

    move-result v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    return v2
.end method
