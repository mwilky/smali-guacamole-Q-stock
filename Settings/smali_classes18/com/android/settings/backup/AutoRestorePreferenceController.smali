.class public Lcom/android/settings/backup/AutoRestorePreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "AutoRestorePreferenceController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AutoRestorePrefCtrler"


# instance fields
.field private mPSCD:Lcom/android/settings/backup/PrivacySettingsConfigData;

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/backup/PrivacySettingsConfigData;->getInstance()Lcom/android/settings/backup/PrivacySettingsConfigData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/AutoRestorePreferenceController;->mPSCD:Lcom/android/settings/backup/PrivacySettingsConfigData;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/backup/AutoRestorePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/backup/PrivacySettingsUtils;->isAdminUser(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/backup/AutoRestorePreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "auto_restore"

    invoke-static {v0, v1}, Lcom/android/settings/backup/PrivacySettingsUtils;->isInvisibleKey(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/backup/AutoRestorePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "backup_auto_restore"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setChecked(Z)Z
    .locals 6

    move v0, p1

    const/4 v1, 0x0

    nop

    const-string v2, "backup"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v2

    :try_start_0
    invoke-interface {v2, v0}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    iget-object v4, p0, Lcom/android/settings/backup/AutoRestorePreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v4, Landroidx/preference/SwitchPreference;

    if-nez v0, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v4, v5}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    const-string v4, "AutoRestorePrefCtrler"

    const-string v5, "Error can\'t set setAutoRestore"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return v1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    iput-object p1, p0, Lcom/android/settings/backup/AutoRestorePreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/backup/AutoRestorePreferenceController;->mPSCD:Lcom/android/settings/backup/PrivacySettingsConfigData;

    invoke-virtual {v0}, Lcom/android/settings/backup/PrivacySettingsConfigData;->isBackupEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
