.class public Lcom/android/server/connectivity/PermissionMonitor;
.super Ljava/lang/Object;
.source "PermissionMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/PermissionMonitor$PackageListObserver;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field protected static final NETWORK:Ljava/lang/Boolean;

.field protected static final SYSTEM:Ljava/lang/Boolean;

.field private static final TAG:Ljava/lang/String; = "PermissionMonitor"

.field private static final VERSION_Q:I = 0x1d


# instance fields
.field private final mAllApps:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mApps:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetd:Landroid/net/INetd;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUsers:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mVpnUidRanges:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/net/UidRange;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/server/connectivity/PermissionMonitor;->SYSTEM:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/server/connectivity/PermissionMonitor;->NETWORK:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/INetd;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mVpnUidRanges:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mAllApps:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUserManager:Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/PermissionMonitor;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/PermissionMonitor;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/PermissionMonitor;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200([Ljava/lang/String;[I)I
    .locals 1

    invoke-static {p0, p1}, Lcom/android/server/connectivity/PermissionMonitor;->getNetdPermissionMask([Ljava/lang/String;[I)I

    move-result v0

    return v0
.end method

.method private static getNetdPermissionMask([Ljava/lang/String;[I)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    aget-object v2, p0, v1

    const-string v3, "android.permission.INTERNET"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    aget v2, p1, v1

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    aget-object v2, p0, v1

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    aget v2, p1, v1

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_1
    return v0
.end method

.method private getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    const v1, 0x401000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method private intersectUids(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/net/UidRange;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/UidRange;

    invoke-virtual {v2}, Landroid/net/UidRange;->getStartUser()I

    move-result v3

    :goto_1
    invoke-virtual {v2}, Landroid/net/UidRange;->getEndUser()I

    move-result v4

    if-gt v3, v4, :cond_2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v3, v5}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/net/UidRange;->contains(I)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    goto :goto_0

    :cond_3
    return-object v0
.end method

.method static isVendorApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isVendor()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isOem()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isProduct()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "PermissionMonitor"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1

    const-string v0, "PermissionMonitor"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "PermissionMonitor"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private removeBypassingUids(Ljava/util/Set;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/connectivity/-$$Lambda$PermissionMonitor$h-GPsXXwaQ-Mfu5-dqCp_VIYNOM;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/-$$Lambda$PermissionMonitor$h-GPsXXwaQ-Mfu5-dqCp_VIYNOM;-><init>(Lcom/android/server/connectivity/PermissionMonitor;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method private toIntArray(Ljava/util/Collection;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v0, v1

    move v1, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private update(Ljava/util/Set;Ljava/util/Map;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v1

    goto :goto_1

    :cond_0
    move-object v4, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v6, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    const/4 v3, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PermissionMonitor;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/net/INetd;->networkSetPermissionForUser(I[I)V

    iget-object v2, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    const/4 v3, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/PermissionMonitor;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/net/INetd;->networkSetPermissionForUser(I[I)V

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PermissionMonitor;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/net/INetd;->networkClearPermissionForUser([I)V

    iget-object v2, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/PermissionMonitor;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/net/INetd;->networkClearPermissionForUser([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    goto :goto_4

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception when updating permissions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method private updateVpnUids(Ljava/lang/String;Ljava/util/Set;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Exception when updating permissions: "

    if-eqz p3, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    invoke-direct {p0, p2}, Lcom/android/server/connectivity/PermissionMonitor;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/net/INetd;->firewallAddUidInterfaceRules(Ljava/lang/String;[I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    invoke-direct {p0, p2}, Lcom/android/server/connectivity/PermissionMonitor;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/net/INetd;->firewallRemoveUidInterfaceRules([I)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v0, v1}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v1

    iget v2, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    sget v3, Landroid/system/OsConstants;->EOPNOTSUPP:I

    if-eq v2, v3, :cond_2

    invoke-static {v0, v1}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    nop

    :goto_1
    return-void
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4

    const-string v0, "Interface filtering rules:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mVpnUidRanges:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UIDs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method protected getDeviceFirstSdkInt()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->FIRST_SDK_INT:I

    return v0
.end method

.method public getVpnUidRanges(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mVpnUidRanges:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method hasNetworkPermission(Landroid/content/pm/PackageInfo;)Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "android.permission.CHANGE_NETWORK_STATE"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/PermissionMonitor;->hasPermission(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method hasPermission(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_3

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    array-length v2, v2

    if-lt v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v2, v2, v0

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    return v1
.end method

.method hasRestrictedNetworkPermission(Landroid/content/pm/PackageInfo;)Z
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x3e8

    const/16 v3, 0x1d

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/connectivity/PermissionMonitor;->getDeviceFirstSdkInt()I

    move-result v0

    if-ge v0, v3, :cond_0

    return v1

    :cond_0
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v0, v3, :cond_1

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/server/connectivity/PermissionMonitor;->isVendorApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "android.permission.CONNECTIVITY_INTERNAL"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/PermissionMonitor;->hasPermission(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "android.permission.NETWORK_STACK"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/PermissionMonitor;->hasPermission(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "android.permission.CONNECTIVITY_USE_RESTRICTED_NETWORKS"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/PermissionMonitor;->hasPermission(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    nop

    :goto_1
    return v1
.end method

.method public declared-synchronized hasUseBackgroundNetworksPermission(I)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected highestPermissionForUid(Ljava/lang/Boolean;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    sget-object v0, Lcom/android/server/connectivity/PermissionMonitor;->SYSTEM:Ljava/lang/Boolean;

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x1000

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/PermissionMonitor;->hasNetworkPermission(Landroid/content/pm/PackageInfo;)Z

    move-result v1

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/PermissionMonitor;->hasRestrictedNetworkPermission(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v3

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NameNotFoundException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public synthetic lambda$removeBypassingUids$0$PermissionMonitor(Ljava/lang/Integer;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    sget-object v1, Lcom/android/server/connectivity/PermissionMonitor;->NETWORK:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/server/connectivity/PermissionMonitor;->SYSTEM:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized onPackageAdded(Ljava/lang/String;I)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/connectivity/PermissionMonitor;->highestPermissionForUid(Ljava/lang/Boolean;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Set;Ljava/util/Map;Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mVpnUidRanges:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-static {v4, p2}, Landroid/net/UidRange;->containsUid(Ljava/util/Collection;I)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, -0x1

    invoke-direct {p0, v4, v5}, Lcom/android/server/connectivity/PermissionMonitor;->removeBypassingUids(Ljava/util/Set;I)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5, v4, v2}, Lcom/android/server/connectivity/PermissionMonitor;->updateVpnUids(Ljava/lang/String;Ljava/util/Set;Z)V

    :cond_1
    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mAllApps:Ljava/util/Set;

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onPackageRemoved(I)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mVpnUidRanges:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3, p1}, Landroid/net/UidRange;->containsUid(Ljava/util/Collection;I)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v4, -0x1

    invoke-direct {p0, v3, v4}, Lcom/android/server/connectivity/PermissionMonitor;->removeBypassingUids(Ljava/util/Set;I)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4, v3, v2}, Lcom/android/server/connectivity/PermissionMonitor;->updateVpnUids(Ljava/lang/String;Ljava/util/Set;Z)V

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mAllApps:Ljava/util/Set;

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    array-length v4, v3

    if-lez v4, :cond_5

    array-length v4, v3

    move-object v5, v1

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_4

    aget-object v6, v3, v1

    invoke-virtual {p0, v5, v6}, Lcom/android/server/connectivity/PermissionMonitor;->highestPermissionForUid(Ljava/lang/Boolean;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    move-object v5, v7

    sget-object v7, Lcom/android/server/connectivity/PermissionMonitor;->SYSTEM:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v5, v7, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move-object v1, v5

    :cond_5
    :try_start_1
    iget-object v4, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v1, v4, :cond_6

    monitor-exit p0

    return-void

    :cond_6
    if-eqz v1, :cond_7

    :try_start_2
    iget-object v2, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    const/4 v4, 0x1

    invoke-direct {p0, v2, v0, v4}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Set;Ljava/util/Map;Z)V

    goto :goto_2

    :cond_7
    iget-object v4, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/android/server/connectivity/PermissionMonitor;->NETWORK:Ljava/lang/Boolean;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    invoke-direct {p0, v4, v0, v2}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Set;Ljava/util/Map;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onPackageReplaced(Ljava/lang/String;I)V
    .locals 8

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-direct {p0, v4}, Lcom/android/server/connectivity/PermissionMonitor;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    invoke-static {v6, v7}, Lcom/android/server/connectivity/PermissionMonitor;->getNetdPermissionMask([Ljava/lang/String;[I)I

    move-result v6

    or-int/2addr v0, v6

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0, p2, v0}, Lcom/android/server/connectivity/PermissionMonitor;->sendPackagePermissionsForUid(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onUserAdded(I)V
    .locals 3

    monitor-enter p0

    if-gez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid user in onUserAdded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Set;Ljava/util/Map;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onUserRemoved(I)V
    .locals 3

    monitor-enter p0

    if-gez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid user in onUserRemoved: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Set;Ljava/util/Map;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onVpnUidRangesAdded(Ljava/lang/String;Ljava/util/Set;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/net/UidRange;",
            ">;I)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mAllApps:Ljava/util/Set;

    invoke-direct {p0, p2, v0}, Lcom/android/server/connectivity/PermissionMonitor;->intersectUids(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/connectivity/PermissionMonitor;->removeBypassingUids(Ljava/util/Set;I)V

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/connectivity/PermissionMonitor;->updateVpnUids(Ljava/lang/String;Ljava/util/Set;Z)V

    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mVpnUidRanges:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mVpnUidRanges:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mVpnUidRanges:Ljava/util/Map;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onVpnUidRangesRemoved(Ljava/lang/String;Ljava/util/Set;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/net/UidRange;",
            ">;I)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mAllApps:Ljava/util/Set;

    invoke-direct {p0, p2, v0}, Lcom/android/server/connectivity/PermissionMonitor;->intersectUids(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/connectivity/PermissionMonitor;->removeBypassingUids(Ljava/util/Set;I)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/connectivity/PermissionMonitor;->updateVpnUids(Ljava/lang/String;Ljava/util/Set;Z)V

    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mVpnUidRanges:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to remove unknown vpn uid Range iface = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-interface {v1, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/connectivity/PermissionMonitor;->mVpnUidRanges:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method sendPackagePermissionsForUid(II)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/PermissionMonitor;->sendPackagePermissionsToNetd(Landroid/util/SparseIntArray;)V

    return-void
.end method

.method sendPackagePermissionsToNetd(Landroid/util/SparseIntArray;)V
    .locals 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    const-string v1, "PermissionMonitor"

    if-nez v0, :cond_0

    const-string v0, "Failed to get the netd service"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    const/16 v8, 0xc

    const/16 v9, 0x8

    const/4 v10, 0x4

    const/4 v11, -0x1

    if-ge v6, v7, :cond_6

    invoke-virtual {p1, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    if-eq v7, v11, :cond_5

    if-eqz v7, :cond_4

    if-eq v7, v10, :cond_3

    if-eq v7, v9, :cond_2

    if-eq v7, v8, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unknown permission type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "for uid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Ljava/util/List;)[I

    move-result-object v7

    invoke-interface {v6, v8, v7}, Landroid/net/INetd;->trafficSetNetPermForUids(I[I)V

    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Ljava/util/List;)[I

    move-result-object v7

    invoke-interface {v6, v10, v7}, Landroid/net/INetd;->trafficSetNetPermForUids(I[I)V

    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Ljava/util/List;)[I

    move-result-object v7

    invoke-interface {v6, v9, v7}, Landroid/net/INetd;->trafficSetNetPermForUids(I[I)V

    :cond_9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    const/4 v7, 0x0

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Ljava/util/List;)[I

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/net/INetd;->trafficSetNetPermForUids(I[I)V

    :cond_a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Ljava/util/List;)[I

    move-result-object v7

    invoke-interface {v6, v11, v7}, Landroid/net/INetd;->trafficSetNetPermForUids(I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_b
    goto :goto_3

    :catch_0
    move-exception v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Pass appId list of special permission failed."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method public declared-synchronized startMonitoring()V
    .locals 12

    monitor-enter p0

    :try_start_0
    const-string v0, "Monitoring"

    invoke-static {v0}, Lcom/android/server/connectivity/PermissionMonitor;->log(Ljava/lang/String;)V

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/server/connectivity/PermissionMonitor$PackageListObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/PermissionMonitor$PackageListObserver;-><init>(Lcom/android/server/connectivity/PermissionMonitor;Lcom/android/server/connectivity/PermissionMonitor$1;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageList(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)Landroid/content/pm/PackageList;

    goto :goto_0

    :cond_0
    const-string v1, "failed to get the PackageManagerInternal service"

    invoke-static {v1}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    const v2, 0x401000

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "No apps"

    invoke-static {v2}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_2

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_2

    :cond_2
    const/4 v5, -0x1

    :goto_2
    if-gez v5, :cond_3

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/android/server/connectivity/PermissionMonitor;->mAllApps:Ljava/util/Set;

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v4}, Lcom/android/server/connectivity/PermissionMonitor;->hasNetworkPermission(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    invoke-virtual {p0, v4}, Lcom/android/server/connectivity/PermissionMonitor;->hasRestrictedNetworkPermission(Landroid/content/pm/PackageInfo;)Z

    move-result v7

    if-nez v6, :cond_4

    if-eqz v7, :cond_6

    :cond_4
    iget-object v8, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    if-eqz v8, :cond_5

    sget-object v9, Lcom/android/server/connectivity/PermissionMonitor;->NETWORK:Ljava/lang/Boolean;

    if-ne v8, v9, :cond_6

    :cond_5
    iget-object v9, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v8, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    iget-object v9, v4, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    invoke-static {v8, v9}, Lcom/android/server/connectivity/PermissionMonitor;->getNetdPermissionMask([Ljava/lang/String;[I)I

    move-result v8

    invoke-virtual {v2, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    or-int/2addr v9, v8

    invoke-virtual {v2, v5, v9}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUserManager:Landroid/os/UserManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget-object v7, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    nop

    goto :goto_3

    :cond_8
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/SystemConfig;->getSystemPermissions()Landroid/util/SparseArray;

    move-result-object v5

    const/4 v6, 0x0

    move v7, v6

    :goto_4
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_c

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArraySet;

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    const/4 v10, 0x0

    if-eqz v8, :cond_b

    const-string v11, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v8, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    const/16 v11, 0x8

    goto :goto_5

    :cond_9
    move v11, v6

    :goto_5
    or-int/2addr v10, v11

    const-string v11, "android.permission.INTERNET"

    invoke-virtual {v8, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    const/4 v11, 0x4

    goto :goto_6

    :cond_a
    move v11, v6

    :goto_6
    or-int/2addr v10, v11

    :cond_b
    invoke-virtual {v2, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    or-int/2addr v11, v10

    invoke-virtual {v2, v9, v11}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Users: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Apps: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/connectivity/PermissionMonitor;->log(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    iget-object v7, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-direct {p0, v6, v7, v4}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Set;Ljava/util/Map;Z)V

    invoke-virtual {p0, v2}, Lcom/android/server/connectivity/PermissionMonitor;->sendPackagePermissionsToNetd(Landroid/util/SparseIntArray;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
