.class public Lcom/android/server/pm/PmInjector;
.super Ljava/lang/Object;
.source "PmInjector.java"


# static fields
.field private static final ACTION_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG_ONEPLUS:Z

.field private static final RESTRICTED_PACKAGES_FOR_CTA_NETWORK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static final WAIT_OM_INTERVAL:I = 0x1388

.field private static mOemPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sActivityManagerReady:Z

.field private static sSystemAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/pm/PmInjector;->DEBUG_ONEPLUS:Z

    const-class v0, Lcom/android/server/pm/PmInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/PmInjector;->sSystemAppList:Ljava/util/ArrayList;

    const-string v0, "com.oppo.market"

    const-string v1, "com.heytap.quicksearchbox"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PmInjector;->mOemPkgList:Ljava/util/List;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    const-string v3, "android.intent.action.SEND"

    const-string v4, "android.intent.action.PICK"

    const-string v5, "android.intent.action.SEND_MULTIPLE"

    const-string v6, "android.intent.action.INSERT"

    const-string v7, "android.intent.action.INSERT_OR_EDIT"

    const-string v8, "android.intent.action.SENDTO"

    const-string v9, "android.intent.action.DIAL"

    const-string v10, "android.intent.action.EDIT"

    const-string v11, "android.intent.action.GET_CONTENT"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PmInjector;->ACTION_LIST:Ljava/util/List;

    const-string v1, "com.google.android.configupdater"

    const-string v2, "com.google.android.backuptransport"

    const-string v3, "com.google.android.onetimeinitializer"

    const-string v4, "com.google.android.partnersetup"

    const-string v5, "com.google.android.gsf"

    const-string v6, "com.google.android.gms"

    const-string v7, "com.google.android.gms.policy_sidecar_aps"

    const-string v8, "com.google.android.ext.services"

    const-string v9, "com.google.android.ext.shared"

    const-string v10, "com.google.android.printservice.recommendation"

    const-string v11, "com.android.vending"

    const-string v12, "com.google.ar.core"

    const-string v13, "com.google.android.marvin.talkback"

    const-string v14, "com.google.android.apps.wellbeing"

    const-string v15, "com.google.android.syncadapters.contacts"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PmInjector;->RESTRICTED_PACKAGES_FOR_CTA_NETWORK:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/android/server/pm/PmInjector;->RESTRICTED_PACKAGES_FOR_CTA_NETWORK:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static addDozeWhitelist(Ljava/lang/String;)V
    .locals 4

    nop

    const-string v0, "deviceidle"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    sget-boolean v1, Lcom/android/server/pm/PmInjector;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addDozeWhiteList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {v0, p0}, Landroid/os/IDeviceIdleController;->addPowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    const-string v3, "Falied to add package to doze whitelist"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    goto :goto_1

    :cond_1
    sget-object v1, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    const-string v2, "Cannot get DeviceIdleController"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static checkOemDeviceIdleWhitelist(Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Lcom/android/server/pm/PmInjector;->isOemDeviceIdleWhitelist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/server/pm/PmInjector;->addDozeWhitelist(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/android/server/pm/PmInjector;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not in doze whitelist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static controlGooglePackagesForCta(Landroid/content/Context;Landroid/os/Handler;Z)V
    .locals 5

    if-eqz p2, :cond_0

    sget-object v0, Lcom/android/server/pm/PmInjector;->RESTRICTED_PACKAGES_FOR_CTA_NETWORK:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x1

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/pm/PackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZLandroid/os/UserHandle;)Z

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "user_setup_complete"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/server/pm/PmInjector$1;

    invoke-direct {v3, p1, p0}, Lcom/android/server/pm/PmInjector$1;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static copyPackageThemes(Ljava/lang/String;Lcom/android/internal/os/IParcelFileDescriptorFactory;)I
    .locals 5

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v2

    move-object v0, v2

    invoke-static {v0, p1}, Lcom/android/server/pm/PmInjector;->copyPackageThemesInner(Landroid/content/pm/PackageParser$PackageLite;Lcom/android/internal/os/IParcelFileDescriptorFactory;)I

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to copy package themes at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x4

    return v2

    :cond_1
    :goto_0
    const/4 v0, -0x3

    return v0
.end method

.method private static copyPackageThemesInner(Landroid/content/pm/PackageParser$PackageLite;Lcom/android/internal/os/IParcelFileDescriptorFactory;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, ""

    const/16 v5, -0x11

    :try_start_0
    iget-object v6, p0, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    move-object v4, v6

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    new-instance v6, Ljava/util/zip/ZipInputStream;

    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-direct {v7, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v6

    :goto_0
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v6

    move-object v2, v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "themes"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "oneplus"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v7
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v7, :cond_0

    :try_start_1
    new-instance v7, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->toString()Ljava/lang/String;

    move-result-object v8

    const/high16 v9, 0x30000000

    invoke-interface {p1, v8, v9}, Lcom/android/internal/os/IParcelFileDescriptorFactory;->open(Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object v3, v7

    invoke-static {v1, v3}, Llibcore/io/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    goto :goto_3

    :catchall_0
    move-exception v7

    goto :goto_2

    :catch_0
    move-exception v7

    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v8, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    :try_start_4
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    :goto_2
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v7
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_0
    :goto_3
    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V

    nop

    const/4 v5, 0x1

    return v5

    :catchall_1
    move-exception v5

    goto :goto_4

    :catch_1
    move-exception v6

    :try_start_5
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    sget-object v7, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    nop

    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V

    return v5

    :catch_2
    move-exception v6

    :try_start_6
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    sget-object v7, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    nop

    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V

    return v5

    :catch_3
    move-exception v6

    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V

    sget-object v7, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    nop

    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V

    return v5

    :goto_4
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V

    throw v5
.end method

.method public static deletePackageIfParallel(Ljava/lang/String;JIIILcom/android/server/pm/UserManagerService;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;)I
    .locals 11

    move/from16 v0, p5

    move-object/from16 v1, p7

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    const/16 v5, 0x22

    aput v5, v3, v4

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x3e7

    move-object/from16 v4, p6

    invoke-virtual {v4, v3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v5

    if-eqz v5, :cond_1

    if-ne v0, v2, :cond_1

    if-nez p3, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v9, 0x3e7

    move-object/from16 v5, p9

    move-object/from16 v6, p8

    move-wide v7, p1

    move v10, p4

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;JII)I

    move-result v2

    return v2

    :cond_0
    move-object/from16 v4, p6

    :cond_1
    return v0
.end method

.method public static doCheckOpSdk(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService$OriginInfo;I)I
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->getMinimalPackageInfo(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while getMinimalPackageInfo"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object v1, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pkgLite.oplibDependencyStr : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/content/pm/PackageInfoLite;->oplibDependencyStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Landroid/content/pm/PackageInfoLite;->oplibDependencyStr:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageInfoLite;->oplibDependencyStr:Ljava/lang/String;

    invoke-static {v1}, Lcom/oneplus/sdk/upgradecenter/utils/UpgradeCenterUtils;->isRequiredOpApiCompatibleWithRom(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 p2, -0xc

    sget-object v1, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to install, required OnePlus SDK : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/content/pm/PackageInfoLite;->oplibDependencyStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x50d0046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_0
    return p2
.end method

.method public static doCopyApkTheme(Lcom/android/server/pm/PackageManagerService$OriginInfo;I)I
    .locals 5

    new-instance v0, Lcom/android/server/pm/PmInjector$2;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PmInjector$2;-><init>(Lcom/android/server/pm/PackageManagerService$OriginInfo;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/server/pm/PmInjector;->copyPackageThemes(Ljava/lang/String;Lcom/android/internal/os/IParcelFileDescriptorFactory;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move p1, v1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v3

    const-string v4, "Exception happened while copying themes from APK: "

    invoke-static {v2, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to copy package themes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return p1
.end method

.method public static doSendOemBroadcast(Landroid/content/Intent;Landroid/app/IActivityManager;Landroid/content/IIntentReceiver;[Ljava/lang/String;IZ)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v14, p0

    const/4 v15, 0x1

    new-array v0, v15, [I

    const/4 v13, 0x0

    aput v13, v0, v13

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/server/pm/PmInjector;->sActivityManagerReady:Z

    if-eqz v0, :cond_3

    if-eqz v14, :cond_3

    const/4 v0, 0x0

    move v12, v0

    :goto_0
    sget-object v0, Lcom/android/server/pm/PmInjector;->mOemPkgList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v12, v0, :cond_2

    sget-object v0, Lcom/android/server/pm/PmInjector;->mOemPkgList:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p5, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    sget-object v1, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending to user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p4

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13, v15, v13, v13}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_0
    move/from16 v11, p4

    :goto_1
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    if-eqz p2, :cond_1

    move/from16 v16, v15

    goto :goto_2

    :cond_1
    move/from16 v16, v13

    :goto_2
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object/from16 v8, p3

    move/from16 v11, v16

    move/from16 v16, v12

    move/from16 v12, v17

    move/from16 v17, v13

    move/from16 v13, p4

    invoke-interface/range {v0 .. v13}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    add-int/lit8 v12, v16, 0x1

    move/from16 v13, v17

    goto :goto_0

    :cond_2
    move/from16 v16, v12

    :cond_3
    return-void
.end method

.method public static filterIfParallel(ILjava/util/List;Landroid/content/Intent;Ljava/lang/String;ILcom/android/server/pm/ComponentResolver;Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/PackageManagerService;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/server/pm/ComponentResolver;",
            "Landroid/content/pm/PackageParser$Package;",
            "Lcom/android/server/pm/PackageManagerService;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x22

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isParallelUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/pm/PmInjector;->ACTION_LIST:Ljava/util/List;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v6, p6, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    const/4 v7, 0x0

    move-object v2, p5

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComponentResolver;->queryActivities(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p7, v0, v1}, Lcom/android/server/pm/PackageManagerService;->filterIfNotSystemUser(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p1
.end method

.method public static genOemAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v0, :cond_0

    const-string/jumbo v3, "oneplus.intent.action.OEM_PACKAGE_ADDED"

    return-object v3

    :cond_0
    if-eqz v1, :cond_1

    const-string/jumbo v3, "oneplus.intent.action.OEM_PACKAGE_REMOVED"

    return-object v3

    :cond_1
    if-eqz v2, :cond_2

    const-string/jumbo v3, "oneplus.intent.action.OEM_PACKAGE_REPLACED"

    return-object v3

    :cond_2
    const/4 v3, 0x0

    return-object v3
.end method

.method public static generatePackageInfoParallel(IILandroid/content/pm/PackageParser$Package;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/PackageInfo;
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x22

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p4, v0, p0, p1}, Lcom/android/server/pm/PackageManagerService;->generatePackageInfo(Lcom/android/server/pm/PackageSetting;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-static {p1}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isParallelUser(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    sget-object v2, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generatePackageInfo of ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] for parallel user("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->pLogv(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p4, v2, p0, v1}, Lcom/android/server/pm/PackageManagerService;->generatePackageInfo(Lcom/android/server/pm/PackageSetting;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v0

    :cond_1
    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p4, v0, p0, p1}, Lcom/android/server/pm/PackageManagerService;->generatePackageInfo(Lcom/android/server/pm/PackageSetting;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getActivityInfoInternalusers(Landroid/content/pm/PackageParser$Activity;IILcom/android/server/pm/Settings;)I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x22

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isParallelUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p3, v0, p1, p2}, Lcom/android/server/pm/Settings;->isEnabledAndMatchLPr(Landroid/content/pm/ComponentInfo;II)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    return p2
.end method

.method public static getApplicationInfoInternalUsers(Landroid/content/pm/PackageParser$Package;ILcom/android/server/pm/PackageSetting;ILjava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x22

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    nop

    invoke-virtual {p2, p3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {p3}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isParallelUser(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    sget-object v2, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateApplicationInfo of ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] for parallel user("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->pLogv(Ljava/lang/String;Ljava/lang/String;)V

    nop

    invoke-virtual {p2, v1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v2

    invoke-static {p0, p1, v2, v1}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v0

    :cond_1
    nop

    invoke-virtual {p2, p3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getServiceInfoParallel(Landroid/content/ComponentName;Landroid/content/pm/PackageParser$Service;IILcom/android/server/pm/Settings;IILcom/android/server/pm/PackageManagerService;)Landroid/content/pm/ServiceInfo;
    .locals 12

    move-object v0, p1

    move v1, p3

    move-object/from16 v2, p4

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x22

    aput v5, v3, v4

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    invoke-static {p2}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isParallelUser(I)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_2

    iget-object v3, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v2, v3, p3, v4}, Lcom/android/server/pm/Settings;->isEnabledAndMatchLPr(Landroid/content/pm/ComponentInfo;II)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    if-nez v3, :cond_0

    return-object v5

    :cond_0
    const/4 v11, 0x0

    move-object/from16 v6, p7

    move-object v7, v3

    move/from16 v8, p5

    move-object v9, p0

    move/from16 v10, p6

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/pm/PackageManagerService;->filterAppAccessLPr(Lcom/android/server/pm/PackageSetting;ILandroid/content/ComponentName;II)Z

    move-result v6

    if-eqz v6, :cond_1

    return-object v5

    :cond_1
    sget-object v5, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generateServiceInfo of ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v7, p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "] for parallel user("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v8, p2

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->pLogv(Ljava/lang/String;Ljava/lang/String;)V

    nop

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v5

    invoke-static {p1, p3, v5, v4}, Landroid/content/pm/PackageParser;->generateServiceInfo(Landroid/content/pm/PackageParser$Service;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ServiceInfo;

    move-result-object v4

    return-object v4

    :cond_2
    move-object v7, p0

    move v8, p2

    goto :goto_0

    :cond_3
    move-object v7, p0

    move v8, p2

    goto :goto_0

    :cond_4
    move-object v7, p0

    move v8, p2

    :goto_0
    return-object v5
.end method

.method public static informActivityManagerReady()V
    .locals 2

    sget-object v0, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    const-string v1, "Update sActivityManagerReady to true"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/pm/PmInjector;->sActivityManagerReady:Z

    return-void
.end method

.method private static isInSystemAppList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    sget-object v0, Lcom/android/server/pm/PmInjector;->sSystemAppList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    new-array v0, v1, [I

    aput v2, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x5020028

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/pm/PmInjector;->sSystemAppList:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x5020029    # 6.1126E-36f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/pm/PmInjector;->sSystemAppList:Ljava/util/ArrayList;

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/pm/PmInjector;->sSystemAppList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method private static isOemDeviceIdleWhitelist(Ljava/lang/String;)Z
    .locals 4

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_power_controller:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/power/IOpPowerController$Stub;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p0}, Lcom/oneplus/android/power/IOpPowerController$Stub;->isOemDeviceIdleWhitelist(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    const-string v3, "Could not judge if it is in OemDeviceIdleWhitelist"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    const-string v2, "OpPowerController doesn\'t exist"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isPkgNeedToBeHandleThemeAndOpSdk(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService$OriginInfo;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->getMinimalPackageInfo(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while getMinimalPackageInfo"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/android/server/pm/PmInjector;->isInSystemAppList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static makeSessionActiveLockedUsers(ILjava/lang/String;I)Landroid/os/UserHandle;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x22

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.android.packageinstaller"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.google.android.packageinstaller"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/16 v2, 0x3e7

    if-ne v0, v2, :cond_1

    if-ne p0, v2, :cond_1

    sget-object v0, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "change the user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "to user 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0

    :cond_1
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p0}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public static managedIcon(Landroid/content/pm/PackageManagerInternal;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageParser$ActivityIntentInfo;I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x22

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x3e7

    if-eq p3, v1, :cond_0

    invoke-virtual {p0, p3}, Landroid/content/pm/PackageManagerInternal;->userNeedsBadging(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v0, p1, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    goto :goto_0

    :cond_0
    iget v0, p2, Landroid/content/pm/PackageParser$ActivityIntentInfo;->icon:I

    iput v0, p1, Landroid/content/pm/ResolveInfo;->icon:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p3}, Landroid/content/pm/PackageManagerInternal;->userNeedsBadging(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v0, p1, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    goto :goto_0

    :cond_2
    iget v0, p2, Landroid/content/pm/PackageParser$ActivityIntentInfo;->icon:I

    iput v0, p1, Landroid/content/pm/ResolveInfo;->icon:I

    :goto_0
    return-void
.end method

.method public static maybeReplaceResultsWithParallelResults(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;IILcom/android/server/pm/ComponentResolver;Lcom/android/server/pm/PackageManagerService;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II",
            "Lcom/android/server/pm/ComponentResolver;",
            "Lcom/android/server/pm/PackageManagerService;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x22

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p4}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isParallelUser(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/pm/PmInjector;->ACTION_LIST:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p0

    invoke-virtual {p5, p1, p2, p3, v2}, Lcom/android/server/pm/ComponentResolver;->queryActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p6, v3, v2}, Lcom/android/server/pm/PackageManagerService;->filterIfNotSystemUser(Ljava/util/List;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    :goto_0
    if-ltz v2, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v0

    :goto_1
    if-ltz v4, :cond_1

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v7, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-ne v6, v7, :cond_0

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-ne v6, v7, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    invoke-interface {p0, v4, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public static prepareOemBroadcast(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v0, v1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    return-object v0
.end method

.method public static purgeInstalledThemeApks(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;)V
    .locals 12

    invoke-static {p0, p1}, Lcom/android/server/pm/PmInjector;->isInSystemAppList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    nop

    const-string/jumbo v0, "overlay"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v1, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    const-string v2, "OverlayManager is not ready yet, retry later"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    new-instance v2, Lcom/android/server/pm/PmInjector$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/pm/PmInjector$3;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, p1, v1}, Landroid/content/om/IOverlayManager;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/pm/PmInjector;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "all overlayInfos:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/om/OverlayInfo;

    sget-object v4, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "overlay info:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", theme pkg name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/om/OverlayInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", code path:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v3, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    const-string v5, "/data/app/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "to uninstall installed theme apk"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/content/om/OverlayInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x2

    move-object v6, p2

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;JII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    goto :goto_0

    :cond_4
    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static resetParallelAppsRuntimepermissions(Lcom/android/server/pm/PackageSetting;ILcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xf

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-array v0, v0, [I

    const/16 v1, 0x22

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x3e7

    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    nop

    :try_start_0
    invoke-virtual {p2, p0, v0}, Lcom/android/server/pm/PackageManagerService;->resetUserChangesToRuntimePermissionsAndFlagsLPw(Lcom/android/server/pm/PackageSetting;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail resetUserChangesToRuntimePermissionsAndFlagsLPw for Parallel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ;targetId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method

.method private static setAppsState(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;Landroid/util/ArraySet;II)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Lcom/android/server/pm/Settings;",
            "Lcom/android/server/pm/UserManagerService;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    move/from16 v1, p6

    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    monitor-enter p3

    move-object/from16 v9, p1

    :try_start_0
    iget-object v3, v9, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    move-object v10, v3

    if-nez v10, :cond_1

    monitor-exit p3

    goto :goto_0

    :cond_1
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v3

    move-object v11, v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    new-array v3, v3, [I

    aput v1, v3, v4

    move-object v11, v3

    :goto_1
    array-length v12, v11

    move v13, v4

    :goto_2
    if-ge v13, v12, :cond_3

    aget v14, v11, v13

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v2

    move/from16 v5, p5

    move v7, v14

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/PackageManagerService;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_3
    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    move-object/from16 v9, p1

    return-void
.end method

.method public static setUnifyAppStateForNewUser(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/Settings;Landroid/util/ArrayMap;I)V
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Lcom/android/server/pm/UserManagerService;",
            "Lcom/android/server/pm/Settings;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;I)V"
        }
    .end annotation

    new-instance v4, Landroid/util/ArraySet;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    new-instance v11, Landroid/util/ArraySet;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107009b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v11, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    new-instance v0, Landroid/util/ArraySet;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x107007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v18, v0

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "carrier_sprint_first_boot"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    move/from16 v21, v1

    const-string/jumbo v0, "ro.boot.opcarrier"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sprint"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v5, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/PmInjector;->setAppsState(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;Landroid/util/ArraySet;II)V

    const/4 v12, 0x2

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    move/from16 v13, p5

    invoke-static/range {v7 .. v13}, Lcom/android/server/pm/PmInjector;->setAppsState(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;Landroid/util/ArraySet;II)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tmo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez v21, :cond_2

    const/16 v19, 0x2

    move-object/from16 v14, p1

    move-object/from16 v15, p3

    move-object/from16 v16, p2

    move-object/from16 v17, p4

    move/from16 v20, p5

    invoke-static/range {v14 .. v20}, Lcom/android/server/pm/PmInjector;->setAppsState(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;Landroid/util/ArraySet;II)V

    :cond_2
    const/16 v27, 0x2

    move-object/from16 v22, p1

    move-object/from16 v23, p3

    move-object/from16 v24, p2

    move-object/from16 v25, p4

    move-object/from16 v26, v4

    move/from16 v28, p5

    invoke-static/range {v22 .. v28}, Lcom/android/server/pm/PmInjector;->setAppsState(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;Landroid/util/ArraySet;II)V

    const/16 v33, 0x1

    move-object/from16 v28, p1

    move-object/from16 v29, p3

    move-object/from16 v30, p2

    move-object/from16 v31, p4

    move-object/from16 v32, v11

    move/from16 v34, p5

    invoke-static/range {v28 .. v34}, Lcom/android/server/pm/PmInjector;->setAppsState(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;Landroid/util/ArraySet;II)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static setUnifyAppsState(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/Settings;Landroid/util/ArrayMap;Z)V
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Lcom/android/server/pm/UserManagerService;",
            "Lcom/android/server/pm/Settings;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;Z)V"
        }
    .end annotation

    new-instance v4, Landroid/util/ArraySet;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    new-instance v11, Landroid/util/ArraySet;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107009b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v11, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    new-instance v0, Landroid/util/ArraySet;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x107007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v18, v0

    const-string/jumbo v0, "ro.boot.opcarrier"

    const-string/jumbo v1, "tmo"

    if-eqz p5, :cond_0

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v19, 0x2

    const/16 v20, -0x1

    move-object/from16 v14, p1

    move-object/from16 v15, p3

    move-object/from16 v16, p2

    move-object/from16 v17, p4

    invoke-static/range {v14 .. v20}, Lcom/android/server/pm/PmInjector;->setAppsState(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;Landroid/util/ArraySet;II)V

    :cond_0
    nop

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const-string v5, "carrier_sprint_first_boot"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_1

    move v3, v6

    :cond_1
    move v14, v3

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "carrier_pre_load"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sprint"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v14, :cond_2

    const/16 v24, 0x1

    const/16 v25, -0x1

    move-object/from16 v19, p1

    move-object/from16 v20, p3

    move-object/from16 v21, p2

    move-object/from16 v22, p4

    move-object/from16 v23, v18

    invoke-static/range {v19 .. v25}, Lcom/android/server/pm/PmInjector;->setAppsState(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;Landroid/util/ArraySet;II)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    const/4 v5, 0x1

    const/4 v6, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/PmInjector;->setAppsState(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;Landroid/util/ArraySet;II)V

    const/4 v12, 0x2

    const/4 v13, -0x1

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    invoke-static/range {v7 .. v13}, Lcom/android/server/pm/PmInjector;->setAppsState(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;Landroid/util/ArraySet;II)V

    goto :goto_0

    :cond_3
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v24, 0x2

    const/16 v25, -0x1

    move-object/from16 v19, p1

    move-object/from16 v20, p3

    move-object/from16 v21, p2

    move-object/from16 v22, p4

    move-object/from16 v23, v4

    invoke-static/range {v19 .. v25}, Lcom/android/server/pm/PmInjector;->setAppsState(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;Landroid/util/ArraySet;II)V

    const/16 v31, 0x1

    const/16 v32, -0x1

    move-object/from16 v26, p1

    move-object/from16 v27, p3

    move-object/from16 v28, p2

    move-object/from16 v29, p4

    move-object/from16 v30, v11

    invoke-static/range {v26 .. v32}, Lcom/android/server/pm/PmInjector;->setAppsState(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;Landroid/util/ArraySet;II)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static setUnifyPAIAppState(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xcd

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    const-string/jumbo v0, "ro.boot.opcarrier"

    const-string/jumbo v1, "none"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sprint"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107009e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/PackageManagerService;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "tmo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107009d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/PackageManagerService;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :cond_2
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalArgumentException, Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-void
.end method

.method public static updateUserId()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x22

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    const-string/jumbo v0, "user"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v0

    const/16 v1, 0x3e7

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->isUserRunning(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PackageManagerShellCommand"

    const-string v2, "Update UserId to (-2)"

    invoke-static {v1, v2}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->pLogv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, -0x2

    return v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    const-string v2, "fail updateUserId"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method
