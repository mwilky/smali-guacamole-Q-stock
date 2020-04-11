.class Lcom/android/server/gwm;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ugm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ugm;


# direct methods
.method constructor <init>(Lcom/android/server/ugm;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/gwm;->this$0:Lcom/android/server/ugm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const-string p1, "LightIdle_Status"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/gwm;->this$0:Lcom/android/server/ugm;

    invoke-static {p1}, Lcom/android/server/ugm;->you(Lcom/android/server/ugm;)Landroid/os/PowerManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_1
    const-string p2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/gwm;->this$0:Lcom/android/server/ugm;

    invoke-static {p1}, Lcom/android/server/ugm;->you(Lcom/android/server/ugm;)Landroid/os/PowerManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    iget-object p0, p0, Lcom/android/server/gwm;->this$0:Lcom/android/server/ugm;

    invoke-static {p0}, Lcom/android/server/ugm;->tsu(Lcom/android/server/ugm;)Lcom/android/server/ugm$you;

    move-result-object p0

    invoke-static {v3, v2}, Lcom/android/server/ugm;->kth(II)I

    move-result p1

    goto :goto_2

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/server/gwm;->this$0:Lcom/android/server/ugm;

    invoke-static {p0}, Lcom/android/server/ugm;->tsu(Lcom/android/server/ugm;)Lcom/android/server/ugm$you;

    move-result-object p0

    invoke-static {v3, v1}, Lcom/android/server/ugm;->kth(II)I

    move-result p1

    :goto_2
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    return-void
.end method
