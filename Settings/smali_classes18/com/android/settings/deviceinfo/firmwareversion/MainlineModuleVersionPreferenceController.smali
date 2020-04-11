.class public Lcom/android/settings/deviceinfo/firmwareversion/MainlineModuleVersionPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "MainlineModuleVersionPreferenceController.java"


# static fields
.field static final MODULE_UPDATE_INTENT:Landroid/content/Intent;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MainlineModuleControl"


# instance fields
.field private mModuleVersion:Ljava/lang/String;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MODULE_UPDATE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/deviceinfo/firmwareversion/MainlineModuleVersionPreferenceController;->MODULE_UPDATE_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/MainlineModuleVersionPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/MainlineModuleVersionPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/firmwareversion/MainlineModuleVersionPreferenceController;->initModules()V

    return-void
.end method

.method private initModules()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/MainlineModuleVersionPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x1040163

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/firmwareversion/MainlineModuleVersionPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/firmwareversion/MainlineModuleVersionPreferenceController;->mModuleVersion:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v2, "MainlineModuleControl"

    const-string v3, "Failed to get mainline version."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/deviceinfo/firmwareversion/MainlineModuleVersionPreferenceController;->mModuleVersion:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/MainlineModuleVersionPreferenceController;->mModuleVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/MainlineModuleVersionPreferenceController;->mModuleVersion:Ljava/lang/String;

    return-object v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/MainlineModuleVersionPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    sget-object v1, Lcom/android/settings/deviceinfo/firmwareversion/MainlineModuleVersionPreferenceController;->MODULE_UPDATE_INTENT:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/settings/deviceinfo/firmwareversion/MainlineModuleVersionPreferenceController;->MODULE_UPDATE_INTENT:Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
