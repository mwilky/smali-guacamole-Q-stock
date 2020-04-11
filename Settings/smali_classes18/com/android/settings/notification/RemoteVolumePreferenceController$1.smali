.class Lcom/android/settings/notification/RemoteVolumePreferenceController$1;
.super Ljava/lang/Object;
.source "RemoteVolumePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/volume/MediaSessions$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/RemoteVolumePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/RemoteVolumePreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/RemoteVolumePreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;->this$0:Lcom/android/settings/notification/RemoteVolumePreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoteRemoved(Landroid/media/session/MediaSession$Token;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;->this$0:Lcom/android/settings/notification/RemoteVolumePreferenceController;

    iget-object v0, v0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mActiveToken:Landroid/media/session/MediaSession$Token;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;->this$0:Lcom/android/settings/notification/RemoteVolumePreferenceController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/notification/RemoteVolumePreferenceController;->access$000(Lcom/android/settings/notification/RemoteVolumePreferenceController;Landroid/media/session/MediaSession$Token;)V

    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;->this$0:Lcom/android/settings/notification/RemoteVolumePreferenceController;

    iget-object v0, v0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;->this$0:Lcom/android/settings/notification/RemoteVolumePreferenceController;

    iget-object v0, v0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public onRemoteUpdate(Landroid/media/session/MediaSession$Token;Ljava/lang/String;Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;->this$0:Lcom/android/settings/notification/RemoteVolumePreferenceController;

    iget-object v0, v0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mActiveToken:Landroid/media/session/MediaSession$Token;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;->this$0:Lcom/android/settings/notification/RemoteVolumePreferenceController;

    invoke-static {v0, p1}, Lcom/android/settings/notification/RemoteVolumePreferenceController;->access$000(Lcom/android/settings/notification/RemoteVolumePreferenceController;Landroid/media/session/MediaSession$Token;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;->this$0:Lcom/android/settings/notification/RemoteVolumePreferenceController;

    iget-object v0, v0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mActiveToken:Landroid/media/session/MediaSession$Token;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;->this$0:Lcom/android/settings/notification/RemoteVolumePreferenceController;

    iget-object v1, v0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v2, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;->this$0:Lcom/android/settings/notification/RemoteVolumePreferenceController;

    iget-object v2, v2, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mActiveToken:Landroid/media/session/MediaSession$Token;

    invoke-static {v0, v1, v2, p3}, Lcom/android/settings/notification/RemoteVolumePreferenceController;->access$100(Lcom/android/settings/notification/RemoteVolumePreferenceController;Lcom/android/settings/notification/VolumeSeekBarPreference;Landroid/media/session/MediaSession$Token;Landroid/media/session/MediaController$PlaybackInfo;)V

    :cond_1
    return-void
.end method

.method public onRemoteVolumeChanged(Landroid/media/session/MediaSession$Token;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;->this$0:Lcom/android/settings/notification/RemoteVolumePreferenceController;

    iget-object v0, v0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mActiveToken:Landroid/media/session/MediaSession$Token;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;->this$0:Lcom/android/settings/notification/RemoteVolumePreferenceController;

    iget-object v0, v0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;->this$0:Lcom/android/settings/notification/RemoteVolumePreferenceController;

    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/RemoteVolumePreferenceController;->setSliderPosition(I)Z

    :cond_0
    return-void
.end method
