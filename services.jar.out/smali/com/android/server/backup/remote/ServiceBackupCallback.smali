.class public Lcom/android/server/backup/remote/ServiceBackupCallback;
.super Landroid/app/backup/IBackupCallback$Stub;
.source "ServiceBackupCallback.java"


# instance fields
.field private final mBackupManager:Landroid/app/backup/IBackupManager;

.field private final mToken:I


# direct methods
.method public constructor <init>(Landroid/app/backup/IBackupManager;I)V
    .locals 0

    invoke-direct {p0}, Landroid/app/backup/IBackupCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/remote/ServiceBackupCallback;->mBackupManager:Landroid/app/backup/IBackupManager;

    iput p2, p0, Lcom/android/server/backup/remote/ServiceBackupCallback;->mToken:I

    return-void
.end method


# virtual methods
.method public operationComplete(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/remote/ServiceBackupCallback;->mBackupManager:Landroid/app/backup/IBackupManager;

    iget v1, p0, Lcom/android/server/backup/remote/ServiceBackupCallback;->mToken:I

    invoke-interface {v0, v1, p1, p2}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V

    return-void
.end method
