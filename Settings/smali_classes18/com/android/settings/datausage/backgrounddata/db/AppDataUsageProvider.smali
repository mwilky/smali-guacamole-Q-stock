.class public Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider;
.super Landroid/content/ContentProvider;
.source "AppDataUsageProvider.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.android.settings.app.datausage"

.field private static final BACKGROUND_DIR:I = 0x0

.field private static final BACKGROUND_ITEM:I = 0x1

.field public static final TABLE_BACKGROUND:Ljava/lang/String; = "background_data"

.field private static final TAG:Ljava/lang/String; = "AppDataUsageProvider"

.field private static mUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mHelper:Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider;->mUriMatcher:Landroid/content/UriMatcher;

    sget-object v0, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.settings.app.datausage"

    const-string v2, "background_data"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "background_data/#"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private addPackageMonitor()V
    .locals 5

    new-instance v0, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider$1;-><init>(Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider;)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    iget-object v0, p0, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider;->mHelper:Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageHelper;

    invoke-static {v0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->getSqliteDatabase(Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    sget-object v2, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const-string v3, "background_data"

    if-eqz v2, :cond_2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string v5, "id = ?"

    invoke-virtual {v0, v3, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    nop

    :goto_0
    return v1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    sget-object v1, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "vnd.android.cursor.item/com.android.settings.app.datausage.background_data"

    goto :goto_0

    :cond_1
    const-string v0, "vnd.android.cursor.dir/com.android.settings.app.datausage.background_data"

    nop

    :goto_0
    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider;->mHelper:Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageHelper;

    invoke-static {v0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->getSqliteDatabase(Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v2, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0, p2}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->isQueryDataEmpty(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->isHaveInternetPermission(Landroid/content/Context;Landroid/content/ContentValues;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "background_data"

    invoke-virtual {v0, v2, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_2
    :goto_0
    return-object v1
.end method

.method public onCreate()Z
    .locals 2

    new-instance v0, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageHelper;

    invoke-virtual {p0}, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider;->mHelper:Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageHelper;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider;->addPackageMonitor()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13

    move-object v0, p0

    iget-object v1, v0, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider;->mHelper:Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageHelper;

    invoke-static {v1}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->getSqliteDatabase(Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    const/4 v10, 0x0

    sget-object v2, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider;->mUriMatcher:Landroid/content/UriMatcher;

    move-object v11, p1

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Ljava/lang/String;

    new-array v6, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v12, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v3, "background_data"

    const-string v5, "id = ?"

    move-object v2, v1

    move-object v4, p2

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v3, "background_data"

    move-object v2, v1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    nop

    :goto_0
    return-object v10
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    iget-object v0, p0, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider;->mHelper:Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageHelper;

    invoke-static {v0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->getSqliteDatabase(Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    sget-object v2, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const-string v3, "background_data"

    if-eqz v2, :cond_2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string v5, "id = ?"

    invoke-virtual {v0, v3, p2, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    nop

    :goto_0
    return v1
.end method
