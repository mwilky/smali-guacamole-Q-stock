.class Lcom/oneplus/settings/controllers/UstWfcStatusTracker$2;
.super Ljava/lang/Object;
.source "UstWfcStatusTracker.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/controllers/UstWfcStatusTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/controllers/UstWfcStatusTracker;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/controllers/UstWfcStatusTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker$2;->this$0:Lcom/oneplus/settings/controllers/UstWfcStatusTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "onServiceConnected"

    invoke-static {v0}, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->access$000(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker$2;->this$0:Lcom/oneplus/settings/controllers/UstWfcStatusTracker;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->access$302(Lcom/oneplus/settings/controllers/UstWfcStatusTracker;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker$2;->this$0:Lcom/oneplus/settings/controllers/UstWfcStatusTracker;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->access$402(Lcom/oneplus/settings/controllers/UstWfcStatusTracker;Z)Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker$2;->this$0:Lcom/oneplus/settings/controllers/UstWfcStatusTracker;

    invoke-static {v1}, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->access$500(Lcom/oneplus/settings/controllers/UstWfcStatusTracker;)Landroid/os/Messenger;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker$2;->this$0:Lcom/oneplus/settings/controllers/UstWfcStatusTracker;

    invoke-static {v1}, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->access$300(Lcom/oneplus/settings/controllers/UstWfcStatusTracker;)Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "onServiceDisconnected"

    invoke-static {v0}, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->access$000(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker$2;->this$0:Lcom/oneplus/settings/controllers/UstWfcStatusTracker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->access$302(Lcom/oneplus/settings/controllers/UstWfcStatusTracker;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker$2;->this$0:Lcom/oneplus/settings/controllers/UstWfcStatusTracker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->access$402(Lcom/oneplus/settings/controllers/UstWfcStatusTracker;Z)Z

    return-void
.end method
