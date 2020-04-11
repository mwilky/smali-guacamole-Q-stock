.class Lcom/oneplus/settings/better/OPFnaticWallPapers$4;
.super Ljava/lang/Object;
.source "OPFnaticWallPapers.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/better/OPFnaticWallPapers;->initMediaPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/OPFnaticWallPapers;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers$4;->this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers$4;->this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPFnaticWallPapers;->access$800(Lcom/oneplus/settings/better/OPFnaticWallPapers;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers$4;->this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPFnaticWallPapers;->access$800(Lcom/oneplus/settings/better/OPFnaticWallPapers;)Landroid/media/MediaPlayer;

    move-result-object v0

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers$4;->this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/settings/better/OPFnaticWallPapers;->access$902(Lcom/oneplus/settings/better/OPFnaticWallPapers;Z)Z

    iget-object v0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers$4;->this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPFnaticWallPapers;->access$800(Lcom/oneplus/settings/better/OPFnaticWallPapers;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers$4;->this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPFnaticWallPapers;->access$1000(Lcom/oneplus/settings/better/OPFnaticWallPapers;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return v1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers$4;->this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPFnaticWallPapers;->access$900(Lcom/oneplus/settings/better/OPFnaticWallPapers;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers$4;->this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPFnaticWallPapers;->access$1000(Lcom/oneplus/settings/better/OPFnaticWallPapers;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers$4;->this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPFnaticWallPapers;->access$1000(Lcom/oneplus/settings/better/OPFnaticWallPapers;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method
