.class public abstract Lcom/android/settings/notification/RingtonePreferenceControllerBase;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "RingtonePreferenceControllerBase.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static final MAX_NUM_RINGTONES:I = 0x2

.field private static final OP_RINGTONE1_DEFUALT:Ljava/lang/String; = "op_ringtone1_df"

.field private static final OP_RINGTONE2_DEFUALT:Ljava/lang/String; = "op_ringtone2_df"

.field private static final TYPE_SMS:I = 0x8


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private static getLocatRingtoneTitle(Landroid/content/Context;Landroid/net/Uri;II)Ljava/lang/String;
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->isSystemRingtone(Landroid/content/Context;Landroid/net/Uri;I)Z

    move-result v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "mime_type"

    const-string v4, "_data"

    const-string v5, "title"

    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    filled-new-array {v5, v4, v3}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v2, "_display_name"

    filled-new-array {v2, v4, v3, v5}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0, p1, v1, p2, p3}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->updateRingtoneForInternal(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;II)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->getFileNameNoEx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v3

    :cond_2
    nop

    nop

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_3
    if-eqz v1, :cond_5

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2

    :catch_0
    move-exception v2

    if-eqz v1, :cond_5

    goto :goto_1

    :catch_1
    move-exception v2

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    :goto_2
    return-object v0

    :cond_6
    :goto_3
    return-object v0
.end method

.method static synthetic lambda$updateSummary$1(Landroidx/preference/Preference;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic lambda$updateSummary$2(Landroidx/preference/Preference;)V
    .locals 1

    const v0, 0x104063b

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method

.method private updateSummary(Landroidx/preference/Preference;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/notification/RingtonePreferenceControllerBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/notification/RingtonePreferenceControllerBase;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/RingtonePreferenceControllerBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/notification/RingtonePreferenceControllerBase;->getRingtoneType()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/android/settings/notification/RingtonePreferenceControllerBase;->getLocatRingtoneTitle(Landroid/content/Context;Landroid/net/Uri;II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    new-instance v2, Lcom/android/settings/notification/-$$Lambda$RingtonePreferenceControllerBase$DGmnmcDCcHzdJN6wPwVZkSTCfk0;

    invoke-direct {v2, p1, v1}, Lcom/android/settings/notification/-$$Lambda$RingtonePreferenceControllerBase$DGmnmcDCcHzdJN6wPwVZkSTCfk0;-><init>(Landroidx/preference/Preference;Ljava/lang/CharSequence;)V

    invoke-static {v2}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/android/settings/notification/-$$Lambda$RingtonePreferenceControllerBase$gFsZQNi0jHi_HOuyL6S9nWK-FtM;

    invoke-direct {v2, p1}, Lcom/android/settings/notification/-$$Lambda$RingtonePreferenceControllerBase$gFsZQNi0jHi_HOuyL6S9nWK-FtM;-><init>(Landroidx/preference/Preference;)V

    invoke-static {v2}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public abstract getRingtoneType()I
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$updateState$0$RingtonePreferenceControllerBase(Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/RingtonePreferenceControllerBase;->updateSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    new-instance v0, Lcom/android/settings/notification/-$$Lambda$RingtonePreferenceControllerBase$Y95tp89vC8fk0DlynP4A12MKPAU;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/notification/-$$Lambda$RingtonePreferenceControllerBase$Y95tp89vC8fk0DlynP4A12MKPAU;-><init>(Lcom/android/settings/notification/RingtonePreferenceControllerBase;Landroidx/preference/Preference;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
