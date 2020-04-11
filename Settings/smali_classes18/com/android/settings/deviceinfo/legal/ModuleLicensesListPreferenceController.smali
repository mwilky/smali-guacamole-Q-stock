.class public Lcom/android/settings/deviceinfo/legal/ModuleLicensesListPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "ModuleLicensesListPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 6

    iget-object v0, p0, Lcom/android/settings/deviceinfo/legal/ModuleLicensesListPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledModules(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/settings/deviceinfo/legal/ModuleLicensesPreferenceController$Predicate;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/legal/ModuleLicensesListPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/settings/deviceinfo/legal/ModuleLicensesPreferenceController$Predicate;-><init>(Landroid/content/Context;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    return v1
.end method
