.class public Lcom/android/settings/notification/RemoteVolumePreferenceController;
.super Lcom/android/settings/notification/VolumeSeekBarPreferenceController;
.source "RemoteVolumePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/RemoteVolumePreferenceController$RemoteVolumeSliceWorker;
    }
.end annotation


# static fields
.field private static final KEY_REMOTE_VOLUME:Ljava/lang/String; = "remote_volume"

.field static final REMOTE_VOLUME:I = 0x64
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field mActiveToken:Landroid/media/session/MediaSession$Token;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field mCallbacks:Lcom/android/settingslib/volume/MediaSessions$Callbacks;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field mMediaController:Landroid/media/session/MediaController;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mMediaSessions:Lcom/android/settingslib/volume/MediaSessions;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "remote_volume"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;-><init>(Lcom/android/settings/notification/RemoteVolumePreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mCallbacks:Lcom/android/settingslib/volume/MediaSessions$Callbacks;

    new-instance v0, Lcom/android/settingslib/volume/MediaSessions;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mCallbacks:Lcom/android/settingslib/volume/MediaSessions$Callbacks;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/settingslib/volume/MediaSessions;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/settingslib/volume/MediaSessions$Callbacks;)V

    iput-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mMediaSessions:Lcom/android/settingslib/volume/MediaSessions;

    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/notification/RemoteVolumePreferenceController;->getActiveRemoteToken(Landroid/content/Context;)Landroid/media/session/MediaSession$Token;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/notification/RemoteVolumePreferenceController;->updateToken(Landroid/media/session/MediaSession$Token;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/RemoteVolumePreferenceController;Landroid/media/session/MediaSession$Token;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/RemoteVolumePreferenceController;->updateToken(Landroid/media/session/MediaSession$Token;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/notification/RemoteVolumePreferenceController;Lcom/android/settings/notification/VolumeSeekBarPreference;Landroid/media/session/MediaSession$Token;Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/RemoteVolumePreferenceController;->updatePreference(Lcom/android/settings/notification/VolumeSeekBarPreference;Landroid/media/session/MediaSession$Token;Landroid/media/session/MediaController$PlaybackInfo;)V

    return-void
.end method

.method public static getActiveRemoteToken(Landroid/content/Context;)Landroid/media/session/MediaSession$Token;
    .locals 7

    const-class v0, Landroid/media/session/MediaSessionManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/session/MediaController;

    invoke-virtual {v4}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/notification/RemoteVolumePreferenceController;->isRemote(Landroid/media/session/MediaController$PlaybackInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static isRemote(Landroid/media/session/MediaController$PlaybackInfo;)Z
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updatePreference(Lcom/android/settings/notification/VolumeSeekBarPreference;Landroid/media/session/MediaSession$Token;Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setMax(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setVisible(Z)V

    invoke-virtual {p3}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/RemoteVolumePreferenceController;->setSliderPosition(I)Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private updateToken(Landroid/media/session/MediaSession$Token;)V
    .locals 3

    iput-object p1, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mActiveToken:Landroid/media/session/MediaSession$Token;

    if-eqz p1, :cond_0

    new-instance v0, Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mActiveToken:Landroid/media/session/MediaSession$Token;

    invoke-direct {v0, v1, v2}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    iput-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mMediaController:Landroid/media/session/MediaController;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mMediaController:Landroid/media/session/MediaController;

    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v1, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mActiveToken:Landroid/media/session/MediaSession$Token;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v1, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mActiveToken:Landroid/media/session/MediaSession$Token;

    iget-object v2, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/notification/RemoteVolumePreferenceController;->updatePreference(Lcom/android/settings/notification/VolumeSeekBarPreference;Landroid/media/session/MediaSession$Token;Landroid/media/session/MediaController$PlaybackInfo;)V

    :cond_1
    return-void
.end method

.method public getAudioStream()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/android/settings/notification/RemoteVolumePreferenceController$RemoteVolumeSliceWorker;

    return-object v0
.end method

.method public getMax()I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->getMax()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mMediaController:Landroid/media/session/MediaController;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v1

    :cond_2
    return v1
.end method

.method public getMin()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->getMin()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMuteIcon()I
    .locals 1

    const v0, 0x7f0803ca

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "remote_volume"

    return-object v0
.end method

.method public getSliderPosition()I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->getProgress()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mMediaController:Landroid/media/session/MediaController;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v1

    :cond_2
    return v1
.end method

.method public isSliceable()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/notification/RemoteVolumePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "remote_volume"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    invoke-super {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->onPause()V

    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mMediaSessions:Lcom/android/settingslib/volume/MediaSessions;

    invoke-virtual {v0}, Lcom/android/settingslib/volume/MediaSessions;->destroy()V

    return-void
.end method

.method public onResume()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    invoke-super {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->onResume()V

    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mMediaSessions:Lcom/android/settingslib/volume/MediaSessions;

    invoke-virtual {v0}, Lcom/android/settingslib/volume/MediaSessions;->init()V

    return-void
.end method

.method public setSliderPosition(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setProgress(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mMediaController:Landroid/media/session/MediaController;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0, p1, v1}, Landroid/media/session/MediaController;->setVolumeTo(II)V

    const/4 v0, 0x1

    return v0
.end method

.method public useDynamicSliceSummary()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
