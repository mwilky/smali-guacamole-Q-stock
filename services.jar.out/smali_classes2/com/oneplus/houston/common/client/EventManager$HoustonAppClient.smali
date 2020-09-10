.class Lcom/oneplus/houston/common/client/EventManager$HoustonAppClient;
.super Lcom/oneplus/houston/common/client/HoustonServiceNative;
.source "EventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/houston/common/client/EventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HoustonAppClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/houston/common/client/EventManager;


# direct methods
.method private constructor <init>(Lcom/oneplus/houston/common/client/EventManager;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/houston/common/client/EventManager$HoustonAppClient;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    invoke-direct {p0}, Lcom/oneplus/houston/common/client/HoustonServiceNative;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/houston/common/client/EventManager;Lcom/oneplus/houston/common/client/EventManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/houston/common/client/EventManager$HoustonAppClient;-><init>(Lcom/oneplus/houston/common/client/EventManager;)V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/oneplus/houston/common/client/Event;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "EventManager"

    const-string v1, "onResult Event, return back "

    invoke-static {v0, v1}, Lcom/oneplus/houston/common/client/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/houston/common/client/EventManager$HoustonAppClient;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    invoke-static {v0}, Lcom/oneplus/houston/common/client/EventManager;->access$000(Lcom/oneplus/houston/common/client/EventManager;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/houston/common/client/EventManager$HoustonAppClient;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    invoke-static {v2}, Lcom/oneplus/houston/common/client/EventManager;->access$000(Lcom/oneplus/houston/common/client/EventManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/houston/common/client/EventManager$HoustonAppClient;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    invoke-static {v2}, Lcom/oneplus/houston/common/client/EventManager;->access$000(Lcom/oneplus/houston/common/client/EventManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/houston/common/client/AbsEventCallback;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/oneplus/houston/common/client/EventManager$HoustonAppClient;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    invoke-static {v3, v2, p1}, Lcom/oneplus/houston/common/client/EventManager;->access$100(Lcom/oneplus/houston/common/client/EventManager;Lcom/oneplus/houston/common/client/AbsEventCallback;Lcom/oneplus/houston/common/client/Event;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v4, v2, Lcom/oneplus/houston/common/client/AbsEventCallback;->mObserver:Lcom/oneplus/houston/common/client/observer/EventCallback;

    invoke-virtual {v4, p1}, Lcom/oneplus/houston/common/client/observer/EventCallback;->onResult(Lcom/oneplus/houston/common/client/Event;)V

    goto :goto_1

    :cond_0
    const-string v4, "EventManager"

    const-string v5, "Have not reached the threshold"

    invoke-static {v4, v5}, Lcom/oneplus/houston/common/client/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendCommand(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public sendCommand(Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public sendCommand(Lcom/oneplus/houston/common/client/Event;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "EventManager"

    const-string v1, "sendCommand data, return back "

    invoke-static {v0, v1}, Lcom/oneplus/houston/common/client/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
