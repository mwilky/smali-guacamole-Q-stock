.class Lcom/android/server/am/ywr;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/oif;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/oif;


# direct methods
.method constructor <init>(Lcom/android/server/am/oif;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ywr;->this$0:Lcom/android/server/am/oif;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "receive "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EmbryoManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/am/ywr;->this$0:Lcom/android/server/am/oif;

    invoke-static {p2}, Lcom/android/server/am/oif;->zta(Lcom/android/server/am/oif;)Landroid/os/PowerManager;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string p2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isDeviceIdleMode= "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/am/ywr;->this$0:Lcom/android/server/am/oif;

    invoke-static {p2}, Lcom/android/server/am/oif;->zta(Lcom/android/server/am/oif;)Landroid/os/PowerManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/am/ywr;->this$0:Lcom/android/server/am/oif;

    invoke-static {p1}, Lcom/android/server/am/oif;->zta(Lcom/android/server/am/oif;)Landroid/os/PowerManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/server/am/ywr;->this$0:Lcom/android/server/am/oif;

    invoke-static {p1}, Lcom/android/server/am/oif;->you(Lcom/android/server/am/oif;)J

    move-result-wide p1

    const-wide/16 v0, -0x1

    cmp-long p1, p1, v0

    if-eqz p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object v0, p0, Lcom/android/server/am/ywr;->this$0:Lcom/android/server/am/oif;

    invoke-static {v0}, Lcom/android/server/am/oif;->you(Lcom/android/server/am/oif;)J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/32 v0, 0x1b77400

    cmp-long p1, p1, v0

    if-lez p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/android/server/am/ywr;->this$0:Lcom/android/server/am/oif;

    invoke-static {p1}, Lcom/android/server/am/oif;->sis(Lcom/android/server/am/oif;)Lcom/android/server/am/B;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/B;->xc()V

    iget-object p0, p0, Lcom/android/server/am/ywr;->this$0:Lcom/android/server/am/oif;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lcom/android/server/am/oif;->zta(Lcom/android/server/am/oif;J)J

    :cond_2
    :goto_0
    return-void
.end method
