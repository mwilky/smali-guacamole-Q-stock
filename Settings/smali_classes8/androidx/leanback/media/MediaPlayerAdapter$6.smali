.class Landroidx/leanback/media/MediaPlayerAdapter$6;
.super Ljava/lang/Object;
.source "MediaPlayerAdapter.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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

    iput-object p1, p0, Landroidx/leanback/media/MediaPlayerAdapter$6;->this$0:Landroidx/leanback/media/MediaPlayerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 7

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerAdapter$6;->this$0:Landroidx/leanback/media/MediaPlayerAdapter;

    invoke-virtual {v0}, Landroidx/leanback/media/MediaPlayerAdapter;->getCallback()Landroidx/leanback/media/PlayerAdapter$Callback;

    move-result-object v0

    iget-object v1, p0, Landroidx/leanback/media/MediaPlayerAdapter$6;->this$0:Landroidx/leanback/media/MediaPlayerAdapter;

    iget-object v2, v1, Landroidx/leanback/media/MediaPlayerAdapter;->mContext:Landroid/content/Context;

    sget v3, Landroidx/leanback/R$string;->lb_media_player_error:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Landroidx/leanback/media/PlayerAdapter$Callback;->onError(Landroidx/leanback/media/PlayerAdapter;ILjava/lang/String;)V

    iget-object v0, p0, Landroidx/leanback/media/MediaPlayerAdapter$6;->this$0:Landroidx/leanback/media/MediaPlayerAdapter;

    invoke-virtual {v0, p2, p3}, Landroidx/leanback/media/MediaPlayerAdapter;->onError(II)Z

    move-result v0

    return v0
.end method
