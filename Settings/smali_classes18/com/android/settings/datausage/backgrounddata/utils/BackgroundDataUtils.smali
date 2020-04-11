.class public Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;
.super Ljava/lang/Object;
.source "BackgroundDataUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BackgroundDataUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBackgroundDataApp(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    if-eqz p0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->getSqliteDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, p1, p2, v1}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->addBackgroundDataApp(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;II)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static addBackgroundDataApp(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;II)V
    .locals 4

    if-eqz p0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->queryApp(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "package_name"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "uid"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v2, 0x0

    const-string v3, "background_data"

    invoke-virtual {p0, v3, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public static changeRoamingAppStatus(Landroid/content/Context;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->getSqliteDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {v0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->queryAllApp(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p0, v1}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->changeRoamingAppStatus(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-static {p0, v0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->initAppBackgroundDataType(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_1
    return-void
.end method

.method public static changeRoamingAppStatus(Landroid/content/Context;Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;)V
    .locals 7

    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->getPackage_name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->getUid()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->getPackage_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->getUid()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->getType()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->getPackage_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->getUid()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    const/4 v4, 0x1

    if-eq v0, v4, :cond_3

    const/4 v5, 0x2

    if-eq v0, v5, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->isRoaming()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p0, v2, v1, v3}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->setBlackList(Landroid/content/Context;ILjava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p0, v2, v1, v3}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->setBlackList(Landroid/content/Context;ILjava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p0, v2, v1, v3}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->setBlackList(Landroid/content/Context;ILjava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p0, v2, v1, v3}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->setBlackList(Landroid/content/Context;ILjava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    invoke-static {p0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->getSqliteDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->getPackage_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->getUid()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->deleteBackgroundDataApp(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    return-void
.end method

.method public static changeRoamingAppStatus(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;

    :try_start_0
    invoke-static {p0, v1}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->changeRoamingAppStatus(Landroid/content/Context;Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_1
    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_2
    return-void
.end method

.method private static closeCursor(Landroid/database/Cursor;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method public static deleteBackgroundDataApp(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2

    if-eqz p0, :cond_2

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->getSqliteDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    invoke-static {v0, p1, p2}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->deleteBackgroundDataApp(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    move-result v1

    return v1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public static deleteBackgroundDataApp(Landroid/database/sqlite/SQLiteDatabase;I)I
    .locals 4

    const/4 v0, -0x1

    if-eqz p0, :cond_2

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->queryApp(Landroid/database/sqlite/SQLiteDatabase;I)Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->getId()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "background_data"

    const-string v3, "id = ?"

    invoke-virtual {p0, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method public static deleteBackgroundDataApp(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I
    .locals 5

    const/4 v0, -0x1

    if-eqz p0, :cond_4

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->queryApp(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "background_data"

    if-eqz v0, :cond_2

    new-array v0, v2, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    const-string v2, "uid = ?"

    invoke-virtual {p0, v4, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "package_name = ? and uid = ?"

    invoke-virtual {p0, v4, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v0
.end method

.method private static filterApp(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "com.android.providers.downloads"

    invoke-static {p0, v1}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->getAppUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.google.android.gms"

    invoke-static {p0, v1}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->getAppUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getAllInternetApp(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    if-nez p1, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_4

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->filterApp(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_3

    :cond_2
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_1
    array-length v8, v6

    if-ge v7, v8, :cond_6

    aget-object v8, v6, v7

    const-string v9, "android.permission.INTERNET"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {p0, v4}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->getAppUid(Landroid/content/Context;Landroid/content/pm/PackageInfo;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {v8}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v9, 0x2

    invoke-static {p1, v5, v8, v9}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->addBackgroundDataApp(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;II)V

    new-instance v10, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;

    invoke-direct {v10, v5, v8, v9}, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    return-object v0

    :cond_8
    :goto_4
    return-object v0

    :cond_9
    :goto_5
    return-object v0
.end method

.method public static getAppType(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 4

    invoke-static {p0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->getSqliteDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0, v0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->initAppBackgroundDataType(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {v0, p1, p2}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->queryApp(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;

    invoke-virtual {v3}, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->getType()I

    move-result v3

    if-gt v3, v1, :cond_2

    if-gez v3, :cond_3

    :cond_2
    const/4 v3, 0x2

    :cond_3
    return v3

    :cond_4
    :goto_0
    invoke-static {v0, p1, p2, v1}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->addBackgroundDataApp(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;II)V

    return v1
.end method

.method public static getAppUid(Landroid/content/Context;Landroid/content/pm/PackageInfo;)I
    .locals 1

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->getAppUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getAppUid(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public static getRoamingEnable()I
    .locals 11

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.oneplus.android.telephony.OPSprintReqManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getDefault"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v6

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v6

    const-string v7, "getSettingsParamValue"

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v3

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v4

    invoke-virtual {v1, v7, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "roaming_reduction_enabled"

    aput-object v9, v8, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v4

    invoke-virtual {v7, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public static getSqliteDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageHelper;

    invoke-direct {v1, p0}, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageHelper;-><init>(Landroid/content/Context;)V

    nop

    :try_start_0
    invoke-virtual {v1}, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static getSqliteDatabase(Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageHelper;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static initAppBackgroundDataType(Landroid/content/Context;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->getSqliteDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->initAppBackgroundDataType(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public static initAppBackgroundDataType(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->queryAllApp(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-static {p0, p1}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->getAllInternetApp(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->changeRoamingAppStatus(Landroid/content/Context;Ljava/util/List;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public static isAppInstalled(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    if-nez v2, :cond_2

    invoke-static {p0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->getSqliteDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    if-eqz v3, :cond_1

    if-lez p2, :cond_1

    invoke-static {v3, p1, p2}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->deleteBackgroundDataApp(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    :cond_1
    return v0

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_1
    return v0
.end method

.method public static isHaveInternetPermission(Landroid/content/Context;Landroid/content/ContentValues;)Z
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "package_name"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->isHaveInternetPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isHaveInternetPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v2, :cond_2

    move v3, v0

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    aget-object v4, v2, v3

    const-string v5, "android.permission.INTERNET"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return v0

    :cond_3
    :goto_2
    return v0
.end method

.method public static isQueryDataEmpty(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 11

    invoke-static {p0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->getSqliteDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const/4 v9, 0x0

    if-nez v8, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v9

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x1

    aput-object v0, v4, v10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v1, "background_data"

    const-string v3, "package_name = ? and uid = ?"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    return v9

    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->closeCursor(Landroid/database/Cursor;)V

    return v10
.end method

.method public static isQueryDataEmpty(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z
    .locals 12

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "package_name"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "uid"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    const/4 v5, 0x0

    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    aput-object v1, v7, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v11, 0x1

    aput-object v3, v7, v11

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v4, "background_data"

    const-string v6, "package_name = ? and uid = ?"

    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    invoke-static {v3}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->closeCursor(Landroid/database/Cursor;)V

    return v11

    :cond_4
    :goto_1
    return v0
.end method

.method public static isRoaming()Z
    .locals 11

    const-string v0, "getRoamingReduction"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "extphone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/codeaurora/internal/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "generalGetter"

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v1

    const-class v9, Landroid/os/Bundle;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v0, v6, v1

    aput-object v3, v6, v10

    invoke-virtual {v5, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object v4, v6

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public static queryAllApp(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->queryApp(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static queryApp(Landroid/database/sqlite/SQLiteDatabase;I)Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v2, "background_data"

    const-string v4, "id = ?"

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "package_name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, ""

    :cond_1
    const-string v2, "uid"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v3, "type"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v1}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->closeCursor(Landroid/database/Cursor;)V

    new-instance v4, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;

    invoke-direct {v4, p1, v0, v2, v3}, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;-><init>(ILjava/lang/String;II)V

    return-object v4

    :cond_2
    invoke-static {v1}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->closeCursor(Landroid/database/Cursor;)V

    return-object v0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static queryApp(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->queryApp(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static queryApp(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;II)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v3, "background_data"

    move-object v2, p0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v6, 0x0

    new-array v8, v1, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v5, "background_data"

    const-string v7, "uid = ?"

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    aput-object p1, v5, v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v2, "background_data"

    const-string v9, "package_name = ? and uid = ?"

    move-object v1, p0

    move-object v3, v4

    move-object v4, v9

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    const-string v2, "package_name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v2, ""

    :cond_3
    const-string v3, "id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "uid"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v5, "type"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    new-instance v6, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;

    invoke-direct {v6, v3, v2, v4, v5}, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;-><init>(ILjava/lang/String;II)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_4
    invoke-static {v0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->closeCursor(Landroid/database/Cursor;)V

    return-object v1
.end method

.method public static setAppBackgroundDataType(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 4

    invoke-static {p0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->getSqliteDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0, p1, p2}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->queryApp(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0, p1, p2, p3}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->addBackgroundDataApp(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;II)V

    new-instance v2, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;

    invoke-direct {v2, p1, p2, p3}, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;-><init>(Ljava/lang/String;II)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;

    invoke-virtual {v2}, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->getId()I

    move-result v2

    invoke-static {v0, v2, p3}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->updateBackgroundDataApp(Landroid/database/sqlite/SQLiteDatabase;II)I

    new-instance v3, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;

    invoke-direct {v3, p1, p2, p3}, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;-><init>(Ljava/lang/String;II)V

    move-object v2, v3

    :goto_0
    invoke-static {p0, v2}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->changeRoamingAppStatus(Landroid/content/Context;Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;)V

    :cond_2
    return-void
.end method

.method public static setBlackList(Landroid/content/Context;ILjava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    new-instance v0, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/settings/datausage/DataSaverBackend;->setIsBlacklisted(ILjava/lang/String;Z)V

    return-void
.end method

.method public static updateBackgroundDataApp(Landroid/database/sqlite/SQLiteDatabase;II)I
    .locals 5

    const/4 v0, -0x1

    if-eqz p0, :cond_2

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->queryApp(Landroid/database/sqlite/SQLiteDatabase;I)Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->getId()I

    move-result v2

    if-lez v2, :cond_1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "background_data"

    const-string v4, "id = ?"

    invoke-virtual {p0, v3, v0, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method
