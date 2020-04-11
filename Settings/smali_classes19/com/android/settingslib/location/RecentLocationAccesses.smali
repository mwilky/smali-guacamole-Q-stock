.class public Lcom/android/settingslib/location/RecentLocationAccesses;
.super Ljava/lang/Object;
.source "RecentLocationAccesses.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/location/RecentLocationAccesses$Access;
    }
.end annotation


# static fields
.field static final ANDROID_SYSTEM_PACKAGE_NAME:Ljava/lang/String; = "android"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final LOCATION_OPS:[I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final RECENT_TIME_INTERVAL_MILLIS:J = 0x5265c00L

.field private static final TAG:Ljava/lang/String;

.field public static final TRUSTED_STATE_FLAGS:I = 0xd


# instance fields
.field private final mClock:Ljava/time/Clock;

.field private final mContext:Landroid/content/Context;

.field private final mDrawableFactory:Landroid/util/IconDrawableFactory;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settingslib/location/RecentLocationAccesses;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/location/RecentLocationAccesses;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settingslib/location/RecentLocationAccesses;->LOCATION_OPS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/location/RecentLocationAccesses;-><init>(Landroid/content/Context;Ljava/time/Clock;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/time/Clock;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/location/RecentLocationAccesses;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/location/RecentLocationAccesses;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/location/RecentLocationAccesses;->mDrawableFactory:Landroid/util/IconDrawableFactory;

    iput-object p2, p0, Lcom/android/settingslib/location/RecentLocationAccesses;->mClock:Ljava/time/Clock;

    return-void
.end method

.method private getAccessFromOps(JLandroid/app/AppOpsManager$PackageOps;)Lcom/android/settingslib/location/RecentLocationAccesses$Access;
    .locals 23

    move-object/from16 v1, p0

    const-string v2, ", userId "

    invoke-virtual/range {p3 .. p3}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v12

    const-wide/16 v3, 0x0

    const-wide/32 v5, 0x5265c00

    sub-long v13, p1, v5

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-wide v15, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$OpEntry;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(I)J

    move-result-wide v15

    goto :goto_0

    :cond_0
    cmp-long v0, v15, v13

    const/4 v3, 0x0

    if-gez v0, :cond_1

    return-object v3

    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    const/16 v18, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/android/settingslib/location/RecentLocationAccesses;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v4, 0x80

    invoke-virtual {v0, v11, v4, v9}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v0, :cond_2

    :try_start_1
    sget-object v4, Lcom/android/settingslib/location/RecentLocationAccesses;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Null application info retrieved for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    move v1, v9

    goto :goto_2

    :cond_2
    :try_start_2
    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v9}, Landroid/os/UserHandle;-><init>(I)V

    move-object v10, v3

    iget-object v3, v1, Lcom/android/settingslib/location/RecentLocationAccesses;->mDrawableFactory:Landroid/util/IconDrawableFactory;

    invoke-virtual {v3, v0, v9}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget-object v3, v1, Lcom/android/settingslib/location/RecentLocationAccesses;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v8, v3

    iget-object v3, v1, Lcom/android/settingslib/location/RecentLocationAccesses;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v8, v10}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x0

    move-object/from16 v19, v3

    goto :goto_1

    :cond_3
    move-object/from16 v19, v3

    :goto_1
    new-instance v20, Lcom/android/settingslib/location/RecentLocationAccesses$Access;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v3, v20

    move-object v4, v11

    move-object v5, v10

    move-object v7, v8

    move-object/from16 v21, v8

    move-object/from16 v8, v19

    move v1, v9

    move-object/from16 v22, v10

    move-wide v9, v15

    :try_start_3
    invoke-direct/range {v3 .. v10}, Lcom/android/settingslib/location/RecentLocationAccesses$Access;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v18, v20

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move v1, v9

    :goto_2
    sget-object v3, Lcom/android/settingslib/location/RecentLocationAccesses;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package name not found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-object v18
.end method


# virtual methods
.method public getAppList()Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/location/RecentLocationAccesses$Access;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settingslib/location/RecentLocationAccesses;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settingslib/location/RecentLocationAccesses;->mContext:Landroid/content/Context;

    const-string v3, "appops"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    sget-object v3, Lcom/android/settingslib/location/RecentLocationAccesses;->LOCATION_OPS:[I

    invoke-virtual {v2, v3}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v7, v0, Lcom/android/settingslib/location/RecentLocationAccesses;->mClock:Ljava/time/Clock;

    invoke-virtual {v7}, Ljava/time/Clock;->millis()J

    move-result-wide v7

    iget-object v9, v0, Lcom/android/settingslib/location/RecentLocationAccesses;->mContext:Landroid/content/Context;

    const-string v10, "user"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserManager;

    invoke-virtual {v9}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v5, :cond_6

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v12}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v14

    invoke-static {v14}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v15

    invoke-interface {v10, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    move-object/from16 v22, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move/from16 v23, v5

    goto :goto_4

    :cond_1
    const/16 v16, 0x1

    sget-object v4, Lcom/android/settingslib/location/RecentLocationAccesses;->LOCATION_OPS:[I

    move-object/from16 v17, v2

    array-length v2, v4

    move-object/from16 v18, v3

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_4

    aget v19, v4, v3

    move/from16 v20, v2

    invoke-static/range {v19 .. v19}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v21, v4

    invoke-virtual {v1, v2, v13, v15}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v4

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/android/settingslib/location/RecentLocationAccesses;->mContext:Landroid/content/Context;

    move/from16 v23, v5

    const/4 v5, -0x1

    invoke-static {v1, v2, v5, v14, v13}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    and-int/lit16 v1, v4, 0x100

    if-nez v1, :cond_3

    const/16 v16, 0x0

    goto :goto_3

    :cond_2
    and-int/lit16 v1, v4, 0x200

    if-nez v1, :cond_3

    const/16 v16, 0x0

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v20

    move-object/from16 v4, v21

    move-object/from16 v1, v22

    move/from16 v5, v23

    goto :goto_2

    :cond_4
    move-object/from16 v22, v1

    move/from16 v23, v5

    :goto_3
    if-eqz v16, :cond_5

    invoke-direct {v0, v7, v8, v12}, Lcom/android/settingslib/location/RecentLocationAccesses;->getAccessFromOps(JLandroid/app/AppOpsManager$PackageOps;)Lcom/android/settingslib/location/RecentLocationAccesses$Access;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_4
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v1, v22

    move/from16 v5, v23

    goto :goto_1

    :cond_6
    return-object v6
.end method

.method public getAppListSorted()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/location/RecentLocationAccesses$Access;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settingslib/location/RecentLocationAccesses;->getAppList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/settingslib/location/RecentLocationAccesses$1;

    invoke-direct {v1, p0}, Lcom/android/settingslib/location/RecentLocationAccesses$1;-><init>(Lcom/android/settingslib/location/RecentLocationAccesses;)V

    invoke-static {v1}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method
