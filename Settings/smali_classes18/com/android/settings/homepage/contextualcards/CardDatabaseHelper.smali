.class public Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CardDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper$CardColumns;
    }
.end annotation


# static fields
.field public static final CARD_TABLE:Ljava/lang/String; = "cards"

.field private static final CREATE_CARD_TABLE:Ljava/lang/String; = "CREATE TABLE cards(name TEXT NOT NULL PRIMARY KEY, type INTEGER NOT NULL, score DOUBLE NOT NULL, slice_uri TEXT, category INTEGER DEFAULT 0, localized_to_locale TEXT, package_name TEXT NOT NULL, app_version INTEGER NOT NULL, title_res_name TEXT, title_text TEXT, summary_res_name TEXT, summary_text TEXT, icon_res_name TEXT, icon_res_id INTEGER DEFAULT 0, card_action INTEGER, expire_time_ms INTEGER, support_half_width INTEGER DEFAULT 0, card_dismissed INTEGER DEFAULT 0 );"

.field private static final DATABASE_NAME:Ljava/lang/String; = "homepage_cards.db"

.field private static final DATABASE_VERSION:I = 0x5

.field private static final TAG:Ljava/lang/String; = "CardDatabaseHelper"

.field static sCardDatabaseHelper:Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "homepage_cards.db"

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;
    .locals 3

    const-class v0, Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;->sCardDatabaseHelper:Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;->sCardDatabaseHelper:Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;

    :cond_0
    sget-object v1, Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;->sCardDatabaseHelper:Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method getContextualCards()Landroid/database/Cursor;
    .locals 10

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const-string v9, "card_dismissed=0"

    const-string v1, "cards"

    const/4 v2, 0x0

    const-string v3, "card_dismissed=0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "score DESC"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public markContextualCardAsDismissed(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "card_dismissed"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "name=?"

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v2, v4

    const-string v4, "cards"

    const-string v5, "name=?"

    invoke-virtual {v0, v4, v1, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/settings/homepage/contextualcards/CardContentProvider;->DELETE_CARD_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return v4
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE cards(name TEXT NOT NULL PRIMARY KEY, type INTEGER NOT NULL, score DOUBLE NOT NULL, slice_uri TEXT, category INTEGER DEFAULT 0, localized_to_locale TEXT, package_name TEXT NOT NULL, app_version INTEGER NOT NULL, title_res_name TEXT, title_text TEXT, summary_res_name TEXT, summary_text TEXT, icon_res_name TEXT, icon_res_id INTEGER DEFAULT 0, card_action INTEGER, expire_time_ms INTEGER, support_half_width INTEGER DEFAULT 0, card_dismissed INTEGER DEFAULT 0 );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    if-ge p2, p3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reconstructing DB from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CardDatabaseHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DROP TABLE IF EXISTS cards"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method
