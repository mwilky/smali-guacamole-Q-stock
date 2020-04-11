.class Lcom/android/server/OnePlusGPSFreezer$1;
.super Landroid/app/IUidObserver$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/dma;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/dma;


# direct methods
.method constructor <init>(Lcom/android/server/dma;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OnePlusGPSFreezer$1;->this$0:Lcom/android/server/dma;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onUidIdle(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onUidStateChanged(IIJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p3, p0, Lcom/android/server/OnePlusGPSFreezer$1;->this$0:Lcom/android/server/dma;

    invoke-static {p3}, Lcom/android/server/dma;->zta(Lcom/android/server/dma;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/android/server/OnePlusGPSFreezer$1;->this$0:Lcom/android/server/dma;

    invoke-static {p3}, Lcom/android/server/dma;->you(Lcom/android/server/dma;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/android/server/OnePlusGPSFreezer$1;->this$0:Lcom/android/server/dma;

    invoke-static {p3}, Lcom/android/server/dma;->sis(Lcom/android/server/dma;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    :cond_0
    sget-boolean p3, Lcom/android/server/dma;->DEBUG:Z

    if-eqz p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onUidStateChanged uid:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " procState:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "OPGPS"

    invoke-static {p4, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p3, 0x5

    if-ge p2, p3, :cond_2

    iget-object p0, p0, Lcom/android/server/OnePlusGPSFreezer$1;->this$0:Lcom/android/server/dma;

    const/4 p2, 0x0

    :goto_0
    invoke-static {p0, p2, p1}, Lcom/android/server/dma;->zta(Lcom/android/server/dma;ZI)V

    goto :goto_1

    :cond_2
    if-ne p2, p3, :cond_3

    invoke-static {}, Lcom/android/server/dma;->access$400()Landroid/content/pm/IPackageManager;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/android/server/dma;->access$500()Ljava/util/List;

    move-result-object p4

    monitor-enter p4

    :try_start_0
    invoke-static {}, Lcom/android/server/dma;->access$500()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/OnePlusGPSFreezer$1;->this$0:Lcom/android/server/dma;

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    if-le p2, p3, :cond_4

    iget-object p0, p0, Lcom/android/server/OnePlusGPSFreezer$1;->this$0:Lcom/android/server/dma;

    const/4 p2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method
