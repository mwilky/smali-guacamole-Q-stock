.class final Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "VolumePreferenceCallback"
.end annotation


# instance fields
.field private mCurrent:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

.field final synthetic this$0:Lcom/android/settings/notification/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/SoundSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSampleStarting(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;->mCurrent:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->stopSample()V

    :cond_0
    iput-object p1, p0, Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;->mCurrent:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;->mCurrent:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/android/settings/notification/SoundSettings;

    iget-object v0, v0, Lcom/android/settings/notification/SoundSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/android/settings/notification/SoundSettings;

    iget-object v0, v0, Lcom/android/settings/notification/SoundSettings;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method public onStreamValueChanged(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;->mCurrent:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/android/settings/notification/SoundSettings;

    iget-object v0, v0, Lcom/android/settings/notification/SoundSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/android/settings/notification/SoundSettings;

    iget-object v0, v0, Lcom/android/settings/notification/SoundSettings;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public stopSample()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;->mCurrent:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->stopSample()V

    :cond_0
    return-void
.end method
