.class Lcom/android/server/storage/AppFuseBridge$2;
.super Ljava/lang/Object;
.source "AppFuseBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/storage/AppFuseBridge;->onClosed(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/storage/AppFuseBridge;

.field final synthetic val$mountId:I


# direct methods
.method constructor <init>(Lcom/android/server/storage/AppFuseBridge;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/storage/AppFuseBridge$2;->this$0:Lcom/android/server/storage/AppFuseBridge;

    iput p2, p0, Lcom/android/server/storage/AppFuseBridge$2;->val$mountId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/storage/AppFuseBridge$2;->this$0:Lcom/android/server/storage/AppFuseBridge;

    invoke-static {v0}, Lcom/android/server/storage/AppFuseBridge;->access$000(Lcom/android/server/storage/AppFuseBridge;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/android/server/storage/AppFuseBridge$2;->val$mountId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/storage/AppFuseBridge$MountScope;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/storage/AppFuseBridge$MountScope;->setMountResultLocked(Z)V

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v1, p0, Lcom/android/server/storage/AppFuseBridge$2;->this$0:Lcom/android/server/storage/AppFuseBridge;

    invoke-static {v1}, Lcom/android/server/storage/AppFuseBridge;->access$000(Lcom/android/server/storage/AppFuseBridge;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/storage/AppFuseBridge$2;->val$mountId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
