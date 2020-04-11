.class Lcom/oneplus/android/server/scene/d;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/d;->this$0:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object p1, p0, Lcom/oneplus/android/server/scene/d;->this$0:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->access$600(Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, -0x1

    const-string v0, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_6

    goto :goto_0

    :cond_2
    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    iget-object p0, p0, Lcom/oneplus/android/server/scene/d;->this$0:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    invoke-static {p0}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->access$300(Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;)V

    goto :goto_1

    :cond_3
    const-string v0, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    const-string v0, "android.media.extra.AUDIO_PLUG_STATE"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    move p1, v0

    :cond_4
    iget-object p2, p0, Lcom/oneplus/android/server/scene/d;->this$0:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    invoke-static {p2}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->access$100(Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;)Z

    move-result p2

    if-eqz p2, :cond_6

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/Thread;

    iget-object p0, p0, Lcom/oneplus/android/server/scene/d;->this$0:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->updateVolumeRunnableForDP:Ljava/lang/Runnable;

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/android/server/scene/d;->this$0:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->updateVolumeRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x9c4

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    :goto_1
    return-void
.end method
