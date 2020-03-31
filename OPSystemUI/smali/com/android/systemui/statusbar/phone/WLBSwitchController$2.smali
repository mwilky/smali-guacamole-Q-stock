.class Lcom/android/systemui/statusbar/phone/WLBSwitchController$2;
.super Ljava/lang/Object;
.source "WLBSwitchController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/WLBSwitchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/WLBSwitchController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/WLBSwitchController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$2;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$2;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->access$202(Lcom/android/systemui/statusbar/phone/WLBSwitchController;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$2;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->access$302(Lcom/android/systemui/statusbar/phone/WLBSwitchController;Z)Z

    const/4 p1, 0x0

    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$2;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->access$400(Lcom/android/systemui/statusbar/phone/WLBSwitchController;)Landroid/os/Messenger;

    move-result-object p2

    iput-object p2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$2;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->access$200(Lcom/android/systemui/statusbar/phone/WLBSwitchController;)Landroid/os/Messenger;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x5

    iput p2, p1, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$2;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->access$200(Lcom/android/systemui/statusbar/phone/WLBSwitchController;)Landroid/os/Messenger;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$2;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->access$202(Lcom/android/systemui/statusbar/phone/WLBSwitchController;Landroid/os/Messenger;)Landroid/os/Messenger;

    return-void
.end method
