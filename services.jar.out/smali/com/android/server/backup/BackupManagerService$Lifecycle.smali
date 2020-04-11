.class public final Lcom/android/server/backup/BackupManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/backup/Trampoline;

    invoke-direct {v0, p1}, Lcom/android/server/backup/Trampoline;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/server/backup/BackupManagerService;->access$102(Lcom/android/server/backup/Trampoline;)Lcom/android/server/backup/Trampoline;

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->access$100()Lcom/android/server/backup/Trampoline;

    move-result-object v0

    const-string v1, "backup"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/backup/BackupManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onStopUser(I)V
    .locals 1

    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->access$100()Lcom/android/server/backup/Trampoline;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/backup/Trampoline;->stopUser(I)V

    return-void
.end method

.method public onUnlockUser(I)V
    .locals 1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->access$100()Lcom/android/server/backup/Trampoline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/Trampoline;->initializeService()V

    :cond_0
    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->access$100()Lcom/android/server/backup/Trampoline;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/backup/Trampoline;->unlockUser(I)V

    return-void
.end method
