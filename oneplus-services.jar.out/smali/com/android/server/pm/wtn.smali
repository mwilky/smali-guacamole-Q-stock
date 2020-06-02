.class public Lcom/android/server/pm/wtn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/pm/IOpReserveAppManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/wtn$zta;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageManager[ReserveApp]"

.field private static final ZE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final XE:Ljava/io/File;

.field private YE:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pm/wtn$zta;",
            ">;"
        }
    .end annotation
.end field

.field private mPmsInner:Lcom/android/server/pm/PackageManagerService$PmsInner;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/ArraySet;

    const-string v1, "com.baidu.haokan"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/pm/wtn;->ZE:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "reserve-lib"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/wtn;->XE:Ljava/io/File;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/wtn;->YE:Ljava/util/ArrayList;

    return-void
.end method

.method private cc(Ljava/lang/String;)I
    .locals 2

    iget-object p0, p0, Lcom/android/server/pm/wtn;->YE:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/wtn$zta;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/pm/wtn$zta;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget p0, v0, Lcom/android/server/pm/wtn$zta;->versionCode:I

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private dc(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/wtn;->YE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/wtn$zta;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/pm/wtn$zta;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/server/pm/wtn;->YE:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private ibl(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/wtn;->YE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/wtn$zta;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/pm/wtn$zta;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput p2, v1, Lcom/android/server/pm/wtn$zta;->versionCode:I

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/wtn;->YE:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/pm/wtn$zta;

    invoke-direct {v0, p1, p2}, Lcom/android/server/pm/wtn$zta;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private lo()V
    .locals 10

    const-string v0, "Error reading reserve package list"

    const-string v1, "PackageManager[ReserveApp]"

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string v4, "packages-reserve.xml"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v2, v6, :cond_1

    if-eq v2, v5, :cond_1

    goto :goto_0

    :cond_1
    if-eq v2, v6, :cond_2

    return-void

    :cond_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    :cond_3
    :goto_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v5, :cond_7

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v2, :cond_7

    :cond_4
    if-eq v6, v7, :cond_3

    const/4 v7, 0x4

    if-ne v6, v7, :cond_5

    goto :goto_1

    :cond_5
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "package"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "packageName"

    invoke-interface {v3, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "versionCode"

    invoke-interface {v3, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v8, -0x1

    if-eqz v7, :cond_6

    :try_start_1
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception v7

    :try_start_2
    invoke-static {v1, v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_2
    iget-object v7, p0, Lcom/android/server/pm/wtn;->YE:Ljava/util/ArrayList;

    new-instance v9, Lcom/android/server/pm/wtn$zta;

    invoke-direct {v9, v6, v8}, Lcom/android/server/pm/wtn$zta;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    return-void
.end method

.method private mo()V
    .locals 11

    const-string v0, "package"

    const-string v1, "packages"

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string v4, "packages-reserve.xml"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string v6, "utf-8"

    invoke-interface {v5, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v5, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    invoke-interface {v5, v8, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v6, p0, Lcom/android/server/pm/wtn;->YE:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    invoke-interface {v5, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v9, "packageName"

    iget-object v10, p0, Lcom/android/server/pm/wtn;->YE:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/wtn$zta;

    iget-object v10, v10, Lcom/android/server/pm/wtn$zta;->packageName:Ljava/lang/String;

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v9, "versionCode"

    iget-object v10, p0, Lcom/android/server/pm/wtn;->YE:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/wtn$zta;

    iget v10, v10, Lcom/android/server/pm/wtn$zta;->versionCode:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v5, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v5, v8, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x1b4

    const/4 v1, -0x1

    invoke-static {p0, v0, v1, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "PackageManager[ReserveApp]"

    const-string v1, "Failed to write packages to list"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public addForInitLI(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/PackageSetting;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;JZ)Z
    .locals 4

    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/wtn;->isReserveApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/wtn;->checkAppHasDeleted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/pm/wtn;->cc(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/pm/wtn;->ZE:Ljava/util/Set;

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget v1, p2, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/wtn;->ibl(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/android/server/pm/wtn;->mo()V

    :cond_2
    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/wtn;->checkAppHasDeleted(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p3, :cond_3

    return v1

    :cond_3
    if-eqz p9, :cond_6

    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result p4

    if-eqz p4, :cond_5

    iget p4, p2, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iget-object p9, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-direct {p0, p9}, Lcom/android/server/pm/wtn;->cc(Ljava/lang/String;)I

    move-result p9

    if-le p4, p9, :cond_4

    iget p4, p2, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    int-to-long v2, p4

    cmp-long p4, v2, p7

    if-gtz p4, :cond_5

    :cond_4
    return v1

    :cond_5
    iget-object p4, p1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter p4

    :try_start_0
    iget-object p7, p1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    iget-object p8, p3, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {p7, p8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object p4, p0, Lcom/android/server/pm/wtn;->mPmsInner:Lcom/android/server/pm/PackageManagerService$PmsInner;

    invoke-static {p3}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Lcom/android/server/pm/PackageSetting;)[Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p5, p6, p3}, Lcom/android/server/pm/PackageManagerService$PmsInner;->createInstallArgsForExisting(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object p3

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    invoke-virtual {p3}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->cleanUpResourcesLI()V

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/server/pm/wtn;->dc(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/pm/wtn;->mo()V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit p4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_6
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public checkAppHasDeleted(Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/pm/wtn;->YE:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/wtn$zta;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/pm/wtn$zta;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public cleanUp(Ljava/io/File;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object p1

    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/pm/wtn;->XE:Ljava/io/File;

    iget-object p1, p1, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-static {v1, p0}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesFromDirLI(Ljava/io/File;Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageParser$PackageParserException;->printStackTrace()V

    return v0
.end method

.method public cleanUpResourcesLI(Ljava/io/File;Landroid/content/pm/PackageParser$PackageLite;)V
    .locals 0

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/wtn;->isReserveApp(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p2, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    iget p2, p2, Landroid/content/pm/PackageParser$PackageLite;->versionCode:I

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/wtn;->ibl(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/android/server/pm/wtn;->mo()V

    :cond_0
    return-void
.end method

.method public collectReserveApps(I)V
    .locals 9

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    const-string v2, "reserve"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v0

    invoke-direct {v6, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/wtn;->mPmsInner:Lcom/android/server/pm/PackageManagerService$PmsInner;

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$PmsInner;->scanDirLI(Ljava/io/File;IIJ)V

    :cond_0
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/wtn;->mPmsInner:Lcom/android/server/pm/PackageManagerService$PmsInner;

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v4, v6

    move v6, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/PackageManagerService$PmsInner;->scanDirLI(Ljava/io/File;IIJ)V

    :cond_1
    return-void
.end method

.method public initInstance(Lcom/android/server/pm/PackageManagerService$PmsInner;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/wtn;->mPmsInner:Lcom/android/server/pm/PackageManagerService$PmsInner;

    invoke-direct {p0}, Lcom/android/server/pm/wtn;->lo()V

    return-void
.end method

.method public isReserveApp(Ljava/lang/String;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    const-string v0, "/system/reserve"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/vendor/reserve"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p0, 0x1

    :cond_2
    return p0
.end method

.method public pruneNonExistReserveApps(Ljava/util/Collection;Landroid/util/ArrayMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageSetting;

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/pm/OpReserveAppInjector;->isReserveApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    if-nez v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reserve app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " no longer exists; its data will be wiped"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PackageManager[ReserveApp]"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setNativeLibraryPaths(Landroid/content/pm/PackageParser$Package;)V
    .locals 2

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/wtn;->isReserveApp(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/pm/wtn;->XE:Ljava/io/File;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p1, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootDir:Ljava/lang/String;

    new-instance p0, Ljava/io/File;

    iget-object p1, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootDir:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/pm/InstructionSets;->getPrimaryInstructionSet(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    const/4 p0, 0x1

    iput-boolean p0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootRequiresIsa:Z

    :cond_0
    return-void
.end method
