.class public Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AppDataUsageHelper.java"


# static fields
.field private static final CREATE_TABLE:Ljava/lang/String; = "create table background_data(id integer primary key autoincrement,package_name text,uid integer,type integer DEFAULT 2)"

.field private static final DB_NAME:Ljava/lang/String; = "op_app_datausage.db"

.field private static final DB_VERSION:I = 0x2

.field private static final TABLE_NAME:Ljava/lang/String; = "background_data"

.field private static final TAG:Ljava/lang/String; = "AppDataUsageHelper"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "op_app_datausage.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p1, p0, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "create table background_data(id integer primary key autoincrement,package_name text,uid integer,type integer DEFAULT 2)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "AppDataUsageHelper"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const-string v0, "drop table if exists background_data"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
