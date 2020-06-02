.class Lcom/oneplus/server/DynamicVsyncManager$DockDividerVisibilityListener;
.super Landroid/view/IDockedStackListener$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/server/DynamicVsyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DockDividerVisibilityListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/server/DynamicVsyncManager;


# direct methods
.method constructor <init>(Lcom/oneplus/server/DynamicVsyncManager;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/server/DynamicVsyncManager$DockDividerVisibilityListener;->this$0:Lcom/oneplus/server/DynamicVsyncManager;

    invoke-direct {p0}, Landroid/view/IDockedStackListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdjustedForImeChanged(ZJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onDividerVisibilityChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onDockSideChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onDockedStackExistsChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/server/DynamicVsyncManager$DockDividerVisibilityListener;->this$0:Lcom/oneplus/server/DynamicVsyncManager;

    invoke-static {v0}, Lcom/oneplus/server/DynamicVsyncManager;->igw(Lcom/oneplus/server/DynamicVsyncManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/server/DynamicVsyncManager$DockDividerVisibilityListener;->this$0:Lcom/oneplus/server/DynamicVsyncManager;

    invoke-static {v1}, Lcom/oneplus/server/DynamicVsyncManager;->wtn(Lcom/oneplus/server/DynamicVsyncManager;)Z

    move-result v1

    if-ne v1, p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oneplus/server/DynamicVsyncManager$DockDividerVisibilityListener;->this$0:Lcom/oneplus/server/DynamicVsyncManager;

    invoke-static {v1, p1}, Lcom/oneplus/server/DynamicVsyncManager;->rtg(Lcom/oneplus/server/DynamicVsyncManager;Z)Z

    iget-object p0, p0, Lcom/oneplus/server/DynamicVsyncManager$DockDividerVisibilityListener;->this$0:Lcom/oneplus/server/DynamicVsyncManager;

    invoke-static {p0}, Lcom/oneplus/server/DynamicVsyncManager;->gck(Lcom/oneplus/server/DynamicVsyncManager;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onDockedStackMinimizedChanged(ZJZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
