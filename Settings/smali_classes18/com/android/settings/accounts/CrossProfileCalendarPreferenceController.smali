.class public Lcom/android/settings/accounts/CrossProfileCalendarPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "CrossProfileCalendarPreferenceController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CrossProfileCalendarPreferenceController"


# instance fields
.field private mManagedUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static createPackageContextAsUser(Landroid/content/Context;I)Landroid/content/Context;
    .locals 3

    nop

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "CrossProfileCalendarPreferenceController"

    const-string v2, "Failed to create user context"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method static isCrossProfileCalendarDisallowedByAdmin(Landroid/content/Context;I)Z
    .locals 5

    invoke-static {p0, p1}, Lcom/android/settings/accounts/CrossProfileCalendarPreferenceController;->createPackageContextAsUser(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getCrossProfileCalendarPackages()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accounts/CrossProfileCalendarPreferenceController;->mManagedUser:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accounts/CrossProfileCalendarPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/accounts/CrossProfileCalendarPreferenceController;->mManagedUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/accounts/CrossProfileCalendarPreferenceController;->isCrossProfileCalendarDisallowedByAdmin(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x4

    return v0
.end method

.method public isChecked()Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/accounts/CrossProfileCalendarPreferenceController;->mManagedUser:Landroid/os/UserHandle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/CrossProfileCalendarPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/accounts/CrossProfileCalendarPreferenceController;->mManagedUser:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const-string v3, "cross_profile_calendar_enabled"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public setChecked(Z)Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/accounts/CrossProfileCalendarPreferenceController;->mManagedUser:Landroid/os/UserHandle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    move v0, p1

    iget-object v1, p0, Lcom/android/settings/accounts/CrossProfileCalendarPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accounts/CrossProfileCalendarPreferenceController;->mManagedUser:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const-string v3, "cross_profile_calendar_enabled"

    invoke-static {v1, v3, v0, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v1

    return v1
.end method

.method public setManagedUser(Landroid/os/UserHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accounts/CrossProfileCalendarPreferenceController;->mManagedUser:Landroid/os/UserHandle;

    return-void
.end method
