.class Lcom/android/server/pm/PackageManagerService$PrepareFailure;
.super Lcom/android/server/pm/PackageManagerException;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrepareFailure"
.end annotation


# instance fields
.field public conflictingPackage:Ljava/lang/String;

.field public conflictingPermission:Ljava/lang/String;


# direct methods
.method constructor <init>(I)V
    .locals 1

    const-string v0, "Failed to prepare for install."

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    instance-of v0, p2, Landroid/content/pm/PackageParser$PackageParserException;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/content/pm/PackageParser$PackageParserException;

    iget v0, v0, Landroid/content/pm/PackageParser$PackageParserException;->error:I

    goto :goto_0

    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/android/server/pm/PackageManagerException;

    iget v0, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    :goto_0
    invoke-static {p1, p2}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method conflictsWithExistingPermission(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$PrepareFailure;
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PrepareFailure;->conflictingPermission:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$PrepareFailure;->conflictingPackage:Ljava/lang/String;

    return-object p0
.end method
