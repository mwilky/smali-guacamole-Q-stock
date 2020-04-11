.class public Lcom/oneplus/android/server/alertslider/you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/android/server/alertslider/rtg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/alertslider/you$zta;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final MAX:I = 0x64

.field private static final TAG:Ljava/lang/String; = "AlertSliderAudioPolicy"

.field private static final kY:Ljava/lang/String; = "oem_zen_media_switch"

.field private static final lY:I = 0x0

.field private static final nY:I = 0x1

.field private static final oY:I = 0x2


# instance fields
.field private final gY:Ljava/lang/Object;

.field private hY:Lcom/oneplus/android/server/alertslider/tsu;

.field private iY:Z

.field private jY:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioService:Lcom/android/server/audio/AudioService;

.field private mContext:Landroid/content/Context;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mSettingsObserver:Lcom/oneplus/android/server/alertslider/you$zta;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/alertslider/you;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/audio/AudioService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/server/alertslider/you;->gY:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/alertslider/you;->jY:Z

    iput-object p1, p0, Lcom/oneplus/android/server/alertslider/you;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/android/server/alertslider/you;->mAudioService:Lcom/android/server/audio/AudioService;

    const-string p2, "notification"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    iput-object p2, p0, Lcom/oneplus/android/server/alertslider/you;->mNotificationManager:Landroid/app/NotificationManager;

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/oneplus/android/server/alertslider/you;->mAudioManager:Landroid/media/AudioManager;

    new-instance p1, Lcom/oneplus/android/server/alertslider/you$zta;

    invoke-direct {p1, p0}, Lcom/oneplus/android/server/alertslider/you$zta;-><init>(Lcom/oneplus/android/server/alertslider/you;)V

    iput-object p1, p0, Lcom/oneplus/android/server/alertslider/you;->mSettingsObserver:Lcom/oneplus/android/server/alertslider/you$zta;

    iget-object p1, p0, Lcom/oneplus/android/server/alertslider/you;->mSettingsObserver:Lcom/oneplus/android/server/alertslider/you$zta;

    invoke-virtual {p1}, Lcom/oneplus/android/server/alertslider/you$zta;->observe()V

    iget-object p1, p0, Lcom/oneplus/android/server/alertslider/you;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "oem_zen_media_switch"

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iput-boolean p2, p0, Lcom/oneplus/android/server/alertslider/you;->iY:Z

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/alertslider/you;->DEBUG:Z

    return v0
.end method

.method private rr()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/android/server/alertslider/you;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    iget-object p0, p0, Lcom/oneplus/android/server/alertslider/you;->mAudioService:Lcom/android/server/audio/AudioService;

    const/16 v0, 0x64

    const/4 v2, 0x0

    const-string v3, "AlertSliderManager"

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/server/audio/AudioService;->adjustStreamVolume(IIILjava/lang/String;)V

    return-void
.end method

.method private sr()V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/android/server/alertslider/you;->mAudioService:Lcom/android/server/audio/AudioService;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/16 v3, -0x64

    const/4 v4, 0x2

    const-string v5, "AlertSliderManager"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->setStreamVolumeForDevice(IIIILjava/lang/String;)V

    return-void
.end method

.method private tr()V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/android/server/alertslider/you;->mAudioService:Lcom/android/server/audio/AudioService;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/16 v3, 0x64

    const/4 v4, 0x2

    const-string v5, "AlertSliderManager"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->setStreamVolumeForDevice(IIIILjava/lang/String;)V

    return-void
.end method

.method static synthetic zta(Lcom/oneplus/android/server/alertslider/you;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/alertslider/you;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic zta(Lcom/oneplus/android/server/alertslider/you;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/alertslider/you;->iY:Z

    return p1
.end method


# virtual methods
.method public ibl(II)V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/alertslider/you;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setOnePlusRingVolumeRange] min volume:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " max volume "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlertSliderAudioPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/alertslider/you;->mAudioService:Lcom/android/server/audio/AudioService;

    iput p1, p0, Lcom/android/server/audio/AudioService;->mOnePlusMinRingVolumeIndex:I

    iput p2, p0, Lcom/android/server/audio/AudioService;->mOnePlusMaxRingVolumeIndex:I

    return-void
.end method

.method public setUp()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/android/server/alertslider/you;->gY:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/oneplus/android/server/alertslider/you;->iY:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/android/server/alertslider/you;->sr()V

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/oneplus/android/server/alertslider/you;->y(I)V

    iget-object v1, p0, Lcom/oneplus/android/server/alertslider/you;->mAudioService:Lcom/android/server/audio/AudioService;

    const/4 v2, 0x0

    const-string v3, "AlertSliderManager"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/audio/AudioService;->setRingerModeInternal(ILjava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oneplus/android/server/alertslider/you;->y(I)V

    const-string p0, "AlertSliderAudioPolicy"

    const-string v1, "setUp"

    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sis(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/alertslider/you;->jY:Z

    return-void
.end method

.method public y(I)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/alertslider/you;->mAudioService:Lcom/android/server/audio/AudioService;

    iput p1, p0, Lcom/android/server/audio/AudioService;->mOnePlusFixedRingerMode:I

    return-void
.end method

.method public zgw()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/android/server/alertslider/you;->gY:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/android/server/alertslider/you;->tr()V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/oneplus/android/server/alertslider/you;->y(I)V

    iget-object v2, p0, Lcom/oneplus/android/server/alertslider/you;->mAudioService:Lcom/android/server/audio/AudioService;

    const-string v3, "AlertSliderManager"

    invoke-virtual {v2, v1, v3}, Lcom/android/server/audio/AudioService;->setRingerModeInternal(ILjava/lang/String;)V

    const/4 v1, 0x1

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/android/server/alertslider/you;->ibl(II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oneplus/android/server/alertslider/you;->y(I)V

    const-string p0, "AlertSliderAudioPolicy"

    const-string v1, "setDown"

    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public zta()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/android/server/alertslider/you;->gY:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/android/server/alertslider/you;->tr()V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/oneplus/android/server/alertslider/you;->y(I)V

    iget-object v1, p0, Lcom/oneplus/android/server/alertslider/you;->mAudioService:Lcom/android/server/audio/AudioService;

    const-string v2, "AlertSliderManager"

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/server/audio/AudioService;->setRingerModeInternal(ILjava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/oneplus/android/server/alertslider/you;->y(I)V

    const-string p0, "AlertSliderAudioPolicy"

    const-string v1, "setMiddle"

    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
