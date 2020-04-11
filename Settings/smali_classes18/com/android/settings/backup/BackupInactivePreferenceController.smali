.class public Lcom/android/settings/backup/BackupInactivePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "BackupInactivePreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    new-instance v0, Lcom/android/settings/backup/BackupSettingsHelper;

    iget-object v1, p0, Lcom/android/settings/backup/BackupInactivePreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/backup/BackupSettingsHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/settings/backup/BackupSettingsHelper;->isBackupServiceActive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/backup/BackupInactivePreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "backup_inactive"

    invoke-static {v0, v1}, Lcom/android/settings/backup/PrivacySettingsUtils;->isInvisibleKey(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
