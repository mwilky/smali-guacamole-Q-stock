.class Lcom/android/server/pm/PackageManagerService$PrepareResult;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrepareResult"
.end annotation


# instance fields
.field public final childPackageSettings:[Lcom/android/server/pm/PackageSetting;

.field public final clearCodeCache:Z

.field public final disabledPs:Lcom/android/server/pm/PackageSetting;

.field public final existingPackage:Landroid/content/pm/PackageParser$Package;

.field public final freezer:Lcom/android/server/pm/PackageManagerService$PackageFreezer;

.field public final installReason:I

.field public final installerPackageName:Ljava/lang/String;

.field public final originalPs:Lcom/android/server/pm/PackageSetting;

.field public final packageToScan:Landroid/content/pm/PackageParser$Package;

.field public final parseFlags:I

.field public final renamedPackage:Ljava/lang/String;

.field public final replace:Z

.field public final scanFlags:I

.field public final system:Z

.field public final user:Landroid/os/UserHandle;

.field public final volumeUuid:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;ZIILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;ZZLjava/lang/String;Lcom/android/server/pm/PackageManagerService$PackageFreezer;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;[Lcom/android/server/pm/PackageSetting;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move/from16 v1, p1

    iput v1, v0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->installReason:I

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->volumeUuid:Ljava/lang/String;

    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->installerPackageName:Ljava/lang/String;

    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->user:Landroid/os/UserHandle;

    move/from16 v5, p5

    iput-boolean v5, v0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->replace:Z

    move/from16 v6, p6

    iput v6, v0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->scanFlags:I

    move/from16 v7, p7

    iput v7, v0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->parseFlags:I

    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->existingPackage:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->packageToScan:Landroid/content/pm/PackageParser$Package;

    move/from16 v10, p10

    iput-boolean v10, v0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->clearCodeCache:Z

    move/from16 v11, p11

    iput-boolean v11, v0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->system:Z

    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->renamedPackage:Ljava/lang/String;

    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->freezer:Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    move-object/from16 v14, p14

    iput-object v14, v0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->originalPs:Lcom/android/server/pm/PackageSetting;

    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->disabledPs:Lcom/android/server/pm/PackageSetting;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->childPackageSettings:[Lcom/android/server/pm/PackageSetting;

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;ZIILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;ZZLjava/lang/String;Lcom/android/server/pm/PackageManagerService$PackageFreezer;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;[Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageManagerService$1;)V
    .locals 0

    invoke-direct/range {p0 .. p16}, Lcom/android/server/pm/PackageManagerService$PrepareResult;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;ZIILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;ZZLjava/lang/String;Lcom/android/server/pm/PackageManagerService$PackageFreezer;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;[Lcom/android/server/pm/PackageSetting;)V

    return-void
.end method
