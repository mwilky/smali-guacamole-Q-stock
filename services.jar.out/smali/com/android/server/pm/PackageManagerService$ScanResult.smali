.class Lcom/android/server/pm/PackageManagerService$ScanResult;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScanResult"
.end annotation


# instance fields
.field public final changedAbiCodePath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final dynamicSharedLibraryInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final existingSettingCopied:Z

.field public final pkgSetting:Lcom/android/server/pm/PackageSetting;

.field public final request:Lcom/android/server/pm/PackageManagerService$ScanRequest;

.field public final staticSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

.field public final success:Z


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService$ScanRequest;ZLcom/android/server/pm/PackageSetting;Ljava/util/List;ZLandroid/content/pm/SharedLibraryInfo;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService$ScanRequest;",
            "Z",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Landroid/content/pm/SharedLibraryInfo;",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ScanResult;->request:Lcom/android/server/pm/PackageManagerService$ScanRequest;

    iput-boolean p2, p0, Lcom/android/server/pm/PackageManagerService$ScanResult;->success:Z

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$ScanResult;->pkgSetting:Lcom/android/server/pm/PackageSetting;

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$ScanResult;->changedAbiCodePath:Ljava/util/List;

    iput-boolean p5, p0, Lcom/android/server/pm/PackageManagerService$ScanResult;->existingSettingCopied:Z

    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$ScanResult;->staticSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$ScanResult;->dynamicSharedLibraryInfos:Ljava/util/List;

    return-void
.end method
