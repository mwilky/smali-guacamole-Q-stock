.class Lcom/android/server/policy/SoftRestrictedPermissionPolicy$1;
.super Lcom/android/server/policy/SoftRestrictedPermissionPolicy;
.source "SoftRestrictedPermissionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SoftRestrictedPermissionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;-><init>()V

    return-void
.end method


# virtual methods
.method public canBeGranted()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getDesiredOpMode()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public resolveAppOp()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public shouldSetAppOpIfNotDefault()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
