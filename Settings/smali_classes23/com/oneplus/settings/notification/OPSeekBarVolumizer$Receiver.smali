.class final Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "OPSeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/notification/OPSeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field private mListening:Z

.field final synthetic this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;


# direct methods
.method private constructor <init>(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;Lcom/oneplus/settings/notification/OPSeekBarVolumizer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;-><init>(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V

    return-void
.end method

.method private updateVolumeSlider(II)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1600(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1900(I)Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1300(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v0

    if-ne p1, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    nop

    iget-object v3, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v3}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$500(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    const/4 v3, -0x1

    if-eq p2, v3, :cond_4

    iget-object v3, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v3}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1400(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v4}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1300(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v3

    if-nez v3, :cond_3

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$2400(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v3}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$700(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v3

    invoke-virtual {v2, p2, v3, v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->postUpdateSlider(IIZ)V

    :cond_4
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v3, 0x3

    const/4 v4, -0x1

    if-eqz v1, :cond_2

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v4, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v4}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1300(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v4

    if-ne v4, v3, :cond_0

    iget-object v3, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v3}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1400(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v3}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1400(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v3}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1500(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v1, v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->updateVolumeSlider(II)V

    :cond_1
    goto/16 :goto_2

    :cond_2
    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1600(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1400(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v2

    invoke-static {v1, v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1702(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;I)I

    :cond_3
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1800(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1400(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1400(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1100(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V

    goto/16 :goto_2

    :cond_4
    const-string v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1300(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v2

    const/4 v5, 0x4

    if-eq v2, v5, :cond_5

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1300(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v2

    if-ne v2, v3, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1400(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1400(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v2

    if-nez v2, :cond_6

    return-void

    :cond_6
    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1900(I)Z

    move-result v2

    if-eqz v2, :cond_7

    return-void

    :cond_7
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1500(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1400(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->updateVolumeSlider(II)V

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v2, v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$2000(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;I)I

    move-result v2

    if-eq v2, v4, :cond_9

    iget-object v3, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v3}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$2100(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v3

    if-ne v2, v3, :cond_9

    iget-object v3, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v3}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1400(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->updateVolumeSlider(II)V

    :cond_9
    :goto_0
    goto/16 :goto_2

    :cond_a
    const-string v1, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$2300(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$2202(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;I)I

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1100(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V

    goto/16 :goto_2

    :cond_b
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$500(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1400(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v1

    if-eqz v1, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VOLUME_CHANGED_ACTION mStreamType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1300(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPSeekBarVolumizer"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1300(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v1

    if-ne v1, v3, :cond_f

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1400(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v3, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v3}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1300(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iget-object v3, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v3}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1400(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v4}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1300(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v3

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "volume = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$2400(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;

    move-result-object v2

    iget-object v4, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v4}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$700(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v4

    invoke-virtual {v2, v1, v4, v3}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->postUpdateSlider(IIZ)V

    goto :goto_2

    :cond_c
    const-string v1, "android.app.action.NOTIFICATION_POLICY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$2300(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationManager;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$2502(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;Landroid/app/NotificationManager$Policy;)Landroid/app/NotificationManager$Policy;

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$2500(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/app/NotificationManager$Policy;

    move-result-object v2

    iget v2, v2, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v2, v2, 0x20

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_d

    move v2, v4

    goto :goto_1

    :cond_d
    move v2, v3

    :goto_1
    invoke-static {v1, v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$2602(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;Z)Z

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$2500(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/app/NotificationManager$Policy;

    move-result-object v2

    iget v2, v2, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_e

    move v3, v4

    :cond_e
    invoke-static {v1, v3}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$2702(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;Z)Z

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$2500(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/app/NotificationManager$Policy;

    move-result-object v2

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyNotificationZenSoundsMuted(Landroid/app/NotificationManager$Policy;)Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-static {v1, v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$2802(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;Z)Z

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1100(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V

    :cond_f
    :goto_2
    return-void
.end method

.method public setListening(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->mListening:Z

    if-eqz p1, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.app.action.NOTIFICATION_POLICY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1200(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1200(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_0
    return-void
.end method
