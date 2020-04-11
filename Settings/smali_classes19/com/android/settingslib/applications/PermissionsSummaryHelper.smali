.class public Lcom/android/settingslib/applications/PermissionsSummaryHelper;
.super Ljava/lang/Object;
.source "PermissionsSummaryHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPermissionSummary(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;)V
    .locals 3

    const-class v0, Landroid/permission/PermissionControllerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionControllerManager;

    new-instance v1, Lcom/android/settingslib/applications/-$$Lambda$PermissionsSummaryHelper$5KNAuDHouZhJftbqZ0g04ncINrg;

    invoke-direct {v1, p2}, Lcom/android/settingslib/applications/-$$Lambda$PermissionsSummaryHelper$5KNAuDHouZhJftbqZ0g04ncINrg;-><init>(Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/permission/PermissionControllerManager;->getAppPermissions(Ljava/lang/String;Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic lambda$getPermissionSummary$0(Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;Ljava/util/List;)V
    .locals 8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_2

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/permission/RuntimePermissionPresentationInfo;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v6}, Landroid/permission/RuntimePermissionPresentationInfo;->isGranted()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Landroid/permission/RuntimePermissionPresentationInfo;->isStandard()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Landroid/permission/RuntimePermissionPresentationInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/text/Collator;->setStrength(I)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0, v1, v3, v2, v4}, Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;->onPermissionSummaryResult(IIILjava/util/List;)V

    return-void
.end method
