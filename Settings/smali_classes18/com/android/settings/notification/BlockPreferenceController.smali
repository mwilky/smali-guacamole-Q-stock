.class public Lcom/android/settings/notification/BlockPreferenceController;
.super Lcom/android/settings/notification/NotificationPreferenceController;
.source "BlockPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field private static final KEY_BLOCK:Ljava/lang/String; = "block"


# instance fields
.field private mImportanceListener:Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/android/settings/notification/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    iput-object p2, p0, Lcom/android/settings/notification/BlockPreferenceController;->mImportanceListener:Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "block"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 7

    xor-int/lit8 v0, p2, 0x1

    iget-object v1, p0, Lcom/android/settings/notification/BlockPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationBackend;->mInstantAppPKG:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "notify"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/android/settings/notification/BlockPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/settings/applications/AppStateNotificationBridge;->BASE_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/settings/notification/BlockPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v4, v4, Lcom/android/settings/notification/NotificationBackend;->mInstantAppPKG:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iput-boolean v0, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    iget-object v2, p0, Lcom/android/settings/notification/BlockPreferenceController;->mImportanceListener:Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;

    invoke-virtual {v2}, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;->onImportanceChangedForInstant()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/notification/BlockPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/settings/notification/BlockPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    if-nez v0, :cond_2

    if-nez v1, :cond_5

    :cond_2
    if-eqz v0, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/notification/BlockPreferenceController;->isDefaultChannel()Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, -0x3e8

    goto :goto_1

    :cond_4
    const/4 v4, 0x3

    :goto_1
    nop

    iget-object v5, p0, Lcom/android/settings/notification/BlockPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v5, v4}, Landroid/app/NotificationChannel;->setImportance(I)V

    invoke-virtual {p0}, Lcom/android/settings/notification/BlockPreferenceController;->saveChannel()V

    :cond_5
    iget-object v4, p0, Lcom/android/settings/notification/BlockPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v5, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v5, v5, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v6, v6, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/notification/NotificationBackend;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v4, v4, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-eq v4, v0, :cond_7

    iget-object v4, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iput-boolean v0, v4, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    iget-object v4, p0, Lcom/android/settings/notification/BlockPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v5, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v5, v5, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v6, v6, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    if-nez v0, :cond_6

    move v2, v3

    :cond_6
    invoke-virtual {v4, v5, v6, v2}, Lcom/android/settings/notification/NotificationBackend;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)Z

    :cond_7
    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/android/settings/notification/BlockPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/settings/notification/BlockPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    invoke-virtual {v1, v0}, Landroid/app/NotificationChannelGroup;->setBlocked(Z)V

    iget-object v1, p0, Lcom/android/settings/notification/BlockPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v2, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v3, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    iget-object v4, p0, Lcom/android/settings/notification/BlockPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/settings/notification/NotificationBackend;->updateChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;)V

    goto :goto_2

    :cond_9
    iget-object v1, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iput-boolean v0, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    iget-object v1, p0, Lcom/android/settings/notification/BlockPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v4, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v4, v4, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v5, v5, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    if-nez v0, :cond_a

    move v2, v3

    :cond_a
    invoke-virtual {v1, v4, v5, v2}, Lcom/android/settings/notification/NotificationBackend;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)Z

    :cond_b
    :goto_2
    iget-object v1, p0, Lcom/android/settings/notification/BlockPreferenceController;->mImportanceListener:Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;

    invoke-virtual {v1}, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;->onImportanceChanged()V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 5

    move-object v0, p1

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->setSelectable(Z)V

    const v2, 0x7f0a06a4

    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/widget/SwitchBar;

    if-eqz v2, :cond_b

    iget-object v3, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v3, :cond_b

    const v3, 0x7f120bc6

    invoke-virtual {v2, v3, v3}, Lcom/android/settings/widget/SwitchBar;->setSwitchBarText(II)V

    iget-object v3, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v3, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    const-string v4, "com.oneplus.deskclock"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v3, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    const-string v4, "com.android.incallui"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v3, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    const-string v4, "com.google.android.calendar"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v3, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    const-string v4, "com.oneplus.calendar"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v3, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    const-string v4, "com.android.dialer"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v3, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    const-string v4, "com.oneplus.screenrecord"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->show()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->hide()V

    :goto_1
    :try_start_0
    invoke-virtual {v2, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    :goto_2
    iget-object v3, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/SwitchBar;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    iget-object v3, p0, Lcom/android/settings/notification/BlockPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/notification/BlockPreferenceController;->isChannelBlockable()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_2
    iget-object v3, p0, Lcom/android/settings/notification/BlockPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/notification/BlockPreferenceController;->isChannelGroupBlockable()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_3
    iget-object v3, p0, Lcom/android/settings/notification/BlockPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v3, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->systemApp:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v3, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v3, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->lockedImportance:Z

    if-eqz v3, :cond_5

    :cond_4
    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_5
    iget-object v3, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v3, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    const-string v4, "com.tmobile.pr.adapt"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->hide()V

    :cond_6
    iget-object v3, p0, Lcom/android/settings/notification/BlockPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    const/4 v4, 0x1

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v3, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/notification/BlockPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    if-eqz v3, :cond_7

    move v1, v4

    goto :goto_3

    :cond_7
    nop

    :goto_3
    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/android/settings/notification/BlockPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v3, v3, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/android/settings/notification/BlockPreferenceController;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    invoke-virtual {v3}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v4

    :cond_9
    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_4

    :cond_a
    iget-object v1, p0, Lcom/android/settings/notification/BlockPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    xor-int/2addr v1, v4

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_b
    :goto_4
    return-void
.end method
