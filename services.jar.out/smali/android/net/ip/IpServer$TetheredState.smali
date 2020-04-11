.class Landroid/net/ip/IpServer$TetheredState;
.super Landroid/net/ip/IpServer$BaseServingState;
.source "IpServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetheredState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ip/IpServer;


# direct methods
.method constructor <init>(Landroid/net/ip/IpServer;)V
    .locals 0

    iput-object p1, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-direct {p0, p1}, Landroid/net/ip/IpServer$BaseServingState;-><init>(Landroid/net/ip/IpServer;)V

    return-void
.end method

.method private cleanupUpstream()V
    .locals 2

    iget-object v0, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$2400(Landroid/net/ip/IpServer;)Landroid/net/util/InterfaceSet;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$2400(Landroid/net/ip/IpServer;)Landroid/net/util/InterfaceSet;

    move-result-object v0

    iget-object v0, v0, Landroid/net/util/InterfaceSet;->ifnames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/net/ip/IpServer$TetheredState;->cleanupUpstreamInterface(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/net/ip/IpServer;->access$2402(Landroid/net/ip/IpServer;Landroid/net/util/InterfaceSet;)Landroid/net/util/InterfaceSet;

    return-void
.end method

.method private cleanupUpstreamInterface(Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v0, "v4-"

    const-string v1, "IpServer"

    :try_start_0
    iget-object v2, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v2}, Landroid/net/ip/IpServer;->access$2500(Landroid/net/ip/IpServer;)Landroid/net/INetworkStatsService;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {}, Landroid/net/ip/IpServer;->access$2600()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in forceUpdate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v2}, Landroid/net/ip/IpServer;->access$1700(Landroid/net/ip/IpServer;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v3, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v3}, Landroid/net/ip/IpServer;->access$1600(Landroid/net/ip/IpServer;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Landroid/os/INetworkManagementService;->stopInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v2}, Landroid/net/ip/IpServer;->access$2700(Landroid/net/ip/IpServer;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Remove clat interface to upstream"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v3}, Landroid/net/ip/IpServer;->access$1700(Landroid/net/ip/IpServer;)Landroid/os/INetworkManagementService;

    move-result-object v3

    iget-object v4, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v4}, Landroid/net/ip/IpServer;->access$1600(Landroid/net/ip/IpServer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Landroid/os/INetworkManagementService;->stopInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {}, Landroid/net/ip/IpServer;->access$2600()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in removeInterfaceForward: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    :try_start_2
    iget-object v0, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$1700(Landroid/net/ip/IpServer;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iget-object v2, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v2}, Landroid/net/ip/IpServer;->access$1600(Landroid/net/ip/IpServer;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/os/INetworkManagementService;->disableNat(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-static {}, Landroid/net/ip/IpServer;->access$2600()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in disableNat: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-void
.end method

.method private noChangeInUpstreamIfaceSet(Landroid/net/util/InterfaceSet;)Z
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$2400(Landroid/net/ip/IpServer;)Landroid/net/util/InterfaceSet;

    move-result-object v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$2400(Landroid/net/ip/IpServer;)Landroid/net/util/InterfaceSet;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$2400(Landroid/net/ip/IpServer;)Landroid/net/util/InterfaceSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/util/InterfaceSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private upstreamInterfacesAdd(Landroid/net/util/InterfaceSet;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/util/InterfaceSet;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Landroid/net/util/InterfaceSet;->ifnames:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v1}, Landroid/net/ip/IpServer;->access$2400(Landroid/net/ip/IpServer;)Landroid/net/util/InterfaceSet;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v1}, Landroid/net/ip/IpServer;->access$2400(Landroid/net/ip/IpServer;)Landroid/net/util/InterfaceSet;

    move-result-object v1

    iget-object v1, v1, Landroid/net/util/InterfaceSet;->ifnames:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method private upstreamInterfacesRemoved(Landroid/net/util/InterfaceSet;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/util/InterfaceSet;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$2400(Landroid/net/ip/IpServer;)Landroid/net/util/InterfaceSet;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v1}, Landroid/net/ip/IpServer;->access$2400(Landroid/net/ip/IpServer;)Landroid/net/util/InterfaceSet;

    move-result-object v1

    iget-object v1, v1, Landroid/net/util/InterfaceSet;->ifnames:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v1, p1, Landroid/net/util/InterfaceSet;->ifnames:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    return-object v0
.end method


# virtual methods
.method public enter()V
    .locals 2

    invoke-super {p0}, Landroid/net/ip/IpServer$BaseServingState;->enter()V

    iget-object v0, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$000(Landroid/net/ip/IpServer;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$100(Landroid/net/ip/IpServer;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ip/IpServer;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_0
    invoke-static {}, Landroid/net/ip/IpServer;->access$2200()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tethered "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v1}, Landroid/net/ip/IpServer;->access$1600(Landroid/net/ip/IpServer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IpServer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/net/ip/IpServer;->access$800(Landroid/net/ip/IpServer;I)V

    return-void
.end method

.method public exit()V
    .locals 0

    invoke-direct {p0}, Landroid/net/ip/IpServer$TetheredState;->cleanupUpstream()V

    invoke-super {p0}, Landroid/net/ip/IpServer$BaseServingState;->exit()V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 14

    const-string/jumbo v0, "v4-"

    invoke-super {p0, p1}, Landroid/net/ip/IpServer$BaseServingState;->processMessage(Landroid/os/Message;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v1, p0, v3}, Landroid/net/ip/IpServer;->access$900(Landroid/net/ip/IpServer;Lcom/android/internal/util/State;I)V

    iget v1, p1, Landroid/os/Message;->what:I

    const v3, 0x50066

    if-eq v1, v3, :cond_8

    const v3, 0x50070

    const/4 v4, 0x0

    if-eq v1, v3, :cond_1

    return v4

    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/util/InterfaceSet;

    invoke-direct {p0, v1}, Landroid/net/ip/IpServer$TetheredState;->noChangeInUpstreamIfaceSet(Landroid/net/util/InterfaceSet;)Z

    move-result v3

    const-string v5, "IpServer"

    if-eqz v3, :cond_2

    invoke-static {}, Landroid/net/ip/IpServer;->access$2600()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "Connection changed noop - dropping"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_2
    if-nez v1, :cond_3

    invoke-direct {p0}, Landroid/net/ip/IpServer$TetheredState;->cleanupUpstream()V

    goto/16 :goto_3

    :cond_3
    invoke-direct {p0, v1}, Landroid/net/ip/IpServer$TetheredState;->upstreamInterfacesRemoved(Landroid/net/util/InterfaceSet;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Landroid/net/ip/IpServer$TetheredState;->cleanupUpstreamInterface(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v1}, Landroid/net/ip/IpServer$TetheredState;->upstreamInterfacesAdd(Landroid/net/util/InterfaceSet;)Ljava/util/Set;

    move-result-object v3

    iget-object v6, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v6, v1}, Landroid/net/ip/IpServer;->access$2402(Landroid/net/ip/IpServer;Landroid/net/util/InterfaceSet;)Landroid/net/util/InterfaceSet;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    :try_start_0
    iget-object v8, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v8}, Landroid/net/ip/IpServer;->access$1700(Landroid/net/ip/IpServer;)Landroid/os/INetworkManagementService;

    move-result-object v8

    iget-object v9, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v9}, Landroid/net/ip/IpServer;->access$1600(Landroid/net/ip/IpServer;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v7}, Landroid/os/INetworkManagementService;->enableNat(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v8}, Landroid/net/ip/IpServer;->access$1700(Landroid/net/ip/IpServer;)Landroid/os/INetworkManagementService;

    move-result-object v8

    iget-object v9, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v9}, Landroid/net/ip/IpServer;->access$1600(Landroid/net/ip/IpServer;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v7}, Landroid/os/INetworkManagementService;->startInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v8}, Landroid/net/ip/IpServer;->access$2700(Landroid/net/ip/IpServer;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v8}, Landroid/net/ip/IpServer;->access$2400(Landroid/net/ip/IpServer;)Landroid/net/util/InterfaceSet;

    move-result-object v8

    iget-object v8, v8, Landroid/net/util/InterfaceSet;->ifnames:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v10, v0

    invoke-virtual {v9, v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_5

    const-string v11, "Add clat interface to upstream"

    invoke-static {v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v11}, Landroid/net/ip/IpServer;->access$1700(Landroid/net/ip/IpServer;)Landroid/os/INetworkManagementService;

    move-result-object v11

    iget-object v12, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v12}, Landroid/net/ip/IpServer;->access$1600(Landroid/net/ip/IpServer;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v9, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Landroid/os/INetworkManagementService;->startInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    goto :goto_2

    :cond_6
    nop

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v4, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v4}, Landroid/net/ip/IpServer;->access$300(Landroid/net/ip/IpServer;)Landroid/net/util/SharedLog;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception enabling NAT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/net/ip/IpServer$TetheredState;->cleanupUpstream()V

    iget-object v4, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    const/16 v5, 0x8

    invoke-static {v4, v5}, Landroid/net/ip/IpServer;->access$002(Landroid/net/ip/IpServer;I)I

    iget-object v4, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v4}, Landroid/net/ip/IpServer;->access$100(Landroid/net/ip/IpServer;)Lcom/android/internal/util/State;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/ip/IpServer;->transitionTo(Lcom/android/internal/util/IState;)V

    return v2

    :cond_7
    goto :goto_3

    :cond_8
    iget-object v0, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$300(Landroid/net/ip/IpServer;)Landroid/net/util/SharedLog;

    move-result-object v0

    const-string v1, "CMD_TETHER_REQUESTED while already tethering."

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    nop

    :cond_9
    :goto_3
    return v2
.end method
