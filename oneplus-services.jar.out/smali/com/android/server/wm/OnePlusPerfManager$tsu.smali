.class Lcom/android/server/wm/OnePlusPerfManager$tsu;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OnePlusPerfManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "tsu"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/OnePlusPerfManager;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/OnePlusPerfManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OnePlusPerfManager$tsu;->this$0:Lcom/android/server/wm/OnePlusPerfManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager$tsu;->this$0:Lcom/android/server/wm/OnePlusPerfManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage # msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/wm/OnePlusPerfManager$tsu;->this$0:Lcom/android/server/wm/OnePlusPerfManager;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/OnePlusPerfManager;->unlockPidToCpu(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/OnePlusPerfManager$tsu;->this$0:Lcom/android/server/wm/OnePlusPerfManager;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/OnePlusPerfManager;->lockPidToCpu(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/OnePlusPerfManager$tsu;->this$0:Lcom/android/server/wm/OnePlusPerfManager;

    invoke-static {p0}, Lcom/android/server/wm/OnePlusPerfManager;->access$300(Lcom/android/server/wm/OnePlusPerfManager;)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/OnePlusPerfManager$tsu;->this$0:Lcom/android/server/wm/OnePlusPerfManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/wm/OnePlusPerfManager;->access$200(Lcom/android/server/wm/OnePlusPerfManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/OnePlusPerfManager$tsu;->this$0:Lcom/android/server/wm/OnePlusPerfManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/wm/OnePlusPerfManager;->access$100(Lcom/android/server/wm/OnePlusPerfManager;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
