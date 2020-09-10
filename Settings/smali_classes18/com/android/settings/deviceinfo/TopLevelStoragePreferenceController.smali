.class public Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "TopLevelStoragePreferenceController.java"


# instance fields
.field private final mStorageManager:Landroid/os/storage/StorageManager;

.field private final mStorageManagerVolumeProvider:Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;->mStorageManager:Landroid/os/storage/StorageManager;

    new-instance v0, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-direct {v0, v1}, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;-><init>(Landroid/os/storage/StorageManager;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;->mStorageManagerVolumeProvider:Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$refreshSummary$0$TopLevelStoragePreferenceController(Landroidx/preference/Preference;Ljava/text/NumberFormat;DLcom/android/settingslib/deviceinfo/PrivateStorageInfo;)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p5, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    long-to-double v2, v2

    div-double v2, p3, v2

    invoke-virtual {p2, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;->mContext:Landroid/content/Context;

    iget-wide v3, p5, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->freeBytes:J

    invoke-static {v2, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const v2, 0x7f12155c

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$refreshSummary$1$TopLevelStoragePreferenceController(Landroidx/preference/Preference;)V
    .locals 12

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v7

    iget-object v0, p0, Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;->mStorageManagerVolumeProvider:Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

    invoke-static {v0}, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->getPrivateStorageInfo(Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;)Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    move-result-object v8

    iget-wide v0, v8, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    iget-wide v2, v8, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->freeBytes:J

    sub-long/2addr v0, v2

    long-to-double v9, v0

    new-instance v11, Lcom/android/settings/deviceinfo/-$$Lambda$TopLevelStoragePreferenceController$UEnBCjxQQtYsCjP43GxlWGD3euo;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, v7

    move-wide v4, v9

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/deviceinfo/-$$Lambda$TopLevelStoragePreferenceController$UEnBCjxQQtYsCjP43GxlWGD3euo;-><init>(Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;Landroidx/preference/Preference;Ljava/text/NumberFormat;DLcom/android/settingslib/deviceinfo/PrivateStorageInfo;)V

    invoke-static {v11}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected refreshSummary(Landroidx/preference/Preference;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/settings/deviceinfo/-$$Lambda$TopLevelStoragePreferenceController$U7ZEz_Sh5aDJDkrfySNJywBLfnA;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/deviceinfo/-$$Lambda$TopLevelStoragePreferenceController$U7ZEz_Sh5aDJDkrfySNJywBLfnA;-><init>(Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;Landroidx/preference/Preference;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
