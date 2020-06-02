.class public Lcom/oneplus/settings/widget/OPVideoPreference;
.super Landroidx/preference/Preference;
.source "OPVideoPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OPVideoPreference"


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field private layout:Lcom/android/settings/widget/AspectRatioFrameLayout;

.field mAnimationAvailable:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mAspectRadio:F

.field private final mContext:Landroid/content/Context;

.field mMediaPlayer:Landroid/media/MediaPlayer;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mPreviewResource:I

.field private mVideoPath:Landroid/net/Uri;

.field private mVideoPaused:Z

.field private mVideoReady:Z

.field private pos:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mAspectRadio:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->pos:I

    iput-object p1, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/android/settings/R$styleable;->VideoPreference:[I

    invoke-virtual {v1, p2, v2, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "android.resource"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mVideoPath:Landroid/net/Uri;

    iget-object v3, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mVideoPath:Landroid/net/Uri;

    invoke-static {v3, v4}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/widget/OPVideoPreference;->setVisible(Z)V

    const v4, 0x7f0d0243

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/widget/OPVideoPreference;->setLayoutResource(I)V

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mPreviewResource:I

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v4, Lcom/oneplus/settings/widget/-$$Lambda$OPVideoPreference$ynCil1Vg3ClpXktrurvZlqx29d4;

    invoke-direct {v4, p0}, Lcom/oneplus/settings/widget/-$$Lambda$OPVideoPreference$ynCil1Vg3ClpXktrurvZlqx29d4;-><init>(Lcom/oneplus/settings/widget/OPVideoPreference;)V

    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget-object v4, Lcom/oneplus/settings/widget/-$$Lambda$OPVideoPreference$uc3qMTOa2JodIJYV5EhB8pjdWdg;->INSTANCE:Lcom/oneplus/settings/widget/-$$Lambda$OPVideoPreference$uc3qMTOa2JodIJYV5EhB8pjdWdg;

    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iput-boolean v3, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mAnimationAvailable:Z

    invoke-virtual {p0}, Lcom/oneplus/settings/widget/OPVideoPreference;->updateAspectRatio()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/widget/OPVideoPreference;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "OPVideoPreference"

    const-string v3, "Animation resource not found. Will not show animation."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    nop

    return-void

    :goto_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method static synthetic access$000(Lcom/oneplus/settings/widget/OPVideoPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mVideoReady:Z

    return v0
.end method

.method static synthetic access$002(Lcom/oneplus/settings/widget/OPVideoPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mVideoReady:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/settings/widget/OPVideoPreference;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/widget/OPVideoPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mVideoPaused:Z

    return v0
.end method

.method static synthetic lambda$new$1(Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method


# virtual methods
.method public isVideoPaused()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mVideoPaused:Z

    return v0
.end method

.method public synthetic lambda$new$0$OPVideoPreference(Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mVideoReady:Z

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-boolean v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mAnimationAvailable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a0760

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    const v1, 0x7f0a075d

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->imageView:Landroid/widget/ImageView;

    const v1, 0x7f0a0759

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/AspectRatioFrameLayout;

    iput-object v1, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->layout:Lcom/android/settings/widget/AspectRatioFrameLayout;

    iget-object v1, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->imageView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mPreviewResource:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->layout:Lcom/android/settings/widget/AspectRatioFrameLayout;

    iget v2, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mAspectRadio:F

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/AspectRatioFrameLayout;->setAspectRatio(F)V

    iget-object v1, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    new-instance v1, Lcom/oneplus/settings/widget/OPVideoPreference$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/widget/OPVideoPreference$1;-><init>(Lcom/oneplus/settings/widget/OPVideoPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method public onViewInvisible()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public onViewVisible(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mVideoPaused:Z

    iget-boolean v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mVideoReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method public setVideoPaused()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->layout:Lcom/android/settings/widget/AspectRatioFrameLayout;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mPreviewResource:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->layout:Lcom/android/settings/widget/AspectRatioFrameLayout;

    iget v1, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mAspectRadio:F

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/AspectRatioFrameLayout;->setAspectRatio(F)V

    :cond_0
    return-void
.end method

.method public setVideoResume()V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mVideoPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method

.method updateAspectRatio()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/oneplus/settings/widget/OPVideoPreference;->mAspectRadio:F

    return-void
.end method
