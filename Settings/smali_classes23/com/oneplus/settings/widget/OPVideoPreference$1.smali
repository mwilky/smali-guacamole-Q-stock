.class Lcom/oneplus/settings/widget/OPVideoPreference$1;
.super Ljava/lang/Object;
.source "OPVideoPreference.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/widget/OPVideoPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/widget/OPVideoPreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/widget/OPVideoPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/widget/OPVideoPreference$1;->this$0:Lcom/oneplus/settings/widget/OPVideoPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference$1;->this$0:Lcom/oneplus/settings/widget/OPVideoPreference;

    iget-object v0, v0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference$1;->this$0:Lcom/oneplus/settings/widget/OPVideoPreference;

    iget-object v0, v0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference$1;->this$0:Lcom/oneplus/settings/widget/OPVideoPreference;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/settings/widget/OPVideoPreference;->access$002(Lcom/oneplus/settings/widget/OPVideoPreference;Z)Z

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference$1;->this$0:Lcom/oneplus/settings/widget/OPVideoPreference;

    iget-object v0, v0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference$1;->this$0:Lcom/oneplus/settings/widget/OPVideoPreference;

    invoke-static {v0}, Lcom/oneplus/settings/widget/OPVideoPreference;->access$100(Lcom/oneplus/settings/widget/OPVideoPreference;)Landroid/widget/ImageView;

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

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference$1;->this$0:Lcom/oneplus/settings/widget/OPVideoPreference;

    invoke-static {v0}, Lcom/oneplus/settings/widget/OPVideoPreference;->access$000(Lcom/oneplus/settings/widget/OPVideoPreference;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference$1;->this$0:Lcom/oneplus/settings/widget/OPVideoPreference;

    invoke-static {v0}, Lcom/oneplus/settings/widget/OPVideoPreference;->access$100(Lcom/oneplus/settings/widget/OPVideoPreference;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference$1;->this$0:Lcom/oneplus/settings/widget/OPVideoPreference;

    invoke-static {v0}, Lcom/oneplus/settings/widget/OPVideoPreference;->access$100(Lcom/oneplus/settings/widget/OPVideoPreference;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference$1;->this$0:Lcom/oneplus/settings/widget/OPVideoPreference;

    invoke-static {v0}, Lcom/oneplus/settings/widget/OPVideoPreference;->access$200(Lcom/oneplus/settings/widget/OPVideoPreference;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference$1;->this$0:Lcom/oneplus/settings/widget/OPVideoPreference;

    iget-object v0, v0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference$1;->this$0:Lcom/oneplus/settings/widget/OPVideoPreference;

    iget-object v0, v0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference$1;->this$0:Lcom/oneplus/settings/widget/OPVideoPreference;

    iget-object v0, v0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_1
    return-void
.end method
