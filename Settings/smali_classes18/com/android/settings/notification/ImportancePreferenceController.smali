.class public Lcom/android/settings/notification/ImportancePreferenceController;
.super Lcom/android/settings/notification/NotificationPreferenceController;
.source "ImportancePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_IMPORTANCE:Ljava/lang/String; = "importance"


# instance fields
.field private mImportanceListener:Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/android/settings/notification/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    iput-object p2, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mImportanceListener:Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "importance"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    invoke-super {p0}, Lcom/android/settings/notification/NotificationPreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notification/ImportancePreferenceController;->isDefaultChannel()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-static {v1}, Lcom/android/settings/notification/SoundPreferenceController;->hasValidSound(Landroid/app/NotificationChannel;)Z

    move-result v1

    if-nez v1, :cond_0

    if-lt v0, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    const/4 v2, 0x2

    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    iget-object v1, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->lockFields(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1, v0}, Landroid/app/NotificationChannel;->setImportance(I)V

    iget-object v1, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->lockFields(I)V

    invoke-virtual {p0}, Lcom/android/settings/notification/ImportancePreferenceController;->saveChannel()V

    iget-object v1, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mImportanceListener:Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;

    invoke-virtual {v1}, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;->onImportanceChanged()V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isImportanceLockedByOEM()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    move-object v0, p1

    check-cast v0, Lcom/android/settings/notification/ImportancePreference;

    iget-object v3, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->isImportanceLockedByOEM()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lcom/android/settings/notification/ImportancePreference;->setConfigurable(Z)V

    iget-object v3, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/settings/notification/ImportancePreference;->setImportance(I)V

    iget-object v3, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v4, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/notification/NotificationBackend;->showSilentInStatusBar(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/settings/notification/ImportancePreference;->setDisplayInStatusBar(Z)V

    iget-object v3, p0, Lcom/android/settings/notification/ImportancePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_screen_show_silent_notifications"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ImportancePreference;->setDisplayOnLockscreen(Z)V

    :cond_2
    return-void
.end method
