.class public interface abstract Lcom/android/server/pm/IOpReserveAppManager;
.super Ljava/lang/Object;
.source "IOpReserveAppManager.java"


# virtual methods
.method public abstract addForInitLI(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/PackageSetting;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;JZ)Z
.end method

.method public abstract checkAppHasDeleted(Ljava/lang/String;)Z
.end method

.method public abstract cleanUp(Ljava/io/File;)Z
.end method

.method public abstract cleanUpResourcesLI(Ljava/io/File;Landroid/content/pm/PackageParser$PackageLite;)V
.end method

.method public abstract collectReserveApps(I)V
.end method

.method public abstract initInstance(Lcom/android/server/pm/PackageManagerService$PmsInner;)V
.end method

.method public abstract isReserveApp(Ljava/lang/String;)Z
.end method

.method public abstract setNativeLibraryPaths(Landroid/content/pm/PackageParser$Package;)V
.end method
