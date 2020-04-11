.class public Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;
.super Ljava/lang/Object;
.source "CachedStorageValuesHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper$Clock;
    }
.end annotation


# static fields
.field public static final CACHE_APPS_SIZE_KEY:Ljava/lang/String; = "cache_apps_size"

.field public static final EXTERNAL_APP_BYTES:Ljava/lang/String; = "external_apps_bytes"

.field public static final EXTERNAL_AUDIO_BYTES:Ljava/lang/String; = "external_audio_bytes"

.field public static final EXTERNAL_IMAGE_BYTES:Ljava/lang/String; = "external_image_bytes"

.field public static final EXTERNAL_TOTAL_BYTES:Ljava/lang/String; = "external_total_bytes"

.field public static final EXTERNAL_VIDEO_BYTES:Ljava/lang/String; = "external_video_bytes"

.field public static final FREE_BYTES_KEY:Ljava/lang/String; = "free_bytes"

.field public static final GAME_APPS_SIZE_KEY:Ljava/lang/String; = "game_apps_size"

.field public static final MUSIC_APPS_SIZE_KEY:Ljava/lang/String; = "music_apps_size"

.field public static final OTHER_APPS_SIZE_KEY:Ljava/lang/String; = "other_apps_size"

.field public static final PHOTO_APPS_SIZE_KEY:Ljava/lang/String; = "photo_apps_size"

.field public static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "CachedStorageValues"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final TIMESTAMP_KEY:Ljava/lang/String; = "last_query_timestamp"

.field public static final TOTAL_BYTES_KEY:Ljava/lang/String; = "total_bytes"

.field public static final USER_ID_KEY:Ljava/lang/String; = "user_id"

.field public static final VIDEO_APPS_SIZE_KEY:Ljava/lang/String; = "video_apps_size"


# instance fields
.field private final mClobberThreshold:Ljava/lang/Long;

.field protected mClock:Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper$Clock;

.field private final mSharedPreferences:Landroid/content/SharedPreferences;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    const-string v0, "CachedStorageValues"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper$Clock;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper$Clock;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mClock:Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper$Clock;

    iput p2, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mUserId:I

    nop

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    const-string v3, "storage_settings_clobber_threshold"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mClobberThreshold:Ljava/lang/Long;

    return-void
.end method

.method private isDataValid()Z
    .locals 11

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "user_id"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mUserId:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-wide v3, 0x7fffffffffffffffL

    const-string v5, "last_query_timestamp"

    invoke-interface {v1, v5, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mClock:Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper$Clock;

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper$Clock;->getCurrentTime()J

    move-result-wide v5

    sub-long v7, v5, v3

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mClobberThreshold:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v1, v7, v9

    if-gez v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method


# virtual methods
.method public cacheResult(Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-wide v1, p1, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->freeBytes:J

    const-string v3, "free_bytes"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-wide v1, p1, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    const-string v3, "total_bytes"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-wide v1, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->gamesSize:J

    const-string v3, "game_apps_size"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-wide v1, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->musicAppsSize:J

    const-string v3, "music_apps_size"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-wide v1, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->videoAppsSize:J

    const-string v3, "video_apps_size"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-wide v1, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->photosAppsSize:J

    const-string v3, "photo_apps_size"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-wide v1, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->otherAppsSize:J

    const-string v3, "other_apps_size"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-wide v1, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->cacheSize:J

    const-string v3, "cache_apps_size"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v1, v1, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->totalBytes:J

    const-string v3, "external_total_bytes"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v1, v1, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->audioBytes:J

    const-string v3, "external_audio_bytes"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v1, v1, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->videoBytes:J

    const-string v3, "external_video_bytes"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v1, v1, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->imageBytes:J

    const-string v3, "external_image_bytes"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v1, v1, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->appBytes:J

    const-string v3, "external_apps_bytes"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mUserId:I

    const-string v2, "user_id"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mClock:Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper$Clock;

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper$Clock;->getCurrentTime()J

    move-result-wide v1

    const-string v3, "last_query_timestamp"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public getCachedAppsStorageResult()Landroid/util/SparseArray;
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->isDataValid()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-wide/16 v3, -0x1

    const-string v5, "game_apps_size"

    invoke-interface {v1, v5, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iget-object v1, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v7, "music_apps_size"

    invoke-interface {v1, v7, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iget-object v1, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v9, "video_apps_size"

    invoke-interface {v1, v9, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iget-object v1, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v11, "photo_apps_size"

    invoke-interface {v1, v11, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v1, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v13, "other_apps_size"

    invoke-interface {v1, v13, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    iget-object v1, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v15, "cache_apps_size"

    invoke-interface {v1, v15, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v17, 0x0

    cmp-long v15, v5, v17

    if-ltz v15, :cond_4

    cmp-long v15, v7, v17

    if-ltz v15, :cond_4

    cmp-long v15, v9, v17

    if-ltz v15, :cond_4

    cmp-long v15, v11, v17

    if-ltz v15, :cond_4

    cmp-long v15, v13, v17

    if-ltz v15, :cond_4

    cmp-long v15, v1, v17

    if-gez v15, :cond_1

    move-wide/from16 v20, v1

    move-wide/from16 v36, v9

    move-wide/from16 v34, v11

    move-wide/from16 v32, v13

    goto/16 :goto_1

    :cond_1
    iget-object v15, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-wide/from16 v19, v1

    const-string v1, "external_total_bytes"

    invoke-interface {v15, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iget-object v15, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-wide/from16 v32, v13

    const-string v13, "external_audio_bytes"

    invoke-interface {v15, v13, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    iget-object v15, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-wide/from16 v34, v11

    const-string v11, "external_video_bytes"

    invoke-interface {v15, v11, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v15, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-wide/from16 v36, v9

    const-string v9, "external_image_bytes"

    invoke-interface {v15, v9, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iget-object v15, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "external_apps_bytes"

    invoke-interface {v15, v0, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v1, v17

    if-ltz v0, :cond_3

    cmp-long v0, v13, v17

    if-ltz v0, :cond_3

    cmp-long v0, v11, v17

    if-ltz v0, :cond_3

    cmp-long v0, v9, v17

    if-ltz v0, :cond_3

    cmp-long v0, v3, v17

    if-gez v0, :cond_2

    move-object/from16 v0, p0

    move-wide/from16 v17, v1

    move-wide/from16 v20, v19

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    move-object/from16 v21, v0

    move-wide/from16 v22, v1

    move-wide/from16 v24, v13

    move-wide/from16 v26, v11

    move-wide/from16 v28, v9

    move-wide/from16 v30, v3

    invoke-direct/range {v21 .. v31}, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;-><init>(JJJJJ)V

    new-instance v15, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;

    invoke-direct {v15}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;-><init>()V

    iput-wide v5, v15, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->gamesSize:J

    iput-wide v7, v15, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->musicAppsSize:J

    move-wide/from16 v17, v1

    move-wide/from16 v1, v36

    iput-wide v1, v15, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->videoAppsSize:J

    move-wide/from16 v1, v34

    iput-wide v1, v15, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->photosAppsSize:J

    move-wide/from16 v1, v32

    iput-wide v1, v15, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->otherAppsSize:J

    move-wide/from16 v1, v19

    iput-wide v1, v15, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->cacheSize:J

    iput-object v0, v15, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    new-instance v16, Landroid/util/SparseArray;

    invoke-direct/range {v16 .. v16}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v19, v16

    move-object/from16 v16, v0

    move-wide/from16 v20, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mUserId:I

    move-object/from16 v2, v19

    invoke-virtual {v2, v1, v15}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-object v2

    :cond_3
    move-object/from16 v0, p0

    move-wide/from16 v17, v1

    move-wide/from16 v20, v19

    :goto_0
    const/4 v1, 0x0

    return-object v1

    :cond_4
    move-wide/from16 v20, v1

    move-wide/from16 v36, v9

    move-wide/from16 v34, v11

    move-wide/from16 v32, v13

    :goto_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getCachedPrivateStorageInfo()Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;
    .locals 8

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->isDataValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-wide/16 v2, -0x1

    const-string v4, "free_bytes"

    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/CachedStorageValuesHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "total_bytes"

    invoke-interface {v0, v6, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_2

    cmp-long v0, v2, v6

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    invoke-direct {v0, v4, v5, v2, v3}, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;-><init>(JJ)V

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method
