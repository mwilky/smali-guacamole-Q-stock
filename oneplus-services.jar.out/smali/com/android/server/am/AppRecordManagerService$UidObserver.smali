.class final Lcom/android/server/am/AppRecordManagerService$UidObserver;
.super Landroid/app/IUidObserver$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppRecordManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "UidObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppRecordManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppRecordManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/AppRecordManagerService$UidObserver;->this$0:Lcom/android/server/am/AppRecordManagerService;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUidActive: uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/server/am/AppRecordManagerService;->myLog(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService$UidObserver;->this$0:Lcom/android/server/am/AppRecordManagerService;

    invoke-static {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->access$000(Lcom/android/server/am/AppRecordManagerService;I)Lcom/android/server/am/tsu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/tsu;->Ea()V

    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onUidGone(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUidGone: uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " disabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {v0, p2}, Lcom/android/server/am/AppRecordManagerService;->myLog(ILjava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/am/AppRecordManagerService$UidObserver;->this$0:Lcom/android/server/am/AppRecordManagerService;

    invoke-static {p2, p1}, Lcom/android/server/am/AppRecordManagerService;->access$000(Lcom/android/server/am/AppRecordManagerService;I)Lcom/android/server/am/tsu;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/am/tsu;->Fa()V

    iget-boolean p2, p2, Lcom/android/server/am/tsu;->mIsolated:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/server/am/AppRecordManagerService$UidObserver;->this$0:Lcom/android/server/am/AppRecordManagerService;

    invoke-static {p2}, Lcom/android/server/am/AppRecordManagerService;->access$100(Lcom/android/server/am/AppRecordManagerService;)Ljava/util/HashMap;

    move-result-object p2

    monitor-enter p2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService$UidObserver;->this$0:Lcom/android/server/am/AppRecordManagerService;

    invoke-static {p0}, Lcom/android/server/am/AppRecordManagerService;->access$100(Lcom/android/server/am/AppRecordManagerService;)Ljava/util/HashMap;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public onUidIdle(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUidIdle: uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " disabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {v0, p2}, Lcom/android/server/am/AppRecordManagerService;->myLog(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService$UidObserver;->this$0:Lcom/android/server/am/AppRecordManagerService;

    invoke-static {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->access$000(Lcom/android/server/am/AppRecordManagerService;I)Lcom/android/server/am/tsu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/tsu;->Ga()V

    return-void
.end method

.method public onUidStateChanged(IIJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUidStateChanged: uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " procState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " procStateSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/server/am/AppRecordManagerService;->myLog(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService$UidObserver;->this$0:Lcom/android/server/am/AppRecordManagerService;

    invoke-static {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->access$000(Lcom/android/server/am/AppRecordManagerService;I)Lcom/android/server/am/tsu;

    move-result-object p0

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/am/tsu;->zta(IJ)V

    return-void
.end method
